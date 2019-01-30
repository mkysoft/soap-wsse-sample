(* --------------------------------------------------------------------------
   soap.wsse.security.userpass

   This unit defines the classes needed to build the WSSE headers when
   just a user name and password are required.

   This unit is needed to get around design flaws (as I see it) in Delphi's
   built in soap handling up to and including Tokyo 10.2.3.
   Delphi doe snot seem to be able to build soap headers dynamicly,
   preferring to use staticly defined classes instead.
   I have not found a way to dynamically start with a Security class,
   add a UsernameToken to it, and a Password to that.

-------------------------------------------------------------------------- *)
unit soap.wsse.security.userpass;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns,
     xml.XMLIntf, soap.wsse;

const
  IS_OPTN=$0001;
  IS_ATTR=$0010;
  IS_TEXT=$0020;
  IS_REF =$0080;
  IS_QUAL=$0100;

  NS_SECEXT = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd';
  NS_UTILITY = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd';


type

  myUsernameToken=class(TRemotable)
  private
    FUserName: soap.wsse.AttributedString;
    FCreated:  soap.wsse.Created;
    FPassword: soap.wsse.Password;
    FNonce:    soap.wsse.Nonce;
    FId:       soap.wsse.Id;
  public
    destructor Destroy; override;
    function   ObjectToSOAP(RootNode, ParentNode: IXMLNode;
                            const ObjConverter: IObjConverter;
                            const NodeName, NodeNamespace, ChildNamespace: InvString;
                            ObjConvOpts: TObjectConvertOptions;
                            out RefID: InvString): IXMLNode; override;
    property Id:Id Index (IS_ATTR or IS_QUAL) read FId write FId;
  published
    property Username: soap.wsse.AttributedString read FUsername write FUsername;
    property Password: soap.wsse.Password read FPassword write FPassword;
    property Nonce: soap.wsse.Nonce read FNonce write FNonce;
    property Created: soap.wsse.Created index (IS_REF) read FCreated write FCreated;
  end;


  Security=class(TSOAPHeader)
  private
    FTimestamp:     soap.wsse.Timestamp;
    FUserNameToken: myUserNameToken;
  public
    constructor Create(const Username, password: string); overload;
    destructor Destroy; override;
    function   ObjectToSOAP(RootNode, ParentNode: IXMLNode;
                            const ObjConverter: IObjConverter;
                            const NodeName, NodeNamespace, ChildNamespace:
                            InvString; ObjConvOpts: TObjectConvertOptions;
                            out RefID: InvString): IXMLNode; override;
  published
    property Timestamp: soap.wsse.TimeStamp index (IS_REF) read FTimestamp write FTimestamp;
    property UsernameToken: myUsernameToken index (IS_REF) read FUserNameToken write FUserNameToken;
  end;


implementation

uses SysUtils;

{ UsernameToken }

destructor myUsernameToken.Destroy;
begin
  FreeAndNil(FCreated);
  FreeAndNil(FPassword);
  FreeAndNil(FNonce);
  inherited Destroy;
end;

function myUsernameToken.ObjectToSOAP(RootNode, ParentNode: IXMLNode;
  const ObjConverter: IObjConverter; const NodeName, NodeNamespace,
  ChildNamespace: InvString; ObjConvOpts: TObjectConvertOptions;
  out RefID: InvString): IXMLNode;
begin
  Result := inherited;
  if (Result <> nil) and (Length(FId) > 0) then
  begin
    Result.DeclareNamespace('wsu', NS_UTILITY);
    Result.SetAttributeNS('Id', NS_UTILITY, FId);
  end;
end;

{ Security }

constructor Security.Create(const Username, password: string);
begin
  inherited Create;
  UsernameToken := myUsernameToken.Create;
  UsernameToken.Username := soap.wsse.AttributedString.Create;
  UsernameToken.Username.Text := Username;
  UsernameToken.Password := soap.wsse.Password.Create;
  UsernameToken.Password.Type_ :='http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText';
  //'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0#PasswordText';
  UsernameToken.Password.Text := password;
  UsernameToken.Nonce := soap.wsse.Nonce.Create;
  Usernametoken.Nonce.EncodingType := 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary';
end;

destructor Security.Destroy;
begin
  FreeAndNIL(FTimestamp);
  FreeAndNIL(FUserNameToken);
  inherited Destroy;
end;

function Security.ObjectToSOAP(RootNode, ParentNode: IXMLNode;
  const ObjConverter: IObjConverter; const NodeName, NodeNamespace,
  ChildNamespace: InvString; ObjConvOpts: TObjectConvertOptions;
  out RefID: InvString): IXMLNode;
begin
  ParentNode.DeclareNamespace('wsse', NS_SECEXT);
  ParentNode.DeclareNamespace('wsu', NS_UTILITY);

  Result := inherited;
  if (Result <> nil) then
  begin
    Result.DeclareNamespace('wsse', NS_SECEXT);
    Result.DeclareNamespace('wsu', NS_UTILITY);
  end;
end;

initialization
  RemClassRegistry.RegisterXSClass(Security, NS_SECEXT, 'Security');
  RemClassRegistry.RegisterXSClass(myUsernameToken, NS_SECEXT, 'UsernameToken');

end.
