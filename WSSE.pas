unit WSSE;

interface

uses SysUtils, InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, Windows,
     DCPbase64, XMLIntf, DCPsha1, SOAPConst, OpConvertOptions;

const
  BoolDigit: array[Boolean] of string = ('0', '1');

  IS_OPTN=$0001;
  IS_ATTR=$0010;
  IS_TEXT=$0020;
  IS_REF =$0080;

type
  tTimestampFault=(wsu_MessageExpired);

  Id = type WideString;
  Nonce = type AnsiString;
  Value = type AnsiString;

  TXSDateTimeWSE = class(TXSDateTime)
  public
     //procedure SetAsDateTime(const Value: TDateTime); override;
     function AsXmlDateTime: String;
  end;

  Created=class(TXSDateTimeWSE)
  end;

  Expires=class(TXSDateTimeWSE)
  end;

  TMndSOAPHeader = class(TSOAPHeader)
  private
    FAlwaysMustUnderstand: Boolean;
    FSNodeName: InvString;
    FSChildNamespace: InvString;
    FSHeaderNamespace: InvString;
    FSNodeNamespace: InvString;
  public
    { Serialization routines }
    function   ObjectToSOAP(RootNode, ParentNode: IXMLNode;
                            const ObjConverter: IObjConverter;
                            const NodeName, NodeNamespace, ChildNamespace: InvString; ObjConvOpts: TObjectConvertOptions;
                            out RefID: InvString): IXMLNode; override;
    procedure  SOAPToObject(const RootNode, Node: IXMLNode; const ObjConverter: IObjConverter); override;
    property AlwaysMustUnderstand: Boolean read FAlwaysMustUnderstand write FAlwaysMustUnderstand default false;
    property SNodeName: InvString read FSNodeName write FSNodeName;
    property SNodeNamespace: InvString read FSNodeNamespace write FSNodeNamespace;
    property SChildNamespace: InvString read FSChildNamespace write FSChildNamespace;
    property SHeaderNamespace: InvString read FSHeaderNamespace write FSHeaderNamespace;
  end;

  TSOAPHeaderChild = class(TMndSOAPHeader)
   private
      FValue: Value;
   published
      property Value: Value Index (IS_TEXT) read FValue write FValue;
  end;

  Timestamp=class(TRemotable)
  private
    FCreated:Created;
    FExpires:Expires;
    FId: Id;
  public
    destructor Destroy; override;
  published
    property Created:Created Index (IS_OPTN) read FCreated write FCreated;
    property Expires:Expires Index (IS_OPTN) read FExpires write FExpires;
    property Id:Id Index (IS_ATTR) read FId write FId;
  end;

  AttributedString=class(TRemotable)
  private
    FText:WideString;
    FId:Id;
    FId_Specified:boolean;
    procedure SetId(Index:Integer; const AId:Id);
    function Id_Specified(Index:Integer):boolean;
  published
    property Text:WideString Index (IS_TEXT) read FText write FText;
    property Id:Id Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
  end;

  Password=class(AttributedString)
  private
    FType_:WideString;
    FType__Specified:boolean;
    procedure SetType_(Index:Integer; const AWideString:WideString);
    function Type__Specified(Index:Integer):boolean;
  published
    property Type_:WideString Index (IS_ATTR or IS_OPTN) read FType_ write SetType_ stored Type__Specified;
  end;

  UsernameToken=class(TRemotable)
  private
    FUserName:Ansistring;
    FCreated:Created;
    FPassword:Password;
    FNonce: Nonce;
    FId: Id;
  public
    destructor Destroy; override;
  published
    property Username: AnsiString read FUsername write FUsername;
    property Password:Password read FPassword write FPassword;
    property Nonce: Nonce read FNonce write FNonce;
    property Created:Created index (IS_REF) read FCreated write FCreated;
    property Id:Id Index (IS_ATTR) read FId write FId;
  end;

  GSS_UsernameToken=class(TRemotable)
  private
    FUserName: Ansistring;
    FPassword: Password;
  public
    destructor Destroy; override;
  published
    property Username: AnsiString read FUsername write FUsername;
    property Password: Password read FPassword write FPassword;
  end;

  Security=class(TMndSOAPHeader) //TSOAPHeader
  private
    FTimestamp: Timestamp;
    FUserNameToken: UserNameToken;
  public
    destructor Destroy; override;
  published
    property Timestamp:TimeStamp index (IS_REF) read FTimestamp write FTimestamp;
    property UsernameToken:UsernameToken index (IS_REF) read FUserNameToken write FUserNameToken;
  end;



  GSS_Security=class(TMndSOAPHeader) //TSOAPHeader
  private
    FUserNameToken: GSS_UserNameToken;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property UsernameToken: GSS_UserNameToken index (IS_REF) read FUserNameToken write FUserNameToken;
  end;

  ReplyTo=class(TMndSOAPHeader)
   private
      FAddress: AnsiString;
   published
      property Address: AnsiString read FAddress write FAddress;
   end;

  Action = class(TSOAPHeaderChild);
  ToHeader = class(TSOAPHeaderChild);
  MessageID= class(TSOAPHeaderChild);

function  GetCreateTime(pNow: TDateTime): TDateTime;
function  GetExpireTime(pNow: TDateTime; pMinute: Integer): TDateTime;
function  GetNonce: AnsiString;
function  GetTimeZoneBias: Integer;
function  GetPasswordDigest(s: Ansistring): Ansistring;
procedure AddHeaderWSEHeader(pHTTPRIO: THTTPRIO; pNow: TDateTime; pUsername, pPassword: AnsiString; pDigestPassword: Boolean = True; pMustUnderstand: Boolean =
    True);

procedure AddHeaderWSEHeaderGSS(pHTTPRIO: THTTPRIO);

procedure AddHeaderWSAHeader(pHTTPRIO: THTTPRIO; pToAddress, pAction: AnsiString; pReplyToAddress: AnsiString =
    'http://www.w3.org/2005/08/addressing/anonymous');

implementation

uses
  DateUtils;

function GetTimeZoneBias: Integer;
var
  TimeZoneInfo: TTimeZoneInformation;
begin
  case GetTimeZoneInformation(TimeZoneInfo) of
    TIME_ZONE_ID_UNKNOWN: Result := TimeZoneInfo.Bias;
    TIME_ZONE_ID_STANDARD: Result := TimeZoneInfo.Bias + TimeZoneInfo.StandardBias;
    TIME_ZONE_ID_DAYLIGHT: Result := TimeZoneInfo.Bias + TimeZoneInfo.DaylightBias;
  else
    Result := 0;
  end;
end;

function GetCreateTime(pNow: TDateTime): TDateTime;
var
   Bias: Integer;
begin
   // Get Hour diff
   Bias := (GetTimeZoneBias div 60);

   Result := pNow + (Bias/24);
end;

function GetExpireTime(pNow: TDateTime; pMinute: Integer): TDateTime;
var
   Bias: Integer;
begin
   // Get Hour diff
   Bias := (GetTimeZoneBias div 60);

   Result := pNow + (Bias/24) + (pMinute/1440);
end;

function GetNonce: AnsiString;
var
   i: Integer;
begin
   Randomize;

   Result := '';
   for i := 0 to 15 do
      Result := Result + Chr(Random(256));

   Result := Base64EncodeStr(Result);
end;

function GetPasswordDigest(s: Ansistring): Ansistring;
var
   Sha1: TDCP_sha1;
   Digest: array[0..19] of byte;
begin
   Sha1 := TDCP_sha1.Create(nil);
   Sha1.Init;
   Sha1.UpdateStr(s);
   Sha1.Final(Digest);
   SetString(Result, PAnsiChar(@Digest), sizeof(Digest));
   Sha1.Free;
   Result := Base64EncodeStr(Result);
end;

procedure AddHeaderWSAHeader(pHTTPRIO: THTTPRIO; pToAddress, pAction: AnsiString; pReplyToAddress: AnsiString =
    'http://www.w3.org/2005/08/addressing/anonymous');
var
   Hdr_Reply: ReplyTo;
   hdr_Action: Action;
   hdr_To: ToHeader;
   hdr_MessageID: MessageID;
   Guid: TGUID;
begin
   hdr_Action := Action.Create;
   hdr_Action.MustUnderstand := True;
   hdr_Action.Value := pAction;
   pHTTPRIO.SOAPHeaders.Send(hdr_Action);

   hdr_MessageID := MessageID.Create;
   CreateGuid(Guid);
   hdr_MessageID.Value := Copy(GuidToString(Guid), 2,36);
   pHTTPRIO.SOAPHeaders.Send(hdr_MessageID);

   Hdr_Reply := ReplyTo.Create;
   Hdr_Reply.Address := pReplyToAddress;
   pHTTPRIO.SOAPHeaders.Send(Hdr_Reply);

   hdr_To := ToHeader.Create;
   hdr_To.MustUnderstand := True;
   hdr_To.SNodeName := 'To';
   hdr_To.Value := pToAddress;
   pHTTPRIO.SOAPHeaders.Send(hdr_To);
end;

procedure AddHeaderWSEHeader(pHTTPRIO: THTTPRIO; pNow: TDateTime; pUsername, pPassword: AnsiString; pDigestPassword: Boolean = True; pMustUnderstand: Boolean =
    True);
var
   Hdr: Security;
   Headers: ISOAPHeaders;
begin
   Hdr := Security.Create;
   Hdr.MustUnderstand := pMustUnderstand;

   Hdr.Timestamp := TimeStamp.Create;
   Hdr.Timestamp.Id := 'Timestamp-27789929';
   Hdr.Timestamp.Created := Created.Create;

   Hdr.Timestamp.Created.AsDateTime := GetCreateTime(pNow);
   Hdr.Timestamp.Expires := Expires.Create;
   Hdr.Timestamp.Expires.AsDateTime := GetExpireTime(pNow, 5);

   Hdr.UsernameToken := UsernameToken.Create;
   Hdr.UsernameToken.Id := 'UsernameToken-32278793';
   Hdr.UsernameToken.Username := pUsername;
   Hdr.UsernameToken.Password := Password.Create;
   if pDigestPassword then Begin
      Hdr.UsernameToken.Nonce := GetNonce;
      Hdr.UsernameToken.Password.Type_ := 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordDigest';
      Hdr.UsernameToken.Password.Text := Getpassworddigest(Base64DecodeStr(Hdr.UsernameToken.Nonce) + Hdr.Timestamp.Created.AsXmlDateTime + pPassword);
   End
   else begin
      Hdr.UsernameToken.Password.Type_ := 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText';
      Hdr.UsernameToken.Password.Text := pPassword;
   end;
   Hdr.UsernameToken.Created := Created.Create;
   Hdr.UsernameToken.Created := Hdr.Timestamp.Created;

   pHTTPRIO.SOAPHeaders.Send(hdr);
end;

procedure AddHeaderWSEHeaderGSS(pHTTPRIO: THTTPRIO);
var
   Hdr: GSS_Security;
   Headers: ISOAPHeaders;
begin
   Hdr := GSS_Security.Create;
   Hdr.MustUnderstand := True;

   Hdr.UsernameToken := GSS_UsernameToken.Create;
   Hdr.UsernameToken.Username := pHTTPRIO.HTTPWebNode.UserName;
   Hdr.UsernameToken.Password := Password.Create;
   Hdr.UsernameToken.Password.Type_ := 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText';
   Hdr.UsernameToken.Password.Text := pHTTPRIO.HTTPWebNode.Password;

   pHTTPRIO.SOAPHeaders.Send(hdr);
end;

function TXSDateTimeWSE.AsXmlDateTime: String;
begin
   Result := FDateTime;
end;
   {
procedure TXSDateTimeWSE.SetAsDateTime(const Value: TDateTime);
begin
   FDateTime := FormatDateTime('yyyy''-''mm''-''dd''T''hh'':''nn'':''ss''', Value) + 'Z';
end;
    }
destructor Timestamp.Destroy;
begin
  FreeAndNIL(FCreated);
  FreeAndNIL(FExpires);
  inherited Destroy;
end;

destructor UsernameToken.Destroy;
begin
  FreeAndNil(FPassword);
  inherited Destroy;
end;

procedure AttributedString.SetId(Index:Integer; const AId:Id);
begin
  FId:=AId;
  FId_Specified:=True;
end;

function AttributedString.Id_Specified(Index:Integer):boolean;
begin
  Result:=FId_Specified;
end;

procedure Password.SetType_(Index:Integer; const AWideString:WideString);
begin
  FType_:=AWideString;
  FType__Specified:=True;
end;

function Password.Type__Specified(Index:Integer):boolean;
begin
  Result:=FType__Specified;
end;

destructor Security.Destroy;
begin
  FreeAndNIL(FTimestamp);
  FreeAndNIL(FUserNameToken);
  inherited Destroy;
end;

{ TMndSOAPHeader }

function TMndSOAPHeader.ObjectToSOAP(RootNode, ParentNode: IXMLNode;
                                  const ObjConverter: IObjConverter;
                                  const NodeName, NodeNamespace, ChildNamespace: InvString;
                                  ObjConvOpts: TObjectConvertOptions;
                                  out RefID: InvString): IXMLNode;
const
  BoolDigit: array[Boolean] of string = ('0', '1');
var
  HeaderNamespace: InvString;
begin
   if (SNodeNamespace = '') then SNodeNamespace := NodeNamespace;
   if (SChildNamespace = '') then SChildNamespace := ChildNamespace;

   ObjConvOpts := ObjConvOpts - [ocoDontPrefixNode];
   if SHeaderNamespace = '' then   
      HeaderNamespace := InvRegistry.GetHeaderNamespace(Self.ClassType)
   else
      HeaderNamespace := SHeaderNamespace;

   if SNodeName = '' then
      Result := ObjConverter.ObjInstanceToSOAP(Self, RootNode, ParentNode, NodeName, HeaderNamespace, SChildNamespace, ObjConvOpts, RefID)
   else
      Result := ObjConverter.ObjInstanceToSOAP(Self, RootNode, ParentNode, SNodeName, HeaderNamespace, SChildNamespace, ObjConvOpts, RefID);

   if MustUnderstand then
      Result.SetAttributeNS(SHeaderMustUnderstand, SoapEnvelopeNamespaces[soSOAP12 in ObjConverter.GetOptions], BoolDigit[MustUnderstand])
   else if AlwaysMustUnderstand then
      Result.SetAttributeNS(SHeaderMustUnderstand, SoapEnvelopeNamespaces[soSOAP12 in ObjConverter.GetOptions], BoolDigit[MustUnderstand]);

   if Actor <> '' then
      Result.SetAttributeNS(SHeaderActor, SoapEnvelopeNamespaces[soSOAP12 in ObjConverter.GetOptions], Actor);
end;

procedure TMndSOAPHeader.SOAPToObject(const RootNode, Node: IXMLNode;
                                  const ObjConverter: IObjConverter);
var
  AttrVal: WideString;
begin
  inherited SOAPToObject(RootNode, Node, ObjConverter);
  if Node.HasAttribute(SHeaderMustUnderstand, SoapEnvelopeNamespaces[soSOAP12 in ObjConverter.GetOptions]) then
  begin
    AttrVal := Node.GetAttributeNS(SHeaderMustUnderstand, SoapEnvelopeNamespaces[soSOAP12 in ObjConverter.GetOptions]);
    MustUnderstand := SameText(AttrVal, '1') or  { Do not localize }
                       SameText(AttrVal, 'true'); { Do not localize }
  end;
  if Node.HasAttribute(SHeaderActor, SoapEnvelopeNamespaces[soSOAP12 in ObjConverter.GetOptions]) then
    Actor := Node.GetAttributeNS(SHeaderActor, SoapEnvelopeNamespaces[soSOAP12 in ObjConverter.GetOptions]);
end;

constructor GSS_Security.Create;
begin
   inherited;
   FSNodeName := 'Security';
end;

destructor GSS_Security.Destroy;
begin
  FreeAndNIL(FUserNameToken);
  inherited Destroy;
end;

destructor GSS_UsernameToken.Destroy;
begin
  FreeAndNil(FPassword);
  inherited Destroy;
end;

const

NS_SECEXT='http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd';
NS_UTILITY='http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd';
NS_ADDRESSING='http://www.w3.org/2005/08/addressing';

initialization
  RemClassRegistry.RegisterXSClass(Action, NS_ADDRESSING, 'Action');
  RemClassRegistry.RegisterXSClass(ReplyTo, NS_ADDRESSING, 'ReplyTo');
  RemClassRegistry.RegisterXSClass(ToHeader, NS_ADDRESSING, 'To');
  RemClassRegistry.RegisterXSClass(MessageID, NS_ADDRESSING, 'MessageID');

  RemClassRegistry.RegisterXSClass(Security, NS_SECEXT, 'Security');
  RemClassRegistry.RegisterXSClass(GSS_Security, NS_SECEXT, 'GSS_Security');
  RemClassRegistry.RegisterXSClass(Timestamp, NS_UTILITY, 'Timestamp');
  RemClassRegistry.RegisterXSClass(Created, NS_UTILITY, 'Created');
  RemClassRegistry.RegisterXSClass(Expires, NS_UTILITY, 'Expires');
  RemClassRegistry.RegisterXSClass(UsernameToken, NS_SECEXT, 'UsernameToken');
  RemClassRegistry.RegisterXSClass(GSS_UsernameToken, NS_SECEXT, 'GSS_UsernameToken');
  RemClassRegistry.RegisterXSClass(Password, NS_SECEXT, 'Password');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Nonce), NS_SECEXT, 'Nonce');

  RemClassRegistry.RegisterXSInfo(TypeInfo(tTimestampFault), NS_UTILITY, 'tTimestampFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(tTimestampFault), 'wsu_MessageExpired', 'wsu:MessageExpired');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Id), NS_UTILITY, 'Id');
  RemClassRegistry.RegisterXSClass(AttributedString, NS_SECEXT, 'AttributedString');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Password), 'Type_', 'Type');
end.

