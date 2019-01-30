// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\projects\moveitnow\omnitracs\schema\wsse2.wsdl
//  >Import : C:\projects\moveitnow\omnitracs\schema\wsse2.wsdl>0
//  >Import : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
//  >Import : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
//  >Import : http://www.w3.org/2001/xml.xsd
//  >Import : http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
// Encoding : UTF-8
// Codegen  : [wfOneOutIsReturn-, wfOutputLiteralTypes+, wfSkipUnusedTypes-, wfStrongClassAliases-, wfUseSettersAndGetters+, wfUseXSTypeForSimpleNillable+, wfCreateArrayElemTypeAlias+]
// Version  : 1.0
// (6/22/2018 9:21:43 AM - - $Rev: 90173 $)
// ************************************************************************ //

unit soap.wsse;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_ATTR = $0010;
  IS_TEXT = $0020;
  IS_REF  = $0080;
  IS_QUAL = $0100;

  NS_SECEXT = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd';
  NS_UTILITY = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd';


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[!U][Gbl]                  // see Soap.InvokeRegistry = Int64
  // !:lang            - "http://www.w3.org/XML/1998/namespace"[!U][GblAttr]          // see Soap.InvokeRegistry = AnsiString
  // !:space           - "http://www.w3.org/XML/1998/namespace"[!U][GblAttr]          // manually defined below as a string
  // !:id              - "http://www.w3.org/2001/XMLSchema"[!U][GblAttr]              // see Soap.InvokeRegistry = AnsiString (ID)
  // !:base            - "http://www.w3.org/2001/XMLSchema"[!U][GblAttr]              // defined below as a string;
  // !:lang            - "http://www.w3.org/2001/XMLSchema"[!U][GblAttr]              // see Soap.InvokeRegistry = AnsiString
  // !:space           - "http://www.w3.org/2001/XMLSchema"[!U][GblAttr]              // manually defined below as a string
  // !:string          - "http://www.w3.org/2001/XMLSchema"[!U][GblNlbl]              // see Soap.InvokeRegistry = AnsiString
  // !:anyURI          - "http://www.w3.org/2001/XMLSchema"[!U][Gbl]                  // see Soap.InvokeRegistry = AnsiString
  // !:string          - "http://www.w3.org/2001/XMLSchema"[!U][Gbl]                  // see Soap.InvokeRegistry
  // !:ID              - "http://www.w3.org/2001/XMLSchema"[!U][Gbl]                  // see Soap.InvokeRegistry = AnsiString
  // !:schema          - "http://www.w3.org/2001/XMLSchema"[!U][Gbl]                  // see Soap.InvokeRegistry = string or TXMLData
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[!U][Gbl]                  // see Soap.InvokeRegistry = TByteDynArray

  SecurityHeaderType   = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  TransformationParametersType = class;         { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  ReferenceType        = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  EmbeddedType         = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  X509IssuerSerialType = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  AttributedDateTime   = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblCplx] }
  commonAtts           = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblAtGp] }
  AttributedURI        = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblCplx] }
  UsernameTokenType    = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  SecurityTokenReferenceType = class;           { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  AttributedString     = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  EncodedString        = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  KeyIdentifierType    = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  BinarySecurityTokenType = class;              { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  PasswordString       = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblCplx] }
  specialAttrs         = class;                 { "http://www.w3.org/XML/1998/namespace"[!U][GblAtGp] }
  TimestampType        = class;                 { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblCplx] }
  TransformType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  SignaturePropertiesType = class;              { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  SignatureValueType   = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  X509DataType         = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  RSAKeyValueType      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  DSAKeyValueType      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  KeyValueType         = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  PGPDataType          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  RetrievalMethodType  = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  KeyInfoType          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  SignatureMethodType  = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  ReferenceType2       = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  SignedInfoType       = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  SignatureType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  ManifestType         = class;                 { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblSmpl] }
  FaultcodeEnum = (wsse_UnsupportedSecurityToken, wsse_UnsupportedAlgorithm, wsse_InvalidSecurity, wsse_InvalidSecurityToken, wsse_FailedAuthentication, wsse_FailedCheck, wsse_SecurityTokenUnavailable);

  { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblSmpl] }
  tTimestampFault = (wsu_MessageExpired);

  {$SCOPEDENUMS OFF}

  Array_Of_X509IssuerSerialType = array of X509IssuerSerialType;   { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : SecurityHeaderType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  SecurityHeaderType = class(TSOAPHeader)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TransformationParametersType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  TransformationParametersType = class(TRemotable)
  private
  published
  end;

  TransformationParameters = TransformationParametersType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }
  //Security        = SecurityHeaderType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }
  base            = string;         { "http://www.w3.org/XML/1998/namespace"[!U][GblAttr] }
  space           = string;         { "http://www.w3.org/XML/1998/namespace"[!U][GblAttr] }

  // ************************************************************************ //
  // XML       : ReferenceType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  ReferenceType = class(TRemotable)
  private
    FURI: string;
    FURI_Specified: boolean;
    FValueType: string;
    FValueType_Specified: boolean;
    function  GetURI(Index: Integer): string;
    procedure SetURI(Index: Integer; const Astring: string);
    function  URI_Specified(Index: Integer): boolean;
    function  GetValueType(Index: Integer): string;
    procedure SetValueType(Index: Integer; const Astring: string);
    function  ValueType_Specified(Index: Integer): boolean;
  published
    property URI:       string  Index (IS_ATTR or IS_OPTN) read GetURI write SetURI stored URI_Specified;
    property ValueType: string  Index (IS_ATTR or IS_OPTN) read GetValueType write SetValueType stored ValueType_Specified;
  end;

  Reference       = ReferenceType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : EmbeddedType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  EmbeddedType = class(TRemotable)
  private
    FValueType: string;
    FValueType_Specified: boolean;
    function  GetValueType(Index: Integer): string;
    procedure SetValueType(Index: Integer; const Astring: string);
    function  ValueType_Specified(Index: Integer): boolean;
  published
    property ValueType: string  Index (IS_ATTR or IS_OPTN) read GetValueType write SetValueType stored ValueType_Specified;
  end;

  Embedded        = EmbeddedType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }
  tUsage          = string;         { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblSmpl] }
  Usage           = tUsage;         { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblAttr] }
  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : X509IssuerSerialType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509IssuerSerialType = class(TRemotable)
  private
    FX509IssuerName: string;
    FX509SerialNumber: Int64;
    function  GetX509IssuerName: string;
    procedure SetX509IssuerName(const Astring: string);
    function  GetX509SerialNumber: Int64;
    procedure SetX509SerialNumber(const AInt64: Int64);
  published
    property X509IssuerName:   string  read GetX509IssuerName write SetX509IssuerName;
    property X509SerialNumber: Int64   read GetX509SerialNumber write SetX509SerialNumber;
  end;

  Id              = string;         { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblAttr] }


  // ************************************************************************ //
  // XML       : AttributedDateTime, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
  // ************************************************************************ //
  AttributedDateTime = class(TRemotable)
  private
    FText: string;
    FId: Id;
    FId_Specified: boolean;
    function  GetText: string;
    procedure SetText(const Astring: string);
    function  GetId(Index: Integer): Id;
    procedure SetId(Index: Integer; const AId: Id);
    function  Id_Specified(Index: Integer): boolean;
  published
    property Text: string  read GetText write SetText;
    property Id:   Id      Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
  end;



  // ************************************************************************ //
  // XML       : commonAtts, global, <attributeGroup>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
  // ************************************************************************ //
  commonAtts = class(TRemotable)
  private
    FId: Id;
    FId_Specified: boolean;
    function  GetId(Index: Integer): Id;
    procedure SetId(Index: Integer; const AId: Id);
    function  Id_Specified(Index: Integer): boolean;
  published
    property Id: Id  Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
  end;



  // ************************************************************************ //
  // XML       : AttributedURI, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
  // ************************************************************************ //
  AttributedURI = class(TRemotable)
  private
    FText: string;
    FId: Id;
    FId_Specified: boolean;
    function  GetText: string;
    procedure SetText(const Astring: string);
    function  GetId(Index: Integer): Id;
    procedure SetId(Index: Integer; const AId: Id);
    function  Id_Specified(Index: Integer): boolean;
  published
    property Text: string  read GetText write SetText;
    property Id:   Id      Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
  end;

  id2             = string;         { "http://www.w3.org/XML/1998/namespace"[!U][GblAttr] }


  // ************************************************************************ //
  // XML       : UsernameTokenType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  UsernameTokenType = class(TRemotable)
  private
    FId: Id;
    FId_Specified: boolean;
    FUsername: AttributedString;
    function  GetId(Index: Integer): Id;
    procedure SetId(Index: Integer; const AId: Id);
    function  Id_Specified(Index: Integer): boolean;
    function  GetUsername: AttributedString;
    procedure SetUsername(const AAttributedString: AttributedString);
  public
    destructor Destroy; override;
  published
    property Id:       Id                Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
    property Username: AttributedString  read GetUsername write SetUsername;
  end;

  //UsernameToken   = UsernameTokenType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : SecurityTokenReferenceType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  SecurityTokenReferenceType = class(TRemotable)
  private
    FId: Id;
    FId_Specified: boolean;
    FUsage: Usage;
    FUsage_Specified: boolean;
    function  GetId(Index: Integer): Id;
    procedure SetId(Index: Integer; const AId: Id);
    function  Id_Specified(Index: Integer): boolean;
    function  GetUsage(Index: Integer): Usage;
    procedure SetUsage(Index: Integer; const AUsage: Usage);
    function  Usage_Specified(Index: Integer): boolean;
  published
    property Id:    Id     Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
    property Usage: Usage  Index (IS_ATTR or IS_OPTN) read GetUsage write SetUsage stored Usage_Specified;
  end;

  SecurityTokenReference = SecurityTokenReferenceType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : AttributedString, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  AttributedString = class(TRemotable)
  private
    FText: string;
    FId: Id;
    FId_Specified: boolean;
    function  GetText: string;
    procedure SetText(const Astring: string);
    function  GetId(Index: Integer): Id;
    procedure SetId(Index: Integer; const AId: Id);
    function  Id_Specified(Index: Integer): boolean;
  published
    property Text: string  Index (IS_TEXT) read FText write FText;
    property Id:   Id      Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
  end;



  // ************************************************************************ //
  // XML       : EncodedString, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  EncodedString = class(AttributedString)
  private
    FEncodingType: string;
    FEncodingType_Specified: boolean;
    function  GetEncodingType(Index: Integer): string;
    procedure SetEncodingType(Index: Integer; const Astring: string);
    function  EncodingType_Specified(Index: Integer): boolean;
  published
    property EncodingType: string  Index (IS_ATTR or IS_OPTN) read GetEncodingType write SetEncodingType stored EncodingType_Specified;
  end;

  Nonce           = EncodedString;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : KeyIdentifierType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  KeyIdentifierType = class(EncodedString)
  private
    FValueType: string;
    FValueType_Specified: boolean;
    function  GetValueType(Index: Integer): string;
    procedure SetValueType(Index: Integer; const Astring: string);
    function  ValueType_Specified(Index: Integer): boolean;
  published
    property ValueType: string  Index (IS_ATTR or IS_OPTN) read GetValueType write SetValueType stored ValueType_Specified;
  end;

  KeyIdentifier   = KeyIdentifierType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : BinarySecurityTokenType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  BinarySecurityTokenType = class(EncodedString)
  private
    FValueType: string;
    FValueType_Specified: boolean;
    function  GetValueType(Index: Integer): string;
    procedure SetValueType(Index: Integer; const Astring: string);
    function  ValueType_Specified(Index: Integer): boolean;
  published
    property ValueType: string  Index (IS_ATTR or IS_OPTN) read GetValueType write SetValueType stored ValueType_Specified;
  end;

  BinarySecurityToken = BinarySecurityTokenType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : PasswordString, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
  // ************************************************************************ //
  PasswordString = class(AttributedString)
  private
    FType_: string;
    FType__Specified: boolean;
    function  GetType_(Index: Integer): string;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
  published
    property Type_: string  Index (IS_ATTR or IS_OPTN) read GetType_ write SetType_ stored Type__Specified;
  end;

  Password        = PasswordString;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : specialAttrs, global, <attributeGroup>
  // Namespace : http://www.w3.org/XML/1998/namespace
  // ************************************************************************ //
  specialAttrs = class(TRemotable)
  private
    Fbase: base;
    Fbase_Specified: boolean;
    Flang: string;
    Flang_Specified: boolean;
    Fspace: space;
    Fspace_Specified: boolean;
    Fid: id;
    Fid_Specified: boolean;
    function  Getbase(Index: Integer): base;
    procedure Setbase(Index: Integer; const Abase: base);
    function  base_Specified(Index: Integer): boolean;
    function  Getlang(Index: Integer): string;
    procedure Setlang(Index: Integer; const Astring: string);
    function  lang_Specified(Index: Integer): boolean;
    function  Getspace(Index: Integer): space;
    procedure Setspace(Index: Integer; const Aspace: space);
    function  space_Specified(Index: Integer): boolean;
    function  Getid(Index: Integer): id;
    procedure Setid(Index: Integer; const Aid: id);
    function  id_Specified(Index: Integer): boolean;
  published
    property base:  base    Index (IS_ATTR or IS_OPTN) read Getbase write Setbase stored base_Specified;
    property lang:  string  Index (IS_ATTR or IS_OPTN) read Getlang write Setlang stored lang_Specified;
    property space: space   Index (IS_ATTR or IS_OPTN) read Getspace write Setspace stored space_Specified;
    property id:    id      Index (IS_ATTR or IS_OPTN) read Getid write Setid stored id_Specified;
  end;

  Created         = AttributedDateTime;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblElm] }
  Expires         = AttributedDateTime;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : TimestampType, global, <complexType>
  // Namespace : http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
  // ************************************************************************ //
  TimestampType = class(TRemotable)
  private
    FCreated: Created;
    FCreated_Specified: boolean;
    FExpires: Expires;
    FExpires_Specified: boolean;
    FId: Id;
    FId_Specified: boolean;
    function  GetCreated(Index: Integer): Created;
    procedure SetCreated(Index: Integer; const ACreated: Created);
    function  Created_Specified(Index: Integer): boolean;
    function  GetExpires(Index: Integer): Expires;
    procedure SetExpires(Index: Integer; const AExpires: Expires);
    function  Expires_Specified(Index: Integer): boolean;
    function  GetId(Index: Integer): Id;
    procedure SetId(Index: Integer; const AId: Id);
    function  Id_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Created: Created  Index (IS_OPTN) read GetCreated write SetCreated stored Created_Specified;
    property Expires: Expires  Index (IS_OPTN) read GetExpires write SetExpires stored Expires_Specified;
    property Id:      Id       Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
  end;

  Timestamp       = TimestampType;      { "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"[!U][GblElm] }
  KeyName         = string;         { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_KeyName = array of KeyName;          { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : TransformType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  TransformType = class(TRemotable)
  private
    FAlgorithm: string;
    FXPath: Array_Of_string;
    FXPath_Specified: boolean;
    function  GetAlgorithm(Index: Integer): string;
    procedure SetAlgorithm(Index: Integer; const Astring: string);
    function  GetXPath(Index: Integer): Array_Of_string;
    procedure SetXPath(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  XPath_Specified(Index: Integer): boolean;
  published
    property Algorithm: string           Index (IS_ATTR) read GetAlgorithm write SetAlgorithm;
    property XPath:     Array_Of_string  Index (IS_OPTN or IS_UNBD) read GetXPath write SetXPath stored XPath_Specified;
  end;

  Transform       = TransformType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  MgmtData        = string;         { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_MgmtData = array of MgmtData;        { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }

  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Algorithm, Type:string }
  CanonicalizationMethodType = TXMLData;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplxMxd] }


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Algorithm, Type:string }
  DigestMethodType = TXMLData;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplxMxd] }


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Target, Type:string }
  { WARNING - Attribute - Name:Id, Type:string }
  SignaturePropertyType = TXMLData;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplxMxd] }

  SignatureProperty = SignaturePropertyType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_SignatureProperty = array of SignatureProperty;   { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : SignaturePropertiesType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignaturePropertiesType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FSignatureProperty: Array_Of_SignatureProperty;
    function  GetId(Index: Integer): string;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    function  GetSignatureProperty(Index: Integer): Array_Of_SignatureProperty;
    procedure SetSignatureProperty(Index: Integer; const AArray_Of_SignatureProperty: Array_Of_SignatureProperty);
  public
    destructor Destroy; override;
  published
    property Id:                string                      Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
    property SignatureProperty: Array_Of_SignatureProperty  Index (IS_UNBD) read GetSignatureProperty write SetSignatureProperty;
  end;

  SignatureProperties = SignaturePropertiesType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }

  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Id, Type:string }
  { WARNING - Attribute - Name:MimeType, Type:string }
  { WARNING - Attribute - Name:Encoding, Type:string }
  ObjectType      = TXMLData;       { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplxMxd] }

  Object_         = ObjectType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_Object = array of Object_;           { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : SignatureValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureValueType = class(TRemotable)
  private
    FText: TByteDynArray;
    FId: string;
    FId_Specified: boolean;
    function  GetText: TByteDynArray;
    procedure SetText(const ATByteDynArray: TByteDynArray);
    function  GetId(Index: Integer): string;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
  published
    property Text: TByteDynArray  read GetText write SetText;
    property Id:   string         Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
  end;

  SignatureValue  = SignatureValueType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_base64Binary = array of TByteDynArray;   { "http://www.w3.org/2001/XMLSchema"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : X509DataType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509DataType = class(TRemotable)
  private
    FX509IssuerSerial: Array_Of_X509IssuerSerialType;
    FX509IssuerSerial_Specified: boolean;
    FX509SKI: Array_Of_base64Binary;
    FX509SKI_Specified: boolean;
    FX509SubjectName: Array_Of_string;
    FX509SubjectName_Specified: boolean;
    FX509Certificate: Array_Of_base64Binary;
    FX509Certificate_Specified: boolean;
    FX509CRL: Array_Of_base64Binary;
    FX509CRL_Specified: boolean;
    function  GetX509IssuerSerial(Index: Integer): Array_Of_X509IssuerSerialType;
    procedure SetX509IssuerSerial(Index: Integer; const AArray_Of_X509IssuerSerialType: Array_Of_X509IssuerSerialType);
    function  X509IssuerSerial_Specified(Index: Integer): boolean;
    function  GetX509SKI(Index: Integer): Array_Of_base64Binary;
    procedure SetX509SKI(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  X509SKI_Specified(Index: Integer): boolean;
    function  GetX509SubjectName(Index: Integer): Array_Of_string;
    procedure SetX509SubjectName(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  X509SubjectName_Specified(Index: Integer): boolean;
    function  GetX509Certificate(Index: Integer): Array_Of_base64Binary;
    procedure SetX509Certificate(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  X509Certificate_Specified(Index: Integer): boolean;
    function  GetX509CRL(Index: Integer): Array_Of_base64Binary;
    procedure SetX509CRL(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  X509CRL_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property X509IssuerSerial: Array_Of_X509IssuerSerialType  Index (IS_OPTN or IS_UNBD) read GetX509IssuerSerial write SetX509IssuerSerial stored X509IssuerSerial_Specified;
    property X509SKI:          Array_Of_base64Binary          Index (IS_OPTN or IS_UNBD) read GetX509SKI write SetX509SKI stored X509SKI_Specified;
    property X509SubjectName:  Array_Of_string                Index (IS_OPTN or IS_UNBD) read GetX509SubjectName write SetX509SubjectName stored X509SubjectName_Specified;
    property X509Certificate:  Array_Of_base64Binary          Index (IS_OPTN or IS_UNBD) read GetX509Certificate write SetX509Certificate stored X509Certificate_Specified;
    property X509CRL:          Array_Of_base64Binary          Index (IS_OPTN or IS_UNBD) read GetX509CRL write SetX509CRL stored X509CRL_Specified;
  end;

  X509Data        = X509DataType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_X509Data = array of X509Data;        { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }
  SPKISexp        = TByteDynArray;      { "http://www.w3.org/2000/09/xmldsig#"[!U][Alias] }
  SPKIDataType = array of SPKISexp;             { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  SPKIData        = SPKIDataType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_SPKIData = array of SPKIData;        { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }
  CryptoBinary    = TByteDynArray;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblSmpl] }


  // ************************************************************************ //
  // XML       : RSAKeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RSAKeyValueType = class(TRemotable)
  private
    FModulus: CryptoBinary;
    FExponent: CryptoBinary;
    function  GetModulus: CryptoBinary;
    procedure SetModulus(const ACryptoBinary: CryptoBinary);
    function  GetExponent: CryptoBinary;
    procedure SetExponent(const ACryptoBinary: CryptoBinary);
  published
    property Modulus:  CryptoBinary  read GetModulus write SetModulus;
    property Exponent: CryptoBinary  read GetExponent write SetExponent;
  end;

  RSAKeyValue     = RSAKeyValueType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : DSAKeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  DSAKeyValueType = class(TRemotable)
  private
    FP: CryptoBinary;
    FQ: CryptoBinary;
    FG: CryptoBinary;
    FG_Specified: boolean;
    FY: CryptoBinary;
    FJ: CryptoBinary;
    FJ_Specified: boolean;
    FSeed: CryptoBinary;
    FPgenCounter: CryptoBinary;
    function  GetP: CryptoBinary;
    procedure SetP(const ACryptoBinary: CryptoBinary);
    function  GetQ: CryptoBinary;
    procedure SetQ(const ACryptoBinary: CryptoBinary);
    function  GetG(Index: Integer): CryptoBinary;
    procedure SetG(Index: Integer; const ACryptoBinary: CryptoBinary);
    function  G_Specified(Index: Integer): boolean;
    function  GetY: CryptoBinary;
    procedure SetY(const ACryptoBinary: CryptoBinary);
    function  GetJ(Index: Integer): CryptoBinary;
    procedure SetJ(Index: Integer; const ACryptoBinary: CryptoBinary);
    function  J_Specified(Index: Integer): boolean;
    function  GetSeed: CryptoBinary;
    procedure SetSeed(const ACryptoBinary: CryptoBinary);
    function  GetPgenCounter: CryptoBinary;
    procedure SetPgenCounter(const ACryptoBinary: CryptoBinary);
  published
    property P:           CryptoBinary  read GetP write SetP;
    property Q:           CryptoBinary  read GetQ write SetQ;
    property G:           CryptoBinary  Index (IS_OPTN) read GetG write SetG stored G_Specified;
    property Y:           CryptoBinary  read GetY write SetY;
    property J:           CryptoBinary  Index (IS_OPTN) read GetJ write SetJ stored J_Specified;
    property Seed:        CryptoBinary  read GetSeed write SetSeed;
    property PgenCounter: CryptoBinary  read GetPgenCounter write SetPgenCounter;
  end;

  DSAKeyValue     = DSAKeyValueType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : KeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  KeyValueType = class(TRemotable)
  private
    FDSAKeyValue: DSAKeyValue;
    FDSAKeyValue_Specified: boolean;
    FRSAKeyValue: RSAKeyValue;
    FRSAKeyValue_Specified: boolean;
    function  GetDSAKeyValue(Index: Integer): DSAKeyValue;
    procedure SetDSAKeyValue(Index: Integer; const ADSAKeyValue: DSAKeyValue);
    function  DSAKeyValue_Specified(Index: Integer): boolean;
    function  GetRSAKeyValue(Index: Integer): RSAKeyValue;
    procedure SetRSAKeyValue(Index: Integer; const ARSAKeyValue: RSAKeyValue);
    function  RSAKeyValue_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property DSAKeyValue: DSAKeyValue  Index (IS_OPTN) read GetDSAKeyValue write SetDSAKeyValue stored DSAKeyValue_Specified;
    property RSAKeyValue: RSAKeyValue  Index (IS_OPTN) read GetRSAKeyValue write SetRSAKeyValue stored RSAKeyValue_Specified;
  end;

  KeyValue        = KeyValueType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_KeyValue = array of KeyValue;        { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : PGPDataType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  PGPDataType = class(TRemotable)
  private
    FPGPKeyID: TByteDynArray;
    FPGPKeyPacket: TByteDynArray;
    FPGPKeyPacket_Specified: boolean;
    FPGPKeyPacket_: TByteDynArray;
    function  GetPGPKeyID: TByteDynArray;
    procedure SetPGPKeyID(const ATByteDynArray: TByteDynArray);
    function  GetPGPKeyPacket(Index: Integer): TByteDynArray;
    procedure SetPGPKeyPacket(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  PGPKeyPacket_Specified(Index: Integer): boolean;
    function  GetPGPKeyPacket_: TByteDynArray;
    procedure SetPGPKeyPacket_(const ATByteDynArray: TByteDynArray);
  published
    property PGPKeyID:      TByteDynArray  read GetPGPKeyID write SetPGPKeyID;
    property PGPKeyPacket:  TByteDynArray  Index (IS_OPTN) read GetPGPKeyPacket write SetPGPKeyPacket stored PGPKeyPacket_Specified;
    property PGPKeyPacket_: TByteDynArray  read GetPGPKeyPacket_ write SetPGPKeyPacket_;
  end;

  PGPData         = PGPDataType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_PGPData = array of PGPData;          { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }
  DigestValueType = TByteDynArray;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblSmpl] }
  CanonicalizationMethod = CanonicalizationMethodType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  DigestMethod    = DigestMethodType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  DigestValue     = DigestValueType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  TransformsType = array of Transform;          { "http://www.w3.org/2000/09/xmldsig#"[!U][GblCplx] }
  Transforms      = TransformsType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : RetrievalMethodType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RetrievalMethodType = class(TRemotable)
  private
    FURI: string;
    FURI_Specified: boolean;
    FType_: string;
    FType__Specified: boolean;
    FTransforms: Transforms;
    FTransforms_Specified: boolean;
    function  GetURI(Index: Integer): string;
    procedure SetURI(Index: Integer; const Astring: string);
    function  URI_Specified(Index: Integer): boolean;
    function  GetType_(Index: Integer): string;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
    function  GetTransforms(Index: Integer): Transforms;
    procedure SetTransforms(Index: Integer; const ATransforms: Transforms);
    function  Transforms_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property URI:        string      Index (IS_ATTR or IS_OPTN) read GetURI write SetURI stored URI_Specified;
    property Type_:      string      Index (IS_ATTR or IS_OPTN) read GetType_ write SetType_ stored Type__Specified;
    property Transforms: Transforms  Index (IS_OPTN) read GetTransforms write SetTransforms stored Transforms_Specified;
  end;

  RetrievalMethod = RetrievalMethodType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_RetrievalMethod = array of RetrievalMethod;   { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : KeyInfoType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  KeyInfoType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FKeyName: Array_Of_KeyName;
    FKeyName_Specified: boolean;
    FKeyValue: Array_Of_KeyValue;
    FKeyValue_Specified: boolean;
    FRetrievalMethod: Array_Of_RetrievalMethod;
    FRetrievalMethod_Specified: boolean;
    FX509Data: Array_Of_X509Data;
    FX509Data_Specified: boolean;
    FPGPData: Array_Of_PGPData;
    FPGPData_Specified: boolean;
    FSPKIData: Array_Of_SPKIData;
    FSPKIData_Specified: boolean;
    FMgmtData: Array_Of_MgmtData;
    FMgmtData_Specified: boolean;
    function  GetId(Index: Integer): string;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    function  GetKeyName(Index: Integer): Array_Of_KeyName;
    procedure SetKeyName(Index: Integer; const AArray_Of_KeyName: Array_Of_KeyName);
    function  KeyName_Specified(Index: Integer): boolean;
    function  GetKeyValue(Index: Integer): Array_Of_KeyValue;
    procedure SetKeyValue(Index: Integer; const AArray_Of_KeyValue: Array_Of_KeyValue);
    function  KeyValue_Specified(Index: Integer): boolean;
    function  GetRetrievalMethod(Index: Integer): Array_Of_RetrievalMethod;
    procedure SetRetrievalMethod(Index: Integer; const AArray_Of_RetrievalMethod: Array_Of_RetrievalMethod);
    function  RetrievalMethod_Specified(Index: Integer): boolean;
    function  GetX509Data(Index: Integer): Array_Of_X509Data;
    procedure SetX509Data(Index: Integer; const AArray_Of_X509Data: Array_Of_X509Data);
    function  X509Data_Specified(Index: Integer): boolean;
    function  GetPGPData(Index: Integer): Array_Of_PGPData;
    procedure SetPGPData(Index: Integer; const AArray_Of_PGPData: Array_Of_PGPData);
    function  PGPData_Specified(Index: Integer): boolean;
    function  GetSPKIData(Index: Integer): Array_Of_SPKIData;
    procedure SetSPKIData(Index: Integer; const AArray_Of_SPKIData: Array_Of_SPKIData);
    function  SPKIData_Specified(Index: Integer): boolean;
    function  GetMgmtData(Index: Integer): Array_Of_MgmtData;
    procedure SetMgmtData(Index: Integer; const AArray_Of_MgmtData: Array_Of_MgmtData);
    function  MgmtData_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:              string                    Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
    property KeyName:         Array_Of_KeyName          Index (IS_OPTN or IS_UNBD) read GetKeyName write SetKeyName stored KeyName_Specified;
    property KeyValue:        Array_Of_KeyValue         Index (IS_OPTN or IS_UNBD) read GetKeyValue write SetKeyValue stored KeyValue_Specified;
    property RetrievalMethod: Array_Of_RetrievalMethod  Index (IS_OPTN or IS_UNBD) read GetRetrievalMethod write SetRetrievalMethod stored RetrievalMethod_Specified;
    property X509Data:        Array_Of_X509Data         Index (IS_OPTN or IS_UNBD) read GetX509Data write SetX509Data stored X509Data_Specified;
    property PGPData:         Array_Of_PGPData          Index (IS_OPTN or IS_UNBD) read GetPGPData write SetPGPData stored PGPData_Specified;
    property SPKIData:        Array_Of_SPKIData         Index (IS_OPTN or IS_UNBD) read GetSPKIData write SetSPKIData stored SPKIData_Specified;
    property MgmtData:        Array_Of_MgmtData         Index (IS_OPTN or IS_UNBD) read GetMgmtData write SetMgmtData stored MgmtData_Specified;
  end;

  KeyInfo         = KeyInfoType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  HMACOutputLengthType = Int64;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblSmpl] }


  // ************************************************************************ //
  // XML       : SignatureMethodType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureMethodType = class(TRemotable)
  private
    FAlgorithm: string;
    FHMACOutputLength: HMACOutputLengthType;
    FHMACOutputLength_Specified: boolean;
    function  GetAlgorithm(Index: Integer): string;
    procedure SetAlgorithm(Index: Integer; const Astring: string);
    function  GetHMACOutputLength(Index: Integer): HMACOutputLengthType;
    procedure SetHMACOutputLength(Index: Integer; const AHMACOutputLengthType: HMACOutputLengthType);
    function  HMACOutputLength_Specified(Index: Integer): boolean;
  published
    property Algorithm:        string                Index (IS_ATTR) read GetAlgorithm write SetAlgorithm;
    property HMACOutputLength: HMACOutputLengthType  Index (IS_OPTN) read GetHMACOutputLength write SetHMACOutputLength stored HMACOutputLength_Specified;
  end;

  SignatureMethod = SignatureMethodType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : ReferenceType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  ReferenceType2 = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FURI: string;
    FURI_Specified: boolean;
    FType_: string;
    FType__Specified: boolean;
    FTransforms: Transforms;
    FTransforms_Specified: boolean;
    FDigestMethod: DigestMethod;
    FDigestValue: DigestValue;
    function  GetId(Index: Integer): string;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    function  GetURI(Index: Integer): string;
    procedure SetURI(Index: Integer; const Astring: string);
    function  URI_Specified(Index: Integer): boolean;
    function  GetType_(Index: Integer): string;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
    function  GetTransforms(Index: Integer): Transforms;
    procedure SetTransforms(Index: Integer; const ATransforms: Transforms);
    function  Transforms_Specified(Index: Integer): boolean;
    function  GetDigestMethod: DigestMethod;
    procedure SetDigestMethod(const ADigestMethod: DigestMethod);
    function  GetDigestValue: DigestValue;
    procedure SetDigestValue(const ADigestValue: DigestValue);
  public
    destructor Destroy; override;
  published
    property Id:           string        Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
    property URI:          string        Index (IS_ATTR or IS_OPTN) read GetURI write SetURI stored URI_Specified;
    property Type_:        string        Index (IS_ATTR or IS_OPTN) read GetType_ write SetType_ stored Type__Specified;
    property Transforms:   Transforms    Index (IS_OPTN) read GetTransforms write SetTransforms stored Transforms_Specified;
    property DigestMethod: DigestMethod  read GetDigestMethod write SetDigestMethod;
    property DigestValue:  DigestValue   read GetDigestValue write SetDigestValue;
  end;

  Reference2      = ReferenceType2;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }
  Array_Of_Reference = array of Reference2;     { "http://www.w3.org/2000/09/xmldsig#"[!U][GblUbnd] }


  // ************************************************************************ //
  // XML       : SignedInfoType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignedInfoType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FCanonicalizationMethod: CanonicalizationMethod;
    FSignatureMethod: SignatureMethod;
    FReference: Array_Of_Reference;
    function  GetId(Index: Integer): string;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    function  GetCanonicalizationMethod: CanonicalizationMethod;
    procedure SetCanonicalizationMethod(const ACanonicalizationMethod: CanonicalizationMethod);
    function  GetSignatureMethod: SignatureMethod;
    procedure SetSignatureMethod(const ASignatureMethod: SignatureMethod);
    function  GetReference(Index: Integer): Array_Of_Reference;
    procedure SetReference(Index: Integer; const AArray_Of_Reference: Array_Of_Reference);
  public
    destructor Destroy; override;
  published
    property Id:                     string                  Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
    property CanonicalizationMethod: CanonicalizationMethod  read GetCanonicalizationMethod write SetCanonicalizationMethod;
    property SignatureMethod:        SignatureMethod         read GetSignatureMethod write SetSignatureMethod;
    property Reference:              Array_Of_Reference      Index (IS_UNBD) read GetReference write SetReference;
  end;

  SignedInfo      = SignedInfoType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : SignatureType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FSignedInfo: SignedInfo;
    FSignatureValue: SignatureValue;
    FKeyInfo: KeyInfo;
    FKeyInfo_Specified: boolean;
    FObject_: Array_Of_Object;
    FObject__Specified: boolean;
    function  GetId(Index: Integer): string;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    function  GetSignedInfo: SignedInfo;
    procedure SetSignedInfo(const ASignedInfo: SignedInfo);
    function  GetSignatureValue: SignatureValue;
    procedure SetSignatureValue(const ASignatureValue: SignatureValue);
    function  GetKeyInfo(Index: Integer): KeyInfo;
    procedure SetKeyInfo(Index: Integer; const AKeyInfo: KeyInfo);
    function  KeyInfo_Specified(Index: Integer): boolean;
    function  GetObject_(Index: Integer): Array_Of_Object;
    procedure SetObject_(Index: Integer; const AArray_Of_Object: Array_Of_Object);
    function  Object__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:             string           Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
    property SignedInfo:     SignedInfo       read GetSignedInfo write SetSignedInfo;
    property SignatureValue: SignatureValue   read GetSignatureValue write SetSignatureValue;
    property KeyInfo:        KeyInfo          Index (IS_OPTN) read GetKeyInfo write SetKeyInfo stored KeyInfo_Specified;
    property Object_:        Array_Of_Object  Index (IS_OPTN or IS_UNBD) read GetObject_ write SetObject_ stored Object__Specified;
  end;

  Signature       = SignatureType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }


  // ************************************************************************ //
  // XML       : ManifestType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  ManifestType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FReference: Array_Of_Reference;
    function  GetId(Index: Integer): string;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    function  GetReference(Index: Integer): Array_Of_Reference;
    procedure SetReference(Index: Integer; const AArray_Of_Reference: Array_Of_Reference);
  public
    destructor Destroy; override;
  published
    property Id:        string              Index (IS_ATTR or IS_OPTN) read GetId write SetId stored Id_Specified;
    property Reference: Array_Of_Reference  Index (IS_UNBD) read GetReference write SetReference;
  end;

  Manifest        = ManifestType;      { "http://www.w3.org/2000/09/xmldsig#"[!U][GblElm] }


implementation
  uses System.SysUtils;

function ReferenceType.GetURI(Index: Integer): string;
begin
  Result := FURI;
end;

procedure ReferenceType.SetURI(Index: Integer; const Astring: string);
begin
  FURI := Astring;
  FURI_Specified := True;
end;

function ReferenceType.URI_Specified(Index: Integer): boolean;
begin
  Result := FURI_Specified;
end;

function ReferenceType.GetValueType(Index: Integer): string;
begin
  Result := FValueType;
end;

procedure ReferenceType.SetValueType(Index: Integer; const Astring: string);
begin
  FValueType := Astring;
  FValueType_Specified := True;
end;

function ReferenceType.ValueType_Specified(Index: Integer): boolean;
begin
  Result := FValueType_Specified;
end;

function EmbeddedType.GetValueType(Index: Integer): string;
begin
  Result := FValueType;
end;

procedure EmbeddedType.SetValueType(Index: Integer; const Astring: string);
begin
  FValueType := Astring;
  FValueType_Specified := True;
end;

function EmbeddedType.ValueType_Specified(Index: Integer): boolean;
begin
  Result := FValueType_Specified;
end;

function X509IssuerSerialType.GetX509IssuerName: string;
begin
  Result := FX509IssuerName;
end;

procedure X509IssuerSerialType.SetX509IssuerName(const Astring: string);
begin
  FX509IssuerName := Astring;
end;

function X509IssuerSerialType.GetX509SerialNumber: Int64;
begin
  Result := FX509SerialNumber;
end;

procedure X509IssuerSerialType.SetX509SerialNumber(const AInt64: Int64);
begin
  FX509SerialNumber := AInt64;
end;

function AttributedDateTime.GetText: string;
begin
  Result := FText;
end;

procedure AttributedDateTime.SetText(const Astring: string);
begin
  FText := Astring;
end;

function AttributedDateTime.GetId(Index: Integer): Id;
begin
  Result := FId;
end;

procedure AttributedDateTime.SetId(Index: Integer; const AId: Id);
begin
  FId := AId;
  FId_Specified := True;
end;

function AttributedDateTime.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function commonAtts.GetId(Index: Integer): Id;
begin
  Result := FId;
end;

procedure commonAtts.SetId(Index: Integer; const AId: Id);
begin
  FId := AId;
  FId_Specified := True;
end;

function commonAtts.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function AttributedURI.GetText: string;
begin
  Result := FText;
end;

procedure AttributedURI.SetText(const Astring: string);
begin
  FText := Astring;
end;

function AttributedURI.GetId(Index: Integer): Id;
begin
  Result := FId;
end;

procedure AttributedURI.SetId(Index: Integer; const AId: Id);
begin
  FId := AId;
  FId_Specified := True;
end;

function AttributedURI.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

destructor UsernameTokenType.Destroy;
begin
  System.SysUtils.FreeAndNil(FUsername);
  inherited Destroy;
end;

function UsernameTokenType.GetId(Index: Integer): Id;
begin
  Result := FId;
end;

procedure UsernameTokenType.SetId(Index: Integer; const AId: Id);
begin
  FId := AId;
  FId_Specified := True;
end;

function UsernameTokenType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function UsernameTokenType.GetUsername: AttributedString;
begin
  Result := FUsername;
end;

procedure UsernameTokenType.SetUsername(const AAttributedString: AttributedString);
begin
  FUsername := AAttributedString;
end;

function SecurityTokenReferenceType.GetId(Index: Integer): Id;
begin
  Result := FId;
end;

procedure SecurityTokenReferenceType.SetId(Index: Integer; const AId: Id);
begin
  FId := AId;
  FId_Specified := True;
end;

function SecurityTokenReferenceType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function SecurityTokenReferenceType.GetUsage(Index: Integer): Usage;
begin
  Result := FUsage;
end;

procedure SecurityTokenReferenceType.SetUsage(Index: Integer; const AUsage: Usage);
begin
  FUsage := AUsage;
  FUsage_Specified := True;
end;

function SecurityTokenReferenceType.Usage_Specified(Index: Integer): boolean;
begin
  Result := FUsage_Specified;
end;

function AttributedString.GetText: string;
begin
  Result := FText;
end;

procedure AttributedString.SetText(const Astring: string);
begin
  FText := Astring;
end;

function AttributedString.GetId(Index: Integer): Id;
begin
  Result := FId;
end;

procedure AttributedString.SetId(Index: Integer; const AId: Id);
begin
  FId := AId;
  FId_Specified := True;
end;

function AttributedString.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function EncodedString.GetEncodingType(Index: Integer): string;
begin
  Result := FEncodingType;
end;

procedure EncodedString.SetEncodingType(Index: Integer; const Astring: string);
begin
  FEncodingType := Astring;
  FEncodingType_Specified := True;
end;

function EncodedString.EncodingType_Specified(Index: Integer): boolean;
begin
  Result := FEncodingType_Specified;
end;

function KeyIdentifierType.GetValueType(Index: Integer): string;
begin
  Result := FValueType;
end;

procedure KeyIdentifierType.SetValueType(Index: Integer; const Astring: string);
begin
  FValueType := Astring;
  FValueType_Specified := True;
end;

function KeyIdentifierType.ValueType_Specified(Index: Integer): boolean;
begin
  Result := FValueType_Specified;
end;

function BinarySecurityTokenType.GetValueType(Index: Integer): string;
begin
  Result := FValueType;
end;

procedure BinarySecurityTokenType.SetValueType(Index: Integer; const Astring: string);
begin
  FValueType := Astring;
  FValueType_Specified := True;
end;

function BinarySecurityTokenType.ValueType_Specified(Index: Integer): boolean;
begin
  Result := FValueType_Specified;
end;

function PasswordString.GetType_(Index: Integer): string;
begin
  Result := FType_;
end;

procedure PasswordString.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function PasswordString.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

function specialAttrs.Getbase(Index: Integer): base;
begin
  Result := Fbase;
end;

procedure specialAttrs.Setbase(Index: Integer; const Abase: base);
begin
  Fbase := Abase;
  Fbase_Specified := True;
end;

function specialAttrs.base_Specified(Index: Integer): boolean;
begin
  Result := Fbase_Specified;
end;

function specialAttrs.Getlang(Index: Integer): string;
begin
  Result := Flang;
end;

procedure specialAttrs.Setlang(Index: Integer; const Astring: string);
begin
  Flang := Astring;
  Flang_Specified := True;
end;

function specialAttrs.lang_Specified(Index: Integer): boolean;
begin
  Result := Flang_Specified;
end;

function specialAttrs.Getspace(Index: Integer): space;
begin
  Result := Fspace;
end;

procedure specialAttrs.Setspace(Index: Integer; const Aspace: space);
begin
  Fspace := Aspace;
  Fspace_Specified := True;
end;

function specialAttrs.space_Specified(Index: Integer): boolean;
begin
  Result := Fspace_Specified;
end;

function specialAttrs.Getid(Index: Integer): id;
begin
  Result := Fid;
end;

procedure specialAttrs.Setid(Index: Integer; const Aid: id);
begin
  Fid := Aid;
  Fid_Specified := True;
end;

function specialAttrs.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

destructor TimestampType.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreated);
  System.SysUtils.FreeAndNil(FExpires);
  inherited Destroy;
end;

function TimestampType.GetCreated(Index: Integer): Created;
begin
  Result := FCreated;
end;

procedure TimestampType.SetCreated(Index: Integer; const ACreated: Created);
begin
  FCreated := ACreated;
  FCreated_Specified := True;
end;

function TimestampType.Created_Specified(Index: Integer): boolean;
begin
  Result := FCreated_Specified;
end;

function TimestampType.GetExpires(Index: Integer): Expires;
begin
  Result := FExpires;
end;

procedure TimestampType.SetExpires(Index: Integer; const AExpires: Expires);
begin
  FExpires := AExpires;
  FExpires_Specified := True;
end;

function TimestampType.Expires_Specified(Index: Integer): boolean;
begin
  Result := FExpires_Specified;
end;

function TimestampType.GetId(Index: Integer): Id;
begin
  Result := FId;
end;

procedure TimestampType.SetId(Index: Integer; const AId: Id);
begin
  FId := AId;
  FId_Specified := True;
end;

function TimestampType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function TransformType.GetAlgorithm(Index: Integer): string;
begin
  Result := FAlgorithm;
end;

procedure TransformType.SetAlgorithm(Index: Integer; const Astring: string);
begin
  FAlgorithm := Astring;
end;

function TransformType.GetXPath(Index: Integer): Array_Of_string;
begin
  Result := FXPath;
end;

procedure TransformType.SetXPath(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FXPath := AArray_Of_string;
  FXPath_Specified := True;
end;

function TransformType.XPath_Specified(Index: Integer): boolean;
begin
  Result := FXPath_Specified;
end;

destructor SignaturePropertiesType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSignatureProperty)-1 do
    System.SysUtils.FreeAndNil(FSignatureProperty[I]);
  System.SetLength(FSignatureProperty, 0);
  inherited Destroy;
end;

function SignaturePropertiesType.GetId(Index: Integer): string;
begin
  Result := FId;
end;

procedure SignaturePropertiesType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignaturePropertiesType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function SignaturePropertiesType.GetSignatureProperty(Index: Integer): Array_Of_SignatureProperty;
begin
  Result := FSignatureProperty;
end;

procedure SignaturePropertiesType.SetSignatureProperty(Index: Integer; const AArray_Of_SignatureProperty: Array_Of_SignatureProperty);
begin
  FSignatureProperty := AArray_Of_SignatureProperty;
end;

function SignatureValueType.GetText: TByteDynArray;
begin
  Result := FText;
end;

procedure SignatureValueType.SetText(const ATByteDynArray: TByteDynArray);
begin
  FText := ATByteDynArray;
end;

function SignatureValueType.GetId(Index: Integer): string;
begin
  Result := FId;
end;

procedure SignatureValueType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignatureValueType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

destructor X509DataType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FX509IssuerSerial)-1 do
    System.SysUtils.FreeAndNil(FX509IssuerSerial[I]);
  System.SetLength(FX509IssuerSerial, 0);
  inherited Destroy;
end;

function X509DataType.GetX509IssuerSerial(Index: Integer): Array_Of_X509IssuerSerialType;
begin
  Result := FX509IssuerSerial;
end;

procedure X509DataType.SetX509IssuerSerial(Index: Integer; const AArray_Of_X509IssuerSerialType: Array_Of_X509IssuerSerialType);
begin
  FX509IssuerSerial := AArray_Of_X509IssuerSerialType;
  FX509IssuerSerial_Specified := True;
end;

function X509DataType.X509IssuerSerial_Specified(Index: Integer): boolean;
begin
  Result := FX509IssuerSerial_Specified;
end;

function X509DataType.GetX509SKI(Index: Integer): Array_Of_base64Binary;
begin
  Result := FX509SKI;
end;

procedure X509DataType.SetX509SKI(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FX509SKI := AArray_Of_base64Binary;
  FX509SKI_Specified := True;
end;

function X509DataType.X509SKI_Specified(Index: Integer): boolean;
begin
  Result := FX509SKI_Specified;
end;

function X509DataType.GetX509SubjectName(Index: Integer): Array_Of_string;
begin
  Result := FX509SubjectName;
end;

procedure X509DataType.SetX509SubjectName(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FX509SubjectName := AArray_Of_string;
  FX509SubjectName_Specified := True;
end;

function X509DataType.X509SubjectName_Specified(Index: Integer): boolean;
begin
  Result := FX509SubjectName_Specified;
end;

function X509DataType.GetX509Certificate(Index: Integer): Array_Of_base64Binary;
begin
  Result := FX509Certificate;
end;

procedure X509DataType.SetX509Certificate(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FX509Certificate := AArray_Of_base64Binary;
  FX509Certificate_Specified := True;
end;

function X509DataType.X509Certificate_Specified(Index: Integer): boolean;
begin
  Result := FX509Certificate_Specified;
end;

function X509DataType.GetX509CRL(Index: Integer): Array_Of_base64Binary;
begin
  Result := FX509CRL;
end;

procedure X509DataType.SetX509CRL(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FX509CRL := AArray_Of_base64Binary;
  FX509CRL_Specified := True;
end;

function X509DataType.X509CRL_Specified(Index: Integer): boolean;
begin
  Result := FX509CRL_Specified;
end;

function RSAKeyValueType.GetModulus: CryptoBinary;
begin
  Result := FModulus;
end;

procedure RSAKeyValueType.SetModulus(const ACryptoBinary: CryptoBinary);
begin
  FModulus := ACryptoBinary;
end;

function RSAKeyValueType.GetExponent: CryptoBinary;
begin
  Result := FExponent;
end;

procedure RSAKeyValueType.SetExponent(const ACryptoBinary: CryptoBinary);
begin
  FExponent := ACryptoBinary;
end;

function DSAKeyValueType.GetP: CryptoBinary;
begin
  Result := FP;
end;

procedure DSAKeyValueType.SetP(const ACryptoBinary: CryptoBinary);
begin
  FP := ACryptoBinary;
end;

function DSAKeyValueType.GetQ: CryptoBinary;
begin
  Result := FQ;
end;

procedure DSAKeyValueType.SetQ(const ACryptoBinary: CryptoBinary);
begin
  FQ := ACryptoBinary;
end;

function DSAKeyValueType.GetG(Index: Integer): CryptoBinary;
begin
  Result := FG;
end;

procedure DSAKeyValueType.SetG(Index: Integer; const ACryptoBinary: CryptoBinary);
begin
  FG := ACryptoBinary;
  FG_Specified := True;
end;

function DSAKeyValueType.G_Specified(Index: Integer): boolean;
begin
  Result := FG_Specified;
end;

function DSAKeyValueType.GetY: CryptoBinary;
begin
  Result := FY;
end;

procedure DSAKeyValueType.SetY(const ACryptoBinary: CryptoBinary);
begin
  FY := ACryptoBinary;
end;

function DSAKeyValueType.GetJ(Index: Integer): CryptoBinary;
begin
  Result := FJ;
end;

procedure DSAKeyValueType.SetJ(Index: Integer; const ACryptoBinary: CryptoBinary);
begin
  FJ := ACryptoBinary;
  FJ_Specified := True;
end;

function DSAKeyValueType.J_Specified(Index: Integer): boolean;
begin
  Result := FJ_Specified;
end;

function DSAKeyValueType.GetSeed: CryptoBinary;
begin
  Result := FSeed;
end;

procedure DSAKeyValueType.SetSeed(const ACryptoBinary: CryptoBinary);
begin
  FSeed := ACryptoBinary;
end;

function DSAKeyValueType.GetPgenCounter: CryptoBinary;
begin
  Result := FPgenCounter;
end;

procedure DSAKeyValueType.SetPgenCounter(const ACryptoBinary: CryptoBinary);
begin
  FPgenCounter := ACryptoBinary;
end;

destructor KeyValueType.Destroy;
begin
  System.SysUtils.FreeAndNil(FDSAKeyValue);
  System.SysUtils.FreeAndNil(FRSAKeyValue);
  inherited Destroy;
end;

function KeyValueType.GetDSAKeyValue(Index: Integer): DSAKeyValue;
begin
  Result := FDSAKeyValue;
end;

procedure KeyValueType.SetDSAKeyValue(Index: Integer; const ADSAKeyValue: DSAKeyValue);
begin
  FDSAKeyValue := ADSAKeyValue;
  FDSAKeyValue_Specified := True;
end;

function KeyValueType.DSAKeyValue_Specified(Index: Integer): boolean;
begin
  Result := FDSAKeyValue_Specified;
end;

function KeyValueType.GetRSAKeyValue(Index: Integer): RSAKeyValue;
begin
  Result := FRSAKeyValue;
end;

procedure KeyValueType.SetRSAKeyValue(Index: Integer; const ARSAKeyValue: RSAKeyValue);
begin
  FRSAKeyValue := ARSAKeyValue;
  FRSAKeyValue_Specified := True;
end;

function KeyValueType.RSAKeyValue_Specified(Index: Integer): boolean;
begin
  Result := FRSAKeyValue_Specified;
end;

function PGPDataType.GetPGPKeyID: TByteDynArray;
begin
  Result := FPGPKeyID;
end;

procedure PGPDataType.SetPGPKeyID(const ATByteDynArray: TByteDynArray);
begin
  FPGPKeyID := ATByteDynArray;
end;

function PGPDataType.GetPGPKeyPacket(Index: Integer): TByteDynArray;
begin
  Result := FPGPKeyPacket;
end;

procedure PGPDataType.SetPGPKeyPacket(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FPGPKeyPacket := ATByteDynArray;
  FPGPKeyPacket_Specified := True;
end;

function PGPDataType.PGPKeyPacket_Specified(Index: Integer): boolean;
begin
  Result := FPGPKeyPacket_Specified;
end;

function PGPDataType.GetPGPKeyPacket_: TByteDynArray;
begin
  Result := FPGPKeyPacket_;
end;

procedure PGPDataType.SetPGPKeyPacket_(const ATByteDynArray: TByteDynArray);
begin
  FPGPKeyPacket_ := ATByteDynArray;
end;

destructor RetrievalMethodType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTransforms)-1 do
    System.SysUtils.FreeAndNil(FTransforms[I]);
  System.SetLength(FTransforms, 0);
  inherited Destroy;
end;

function RetrievalMethodType.GetURI(Index: Integer): string;
begin
  Result := FURI;
end;

procedure RetrievalMethodType.SetURI(Index: Integer; const Astring: string);
begin
  FURI := Astring;
  FURI_Specified := True;
end;

function RetrievalMethodType.URI_Specified(Index: Integer): boolean;
begin
  Result := FURI_Specified;
end;

function RetrievalMethodType.GetType_(Index: Integer): string;
begin
  Result := FType_;
end;

procedure RetrievalMethodType.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function RetrievalMethodType.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

function RetrievalMethodType.GetTransforms(Index: Integer): Transforms;
begin
  Result := FTransforms;
end;

procedure RetrievalMethodType.SetTransforms(Index: Integer; const ATransforms: Transforms);
begin
  FTransforms := ATransforms;
  FTransforms_Specified := True;
end;

function RetrievalMethodType.Transforms_Specified(Index: Integer): boolean;
begin
  Result := FTransforms_Specified;
end;

destructor KeyInfoType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FKeyValue)-1 do
    System.SysUtils.FreeAndNil(FKeyValue[I]);
  System.SetLength(FKeyValue, 0);
  for I := 0 to System.Length(FRetrievalMethod)-1 do
    System.SysUtils.FreeAndNil(FRetrievalMethod[I]);
  System.SetLength(FRetrievalMethod, 0);
  for I := 0 to System.Length(FX509Data)-1 do
    System.SysUtils.FreeAndNil(FX509Data[I]);
  System.SetLength(FX509Data, 0);
  for I := 0 to System.Length(FPGPData)-1 do
    System.SysUtils.FreeAndNil(FPGPData[I]);
  System.SetLength(FPGPData, 0);
  inherited Destroy;
end;

function KeyInfoType.GetId(Index: Integer): string;
begin
  Result := FId;
end;

procedure KeyInfoType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function KeyInfoType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function KeyInfoType.GetKeyName(Index: Integer): Array_Of_KeyName;
begin
  Result := FKeyName;
end;

procedure KeyInfoType.SetKeyName(Index: Integer; const AArray_Of_KeyName: Array_Of_KeyName);
begin
  FKeyName := AArray_Of_KeyName;
  FKeyName_Specified := True;
end;

function KeyInfoType.KeyName_Specified(Index: Integer): boolean;
begin
  Result := FKeyName_Specified;
end;

function KeyInfoType.GetKeyValue(Index: Integer): Array_Of_KeyValue;
begin
  Result := FKeyValue;
end;

procedure KeyInfoType.SetKeyValue(Index: Integer; const AArray_Of_KeyValue: Array_Of_KeyValue);
begin
  FKeyValue := AArray_Of_KeyValue;
  FKeyValue_Specified := True;
end;

function KeyInfoType.KeyValue_Specified(Index: Integer): boolean;
begin
  Result := FKeyValue_Specified;
end;

function KeyInfoType.GetRetrievalMethod(Index: Integer): Array_Of_RetrievalMethod;
begin
  Result := FRetrievalMethod;
end;

procedure KeyInfoType.SetRetrievalMethod(Index: Integer; const AArray_Of_RetrievalMethod: Array_Of_RetrievalMethod);
begin
  FRetrievalMethod := AArray_Of_RetrievalMethod;
  FRetrievalMethod_Specified := True;
end;

function KeyInfoType.RetrievalMethod_Specified(Index: Integer): boolean;
begin
  Result := FRetrievalMethod_Specified;
end;

function KeyInfoType.GetX509Data(Index: Integer): Array_Of_X509Data;
begin
  Result := FX509Data;
end;

procedure KeyInfoType.SetX509Data(Index: Integer; const AArray_Of_X509Data: Array_Of_X509Data);
begin
  FX509Data := AArray_Of_X509Data;
  FX509Data_Specified := True;
end;

function KeyInfoType.X509Data_Specified(Index: Integer): boolean;
begin
  Result := FX509Data_Specified;
end;

function KeyInfoType.GetPGPData(Index: Integer): Array_Of_PGPData;
begin
  Result := FPGPData;
end;

procedure KeyInfoType.SetPGPData(Index: Integer; const AArray_Of_PGPData: Array_Of_PGPData);
begin
  FPGPData := AArray_Of_PGPData;
  FPGPData_Specified := True;
end;

function KeyInfoType.PGPData_Specified(Index: Integer): boolean;
begin
  Result := FPGPData_Specified;
end;

function KeyInfoType.GetSPKIData(Index: Integer): Array_Of_SPKIData;
begin
  Result := FSPKIData;
end;

procedure KeyInfoType.SetSPKIData(Index: Integer; const AArray_Of_SPKIData: Array_Of_SPKIData);
begin
  FSPKIData := AArray_Of_SPKIData;
  FSPKIData_Specified := True;
end;

function KeyInfoType.SPKIData_Specified(Index: Integer): boolean;
begin
  Result := FSPKIData_Specified;
end;

function KeyInfoType.GetMgmtData(Index: Integer): Array_Of_MgmtData;
begin
  Result := FMgmtData;
end;

procedure KeyInfoType.SetMgmtData(Index: Integer; const AArray_Of_MgmtData: Array_Of_MgmtData);
begin
  FMgmtData := AArray_Of_MgmtData;
  FMgmtData_Specified := True;
end;

function KeyInfoType.MgmtData_Specified(Index: Integer): boolean;
begin
  Result := FMgmtData_Specified;
end;

function SignatureMethodType.GetAlgorithm(Index: Integer): string;
begin
  Result := FAlgorithm;
end;

procedure SignatureMethodType.SetAlgorithm(Index: Integer; const Astring: string);
begin
  FAlgorithm := Astring;
end;

function SignatureMethodType.GetHMACOutputLength(Index: Integer): HMACOutputLengthType;
begin
  Result := FHMACOutputLength;
end;

procedure SignatureMethodType.SetHMACOutputLength(Index: Integer; const AHMACOutputLengthType: HMACOutputLengthType);
begin
  FHMACOutputLength := AHMACOutputLengthType;
  FHMACOutputLength_Specified := True;
end;

function SignatureMethodType.HMACOutputLength_Specified(Index: Integer): boolean;
begin
  Result := FHMACOutputLength_Specified;
end;

destructor ReferenceType2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTransforms)-1 do
    System.SysUtils.FreeAndNil(FTransforms[I]);
  System.SetLength(FTransforms, 0);
  System.SysUtils.FreeAndNil(FDigestMethod);
  inherited Destroy;
end;

function ReferenceType2.GetId(Index: Integer): string;
begin
  Result := FId;
end;

procedure ReferenceType2.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function ReferenceType2.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function ReferenceType2.GetURI(Index: Integer): string;
begin
  Result := FURI;
end;

procedure ReferenceType2.SetURI(Index: Integer; const Astring: string);
begin
  FURI := Astring;
  FURI_Specified := True;
end;

function ReferenceType2.URI_Specified(Index: Integer): boolean;
begin
  Result := FURI_Specified;
end;

function ReferenceType2.GetType_(Index: Integer): string;
begin
  Result := FType_;
end;

procedure ReferenceType2.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function ReferenceType2.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

function ReferenceType2.GetTransforms(Index: Integer): Transforms;
begin
  Result := FTransforms;
end;

procedure ReferenceType2.SetTransforms(Index: Integer; const ATransforms: Transforms);
begin
  FTransforms := ATransforms;
  FTransforms_Specified := True;
end;

function ReferenceType2.Transforms_Specified(Index: Integer): boolean;
begin
  Result := FTransforms_Specified;
end;

function ReferenceType2.GetDigestMethod: DigestMethod;
begin
  Result := FDigestMethod;
end;

procedure ReferenceType2.SetDigestMethod(const ADigestMethod: DigestMethod);
begin
  FDigestMethod := ADigestMethod;
end;

function ReferenceType2.GetDigestValue: DigestValue;
begin
  Result := FDigestValue;
end;

procedure ReferenceType2.SetDigestValue(const ADigestValue: DigestValue);
begin
  FDigestValue := ADigestValue;
end;

destructor SignedInfoType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FReference)-1 do
    System.SysUtils.FreeAndNil(FReference[I]);
  System.SetLength(FReference, 0);
  System.SysUtils.FreeAndNil(FCanonicalizationMethod);
  System.SysUtils.FreeAndNil(FSignatureMethod);
  inherited Destroy;
end;

function SignedInfoType.GetId(Index: Integer): string;
begin
  Result := FId;
end;

procedure SignedInfoType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignedInfoType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function SignedInfoType.GetCanonicalizationMethod: CanonicalizationMethod;
begin
  Result := FCanonicalizationMethod;
end;

procedure SignedInfoType.SetCanonicalizationMethod(const ACanonicalizationMethod: CanonicalizationMethod);
begin
  FCanonicalizationMethod := ACanonicalizationMethod;
end;

function SignedInfoType.GetSignatureMethod: SignatureMethod;
begin
  Result := FSignatureMethod;
end;

procedure SignedInfoType.SetSignatureMethod(const ASignatureMethod: SignatureMethod);
begin
  FSignatureMethod := ASignatureMethod;
end;

function SignedInfoType.GetReference(Index: Integer): Array_Of_Reference;
begin
  Result := FReference;
end;

procedure SignedInfoType.SetReference(Index: Integer; const AArray_Of_Reference: Array_Of_Reference);
begin
  FReference := AArray_Of_Reference;
end;

destructor SignatureType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FObject_)-1 do
    System.SysUtils.FreeAndNil(FObject_[I]);
  System.SetLength(FObject_, 0);
  System.SysUtils.FreeAndNil(FSignedInfo);
  System.SysUtils.FreeAndNil(FSignatureValue);
  System.SysUtils.FreeAndNil(FKeyInfo);
  inherited Destroy;
end;

function SignatureType.GetId(Index: Integer): string;
begin
  Result := FId;
end;

procedure SignatureType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignatureType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function SignatureType.GetSignedInfo: SignedInfo;
begin
  Result := FSignedInfo;
end;

procedure SignatureType.SetSignedInfo(const ASignedInfo: SignedInfo);
begin
  FSignedInfo := ASignedInfo;
end;

function SignatureType.GetSignatureValue: SignatureValue;
begin
  Result := FSignatureValue;
end;

procedure SignatureType.SetSignatureValue(const ASignatureValue: SignatureValue);
begin
  FSignatureValue := ASignatureValue;
end;

function SignatureType.GetKeyInfo(Index: Integer): KeyInfo;
begin
  Result := FKeyInfo;
end;

procedure SignatureType.SetKeyInfo(Index: Integer; const AKeyInfo: KeyInfo);
begin
  FKeyInfo := AKeyInfo;
  FKeyInfo_Specified := True;
end;

function SignatureType.KeyInfo_Specified(Index: Integer): boolean;
begin
  Result := FKeyInfo_Specified;
end;

function SignatureType.GetObject_(Index: Integer): Array_Of_Object;
begin
  Result := FObject_;
end;

procedure SignatureType.SetObject_(Index: Integer; const AArray_Of_Object: Array_Of_Object);
begin
  FObject_ := AArray_Of_Object;
  FObject__Specified := True;
end;

function SignatureType.Object__Specified(Index: Integer): boolean;
begin
  Result := FObject__Specified;
end;

destructor ManifestType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FReference)-1 do
    System.SysUtils.FreeAndNil(FReference[I]);
  System.SetLength(FReference, 0);
  inherited Destroy;
end;

function ManifestType.GetId(Index: Integer): string;
begin
  Result := FId;
end;

procedure ManifestType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function ManifestType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

function ManifestType.GetReference(Index: Integer): Array_Of_Reference;
begin
  Result := FReference;
end;

procedure ManifestType.SetReference(Index: Integer; const AArray_Of_Reference: Array_Of_Reference);
begin
  FReference := AArray_Of_Reference;
end;

initialization
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_X509IssuerSerialType), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_X509IssuerSerialType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FaultcodeEnum), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'FaultcodeEnum');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FaultcodeEnum), 'wsse_UnsupportedSecurityToken', 'wsse:UnsupportedSecurityToken');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FaultcodeEnum), 'wsse_UnsupportedAlgorithm', 'wsse:UnsupportedAlgorithm');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FaultcodeEnum), 'wsse_InvalidSecurity', 'wsse:InvalidSecurity');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FaultcodeEnum), 'wsse_InvalidSecurityToken', 'wsse:InvalidSecurityToken');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FaultcodeEnum), 'wsse_FailedAuthentication', 'wsse:FailedAuthentication');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FaultcodeEnum), 'wsse_FailedCheck', 'wsse:FailedCheck');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FaultcodeEnum), 'wsse_SecurityTokenUnavailable', 'wsse:SecurityTokenUnavailable');
  RemClassRegistry.RegisterXSClass(SecurityHeaderType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'SecurityHeaderType');
  RemClassRegistry.RegisterXSClass(TransformationParametersType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'TransformationParametersType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TransformationParameters), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'TransformationParameters');
 // RemClassRegistry.RegisterXSInfo(TypeInfo(Security), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'Security');
  RemClassRegistry.RegisterXSInfo(TypeInfo(base), 'http://www.w3.org/XML/1998/namespace', 'base');
  RemClassRegistry.RegisterXSClass(ReferenceType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'ReferenceType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Reference), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'Reference');
  RemClassRegistry.RegisterXSClass(EmbeddedType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'EmbeddedType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Embedded), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'Embedded');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tUsage), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'tUsage');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Usage), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'Usage');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(X509IssuerSerialType, 'http://www.w3.org/2000/09/xmldsig#', 'X509IssuerSerialType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Id), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'Id');
  RemClassRegistry.RegisterXSClass(AttributedDateTime, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'AttributedDateTime');
  RemClassRegistry.RegisterXSInfo(TypeInfo(commonAtts), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'commonAtts');
  RemClassRegistry.RegisterXSClass(AttributedURI, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'AttributedURI');
  RemClassRegistry.RegisterXSInfo(TypeInfo(id2), 'http://www.w3.org/XML/1998/namespace', 'id2', 'id');
  RemClassRegistry.RegisterXSClass(UsernameTokenType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'UsernameTokenType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UsernameTokenType), 'Id', '[Namespace="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"]');
  //RemClassRegistry.RegisterXSInfo(TypeInfo(UsernameToken), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'UsernameToken');
  RemClassRegistry.RegisterXSClass(SecurityTokenReferenceType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'SecurityTokenReferenceType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityTokenReferenceType), 'Id', '[Namespace="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SecurityTokenReference), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'SecurityTokenReference');
  RemClassRegistry.RegisterXSClass(AttributedString, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'AttributedString');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(AttributedString), 'Id', '[Namespace="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"]');
  RemClassRegistry.RegisterXSClass(EncodedString, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'EncodedString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Nonce), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'Nonce');
  RemClassRegistry.RegisterXSClass(KeyIdentifierType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'KeyIdentifierType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyIdentifier), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'KeyIdentifier');
  RemClassRegistry.RegisterXSClass(BinarySecurityTokenType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'BinarySecurityTokenType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(BinarySecurityToken), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'BinarySecurityToken');
  RemClassRegistry.RegisterXSClass(PasswordString, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'PasswordString');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PasswordString), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Password), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', 'Password');
  RemClassRegistry.RegisterXSInfo(TypeInfo(specialAttrs), 'http://www.w3.org/XML/1998/namespace', 'specialAttrs');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tTimestampFault), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'tTimestampFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(tTimestampFault), 'wsu_MessageExpired', 'wsu:MessageExpired');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Created), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'Created');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Expires), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'Expires');
  RemClassRegistry.RegisterXSClass(TimestampType, 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'TimestampType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TimestampType), 'Created', '[Namespace="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TimestampType), 'Expires', '[Namespace="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Timestamp), 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', 'Timestamp');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyName), 'http://www.w3.org/2000/09/xmldsig#', 'KeyName');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_KeyName), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_KeyName');
  RemClassRegistry.RegisterXSClass(TransformType, 'http://www.w3.org/2000/09/xmldsig#', 'TransformType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Transform), 'http://www.w3.org/2000/09/xmldsig#', 'Transform');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MgmtData), 'http://www.w3.org/2000/09/xmldsig#', 'MgmtData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_MgmtData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_MgmtData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CanonicalizationMethodType), 'http://www.w3.org/2000/09/xmldsig#', 'CanonicalizationMethodType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestMethodType), 'http://www.w3.org/2000/09/xmldsig#', 'DigestMethodType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SignaturePropertyType), 'http://www.w3.org/2000/09/xmldsig#', 'SignaturePropertyType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SignatureProperty), 'http://www.w3.org/2000/09/xmldsig#', 'SignatureProperty');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_SignatureProperty), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_SignatureProperty');
  RemClassRegistry.RegisterXSClass(SignaturePropertiesType, 'http://www.w3.org/2000/09/xmldsig#', 'SignaturePropertiesType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignaturePropertiesType), 'SignatureProperty', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SignatureProperties), 'http://www.w3.org/2000/09/xmldsig#', 'SignatureProperties');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ObjectType), 'http://www.w3.org/2000/09/xmldsig#', 'ObjectType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Object_), 'http://www.w3.org/2000/09/xmldsig#', 'Object_', 'Object');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Object), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_Object');
  RemClassRegistry.RegisterXSClass(SignatureValueType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureValueType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SignatureValue), 'http://www.w3.org/2000/09/xmldsig#', 'SignatureValue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_base64Binary), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_base64Binary');
  RemClassRegistry.RegisterXSClass(X509DataType, 'http://www.w3.org/2000/09/xmldsig#', 'X509DataType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(X509Data), 'http://www.w3.org/2000/09/xmldsig#', 'X509Data');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_X509Data), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_X509Data');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SPKISexp), 'http://www.w3.org/2000/09/xmldsig#', 'SPKISexp');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SPKIDataType), 'http://www.w3.org/2000/09/xmldsig#', 'SPKIDataType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SPKIData), 'http://www.w3.org/2000/09/xmldsig#', 'SPKIData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_SPKIData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_SPKIData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CryptoBinary), 'http://www.w3.org/2000/09/xmldsig#', 'CryptoBinary');
  RemClassRegistry.RegisterXSClass(RSAKeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'RSAKeyValueType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RSAKeyValue), 'http://www.w3.org/2000/09/xmldsig#', 'RSAKeyValue');
  RemClassRegistry.RegisterXSClass(DSAKeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'DSAKeyValueType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DSAKeyValue), 'http://www.w3.org/2000/09/xmldsig#', 'DSAKeyValue');
  RemClassRegistry.RegisterXSClass(KeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'KeyValueType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyValueType), 'DSAKeyValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyValueType), 'RSAKeyValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyValue), 'http://www.w3.org/2000/09/xmldsig#', 'KeyValue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_KeyValue), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_KeyValue');
  RemClassRegistry.RegisterXSClass(PGPDataType, 'http://www.w3.org/2000/09/xmldsig#', 'PGPDataType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PGPDataType), 'PGPKeyPacket_', '[ExtName="PGPKeyPacket"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(PGPData), 'http://www.w3.org/2000/09/xmldsig#', 'PGPData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_PGPData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_PGPData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestValueType), 'http://www.w3.org/2000/09/xmldsig#', 'DigestValueType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CanonicalizationMethod), 'http://www.w3.org/2000/09/xmldsig#', 'CanonicalizationMethod');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestMethod), 'http://www.w3.org/2000/09/xmldsig#', 'DigestMethod');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestValue), 'http://www.w3.org/2000/09/xmldsig#', 'DigestValue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TransformsType), 'http://www.w3.org/2000/09/xmldsig#', 'TransformsType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Transforms), 'http://www.w3.org/2000/09/xmldsig#', 'Transforms');
  RemClassRegistry.RegisterXSClass(RetrievalMethodType, 'http://www.w3.org/2000/09/xmldsig#', 'RetrievalMethodType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RetrievalMethodType), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RetrievalMethodType), 'Transforms', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RetrievalMethod), 'http://www.w3.org/2000/09/xmldsig#', 'RetrievalMethod');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_RetrievalMethod), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_RetrievalMethod');
  RemClassRegistry.RegisterXSClass(KeyInfoType, 'http://www.w3.org/2000/09/xmldsig#', 'KeyInfoType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'KeyName', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'KeyValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'RetrievalMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'X509Data', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'PGPData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'SPKIData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'MgmtData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyInfo), 'http://www.w3.org/2000/09/xmldsig#', 'KeyInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(HMACOutputLengthType), 'http://www.w3.org/2000/09/xmldsig#', 'HMACOutputLengthType');
  RemClassRegistry.RegisterXSClass(SignatureMethodType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureMethodType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SignatureMethod), 'http://www.w3.org/2000/09/xmldsig#', 'SignatureMethod');
  RemClassRegistry.RegisterXSClass(ReferenceType2, 'http://www.w3.org/2000/09/xmldsig#', 'ReferenceType2', 'ReferenceType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType2), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType2), 'Transforms', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType2), 'DigestMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType2), 'DigestValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Reference2), 'http://www.w3.org/2000/09/xmldsig#', 'Reference2', 'Reference');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Reference), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_Reference');
  RemClassRegistry.RegisterXSClass(SignedInfoType, 'http://www.w3.org/2000/09/xmldsig#', 'SignedInfoType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignedInfoType), 'CanonicalizationMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignedInfoType), 'SignatureMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignedInfoType), 'Reference', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SignedInfo), 'http://www.w3.org/2000/09/xmldsig#', 'SignedInfo');
  RemClassRegistry.RegisterXSClass(SignatureType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'SignedInfo', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'SignatureValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'KeyInfo', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'Object_', '[Namespace="http://www.w3.org/2000/09/xmldsig#", ExtName="Object"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Signature), 'http://www.w3.org/2000/09/xmldsig#', 'Signature');
  RemClassRegistry.RegisterXSClass(ManifestType, 'http://www.w3.org/2000/09/xmldsig#', 'ManifestType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ManifestType), 'Reference', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Manifest), 'http://www.w3.org/2000/09/xmldsig#', 'Manifest');

end.