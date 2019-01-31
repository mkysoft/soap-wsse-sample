// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://ws.epttavm.com:83/service.svc/service?wsdl
//  >Import : https://ws.epttavm.com:83/service.svc/service?wsdl>0
//  >Import : https://ws.epttavm.com:83/service.svc/service?xsd=xsd0
//  >Import : https://ws.epttavm.com:83/service.svc/service?xsd=xsd2
//  >Import : https://ws.epttavm.com:83/service.svc/service?xsd=xsd3
//  >Import : https://ws.epttavm.com:83/service.svc/service?xsd=xsd4
//  >Import : https://ws.epttavm.com:83/service.svc/service?xsd=xsd1
// Encoding : utf-8
// Version  : 1.0
// (30.01.2019 14:51:40 - - $Rev: 90173 $)
// ************************************************************************ //

unit epttavm;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]

  Tedarikci2           = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  KargoBilgi2          = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  AltKategoriDetay2    = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  KategoriDetay2       = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  clsResultTransferObject2 = class;             { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  UrunResim2           = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  Variants2            = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  TedarikciSiparisKontrolV22 = class;           { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  TedarikciSiparisKontrol2 = class;             { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  SiparisUrun2         = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  StokKontrolDetay2    = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  clsResultTransferObject = class;              { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  SiparisUrun          = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  KargoBilgi           = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  AltKategoriDetay     = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  TedarikciSiparisKontrolV2 = class;            { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  TedarikciSiparisKontrol = class;              { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  ServiceStateResult2  = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService.Model"[GblCplx] }
  ServiceStateResult   = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService.Model"[GblElm] }
  KategoriDetay        = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  VariantAttr2         = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  VariantAttr          = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  Variant2             = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  Variant              = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  UrunResimBase642     = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  UrunResimBase64      = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  StokUrun2            = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  StokUrun             = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  StokKontrolDetay     = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  Tedarikci            = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  Variants             = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  UrunResim            = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  StokResult2          = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  StokResult           = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  VariantCombination2  = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  VariantCombination   = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  ApiResult2           = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ApiResult            = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }
  AktifUrunRequest2    = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  AktifUrunRequest     = class;                 { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblElm] }

  {$SCOPEDENUMS ON}
  { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblSmpl] }
  KayitDurum = (Yeni, Mevcut);

  {$SCOPEDENUMS OFF}

  ArrayOfSiparisUrun = array of SiparisUrun2;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ArrayOfclsResultTransferObject = array of clsResultTransferObject2;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ArrayOfAltKategoriDetay = array of AltKategoriDetay2;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ArrayOfTedarikciSiparisKontrolV2 = array of TedarikciSiparisKontrolV22;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ArrayOfTedarikciSiparisKontrol = array of TedarikciSiparisKontrol2;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ArrayOfKargoBilgi = array of KargoBilgi2;     { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ArrayOfStokKontrolDetay = array of StokKontrolDetay2;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ArrayOfint = array of Integer;                { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }


  // ************************************************************************ //
  // XML       : Tedarikci, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  Tedarikci2 = class(TRemotable)
  private
    FTedarikciAdi: string;
    FTedarikciAdi_Specified: boolean;
    FTedarikciId: Integer;
    FTedarikciId_Specified: boolean;
    procedure SetTedarikciAdi(Index: Integer; const Astring: string);
    function  TedarikciAdi_Specified(Index: Integer): boolean;
    procedure SetTedarikciId(Index: Integer; const AInteger: Integer);
    function  TedarikciId_Specified(Index: Integer): boolean;
  published
    property TedarikciAdi: string   Index (IS_OPTN or IS_NLBL) read FTedarikciAdi write SetTedarikciAdi stored TedarikciAdi_Specified;
    property TedarikciId:  Integer  Index (IS_OPTN) read FTedarikciId write SetTedarikciId stored TedarikciId_Specified;
  end;



  // ************************************************************************ //
  // XML       : KargoBilgi, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  KargoBilgi2 = class(TRemotable)
  private
    FCurrentState: string;
    FCurrentState_Specified: boolean;
    FDeliveryInfo: string;
    FDeliveryInfo_Specified: boolean;
    FInCargo: string;
    FInCargo_Specified: boolean;
    FProductId: string;
    FProductId_Specified: boolean;
    FReferenceCode: string;
    FReferenceCode_Specified: boolean;
    FShopId: Integer;
    FShopId_Specified: boolean;
    procedure SetCurrentState(Index: Integer; const Astring: string);
    function  CurrentState_Specified(Index: Integer): boolean;
    procedure SetDeliveryInfo(Index: Integer; const Astring: string);
    function  DeliveryInfo_Specified(Index: Integer): boolean;
    procedure SetInCargo(Index: Integer; const Astring: string);
    function  InCargo_Specified(Index: Integer): boolean;
    procedure SetProductId(Index: Integer; const Astring: string);
    function  ProductId_Specified(Index: Integer): boolean;
    procedure SetReferenceCode(Index: Integer; const Astring: string);
    function  ReferenceCode_Specified(Index: Integer): boolean;
    procedure SetShopId(Index: Integer; const AInteger: Integer);
    function  ShopId_Specified(Index: Integer): boolean;
  published
    property CurrentState:  string   Index (IS_OPTN or IS_NLBL) read FCurrentState write SetCurrentState stored CurrentState_Specified;
    property DeliveryInfo:  string   Index (IS_OPTN or IS_NLBL) read FDeliveryInfo write SetDeliveryInfo stored DeliveryInfo_Specified;
    property InCargo:       string   Index (IS_OPTN or IS_NLBL) read FInCargo write SetInCargo stored InCargo_Specified;
    property ProductId:     string   Index (IS_OPTN or IS_NLBL) read FProductId write SetProductId stored ProductId_Specified;
    property ReferenceCode: string   Index (IS_OPTN or IS_NLBL) read FReferenceCode write SetReferenceCode stored ReferenceCode_Specified;
    property ShopId:        Integer  Index (IS_OPTN) read FShopId write SetShopId stored ShopId_Specified;
  end;



  // ************************************************************************ //
  // XML       : AltKategoriDetay, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  AltKategoriDetay2 = class(TRemotable)
  private
    FAltKategoriAdi: string;
    FAltKategoriAdi_Specified: boolean;
    FAltKategoriId: Integer;
    FAltKategoriId_Specified: boolean;
    FKategoriAdi: string;
    FKategoriAdi_Specified: boolean;
    FKategoriId: Integer;
    FKategoriId_Specified: boolean;
    FTedarikciAltKategoriAdi: string;
    FTedarikciAltKategoriAdi_Specified: boolean;
    FTedarikciAltKategoriId: Integer;
    FTedarikciAltKategoriId_Specified: boolean;
    FTedarikciSanalKategoriId: Integer;
    FTedarikciSanalKategoriId_Specified: boolean;
    procedure SetAltKategoriAdi(Index: Integer; const Astring: string);
    function  AltKategoriAdi_Specified(Index: Integer): boolean;
    procedure SetAltKategoriId(Index: Integer; const AInteger: Integer);
    function  AltKategoriId_Specified(Index: Integer): boolean;
    procedure SetKategoriAdi(Index: Integer; const Astring: string);
    function  KategoriAdi_Specified(Index: Integer): boolean;
    procedure SetKategoriId(Index: Integer; const AInteger: Integer);
    function  KategoriId_Specified(Index: Integer): boolean;
    procedure SetTedarikciAltKategoriAdi(Index: Integer; const Astring: string);
    function  TedarikciAltKategoriAdi_Specified(Index: Integer): boolean;
    procedure SetTedarikciAltKategoriId(Index: Integer; const AInteger: Integer);
    function  TedarikciAltKategoriId_Specified(Index: Integer): boolean;
    procedure SetTedarikciSanalKategoriId(Index: Integer; const AInteger: Integer);
    function  TedarikciSanalKategoriId_Specified(Index: Integer): boolean;
  published
    property AltKategoriAdi:           string   Index (IS_OPTN or IS_NLBL) read FAltKategoriAdi write SetAltKategoriAdi stored AltKategoriAdi_Specified;
    property AltKategoriId:            Integer  Index (IS_OPTN) read FAltKategoriId write SetAltKategoriId stored AltKategoriId_Specified;
    property KategoriAdi:              string   Index (IS_OPTN or IS_NLBL) read FKategoriAdi write SetKategoriAdi stored KategoriAdi_Specified;
    property KategoriId:               Integer  Index (IS_OPTN) read FKategoriId write SetKategoriId stored KategoriId_Specified;
    property TedarikciAltKategoriAdi:  string   Index (IS_OPTN or IS_NLBL) read FTedarikciAltKategoriAdi write SetTedarikciAltKategoriAdi stored TedarikciAltKategoriAdi_Specified;
    property TedarikciAltKategoriId:   Integer  Index (IS_OPTN) read FTedarikciAltKategoriId write SetTedarikciAltKategoriId stored TedarikciAltKategoriId_Specified;
    property TedarikciSanalKategoriId: Integer  Index (IS_OPTN) read FTedarikciSanalKategoriId write SetTedarikciSanalKategoriId stored TedarikciSanalKategoriId_Specified;
  end;



  // ************************************************************************ //
  // XML       : KategoriDetay, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  KategoriDetay2 = class(TRemotable)
  private
    FKategoriAdi: string;
    FKategoriAdi_Specified: boolean;
    FKategoriId: Integer;
    FKategoriId_Specified: boolean;
    procedure SetKategoriAdi(Index: Integer; const Astring: string);
    function  KategoriAdi_Specified(Index: Integer): boolean;
    procedure SetKategoriId(Index: Integer; const AInteger: Integer);
    function  KategoriId_Specified(Index: Integer): boolean;
  published
    property KategoriAdi: string   Index (IS_OPTN or IS_NLBL) read FKategoriAdi write SetKategoriAdi stored KategoriAdi_Specified;
    property KategoriId:  Integer  Index (IS_OPTN) read FKategoriId write SetKategoriId stored KategoriId_Specified;
  end;

  ArrayOfstring = array of string;              { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }


  // ************************************************************************ //
  // XML       : clsResultTransferObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  clsResultTransferObject2 = class(TRemotable)
  private
    FError: string;
    FSonuc: Boolean;
  published
    property Error: string   Index (IS_NLBL) read FError write FError;
    property Sonuc: Boolean  read FSonuc write FSonuc;
  end;



  // ************************************************************************ //
  // XML       : UrunResim, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  UrunResim2 = class(TRemotable)
  private
    FSira: Integer;
    FSira_Specified: boolean;
    FUrl: string;
    FUrl_Specified: boolean;
    procedure SetSira(Index: Integer; const AInteger: Integer);
    function  Sira_Specified(Index: Integer): boolean;
    procedure SetUrl(Index: Integer; const Astring: string);
    function  Url_Specified(Index: Integer): boolean;
  published
    property Sira: Integer  Index (IS_OPTN) read FSira write SetSira stored Sira_Specified;
    property Url:  string   Index (IS_OPTN or IS_NLBL) read FUrl write SetUrl stored Url_Specified;
  end;

  ArrayOfVariants = array of Variants2;         { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }
  ArrayOfKategoriDetay = array of KategoriDetay2;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }


  // ************************************************************************ //
  // XML       : Variants, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  Variants2 = class(TRemotable)
  private
    FAnaUrunKodu: string;
    FAnaUrunKodu_Specified: boolean;
    FDurum: KayitDurum;
    FDurum_Specified: boolean;
    FFiyat: TXSDecimal;
    FFiyat_Specified: boolean;
    FFiyatFarkiMi: Boolean;
    FFiyatFarkiMi_Specified: boolean;
    FGuncellemeSonucu: string;
    FGuncellemeSonucu_Specified: boolean;
    FKayitDegisti: Integer;
    FKayitDegisti_Specified: boolean;
    FMiktar: Integer;
    FMiktar_Specified: boolean;
    FVariant1Deger: string;
    FVariant1Deger_Specified: boolean;
    FVariant2Deger: string;
    FVariant2Deger_Specified: boolean;
    FVariantBarkod: string;
    FVariantBarkod_Specified: boolean;
    procedure SetAnaUrunKodu(Index: Integer; const Astring: string);
    function  AnaUrunKodu_Specified(Index: Integer): boolean;
    procedure SetDurum(Index: Integer; const AKayitDurum: KayitDurum);
    function  Durum_Specified(Index: Integer): boolean;
    procedure SetFiyat(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  Fiyat_Specified(Index: Integer): boolean;
    procedure SetFiyatFarkiMi(Index: Integer; const ABoolean: Boolean);
    function  FiyatFarkiMi_Specified(Index: Integer): boolean;
    procedure SetGuncellemeSonucu(Index: Integer; const Astring: string);
    function  GuncellemeSonucu_Specified(Index: Integer): boolean;
    procedure SetKayitDegisti(Index: Integer; const AInteger: Integer);
    function  KayitDegisti_Specified(Index: Integer): boolean;
    procedure SetMiktar(Index: Integer; const AInteger: Integer);
    function  Miktar_Specified(Index: Integer): boolean;
    procedure SetVariant1Deger(Index: Integer; const Astring: string);
    function  Variant1Deger_Specified(Index: Integer): boolean;
    procedure SetVariant2Deger(Index: Integer; const Astring: string);
    function  Variant2Deger_Specified(Index: Integer): boolean;
    procedure SetVariantBarkod(Index: Integer; const Astring: string);
    function  VariantBarkod_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AnaUrunKodu:      string      Index (IS_OPTN or IS_NLBL) read FAnaUrunKodu write SetAnaUrunKodu stored AnaUrunKodu_Specified;
    property Durum:            KayitDurum  Index (IS_OPTN) read FDurum write SetDurum stored Durum_Specified;
    property Fiyat:            TXSDecimal  Index (IS_OPTN) read FFiyat write SetFiyat stored Fiyat_Specified;
    property FiyatFarkiMi:     Boolean     Index (IS_OPTN) read FFiyatFarkiMi write SetFiyatFarkiMi stored FiyatFarkiMi_Specified;
    property GuncellemeSonucu: string      Index (IS_OPTN or IS_NLBL) read FGuncellemeSonucu write SetGuncellemeSonucu stored GuncellemeSonucu_Specified;
    property KayitDegisti:     Integer     Index (IS_OPTN) read FKayitDegisti write SetKayitDegisti stored KayitDegisti_Specified;
    property Miktar:           Integer     Index (IS_OPTN) read FMiktar write SetMiktar stored Miktar_Specified;
    property Variant1Deger:    string      Index (IS_OPTN or IS_NLBL) read FVariant1Deger write SetVariant1Deger stored Variant1Deger_Specified;
    property Variant2Deger:    string      Index (IS_OPTN or IS_NLBL) read FVariant2Deger write SetVariant2Deger stored Variant2Deger_Specified;
    property VariantBarkod:    string      Index (IS_OPTN or IS_NLBL) read FVariantBarkod write SetVariantBarkod stored VariantBarkod_Specified;
  end;



  // ************************************************************************ //
  // XML       : TedarikciSiparisKontrolV2, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  TedarikciSiparisKontrolV22 = class(TRemotable)
  private
    FEposta: string;
    FEposta_Specified: boolean;
    FFirmaUnvani: string;
    FFirmaUnvani_Specified: boolean;
    FIlKod: string;
    FIlKod_Specified: boolean;
    FIlceKod: string;
    FIlceKod_Specified: boolean;
    FIslemTarihi: TXSDateTime;
    FIslemTarihi_Specified: boolean;
    FKargoTutari: Double;
    FKargoTutari_Specified: boolean;
    FMusteriAdi: string;
    FMusteriAdi_Specified: boolean;
    FMusteriId: string;
    FMusteriId_Specified: boolean;
    FMusteriSoyadi: string;
    FMusteriSoyadi_Specified: boolean;
    FSiparisAdresi: string;
    FSiparisAdresi_Specified: boolean;
    FSiparisIlce: string;
    FSiparisIlce_Specified: boolean;
    FSiparisIli: string;
    FSiparisIli_Specified: boolean;
    FSiparisNo: string;
    FSiparisNo_Specified: boolean;
    FSiparisUrunler: ArrayOfSiparisUrun;
    FSiparisUrunler_Specified: boolean;
    FTCKN: string;
    FTCKN_Specified: boolean;
    FTedarikciFirmaAdi: string;
    FTedarikciFirmaAdi_Specified: boolean;
    FTelefonNo: string;
    FTelefonNo_Specified: boolean;
    FUrunAdi: string;
    FUrunAdi_Specified: boolean;
    FUrunKodu: string;
    FUrunKodu_Specified: boolean;
    FVergiDaire: string;
    FVergiDaire_Specified: boolean;
    FVergiNo: string;
    FVergiNo_Specified: boolean;
    procedure SetEposta(Index: Integer; const Astring: string);
    function  Eposta_Specified(Index: Integer): boolean;
    procedure SetFirmaUnvani(Index: Integer; const Astring: string);
    function  FirmaUnvani_Specified(Index: Integer): boolean;
    procedure SetIlKod(Index: Integer; const Astring: string);
    function  IlKod_Specified(Index: Integer): boolean;
    procedure SetIlceKod(Index: Integer; const Astring: string);
    function  IlceKod_Specified(Index: Integer): boolean;
    procedure SetIslemTarihi(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  IslemTarihi_Specified(Index: Integer): boolean;
    procedure SetKargoTutari(Index: Integer; const ADouble: Double);
    function  KargoTutari_Specified(Index: Integer): boolean;
    procedure SetMusteriAdi(Index: Integer; const Astring: string);
    function  MusteriAdi_Specified(Index: Integer): boolean;
    procedure SetMusteriId(Index: Integer; const Astring: string);
    function  MusteriId_Specified(Index: Integer): boolean;
    procedure SetMusteriSoyadi(Index: Integer; const Astring: string);
    function  MusteriSoyadi_Specified(Index: Integer): boolean;
    procedure SetSiparisAdresi(Index: Integer; const Astring: string);
    function  SiparisAdresi_Specified(Index: Integer): boolean;
    procedure SetSiparisIlce(Index: Integer; const Astring: string);
    function  SiparisIlce_Specified(Index: Integer): boolean;
    procedure SetSiparisIli(Index: Integer; const Astring: string);
    function  SiparisIli_Specified(Index: Integer): boolean;
    procedure SetSiparisNo(Index: Integer; const Astring: string);
    function  SiparisNo_Specified(Index: Integer): boolean;
    procedure SetSiparisUrunler(Index: Integer; const AArrayOfSiparisUrun: ArrayOfSiparisUrun);
    function  SiparisUrunler_Specified(Index: Integer): boolean;
    procedure SetTCKN(Index: Integer; const Astring: string);
    function  TCKN_Specified(Index: Integer): boolean;
    procedure SetTedarikciFirmaAdi(Index: Integer; const Astring: string);
    function  TedarikciFirmaAdi_Specified(Index: Integer): boolean;
    procedure SetTelefonNo(Index: Integer; const Astring: string);
    function  TelefonNo_Specified(Index: Integer): boolean;
    procedure SetUrunAdi(Index: Integer; const Astring: string);
    function  UrunAdi_Specified(Index: Integer): boolean;
    procedure SetUrunKodu(Index: Integer; const Astring: string);
    function  UrunKodu_Specified(Index: Integer): boolean;
    procedure SetVergiDaire(Index: Integer; const Astring: string);
    function  VergiDaire_Specified(Index: Integer): boolean;
    procedure SetVergiNo(Index: Integer; const Astring: string);
    function  VergiNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Eposta:            string              Index (IS_OPTN or IS_NLBL) read FEposta write SetEposta stored Eposta_Specified;
    property FirmaUnvani:       string              Index (IS_OPTN or IS_NLBL) read FFirmaUnvani write SetFirmaUnvani stored FirmaUnvani_Specified;
    property IlKod:             string              Index (IS_OPTN or IS_NLBL) read FIlKod write SetIlKod stored IlKod_Specified;
    property IlceKod:           string              Index (IS_OPTN or IS_NLBL) read FIlceKod write SetIlceKod stored IlceKod_Specified;
    property IslemTarihi:       TXSDateTime         Index (IS_OPTN) read FIslemTarihi write SetIslemTarihi stored IslemTarihi_Specified;
    property KargoTutari:       Double              Index (IS_OPTN) read FKargoTutari write SetKargoTutari stored KargoTutari_Specified;
    property MusteriAdi:        string              Index (IS_OPTN or IS_NLBL) read FMusteriAdi write SetMusteriAdi stored MusteriAdi_Specified;
    property MusteriId:         string              Index (IS_OPTN or IS_NLBL) read FMusteriId write SetMusteriId stored MusteriId_Specified;
    property MusteriSoyadi:     string              Index (IS_OPTN or IS_NLBL) read FMusteriSoyadi write SetMusteriSoyadi stored MusteriSoyadi_Specified;
    property SiparisAdresi:     string              Index (IS_OPTN or IS_NLBL) read FSiparisAdresi write SetSiparisAdresi stored SiparisAdresi_Specified;
    property SiparisIlce:       string              Index (IS_OPTN or IS_NLBL) read FSiparisIlce write SetSiparisIlce stored SiparisIlce_Specified;
    property SiparisIli:        string              Index (IS_OPTN or IS_NLBL) read FSiparisIli write SetSiparisIli stored SiparisIli_Specified;
    property SiparisNo:         string              Index (IS_OPTN or IS_NLBL) read FSiparisNo write SetSiparisNo stored SiparisNo_Specified;
    property SiparisUrunler:    ArrayOfSiparisUrun  Index (IS_OPTN or IS_NLBL) read FSiparisUrunler write SetSiparisUrunler stored SiparisUrunler_Specified;
    property TCKN:              string              Index (IS_OPTN or IS_NLBL) read FTCKN write SetTCKN stored TCKN_Specified;
    property TedarikciFirmaAdi: string              Index (IS_OPTN or IS_NLBL) read FTedarikciFirmaAdi write SetTedarikciFirmaAdi stored TedarikciFirmaAdi_Specified;
    property TelefonNo:         string              Index (IS_OPTN or IS_NLBL) read FTelefonNo write SetTelefonNo stored TelefonNo_Specified;
    property UrunAdi:           string              Index (IS_OPTN or IS_NLBL) read FUrunAdi write SetUrunAdi stored UrunAdi_Specified;
    property UrunKodu:          string              Index (IS_OPTN or IS_NLBL) read FUrunKodu write SetUrunKodu stored UrunKodu_Specified;
    property VergiDaire:        string              Index (IS_OPTN or IS_NLBL) read FVergiDaire write SetVergiDaire stored VergiDaire_Specified;
    property VergiNo:           string              Index (IS_OPTN or IS_NLBL) read FVergiNo write SetVergiNo stored VergiNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : TedarikciSiparisKontrol, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  TedarikciSiparisKontrol2 = class(TRemotable)
  private
    FEposta: string;
    FEposta_Specified: boolean;
    FFirmaUnvani: string;
    FFirmaUnvani_Specified: boolean;
    FGarantiVerenFirma: string;
    FGarantiVerenFirma_Specified: boolean;
    FIlKod: string;
    FIlKod_Specified: boolean;
    FIlceKod: string;
    FIlceKod_Specified: boolean;
    FIslemTarihi: TXSDateTime;
    FIslemTarihi_Specified: boolean;
    FKargoIndirimi: string;
    FKargoIndirimi_Specified: boolean;
    FKargoTutari: Double;
    FKargoTutari_Specified: boolean;
    FKdvDahilToplamTutar: Double;
    FKdvDahilToplamTutar_Specified: boolean;
    FKdvHaricToplamTutar: Double;
    FKdvHaricToplamTutar_Specified: boolean;
    FKdvHaricTutar: Double;
    FKdvHaricTutar_Specified: boolean;
    FKdvOrani: Double;
    FKdvOrani_Specified: boolean;
    FKomisyon: Double;
    FKomisyon_Specified: boolean;
    FMusteriAdi: string;
    FMusteriAdi_Specified: boolean;
    FMusteriId: string;
    FMusteriId_Specified: boolean;
    FMusteriSoyadi: string;
    FMusteriSoyadi_Specified: boolean;
    FSiparisAdresi: string;
    FSiparisAdresi_Specified: boolean;
    FSiparisBilgisi: string;
    FSiparisBilgisi_Specified: boolean;
    FSiparisDurumu: string;
    FSiparisDurumu_Specified: boolean;
    FSiparisIlce: string;
    FSiparisIlce_Specified: boolean;
    FSiparisIli: string;
    FSiparisIli_Specified: boolean;
    FSiparisNo: string;
    FSiparisNo_Specified: boolean;
    FTCKN: string;
    FTCKN_Specified: boolean;
    FTedarikciFirmaAdi: string;
    FTedarikciFirmaAdi_Specified: boolean;
    FTelefonNo: string;
    FTelefonNo_Specified: boolean;
    FToplamIslemAdedi: Integer;
    FToplamIslemAdedi_Specified: boolean;
    FUrunAdi: string;
    FUrunAdi_Specified: boolean;
    FUrunBarkod: string;
    FUrunBarkod_Specified: boolean;
    FUrunId: string;
    FUrunId_Specified: boolean;
    FUrunKodu: string;
    FUrunKodu_Specified: boolean;
    FVariantBarkod: string;
    FVariantBarkod_Specified: boolean;
    FVergiDaire: string;
    FVergiDaire_Specified: boolean;
    FVergiNo: string;
    FVergiNo_Specified: boolean;
    procedure SetEposta(Index: Integer; const Astring: string);
    function  Eposta_Specified(Index: Integer): boolean;
    procedure SetFirmaUnvani(Index: Integer; const Astring: string);
    function  FirmaUnvani_Specified(Index: Integer): boolean;
    procedure SetGarantiVerenFirma(Index: Integer; const Astring: string);
    function  GarantiVerenFirma_Specified(Index: Integer): boolean;
    procedure SetIlKod(Index: Integer; const Astring: string);
    function  IlKod_Specified(Index: Integer): boolean;
    procedure SetIlceKod(Index: Integer; const Astring: string);
    function  IlceKod_Specified(Index: Integer): boolean;
    procedure SetIslemTarihi(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  IslemTarihi_Specified(Index: Integer): boolean;
    procedure SetKargoIndirimi(Index: Integer; const Astring: string);
    function  KargoIndirimi_Specified(Index: Integer): boolean;
    procedure SetKargoTutari(Index: Integer; const ADouble: Double);
    function  KargoTutari_Specified(Index: Integer): boolean;
    procedure SetKdvDahilToplamTutar(Index: Integer; const ADouble: Double);
    function  KdvDahilToplamTutar_Specified(Index: Integer): boolean;
    procedure SetKdvHaricToplamTutar(Index: Integer; const ADouble: Double);
    function  KdvHaricToplamTutar_Specified(Index: Integer): boolean;
    procedure SetKdvHaricTutar(Index: Integer; const ADouble: Double);
    function  KdvHaricTutar_Specified(Index: Integer): boolean;
    procedure SetKdvOrani(Index: Integer; const ADouble: Double);
    function  KdvOrani_Specified(Index: Integer): boolean;
    procedure SetKomisyon(Index: Integer; const ADouble: Double);
    function  Komisyon_Specified(Index: Integer): boolean;
    procedure SetMusteriAdi(Index: Integer; const Astring: string);
    function  MusteriAdi_Specified(Index: Integer): boolean;
    procedure SetMusteriId(Index: Integer; const Astring: string);
    function  MusteriId_Specified(Index: Integer): boolean;
    procedure SetMusteriSoyadi(Index: Integer; const Astring: string);
    function  MusteriSoyadi_Specified(Index: Integer): boolean;
    procedure SetSiparisAdresi(Index: Integer; const Astring: string);
    function  SiparisAdresi_Specified(Index: Integer): boolean;
    procedure SetSiparisBilgisi(Index: Integer; const Astring: string);
    function  SiparisBilgisi_Specified(Index: Integer): boolean;
    procedure SetSiparisDurumu(Index: Integer; const Astring: string);
    function  SiparisDurumu_Specified(Index: Integer): boolean;
    procedure SetSiparisIlce(Index: Integer; const Astring: string);
    function  SiparisIlce_Specified(Index: Integer): boolean;
    procedure SetSiparisIli(Index: Integer; const Astring: string);
    function  SiparisIli_Specified(Index: Integer): boolean;
    procedure SetSiparisNo(Index: Integer; const Astring: string);
    function  SiparisNo_Specified(Index: Integer): boolean;
    procedure SetTCKN(Index: Integer; const Astring: string);
    function  TCKN_Specified(Index: Integer): boolean;
    procedure SetTedarikciFirmaAdi(Index: Integer; const Astring: string);
    function  TedarikciFirmaAdi_Specified(Index: Integer): boolean;
    procedure SetTelefonNo(Index: Integer; const Astring: string);
    function  TelefonNo_Specified(Index: Integer): boolean;
    procedure SetToplamIslemAdedi(Index: Integer; const AInteger: Integer);
    function  ToplamIslemAdedi_Specified(Index: Integer): boolean;
    procedure SetUrunAdi(Index: Integer; const Astring: string);
    function  UrunAdi_Specified(Index: Integer): boolean;
    procedure SetUrunBarkod(Index: Integer; const Astring: string);
    function  UrunBarkod_Specified(Index: Integer): boolean;
    procedure SetUrunId(Index: Integer; const Astring: string);
    function  UrunId_Specified(Index: Integer): boolean;
    procedure SetUrunKodu(Index: Integer; const Astring: string);
    function  UrunKodu_Specified(Index: Integer): boolean;
    procedure SetVariantBarkod(Index: Integer; const Astring: string);
    function  VariantBarkod_Specified(Index: Integer): boolean;
    procedure SetVergiDaire(Index: Integer; const Astring: string);
    function  VergiDaire_Specified(Index: Integer): boolean;
    procedure SetVergiNo(Index: Integer; const Astring: string);
    function  VergiNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Eposta:              string       Index (IS_OPTN or IS_NLBL) read FEposta write SetEposta stored Eposta_Specified;
    property FirmaUnvani:         string       Index (IS_OPTN or IS_NLBL) read FFirmaUnvani write SetFirmaUnvani stored FirmaUnvani_Specified;
    property GarantiVerenFirma:   string       Index (IS_OPTN or IS_NLBL) read FGarantiVerenFirma write SetGarantiVerenFirma stored GarantiVerenFirma_Specified;
    property IlKod:               string       Index (IS_OPTN or IS_NLBL) read FIlKod write SetIlKod stored IlKod_Specified;
    property IlceKod:             string       Index (IS_OPTN or IS_NLBL) read FIlceKod write SetIlceKod stored IlceKod_Specified;
    property IslemTarihi:         TXSDateTime  Index (IS_OPTN) read FIslemTarihi write SetIslemTarihi stored IslemTarihi_Specified;
    property KargoIndirimi:       string       Index (IS_OPTN or IS_NLBL) read FKargoIndirimi write SetKargoIndirimi stored KargoIndirimi_Specified;
    property KargoTutari:         Double       Index (IS_OPTN) read FKargoTutari write SetKargoTutari stored KargoTutari_Specified;
    property KdvDahilToplamTutar: Double       Index (IS_OPTN) read FKdvDahilToplamTutar write SetKdvDahilToplamTutar stored KdvDahilToplamTutar_Specified;
    property KdvHaricToplamTutar: Double       Index (IS_OPTN) read FKdvHaricToplamTutar write SetKdvHaricToplamTutar stored KdvHaricToplamTutar_Specified;
    property KdvHaricTutar:       Double       Index (IS_OPTN) read FKdvHaricTutar write SetKdvHaricTutar stored KdvHaricTutar_Specified;
    property KdvOrani:            Double       Index (IS_OPTN) read FKdvOrani write SetKdvOrani stored KdvOrani_Specified;
    property Komisyon:            Double       Index (IS_OPTN) read FKomisyon write SetKomisyon stored Komisyon_Specified;
    property MusteriAdi:          string       Index (IS_OPTN or IS_NLBL) read FMusteriAdi write SetMusteriAdi stored MusteriAdi_Specified;
    property MusteriId:           string       Index (IS_OPTN or IS_NLBL) read FMusteriId write SetMusteriId stored MusteriId_Specified;
    property MusteriSoyadi:       string       Index (IS_OPTN or IS_NLBL) read FMusteriSoyadi write SetMusteriSoyadi stored MusteriSoyadi_Specified;
    property SiparisAdresi:       string       Index (IS_OPTN or IS_NLBL) read FSiparisAdresi write SetSiparisAdresi stored SiparisAdresi_Specified;
    property SiparisBilgisi:      string       Index (IS_OPTN or IS_NLBL) read FSiparisBilgisi write SetSiparisBilgisi stored SiparisBilgisi_Specified;
    property SiparisDurumu:       string       Index (IS_OPTN or IS_NLBL) read FSiparisDurumu write SetSiparisDurumu stored SiparisDurumu_Specified;
    property SiparisIlce:         string       Index (IS_OPTN or IS_NLBL) read FSiparisIlce write SetSiparisIlce stored SiparisIlce_Specified;
    property SiparisIli:          string       Index (IS_OPTN or IS_NLBL) read FSiparisIli write SetSiparisIli stored SiparisIli_Specified;
    property SiparisNo:           string       Index (IS_OPTN or IS_NLBL) read FSiparisNo write SetSiparisNo stored SiparisNo_Specified;
    property TCKN:                string       Index (IS_OPTN or IS_NLBL) read FTCKN write SetTCKN stored TCKN_Specified;
    property TedarikciFirmaAdi:   string       Index (IS_OPTN or IS_NLBL) read FTedarikciFirmaAdi write SetTedarikciFirmaAdi stored TedarikciFirmaAdi_Specified;
    property TelefonNo:           string       Index (IS_OPTN or IS_NLBL) read FTelefonNo write SetTelefonNo stored TelefonNo_Specified;
    property ToplamIslemAdedi:    Integer      Index (IS_OPTN) read FToplamIslemAdedi write SetToplamIslemAdedi stored ToplamIslemAdedi_Specified;
    property UrunAdi:             string       Index (IS_OPTN or IS_NLBL) read FUrunAdi write SetUrunAdi stored UrunAdi_Specified;
    property UrunBarkod:          string       Index (IS_OPTN or IS_NLBL) read FUrunBarkod write SetUrunBarkod stored UrunBarkod_Specified;
    property UrunId:              string       Index (IS_OPTN or IS_NLBL) read FUrunId write SetUrunId stored UrunId_Specified;
    property UrunKodu:            string       Index (IS_OPTN or IS_NLBL) read FUrunKodu write SetUrunKodu stored UrunKodu_Specified;
    property VariantBarkod:       string       Index (IS_OPTN or IS_NLBL) read FVariantBarkod write SetVariantBarkod stored VariantBarkod_Specified;
    property VergiDaire:          string       Index (IS_OPTN or IS_NLBL) read FVergiDaire write SetVergiDaire stored VergiDaire_Specified;
    property VergiNo:             string       Index (IS_OPTN or IS_NLBL) read FVergiNo write SetVergiNo stored VergiNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : SiparisUrun, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  SiparisUrun2 = class(TRemotable)
  private
    FGarantiVerenFirma: string;
    FGarantiVerenFirma_Specified: boolean;
    FKdvDahilToplamTutar: Double;
    FKdvDahilToplamTutar_Specified: boolean;
    FKdvHaricToplamTutar: Double;
    FKdvHaricToplamTutar_Specified: boolean;
    FKdvHaricTutar: Double;
    FKdvHaricTutar_Specified: boolean;
    FKdvOrani: Double;
    FKdvOrani_Specified: boolean;
    FKomisyon: Double;
    FKomisyon_Specified: boolean;
    FSiparisDurumu: string;
    FSiparisDurumu_Specified: boolean;
    FSiparisNotu: string;
    FSiparisNotu_Specified: boolean;
    FToplamIslemAdedi: Integer;
    FToplamIslemAdedi_Specified: boolean;
    FUrunBarkod: string;
    FUrunBarkod_Specified: boolean;
    FUrunId: Integer;
    FUrunId_Specified: boolean;
    FVariantBarkod: string;
    FVariantBarkod_Specified: boolean;
    procedure SetGarantiVerenFirma(Index: Integer; const Astring: string);
    function  GarantiVerenFirma_Specified(Index: Integer): boolean;
    procedure SetKdvDahilToplamTutar(Index: Integer; const ADouble: Double);
    function  KdvDahilToplamTutar_Specified(Index: Integer): boolean;
    procedure SetKdvHaricToplamTutar(Index: Integer; const ADouble: Double);
    function  KdvHaricToplamTutar_Specified(Index: Integer): boolean;
    procedure SetKdvHaricTutar(Index: Integer; const ADouble: Double);
    function  KdvHaricTutar_Specified(Index: Integer): boolean;
    procedure SetKdvOrani(Index: Integer; const ADouble: Double);
    function  KdvOrani_Specified(Index: Integer): boolean;
    procedure SetKomisyon(Index: Integer; const ADouble: Double);
    function  Komisyon_Specified(Index: Integer): boolean;
    procedure SetSiparisDurumu(Index: Integer; const Astring: string);
    function  SiparisDurumu_Specified(Index: Integer): boolean;
    procedure SetSiparisNotu(Index: Integer; const Astring: string);
    function  SiparisNotu_Specified(Index: Integer): boolean;
    procedure SetToplamIslemAdedi(Index: Integer; const AInteger: Integer);
    function  ToplamIslemAdedi_Specified(Index: Integer): boolean;
    procedure SetUrunBarkod(Index: Integer; const Astring: string);
    function  UrunBarkod_Specified(Index: Integer): boolean;
    procedure SetUrunId(Index: Integer; const AInteger: Integer);
    function  UrunId_Specified(Index: Integer): boolean;
    procedure SetVariantBarkod(Index: Integer; const Astring: string);
    function  VariantBarkod_Specified(Index: Integer): boolean;
  published
    property GarantiVerenFirma:   string   Index (IS_OPTN or IS_NLBL) read FGarantiVerenFirma write SetGarantiVerenFirma stored GarantiVerenFirma_Specified;
    property KdvDahilToplamTutar: Double   Index (IS_OPTN) read FKdvDahilToplamTutar write SetKdvDahilToplamTutar stored KdvDahilToplamTutar_Specified;
    property KdvHaricToplamTutar: Double   Index (IS_OPTN) read FKdvHaricToplamTutar write SetKdvHaricToplamTutar stored KdvHaricToplamTutar_Specified;
    property KdvHaricTutar:       Double   Index (IS_OPTN) read FKdvHaricTutar write SetKdvHaricTutar stored KdvHaricTutar_Specified;
    property KdvOrani:            Double   Index (IS_OPTN) read FKdvOrani write SetKdvOrani stored KdvOrani_Specified;
    property Komisyon:            Double   Index (IS_OPTN) read FKomisyon write SetKomisyon stored Komisyon_Specified;
    property SiparisDurumu:       string   Index (IS_OPTN or IS_NLBL) read FSiparisDurumu write SetSiparisDurumu stored SiparisDurumu_Specified;
    property SiparisNotu:         string   Index (IS_OPTN or IS_NLBL) read FSiparisNotu write SetSiparisNotu stored SiparisNotu_Specified;
    property ToplamIslemAdedi:    Integer  Index (IS_OPTN) read FToplamIslemAdedi write SetToplamIslemAdedi stored ToplamIslemAdedi_Specified;
    property UrunBarkod:          string   Index (IS_OPTN or IS_NLBL) read FUrunBarkod write SetUrunBarkod stored UrunBarkod_Specified;
    property UrunId:              Integer  Index (IS_OPTN) read FUrunId write SetUrunId stored UrunId_Specified;
    property VariantBarkod:       string   Index (IS_OPTN or IS_NLBL) read FVariantBarkod write SetVariantBarkod stored VariantBarkod_Specified;
  end;

  ArrayOfUrunResim = array of UrunResim2;       { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }


  // ************************************************************************ //
  // XML       : StokKontrolDetay, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  StokKontrolDetay2 = class(TRemotable)
  private
    FAciklama: string;
    FAciklama_Specified: boolean;
    FAdminCode: string;
    FAdminCode_Specified: boolean;
    FAgirlik: TXSDecimal;
    FAgirlik_Specified: boolean;
    FAktif: Boolean;
    FAktif_Specified: boolean;
    FAltKategoriAdi: string;
    FAltKategoriAdi_Specified: boolean;
    FAltKategoriId: Integer;
    FAltKategoriId_Specified: boolean;
    FAnaKategoriId: Integer;
    FAnaKategoriId_Specified: boolean;
    FBarkod: string;
    FBarkod_Specified: boolean;
    FBoyX: Integer;
    FBoyX_Specified: boolean;
    FBoyY: Integer;
    FBoyY_Specified: boolean;
    FBoyZ: Integer;
    FBoyZ_Specified: boolean;
    FDesi: Double;
    FDesi_Specified: boolean;
    FDurum: KayitDurum;
    FDurum_Specified: boolean;
    FGarantiSuresi: Integer;
    FGarantiSuresi_Specified: boolean;
    FGarantiVerenFirma: string;
    FGarantiVerenFirma_Specified: boolean;
    FIskonto: TXSDecimal;
    FIskonto_Specified: boolean;
    FKDVOran: TXSDecimal;
    FKDVOran_Specified: boolean;
    FKDVli: TXSDecimal;
    FKDVli_Specified: boolean;
    FKDVsiz: TXSDecimal;
    FKDVsiz_Specified: boolean;
    FKategoriBilgisiGuncelle: Integer;
    FKategoriBilgisiGuncelle_Specified: boolean;
    FMevcut: Boolean;
    FMevcut_Specified: boolean;
    FMiktar: Integer;
    FMiktar_Specified: boolean;
    FResim1Stream: TByteDynArray;
    FResim1Stream_Specified: boolean;
    FResim1Url: string;
    FResim1Url_Specified: boolean;
    FResim2Stream: TByteDynArray;
    FResim2Stream_Specified: boolean;
    FResim2Url: string;
    FResim2Url_Specified: boolean;
    FResim3Stream: TByteDynArray;
    FResim3Stream_Specified: boolean;
    FResim3Url: string;
    FResim3Url_Specified: boolean;
    FResimListesi: ArrayOfUrunResim;
    FResimListesi_Specified: boolean;
    FShopId: Integer;
    FShopId_Specified: boolean;
    FTag: string;
    FTag_Specified: boolean;
    FTedarikciAltKategoriAdi: string;
    FTedarikciAltKategoriAdi_Specified: boolean;
    FTedarikciAltKategoriId: Integer;
    FTedarikciAltKategoriId_Specified: boolean;
    FTedarikciSanalKategoriId: Integer;
    FTedarikciSanalKategoriId_Specified: boolean;
    FUrunAdi: string;
    FUrunAdi_Specified: boolean;
    FUrunId: Integer;
    FUrunId_Specified: boolean;
    FUrunKodu: string;
    FUrunKodu_Specified: boolean;
    FUrunUrl: string;
    FUrunUrl_Specified: boolean;
    FUzunAciklama: string;
    FUzunAciklama_Specified: boolean;
    FVariantListesi: ArrayOfVariants;
    FVariantListesi_Specified: boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetAdminCode(Index: Integer; const Astring: string);
    function  AdminCode_Specified(Index: Integer): boolean;
    procedure SetAgirlik(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  Agirlik_Specified(Index: Integer): boolean;
    procedure SetAktif(Index: Integer; const ABoolean: Boolean);
    function  Aktif_Specified(Index: Integer): boolean;
    procedure SetAltKategoriAdi(Index: Integer; const Astring: string);
    function  AltKategoriAdi_Specified(Index: Integer): boolean;
    procedure SetAltKategoriId(Index: Integer; const AInteger: Integer);
    function  AltKategoriId_Specified(Index: Integer): boolean;
    procedure SetAnaKategoriId(Index: Integer; const AInteger: Integer);
    function  AnaKategoriId_Specified(Index: Integer): boolean;
    procedure SetBarkod(Index: Integer; const Astring: string);
    function  Barkod_Specified(Index: Integer): boolean;
    procedure SetBoyX(Index: Integer; const AInteger: Integer);
    function  BoyX_Specified(Index: Integer): boolean;
    procedure SetBoyY(Index: Integer; const AInteger: Integer);
    function  BoyY_Specified(Index: Integer): boolean;
    procedure SetBoyZ(Index: Integer; const AInteger: Integer);
    function  BoyZ_Specified(Index: Integer): boolean;
    procedure SetDesi(Index: Integer; const ADouble: Double);
    function  Desi_Specified(Index: Integer): boolean;
    procedure SetDurum(Index: Integer; const AKayitDurum: KayitDurum);
    function  Durum_Specified(Index: Integer): boolean;
    procedure SetGarantiSuresi(Index: Integer; const AInteger: Integer);
    function  GarantiSuresi_Specified(Index: Integer): boolean;
    procedure SetGarantiVerenFirma(Index: Integer; const Astring: string);
    function  GarantiVerenFirma_Specified(Index: Integer): boolean;
    procedure SetIskonto(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  Iskonto_Specified(Index: Integer): boolean;
    procedure SetKDVOran(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  KDVOran_Specified(Index: Integer): boolean;
    procedure SetKDVli(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  KDVli_Specified(Index: Integer): boolean;
    procedure SetKDVsiz(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  KDVsiz_Specified(Index: Integer): boolean;
    procedure SetKategoriBilgisiGuncelle(Index: Integer; const AInteger: Integer);
    function  KategoriBilgisiGuncelle_Specified(Index: Integer): boolean;
    procedure SetMevcut(Index: Integer; const ABoolean: Boolean);
    function  Mevcut_Specified(Index: Integer): boolean;
    procedure SetMiktar(Index: Integer; const AInteger: Integer);
    function  Miktar_Specified(Index: Integer): boolean;
    procedure SetResim1Stream(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Resim1Stream_Specified(Index: Integer): boolean;
    procedure SetResim1Url(Index: Integer; const Astring: string);
    function  Resim1Url_Specified(Index: Integer): boolean;
    procedure SetResim2Stream(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Resim2Stream_Specified(Index: Integer): boolean;
    procedure SetResim2Url(Index: Integer; const Astring: string);
    function  Resim2Url_Specified(Index: Integer): boolean;
    procedure SetResim3Stream(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Resim3Stream_Specified(Index: Integer): boolean;
    procedure SetResim3Url(Index: Integer; const Astring: string);
    function  Resim3Url_Specified(Index: Integer): boolean;
    procedure SetResimListesi(Index: Integer; const AArrayOfUrunResim: ArrayOfUrunResim);
    function  ResimListesi_Specified(Index: Integer): boolean;
    procedure SetShopId(Index: Integer; const AInteger: Integer);
    function  ShopId_Specified(Index: Integer): boolean;
    procedure SetTag(Index: Integer; const Astring: string);
    function  Tag_Specified(Index: Integer): boolean;
    procedure SetTedarikciAltKategoriAdi(Index: Integer; const Astring: string);
    function  TedarikciAltKategoriAdi_Specified(Index: Integer): boolean;
    procedure SetTedarikciAltKategoriId(Index: Integer; const AInteger: Integer);
    function  TedarikciAltKategoriId_Specified(Index: Integer): boolean;
    procedure SetTedarikciSanalKategoriId(Index: Integer; const AInteger: Integer);
    function  TedarikciSanalKategoriId_Specified(Index: Integer): boolean;
    procedure SetUrunAdi(Index: Integer; const Astring: string);
    function  UrunAdi_Specified(Index: Integer): boolean;
    procedure SetUrunId(Index: Integer; const AInteger: Integer);
    function  UrunId_Specified(Index: Integer): boolean;
    procedure SetUrunKodu(Index: Integer; const Astring: string);
    function  UrunKodu_Specified(Index: Integer): boolean;
    procedure SetUrunUrl(Index: Integer; const Astring: string);
    function  UrunUrl_Specified(Index: Integer): boolean;
    procedure SetUzunAciklama(Index: Integer; const Astring: string);
    function  UzunAciklama_Specified(Index: Integer): boolean;
    procedure SetVariantListesi(Index: Integer; const AArrayOfVariants: ArrayOfVariants);
    function  VariantListesi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Aciklama:                 string            Index (IS_OPTN or IS_NLBL) read FAciklama write SetAciklama stored Aciklama_Specified;
    property AdminCode:                string            Index (IS_OPTN or IS_NLBL) read FAdminCode write SetAdminCode stored AdminCode_Specified;
    property Agirlik:                  TXSDecimal        Index (IS_OPTN) read FAgirlik write SetAgirlik stored Agirlik_Specified;
    property Aktif:                    Boolean           Index (IS_OPTN) read FAktif write SetAktif stored Aktif_Specified;
    property AltKategoriAdi:           string            Index (IS_OPTN or IS_NLBL) read FAltKategoriAdi write SetAltKategoriAdi stored AltKategoriAdi_Specified;
    property AltKategoriId:            Integer           Index (IS_OPTN) read FAltKategoriId write SetAltKategoriId stored AltKategoriId_Specified;
    property AnaKategoriId:            Integer           Index (IS_OPTN) read FAnaKategoriId write SetAnaKategoriId stored AnaKategoriId_Specified;
    property Barkod:                   string            Index (IS_OPTN or IS_NLBL) read FBarkod write SetBarkod stored Barkod_Specified;
    property BoyX:                     Integer           Index (IS_OPTN) read FBoyX write SetBoyX stored BoyX_Specified;
    property BoyY:                     Integer           Index (IS_OPTN) read FBoyY write SetBoyY stored BoyY_Specified;
    property BoyZ:                     Integer           Index (IS_OPTN) read FBoyZ write SetBoyZ stored BoyZ_Specified;
    property Desi:                     Double            Index (IS_OPTN) read FDesi write SetDesi stored Desi_Specified;
    property Durum:                    KayitDurum        Index (IS_OPTN) read FDurum write SetDurum stored Durum_Specified;
    property GarantiSuresi:            Integer           Index (IS_OPTN) read FGarantiSuresi write SetGarantiSuresi stored GarantiSuresi_Specified;
    property GarantiVerenFirma:        string            Index (IS_OPTN or IS_NLBL) read FGarantiVerenFirma write SetGarantiVerenFirma stored GarantiVerenFirma_Specified;
    property Iskonto:                  TXSDecimal        Index (IS_OPTN) read FIskonto write SetIskonto stored Iskonto_Specified;
    property KDVOran:                  TXSDecimal        Index (IS_OPTN) read FKDVOran write SetKDVOran stored KDVOran_Specified;
    property KDVli:                    TXSDecimal        Index (IS_OPTN) read FKDVli write SetKDVli stored KDVli_Specified;
    property KDVsiz:                   TXSDecimal        Index (IS_OPTN) read FKDVsiz write SetKDVsiz stored KDVsiz_Specified;
    property KategoriBilgisiGuncelle:  Integer           Index (IS_OPTN) read FKategoriBilgisiGuncelle write SetKategoriBilgisiGuncelle stored KategoriBilgisiGuncelle_Specified;
    property Mevcut:                   Boolean           Index (IS_OPTN) read FMevcut write SetMevcut stored Mevcut_Specified;
    property Miktar:                   Integer           Index (IS_OPTN) read FMiktar write SetMiktar stored Miktar_Specified;
    property Resim1Stream:             TByteDynArray     Index (IS_OPTN or IS_NLBL) read FResim1Stream write SetResim1Stream stored Resim1Stream_Specified;
    property Resim1Url:                string            Index (IS_OPTN or IS_NLBL) read FResim1Url write SetResim1Url stored Resim1Url_Specified;
    property Resim2Stream:             TByteDynArray     Index (IS_OPTN or IS_NLBL) read FResim2Stream write SetResim2Stream stored Resim2Stream_Specified;
    property Resim2Url:                string            Index (IS_OPTN or IS_NLBL) read FResim2Url write SetResim2Url stored Resim2Url_Specified;
    property Resim3Stream:             TByteDynArray     Index (IS_OPTN or IS_NLBL) read FResim3Stream write SetResim3Stream stored Resim3Stream_Specified;
    property Resim3Url:                string            Index (IS_OPTN or IS_NLBL) read FResim3Url write SetResim3Url stored Resim3Url_Specified;
    property ResimListesi:             ArrayOfUrunResim  Index (IS_OPTN or IS_NLBL) read FResimListesi write SetResimListesi stored ResimListesi_Specified;
    property ShopId:                   Integer           Index (IS_OPTN) read FShopId write SetShopId stored ShopId_Specified;
    property Tag:                      string            Index (IS_OPTN or IS_NLBL) read FTag write SetTag stored Tag_Specified;
    property TedarikciAltKategoriAdi:  string            Index (IS_OPTN or IS_NLBL) read FTedarikciAltKategoriAdi write SetTedarikciAltKategoriAdi stored TedarikciAltKategoriAdi_Specified;
    property TedarikciAltKategoriId:   Integer           Index (IS_OPTN) read FTedarikciAltKategoriId write SetTedarikciAltKategoriId stored TedarikciAltKategoriId_Specified;
    property TedarikciSanalKategoriId: Integer           Index (IS_OPTN) read FTedarikciSanalKategoriId write SetTedarikciSanalKategoriId stored TedarikciSanalKategoriId_Specified;
    property UrunAdi:                  string            Index (IS_OPTN or IS_NLBL) read FUrunAdi write SetUrunAdi stored UrunAdi_Specified;
    property UrunId:                   Integer           Index (IS_OPTN) read FUrunId write SetUrunId stored UrunId_Specified;
    property UrunKodu:                 string            Index (IS_OPTN or IS_NLBL) read FUrunKodu write SetUrunKodu stored UrunKodu_Specified;
    property UrunUrl:                  string            Index (IS_OPTN or IS_NLBL) read FUrunUrl write SetUrunUrl stored UrunUrl_Specified;
    property UzunAciklama:             string            Index (IS_OPTN or IS_NLBL) read FUzunAciklama write SetUzunAciklama stored UzunAciklama_Specified;
    property VariantListesi:           ArrayOfVariants   Index (IS_OPTN or IS_NLBL) read FVariantListesi write SetVariantListesi stored VariantListesi_Specified;
  end;

  ArrayOfStokUrun = array of StokUrun2;         { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }


  // ************************************************************************ //
  // XML       : clsResultTransferObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  clsResultTransferObject = class(clsResultTransferObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SiparisUrun, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  SiparisUrun = class(SiparisUrun2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : KargoBilgi, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  KargoBilgi = class(KargoBilgi2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : AltKategoriDetay, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  AltKategoriDetay = class(AltKategoriDetay2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TedarikciSiparisKontrolV2, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  TedarikciSiparisKontrolV2 = class(TedarikciSiparisKontrolV22)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TedarikciSiparisKontrol, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  TedarikciSiparisKontrol = class(TedarikciSiparisKontrol2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ServiceStateResult, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService.Model
  // ************************************************************************ //
  ServiceStateResult2 = class(TRemotable)
  private
    FerrorMessage: string;
    FerrorMessage_Specified: boolean;
    Fstatus: string;
    Fstatus_Specified: boolean;
    procedure SeterrorMessage(Index: Integer; const Astring: string);
    function  errorMessage_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const Astring: string);
    function  status_Specified(Index: Integer): boolean;
  published
    property errorMessage: string  Index (IS_OPTN or IS_NLBL) read FerrorMessage write SeterrorMessage stored errorMessage_Specified;
    property status:       string  Index (IS_OPTN or IS_NLBL) read Fstatus write Setstatus stored status_Specified;
  end;



  // ************************************************************************ //
  // XML       : ServiceStateResult, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService.Model
  // ************************************************************************ //
  ServiceStateResult = class(ServiceStateResult2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : KategoriDetay, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  KategoriDetay = class(KategoriDetay2)
  private
  published
  end;

  ArrayOfVariantAttr = array of VariantAttr2;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }


  // ************************************************************************ //
  // XML       : VariantAttr, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  VariantAttr2 = class(TRemotable)
  private
    FDeger: string;
    FDeger_Specified: boolean;
    FFiyat: TXSDecimal;
    FFiyat_Specified: boolean;
    FFiyatFarkiMi: Boolean;
    FFiyatFarkiMi_Specified: boolean;
    FTanim: string;
    FTanim_Specified: boolean;
    procedure SetDeger(Index: Integer; const Astring: string);
    function  Deger_Specified(Index: Integer): boolean;
    procedure SetFiyat(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  Fiyat_Specified(Index: Integer): boolean;
    procedure SetFiyatFarkiMi(Index: Integer; const ABoolean: Boolean);
    function  FiyatFarkiMi_Specified(Index: Integer): boolean;
    procedure SetTanim(Index: Integer; const Astring: string);
    function  Tanim_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Deger:        string      Index (IS_OPTN or IS_NLBL) read FDeger write SetDeger stored Deger_Specified;
    property Fiyat:        TXSDecimal  Index (IS_OPTN) read FFiyat write SetFiyat stored Fiyat_Specified;
    property FiyatFarkiMi: Boolean     Index (IS_OPTN) read FFiyatFarkiMi write SetFiyatFarkiMi stored FiyatFarkiMi_Specified;
    property Tanim:        string      Index (IS_OPTN or IS_NLBL) read FTanim write SetTanim stored Tanim_Specified;
  end;



  // ************************************************************************ //
  // XML       : VariantAttr, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  VariantAttr = class(VariantAttr2)
  private
  published
  end;

  ArrayOfVariantCombination = array of VariantCombination2;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }


  // ************************************************************************ //
  // XML       : Variant, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  Variant2 = class(TRemotable)
  private
    FAnaUrunKodu: string;
    FAnaUrunKodu_Specified: boolean;
    FAttributes: ArrayOfVariantAttr;
    FAttributes_Specified: boolean;
    FCombination: ArrayOfVariantCombination;
    FCombination_Specified: boolean;
    FDurum: KayitDurum;
    FDurum_Specified: boolean;
    FGuncellemeSonucu: string;
    FGuncellemeSonucu_Specified: boolean;
    FKayitDegisti: Integer;
    FKayitDegisti_Specified: boolean;
    FMiktar: Integer;
    FMiktar_Specified: boolean;
    FVariantBarkod: string;
    FVariantBarkod_Specified: boolean;
    procedure SetAnaUrunKodu(Index: Integer; const Astring: string);
    function  AnaUrunKodu_Specified(Index: Integer): boolean;
    procedure SetAttributes(Index: Integer; const AArrayOfVariantAttr: ArrayOfVariantAttr);
    function  Attributes_Specified(Index: Integer): boolean;
    procedure SetCombination(Index: Integer; const AArrayOfVariantCombination: ArrayOfVariantCombination);
    function  Combination_Specified(Index: Integer): boolean;
    procedure SetDurum(Index: Integer; const AKayitDurum: KayitDurum);
    function  Durum_Specified(Index: Integer): boolean;
    procedure SetGuncellemeSonucu(Index: Integer; const Astring: string);
    function  GuncellemeSonucu_Specified(Index: Integer): boolean;
    procedure SetKayitDegisti(Index: Integer; const AInteger: Integer);
    function  KayitDegisti_Specified(Index: Integer): boolean;
    procedure SetMiktar(Index: Integer; const AInteger: Integer);
    function  Miktar_Specified(Index: Integer): boolean;
    procedure SetVariantBarkod(Index: Integer; const Astring: string);
    function  VariantBarkod_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AnaUrunKodu:      string                     Index (IS_OPTN or IS_NLBL) read FAnaUrunKodu write SetAnaUrunKodu stored AnaUrunKodu_Specified;
    property Attributes:       ArrayOfVariantAttr         Index (IS_OPTN or IS_NLBL) read FAttributes write SetAttributes stored Attributes_Specified;
    property Combination:      ArrayOfVariantCombination  Index (IS_OPTN or IS_NLBL) read FCombination write SetCombination stored Combination_Specified;
    property Durum:            KayitDurum                 Index (IS_OPTN) read FDurum write SetDurum stored Durum_Specified;
    property GuncellemeSonucu: string                     Index (IS_OPTN or IS_NLBL) read FGuncellemeSonucu write SetGuncellemeSonucu stored GuncellemeSonucu_Specified;
    property KayitDegisti:     Integer                    Index (IS_OPTN) read FKayitDegisti write SetKayitDegisti stored KayitDegisti_Specified;
    property Miktar:           Integer                    Index (IS_OPTN) read FMiktar write SetMiktar stored Miktar_Specified;
    property VariantBarkod:    string                     Index (IS_OPTN or IS_NLBL) read FVariantBarkod write SetVariantBarkod stored VariantBarkod_Specified;
  end;



  // ************************************************************************ //
  // XML       : Variant, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  Variant = class(Variant2)
  private
  published
  end;

  ArrayOfUrunResimBase64 = array of UrunResimBase642;   { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }


  // ************************************************************************ //
  // XML       : UrunResimBase64, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  UrunResimBase642 = class(TRemotable)
  private
    FBase64String: string;
    FBase64String_Specified: boolean;
    FFileExtention: string;
    FFileExtention_Specified: boolean;
    FSira: Integer;
    FSira_Specified: boolean;
    procedure SetBase64String(Index: Integer; const Astring: string);
    function  Base64String_Specified(Index: Integer): boolean;
    procedure SetFileExtention(Index: Integer; const Astring: string);
    function  FileExtention_Specified(Index: Integer): boolean;
    procedure SetSira(Index: Integer; const AInteger: Integer);
    function  Sira_Specified(Index: Integer): boolean;
  published
    property Base64String:  string   Index (IS_OPTN or IS_NLBL) read FBase64String write SetBase64String stored Base64String_Specified;
    property FileExtention: string   Index (IS_OPTN or IS_NLBL) read FFileExtention write SetFileExtention stored FileExtention_Specified;
    property Sira:          Integer  Index (IS_OPTN) read FSira write SetSira stored Sira_Specified;
  end;



  // ************************************************************************ //
  // XML       : UrunResimBase64, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  UrunResimBase64 = class(UrunResimBase642)
  private
  published
  end;

  ArrayOfVariant = array of Variant2;           { "http://schemas.datacontract.org/2004/07/ePttAVMService"[GblCplx] }


  // ************************************************************************ //
  // XML       : StokUrun, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  StokUrun2 = class(TRemotable)
  private
    FAciklama: string;
    FAciklama_Specified: boolean;
    FAdminCode: string;
    FAdminCode_Specified: boolean;
    FAgirlik: TXSDecimal;
    FAgirlik_Specified: boolean;
    FAktif: Boolean;
    FAktif_Specified: boolean;
    FAltKategoriAdi: string;
    FAltKategoriAdi_Specified: boolean;
    FAltKategoriId: Integer;
    FAltKategoriId_Specified: boolean;
    FAnaKategoriId: Integer;
    FAnaKategoriId_Specified: boolean;
    FBarkod: string;
    FBarkod_Specified: boolean;
    FBoyX: Integer;
    FBoyX_Specified: boolean;
    FBoyY: Integer;
    FBoyY_Specified: boolean;
    FBoyZ: Integer;
    FBoyZ_Specified: boolean;
    FDesi: Double;
    FDesi_Specified: boolean;
    FDurum: KayitDurum;
    FDurum_Specified: boolean;
    FGarantiSuresi: Integer;
    FGarantiSuresi_Specified: boolean;
    FGarantiVerenFirma: string;
    FGarantiVerenFirma_Specified: boolean;
    FGtin: string;
    FGtin_Specified: boolean;
    FIsAdmin: Boolean;
    FIsAdmin_Specified: boolean;
    FIskonto: TXSDecimal;
    FIskonto_Specified: boolean;
    FKDVOran: TXSDecimal;
    FKDVOran_Specified: boolean;
    FKDVli: TXSDecimal;
    FKDVli_Specified: boolean;
    FKDVsiz: TXSDecimal;
    FKDVsiz_Specified: boolean;
    FKategoriBilgisiGuncelle: Integer;
    FKategoriBilgisiGuncelle_Specified: boolean;
    FMevcut: Boolean;
    FMevcut_Specified: boolean;
    FMiktar: Integer;
    FMiktar_Specified: boolean;
    FSatisBaslangicTarihi: string;
    FSatisBaslangicTarihi_Specified: boolean;
    FSatisBitisTarihi: string;
    FSatisBitisTarihi_Specified: boolean;
    FShopId: Integer;
    FShopId_Specified: boolean;
    FTag: string;
    FTag_Specified: boolean;
    FTedarikciAltKategoriAdi: string;
    FTedarikciAltKategoriAdi_Specified: boolean;
    FTedarikciAltKategoriId: Integer;
    FTedarikciAltKategoriId_Specified: boolean;
    FTedarikciSanalKategoriId: Integer;
    FTedarikciSanalKategoriId_Specified: boolean;
    FUrunAdi: string;
    FUrunAdi_Specified: boolean;
    FUrunId: Integer;
    FUrunId_Specified: boolean;
    FUrunKodu: string;
    FUrunKodu_Specified: boolean;
    FUrunResimleri: ArrayOfUrunResim;
    FUrunResimleri_Specified: boolean;
    FUrunResimleriBase64: ArrayOfUrunResimBase64;
    FUrunResimleriBase64_Specified: boolean;
    FUrunUrl: string;
    FUrunUrl_Specified: boolean;
    FUzunAciklama: string;
    FUzunAciklama_Specified: boolean;
    FVariantListesi: ArrayOfVariant;
    FVariantListesi_Specified: boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetAdminCode(Index: Integer; const Astring: string);
    function  AdminCode_Specified(Index: Integer): boolean;
    procedure SetAgirlik(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  Agirlik_Specified(Index: Integer): boolean;
    procedure SetAktif(Index: Integer; const ABoolean: Boolean);
    function  Aktif_Specified(Index: Integer): boolean;
    procedure SetAltKategoriAdi(Index: Integer; const Astring: string);
    function  AltKategoriAdi_Specified(Index: Integer): boolean;
    procedure SetAltKategoriId(Index: Integer; const AInteger: Integer);
    function  AltKategoriId_Specified(Index: Integer): boolean;
    procedure SetAnaKategoriId(Index: Integer; const AInteger: Integer);
    function  AnaKategoriId_Specified(Index: Integer): boolean;
    procedure SetBarkod(Index: Integer; const Astring: string);
    function  Barkod_Specified(Index: Integer): boolean;
    procedure SetBoyX(Index: Integer; const AInteger: Integer);
    function  BoyX_Specified(Index: Integer): boolean;
    procedure SetBoyY(Index: Integer; const AInteger: Integer);
    function  BoyY_Specified(Index: Integer): boolean;
    procedure SetBoyZ(Index: Integer; const AInteger: Integer);
    function  BoyZ_Specified(Index: Integer): boolean;
    procedure SetDesi(Index: Integer; const ADouble: Double);
    function  Desi_Specified(Index: Integer): boolean;
    procedure SetDurum(Index: Integer; const AKayitDurum: KayitDurum);
    function  Durum_Specified(Index: Integer): boolean;
    procedure SetGarantiSuresi(Index: Integer; const AInteger: Integer);
    function  GarantiSuresi_Specified(Index: Integer): boolean;
    procedure SetGarantiVerenFirma(Index: Integer; const Astring: string);
    function  GarantiVerenFirma_Specified(Index: Integer): boolean;
    procedure SetGtin(Index: Integer; const Astring: string);
    function  Gtin_Specified(Index: Integer): boolean;
    procedure SetIsAdmin(Index: Integer; const ABoolean: Boolean);
    function  IsAdmin_Specified(Index: Integer): boolean;
    procedure SetIskonto(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  Iskonto_Specified(Index: Integer): boolean;
    procedure SetKDVOran(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  KDVOran_Specified(Index: Integer): boolean;
    procedure SetKDVli(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  KDVli_Specified(Index: Integer): boolean;
    procedure SetKDVsiz(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  KDVsiz_Specified(Index: Integer): boolean;
    procedure SetKategoriBilgisiGuncelle(Index: Integer; const AInteger: Integer);
    function  KategoriBilgisiGuncelle_Specified(Index: Integer): boolean;
    procedure SetMevcut(Index: Integer; const ABoolean: Boolean);
    function  Mevcut_Specified(Index: Integer): boolean;
    procedure SetMiktar(Index: Integer; const AInteger: Integer);
    function  Miktar_Specified(Index: Integer): boolean;
    procedure SetSatisBaslangicTarihi(Index: Integer; const Astring: string);
    function  SatisBaslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetSatisBitisTarihi(Index: Integer; const Astring: string);
    function  SatisBitisTarihi_Specified(Index: Integer): boolean;
    procedure SetShopId(Index: Integer; const AInteger: Integer);
    function  ShopId_Specified(Index: Integer): boolean;
    procedure SetTag(Index: Integer; const Astring: string);
    function  Tag_Specified(Index: Integer): boolean;
    procedure SetTedarikciAltKategoriAdi(Index: Integer; const Astring: string);
    function  TedarikciAltKategoriAdi_Specified(Index: Integer): boolean;
    procedure SetTedarikciAltKategoriId(Index: Integer; const AInteger: Integer);
    function  TedarikciAltKategoriId_Specified(Index: Integer): boolean;
    procedure SetTedarikciSanalKategoriId(Index: Integer; const AInteger: Integer);
    function  TedarikciSanalKategoriId_Specified(Index: Integer): boolean;
    procedure SetUrunAdi(Index: Integer; const Astring: string);
    function  UrunAdi_Specified(Index: Integer): boolean;
    procedure SetUrunId(Index: Integer; const AInteger: Integer);
    function  UrunId_Specified(Index: Integer): boolean;
    procedure SetUrunKodu(Index: Integer; const Astring: string);
    function  UrunKodu_Specified(Index: Integer): boolean;
    procedure SetUrunResimleri(Index: Integer; const AArrayOfUrunResim: ArrayOfUrunResim);
    function  UrunResimleri_Specified(Index: Integer): boolean;
    procedure SetUrunResimleriBase64(Index: Integer; const AArrayOfUrunResimBase64: ArrayOfUrunResimBase64);
    function  UrunResimleriBase64_Specified(Index: Integer): boolean;
    procedure SetUrunUrl(Index: Integer; const Astring: string);
    function  UrunUrl_Specified(Index: Integer): boolean;
    procedure SetUzunAciklama(Index: Integer; const Astring: string);
    function  UzunAciklama_Specified(Index: Integer): boolean;
    procedure SetVariantListesi(Index: Integer; const AArrayOfVariant: ArrayOfVariant);
    function  VariantListesi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Aciklama:                 string                  Index (IS_OPTN or IS_NLBL) read FAciklama write SetAciklama stored Aciklama_Specified;
    property AdminCode:                string                  Index (IS_OPTN or IS_NLBL) read FAdminCode write SetAdminCode stored AdminCode_Specified;
    property Agirlik:                  TXSDecimal              Index (IS_OPTN) read FAgirlik write SetAgirlik stored Agirlik_Specified;
    property Aktif:                    Boolean                 Index (IS_OPTN) read FAktif write SetAktif stored Aktif_Specified;
    property AltKategoriAdi:           string                  Index (IS_OPTN or IS_NLBL) read FAltKategoriAdi write SetAltKategoriAdi stored AltKategoriAdi_Specified;
    property AltKategoriId:            Integer                 Index (IS_OPTN) read FAltKategoriId write SetAltKategoriId stored AltKategoriId_Specified;
    property AnaKategoriId:            Integer                 Index (IS_OPTN) read FAnaKategoriId write SetAnaKategoriId stored AnaKategoriId_Specified;
    property Barkod:                   string                  Index (IS_OPTN or IS_NLBL) read FBarkod write SetBarkod stored Barkod_Specified;
    property BoyX:                     Integer                 Index (IS_OPTN) read FBoyX write SetBoyX stored BoyX_Specified;
    property BoyY:                     Integer                 Index (IS_OPTN) read FBoyY write SetBoyY stored BoyY_Specified;
    property BoyZ:                     Integer                 Index (IS_OPTN) read FBoyZ write SetBoyZ stored BoyZ_Specified;
    property Desi:                     Double                  Index (IS_OPTN) read FDesi write SetDesi stored Desi_Specified;
    property Durum:                    KayitDurum              Index (IS_OPTN) read FDurum write SetDurum stored Durum_Specified;
    property GarantiSuresi:            Integer                 Index (IS_OPTN) read FGarantiSuresi write SetGarantiSuresi stored GarantiSuresi_Specified;
    property GarantiVerenFirma:        string                  Index (IS_OPTN or IS_NLBL) read FGarantiVerenFirma write SetGarantiVerenFirma stored GarantiVerenFirma_Specified;
    property Gtin:                     string                  Index (IS_OPTN or IS_NLBL) read FGtin write SetGtin stored Gtin_Specified;
    property IsAdmin:                  Boolean                 Index (IS_OPTN) read FIsAdmin write SetIsAdmin stored IsAdmin_Specified;
    property Iskonto:                  TXSDecimal              Index (IS_OPTN) read FIskonto write SetIskonto stored Iskonto_Specified;
    property KDVOran:                  TXSDecimal              Index (IS_OPTN) read FKDVOran write SetKDVOran stored KDVOran_Specified;
    property KDVli:                    TXSDecimal              Index (IS_OPTN) read FKDVli write SetKDVli stored KDVli_Specified;
    property KDVsiz:                   TXSDecimal              Index (IS_OPTN) read FKDVsiz write SetKDVsiz stored KDVsiz_Specified;
    property KategoriBilgisiGuncelle:  Integer                 Index (IS_OPTN) read FKategoriBilgisiGuncelle write SetKategoriBilgisiGuncelle stored KategoriBilgisiGuncelle_Specified;
    property Mevcut:                   Boolean                 Index (IS_OPTN) read FMevcut write SetMevcut stored Mevcut_Specified;
    property Miktar:                   Integer                 Index (IS_OPTN) read FMiktar write SetMiktar stored Miktar_Specified;
    property SatisBaslangicTarihi:     string                  Index (IS_OPTN or IS_NLBL) read FSatisBaslangicTarihi write SetSatisBaslangicTarihi stored SatisBaslangicTarihi_Specified;
    property SatisBitisTarihi:         string                  Index (IS_OPTN or IS_NLBL) read FSatisBitisTarihi write SetSatisBitisTarihi stored SatisBitisTarihi_Specified;
    property ShopId:                   Integer                 Index (IS_OPTN) read FShopId write SetShopId stored ShopId_Specified;
    property Tag:                      string                  Index (IS_OPTN or IS_NLBL) read FTag write SetTag stored Tag_Specified;
    property TedarikciAltKategoriAdi:  string                  Index (IS_OPTN or IS_NLBL) read FTedarikciAltKategoriAdi write SetTedarikciAltKategoriAdi stored TedarikciAltKategoriAdi_Specified;
    property TedarikciAltKategoriId:   Integer                 Index (IS_OPTN) read FTedarikciAltKategoriId write SetTedarikciAltKategoriId stored TedarikciAltKategoriId_Specified;
    property TedarikciSanalKategoriId: Integer                 Index (IS_OPTN) read FTedarikciSanalKategoriId write SetTedarikciSanalKategoriId stored TedarikciSanalKategoriId_Specified;
    property UrunAdi:                  string                  Index (IS_OPTN or IS_NLBL) read FUrunAdi write SetUrunAdi stored UrunAdi_Specified;
    property UrunId:                   Integer                 Index (IS_OPTN) read FUrunId write SetUrunId stored UrunId_Specified;
    property UrunKodu:                 string                  Index (IS_OPTN or IS_NLBL) read FUrunKodu write SetUrunKodu stored UrunKodu_Specified;
    property UrunResimleri:            ArrayOfUrunResim        Index (IS_OPTN or IS_NLBL) read FUrunResimleri write SetUrunResimleri stored UrunResimleri_Specified;
    property UrunResimleriBase64:      ArrayOfUrunResimBase64  Index (IS_OPTN or IS_NLBL) read FUrunResimleriBase64 write SetUrunResimleriBase64 stored UrunResimleriBase64_Specified;
    property UrunUrl:                  string                  Index (IS_OPTN or IS_NLBL) read FUrunUrl write SetUrunUrl stored UrunUrl_Specified;
    property UzunAciklama:             string                  Index (IS_OPTN or IS_NLBL) read FUzunAciklama write SetUzunAciklama stored UzunAciklama_Specified;
    property VariantListesi:           ArrayOfVariant          Index (IS_OPTN or IS_NLBL) read FVariantListesi write SetVariantListesi stored VariantListesi_Specified;
  end;



  // ************************************************************************ //
  // XML       : StokUrun, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  StokUrun = class(StokUrun2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : StokKontrolDetay, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  StokKontrolDetay = class(StokKontrolDetay2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Tedarikci, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  Tedarikci = class(Tedarikci2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Variants, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  Variants = class(Variants2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : UrunResim, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  UrunResim = class(UrunResim2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : StokResult, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  StokResult2 = class(TRemotable)
  private
    FErrorMessage: string;
    FErrorMessage_Specified: boolean;
    FSuccess: Boolean;
    FSuccess_Specified: boolean;
    FUrunId: Integer;
    FUrunId_Specified: boolean;
    FWarningMessages: ArrayOfstring;
    FWarningMessages_Specified: boolean;
    procedure SetErrorMessage(Index: Integer; const Astring: string);
    function  ErrorMessage_Specified(Index: Integer): boolean;
    procedure SetSuccess(Index: Integer; const ABoolean: Boolean);
    function  Success_Specified(Index: Integer): boolean;
    procedure SetUrunId(Index: Integer; const AInteger: Integer);
    function  UrunId_Specified(Index: Integer): boolean;
    procedure SetWarningMessages(Index: Integer; const AArrayOfstring: ArrayOfstring);
    function  WarningMessages_Specified(Index: Integer): boolean;
  published
    property ErrorMessage:    string         Index (IS_OPTN or IS_NLBL) read FErrorMessage write SetErrorMessage stored ErrorMessage_Specified;
    property Success:         Boolean        Index (IS_OPTN) read FSuccess write SetSuccess stored Success_Specified;
    property UrunId:          Integer        Index (IS_OPTN) read FUrunId write SetUrunId stored UrunId_Specified;
    property WarningMessages: ArrayOfstring  Index (IS_OPTN or IS_NLBL) read FWarningMessages write SetWarningMessages stored WarningMessages_Specified;
  end;



  // ************************************************************************ //
  // XML       : StokResult, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  StokResult = class(StokResult2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : VariantCombination, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  VariantCombination2 = class(TRemotable)
  private
    FAktif: Boolean;
    FAktif_Specified: boolean;
    FBarkod: string;
    FBarkod_Specified: boolean;
    FDegerler: string;
    FDegerler_Specified: boolean;
    FStok: string;
    FStok_Specified: boolean;
    procedure SetAktif(Index: Integer; const ABoolean: Boolean);
    function  Aktif_Specified(Index: Integer): boolean;
    procedure SetBarkod(Index: Integer; const Astring: string);
    function  Barkod_Specified(Index: Integer): boolean;
    procedure SetDegerler(Index: Integer; const Astring: string);
    function  Degerler_Specified(Index: Integer): boolean;
    procedure SetStok(Index: Integer; const Astring: string);
    function  Stok_Specified(Index: Integer): boolean;
  published
    property Aktif:    Boolean  Index (IS_OPTN) read FAktif write SetAktif stored Aktif_Specified;
    property Barkod:   string   Index (IS_OPTN or IS_NLBL) read FBarkod write SetBarkod stored Barkod_Specified;
    property Degerler: string   Index (IS_OPTN or IS_NLBL) read FDegerler write SetDegerler stored Degerler_Specified;
    property Stok:     string   Index (IS_OPTN or IS_NLBL) read FStok write SetStok stored Stok_Specified;
  end;



  // ************************************************************************ //
  // XML       : VariantCombination, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  VariantCombination = class(VariantCombination2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ApiResult, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  ApiResult2 = class(TRemotable)
  private
    FErrorCode: string;
    FErrorCode_Specified: boolean;
    FErrorMessage: string;
    FErrorMessage_Specified: boolean;
    FSuccess: Boolean;
    FSuccess_Specified: boolean;
    procedure SetErrorCode(Index: Integer; const Astring: string);
    function  ErrorCode_Specified(Index: Integer): boolean;
    procedure SetErrorMessage(Index: Integer; const Astring: string);
    function  ErrorMessage_Specified(Index: Integer): boolean;
    procedure SetSuccess(Index: Integer; const ABoolean: Boolean);
    function  Success_Specified(Index: Integer): boolean;
  published
    property ErrorCode:    string   Index (IS_OPTN or IS_NLBL) read FErrorCode write SetErrorCode stored ErrorCode_Specified;
    property ErrorMessage: string   Index (IS_OPTN or IS_NLBL) read FErrorMessage write SetErrorMessage stored ErrorMessage_Specified;
    property Success:      Boolean  Index (IS_OPTN) read FSuccess write SetSuccess stored Success_Specified;
  end;



  // ************************************************************************ //
  // XML       : ApiResult, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  ApiResult = class(ApiResult2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : AktifUrunRequest, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  AktifUrunRequest2 = class(TRemotable)
  private
    FAktif: Boolean;
    FAktif_Specified: boolean;
    FUrunId: Integer;
    FUrunId_Specified: boolean;
    procedure SetAktif(Index: Integer; const ABoolean: Boolean);
    function  Aktif_Specified(Index: Integer): boolean;
    procedure SetUrunId(Index: Integer; const AInteger: Integer);
    function  UrunId_Specified(Index: Integer): boolean;
  published
    property Aktif:  Boolean  Index (IS_OPTN) read FAktif write SetAktif stored Aktif_Specified;
    property UrunId: Integer  Index (IS_OPTN) read FUrunId write SetUrunId stored UrunId_Specified;
  end;



  // ************************************************************************ //
  // XML       : AktifUrunRequest, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ePttAVMService
  // ************************************************************************ //
  AktifUrunRequest = class(AktifUrunRequest2)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/IService/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : WsSecured
  // service   : Service
  // port      : WsSecured
  // URL       : https://ws.epttavm.com:83/service.svc
  // ************************************************************************ //
  IService = interface(IInvokable)
  ['{CF4B68D1-8A10-D2C3-98B2-6061E5E92E21}']
    function  KullaniciTedarikciBilgisiGetir: Tedarikci2; stdcall;
    function  StokKontrolListesi(const ShopId: Integer; const SearchKategoriId: Integer; const SearchAltKategoriId: Integer; const SearchUrunAdi: string; const SearchBarkod: string; const SearchAktifPasif: Integer; 
                                 const SearchMevcut: Integer; const SearchTedarikciKategoriId: Integer): ArrayOfStokKontrolDetay; stdcall;
    function  BarkodKontrol(const Barkod: string; const ShopId: Integer): StokKontrolDetay2; stdcall;
    function  KategoriListesi: ArrayOfKategoriDetay; stdcall;
    function  AltKategoriListesi: ArrayOfAltKategoriDetay; stdcall;
    function  KargoBilgiListesi(const orderId: string): ArrayOfKargoBilgi; stdcall;
    function  StokGuncelle(const item: StokKontrolDetay2): Boolean; stdcall;
    function  StokFiyatGuncelle(const item: StokKontrolDetay2): Boolean; stdcall;
    function  StokFiyatGuncelle2(const item: StokKontrolDetay2): Boolean; stdcall;
    function  SiparisKontrolListesi(const BaslangicTarihi: TXSDateTime; const BitisTarihi: TXSDateTime; const AktifSiparisler: Integer): ArrayOfTedarikciSiparisKontrol; stdcall;
    function  TedarikciAltKategoriListesi: ArrayOfAltKategoriDetay; stdcall;
    function  GetVersion: string; stdcall;
    function  SiparisKontrolListesiV2(const BaslangicTarihi: TXSDateTime; const BitisTarihi: TXSDateTime; const AktifSiparisler: Integer): ArrayOfTedarikciSiparisKontrolV2; stdcall;
    function  OlmayanUrunAdetleriSifirla(const AktifUrunIds: ArrayOfint): Integer; stdcall;
    function  StokGuncelleBulk(const items: ArrayOfStokKontrolDetay): ArrayOfclsResultTransferObject; stdcall;
    function  StokGuncelleV2Bulk(const items: ArrayOfStokUrun): ArrayOfclsResultTransferObject; stdcall;
    function  StokFiyatGuncelleBulk(const items: ArrayOfStokKontrolDetay): ArrayOfclsResultTransferObject; stdcall;
    function  BarkodKontrolBulk(const Barkod: ArrayOfstring; const ShopId: Integer): ArrayOfStokKontrolDetay; stdcall;
    function  StokFiyatGuncelle3(const item: StokUrun2): StokResult2; stdcall;
    function  StokGuncelleV2(const item: StokUrun2): StokResult2; stdcall;
    function  AktifYap(const req: AktifUrunRequest2): ApiResult2; stdcall;
    function  ServiceState(const token: string): ServiceStateResult2; stdcall;
    function  StokGuncelleTestApi(const item: StokUrun2): StokResult2; stdcall;
  end;

function GetIService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IService;


implementation
  uses System.SysUtils;

function GetIService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IService;
const
  defWSDL = 'https://ws.epttavm.com:83/service.svc/service?wsdl';
  defURL  = 'https://ws.epttavm.com:83/service.svc';
  defSvc  = 'Service';
  defPrt  = 'WsSecured';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure Tedarikci2.SetTedarikciAdi(Index: Integer; const Astring: string);
begin
  FTedarikciAdi := Astring;
  FTedarikciAdi_Specified := True;
end;

function Tedarikci2.TedarikciAdi_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciAdi_Specified;
end;

procedure Tedarikci2.SetTedarikciId(Index: Integer; const AInteger: Integer);
begin
  FTedarikciId := AInteger;
  FTedarikciId_Specified := True;
end;

function Tedarikci2.TedarikciId_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciId_Specified;
end;

procedure KargoBilgi2.SetCurrentState(Index: Integer; const Astring: string);
begin
  FCurrentState := Astring;
  FCurrentState_Specified := True;
end;

function KargoBilgi2.CurrentState_Specified(Index: Integer): boolean;
begin
  Result := FCurrentState_Specified;
end;

procedure KargoBilgi2.SetDeliveryInfo(Index: Integer; const Astring: string);
begin
  FDeliveryInfo := Astring;
  FDeliveryInfo_Specified := True;
end;

function KargoBilgi2.DeliveryInfo_Specified(Index: Integer): boolean;
begin
  Result := FDeliveryInfo_Specified;
end;

procedure KargoBilgi2.SetInCargo(Index: Integer; const Astring: string);
begin
  FInCargo := Astring;
  FInCargo_Specified := True;
end;

function KargoBilgi2.InCargo_Specified(Index: Integer): boolean;
begin
  Result := FInCargo_Specified;
end;

procedure KargoBilgi2.SetProductId(Index: Integer; const Astring: string);
begin
  FProductId := Astring;
  FProductId_Specified := True;
end;

function KargoBilgi2.ProductId_Specified(Index: Integer): boolean;
begin
  Result := FProductId_Specified;
end;

procedure KargoBilgi2.SetReferenceCode(Index: Integer; const Astring: string);
begin
  FReferenceCode := Astring;
  FReferenceCode_Specified := True;
end;

function KargoBilgi2.ReferenceCode_Specified(Index: Integer): boolean;
begin
  Result := FReferenceCode_Specified;
end;

procedure KargoBilgi2.SetShopId(Index: Integer; const AInteger: Integer);
begin
  FShopId := AInteger;
  FShopId_Specified := True;
end;

function KargoBilgi2.ShopId_Specified(Index: Integer): boolean;
begin
  Result := FShopId_Specified;
end;

procedure AltKategoriDetay2.SetAltKategoriAdi(Index: Integer; const Astring: string);
begin
  FAltKategoriAdi := Astring;
  FAltKategoriAdi_Specified := True;
end;

function AltKategoriDetay2.AltKategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FAltKategoriAdi_Specified;
end;

procedure AltKategoriDetay2.SetAltKategoriId(Index: Integer; const AInteger: Integer);
begin
  FAltKategoriId := AInteger;
  FAltKategoriId_Specified := True;
end;

function AltKategoriDetay2.AltKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FAltKategoriId_Specified;
end;

procedure AltKategoriDetay2.SetKategoriAdi(Index: Integer; const Astring: string);
begin
  FKategoriAdi := Astring;
  FKategoriAdi_Specified := True;
end;

function AltKategoriDetay2.KategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FKategoriAdi_Specified;
end;

procedure AltKategoriDetay2.SetKategoriId(Index: Integer; const AInteger: Integer);
begin
  FKategoriId := AInteger;
  FKategoriId_Specified := True;
end;

function AltKategoriDetay2.KategoriId_Specified(Index: Integer): boolean;
begin
  Result := FKategoriId_Specified;
end;

procedure AltKategoriDetay2.SetTedarikciAltKategoriAdi(Index: Integer; const Astring: string);
begin
  FTedarikciAltKategoriAdi := Astring;
  FTedarikciAltKategoriAdi_Specified := True;
end;

function AltKategoriDetay2.TedarikciAltKategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciAltKategoriAdi_Specified;
end;

procedure AltKategoriDetay2.SetTedarikciAltKategoriId(Index: Integer; const AInteger: Integer);
begin
  FTedarikciAltKategoriId := AInteger;
  FTedarikciAltKategoriId_Specified := True;
end;

function AltKategoriDetay2.TedarikciAltKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciAltKategoriId_Specified;
end;

procedure AltKategoriDetay2.SetTedarikciSanalKategoriId(Index: Integer; const AInteger: Integer);
begin
  FTedarikciSanalKategoriId := AInteger;
  FTedarikciSanalKategoriId_Specified := True;
end;

function AltKategoriDetay2.TedarikciSanalKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciSanalKategoriId_Specified;
end;

procedure KategoriDetay2.SetKategoriAdi(Index: Integer; const Astring: string);
begin
  FKategoriAdi := Astring;
  FKategoriAdi_Specified := True;
end;

function KategoriDetay2.KategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FKategoriAdi_Specified;
end;

procedure KategoriDetay2.SetKategoriId(Index: Integer; const AInteger: Integer);
begin
  FKategoriId := AInteger;
  FKategoriId_Specified := True;
end;

function KategoriDetay2.KategoriId_Specified(Index: Integer): boolean;
begin
  Result := FKategoriId_Specified;
end;

procedure UrunResim2.SetSira(Index: Integer; const AInteger: Integer);
begin
  FSira := AInteger;
  FSira_Specified := True;
end;

function UrunResim2.Sira_Specified(Index: Integer): boolean;
begin
  Result := FSira_Specified;
end;

procedure UrunResim2.SetUrl(Index: Integer; const Astring: string);
begin
  FUrl := Astring;
  FUrl_Specified := True;
end;

function UrunResim2.Url_Specified(Index: Integer): boolean;
begin
  Result := FUrl_Specified;
end;

destructor Variants2.Destroy;
begin
  System.SysUtils.FreeAndNil(FFiyat);
  inherited Destroy;
end;

procedure Variants2.SetAnaUrunKodu(Index: Integer; const Astring: string);
begin
  FAnaUrunKodu := Astring;
  FAnaUrunKodu_Specified := True;
end;

function Variants2.AnaUrunKodu_Specified(Index: Integer): boolean;
begin
  Result := FAnaUrunKodu_Specified;
end;

procedure Variants2.SetDurum(Index: Integer; const AKayitDurum: KayitDurum);
begin
  FDurum := AKayitDurum;
  FDurum_Specified := True;
end;

function Variants2.Durum_Specified(Index: Integer): boolean;
begin
  Result := FDurum_Specified;
end;

procedure Variants2.SetFiyat(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FFiyat := ATXSDecimal;
  FFiyat_Specified := True;
end;

function Variants2.Fiyat_Specified(Index: Integer): boolean;
begin
  Result := FFiyat_Specified;
end;

procedure Variants2.SetFiyatFarkiMi(Index: Integer; const ABoolean: Boolean);
begin
  FFiyatFarkiMi := ABoolean;
  FFiyatFarkiMi_Specified := True;
end;

function Variants2.FiyatFarkiMi_Specified(Index: Integer): boolean;
begin
  Result := FFiyatFarkiMi_Specified;
end;

procedure Variants2.SetGuncellemeSonucu(Index: Integer; const Astring: string);
begin
  FGuncellemeSonucu := Astring;
  FGuncellemeSonucu_Specified := True;
end;

function Variants2.GuncellemeSonucu_Specified(Index: Integer): boolean;
begin
  Result := FGuncellemeSonucu_Specified;
end;

procedure Variants2.SetKayitDegisti(Index: Integer; const AInteger: Integer);
begin
  FKayitDegisti := AInteger;
  FKayitDegisti_Specified := True;
end;

function Variants2.KayitDegisti_Specified(Index: Integer): boolean;
begin
  Result := FKayitDegisti_Specified;
end;

procedure Variants2.SetMiktar(Index: Integer; const AInteger: Integer);
begin
  FMiktar := AInteger;
  FMiktar_Specified := True;
end;

function Variants2.Miktar_Specified(Index: Integer): boolean;
begin
  Result := FMiktar_Specified;
end;

procedure Variants2.SetVariant1Deger(Index: Integer; const Astring: string);
begin
  FVariant1Deger := Astring;
  FVariant1Deger_Specified := True;
end;

function Variants2.Variant1Deger_Specified(Index: Integer): boolean;
begin
  Result := FVariant1Deger_Specified;
end;

procedure Variants2.SetVariant2Deger(Index: Integer; const Astring: string);
begin
  FVariant2Deger := Astring;
  FVariant2Deger_Specified := True;
end;

function Variants2.Variant2Deger_Specified(Index: Integer): boolean;
begin
  Result := FVariant2Deger_Specified;
end;

procedure Variants2.SetVariantBarkod(Index: Integer; const Astring: string);
begin
  FVariantBarkod := Astring;
  FVariantBarkod_Specified := True;
end;

function Variants2.VariantBarkod_Specified(Index: Integer): boolean;
begin
  Result := FVariantBarkod_Specified;
end;

destructor TedarikciSiparisKontrolV22.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSiparisUrunler)-1 do
    System.SysUtils.FreeAndNil(FSiparisUrunler[I]);
  System.SetLength(FSiparisUrunler, 0);
  System.SysUtils.FreeAndNil(FIslemTarihi);
  inherited Destroy;
end;

procedure TedarikciSiparisKontrolV22.SetEposta(Index: Integer; const Astring: string);
begin
  FEposta := Astring;
  FEposta_Specified := True;
end;

function TedarikciSiparisKontrolV22.Eposta_Specified(Index: Integer): boolean;
begin
  Result := FEposta_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetFirmaUnvani(Index: Integer; const Astring: string);
begin
  FFirmaUnvani := Astring;
  FFirmaUnvani_Specified := True;
end;

function TedarikciSiparisKontrolV22.FirmaUnvani_Specified(Index: Integer): boolean;
begin
  Result := FFirmaUnvani_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetIlKod(Index: Integer; const Astring: string);
begin
  FIlKod := Astring;
  FIlKod_Specified := True;
end;

function TedarikciSiparisKontrolV22.IlKod_Specified(Index: Integer): boolean;
begin
  Result := FIlKod_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetIlceKod(Index: Integer; const Astring: string);
begin
  FIlceKod := Astring;
  FIlceKod_Specified := True;
end;

function TedarikciSiparisKontrolV22.IlceKod_Specified(Index: Integer): boolean;
begin
  Result := FIlceKod_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetIslemTarihi(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FIslemTarihi := ATXSDateTime;
  FIslemTarihi_Specified := True;
end;

function TedarikciSiparisKontrolV22.IslemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FIslemTarihi_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetKargoTutari(Index: Integer; const ADouble: Double);
begin
  FKargoTutari := ADouble;
  FKargoTutari_Specified := True;
end;

function TedarikciSiparisKontrolV22.KargoTutari_Specified(Index: Integer): boolean;
begin
  Result := FKargoTutari_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetMusteriAdi(Index: Integer; const Astring: string);
begin
  FMusteriAdi := Astring;
  FMusteriAdi_Specified := True;
end;

function TedarikciSiparisKontrolV22.MusteriAdi_Specified(Index: Integer): boolean;
begin
  Result := FMusteriAdi_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetMusteriId(Index: Integer; const Astring: string);
begin
  FMusteriId := Astring;
  FMusteriId_Specified := True;
end;

function TedarikciSiparisKontrolV22.MusteriId_Specified(Index: Integer): boolean;
begin
  Result := FMusteriId_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetMusteriSoyadi(Index: Integer; const Astring: string);
begin
  FMusteriSoyadi := Astring;
  FMusteriSoyadi_Specified := True;
end;

function TedarikciSiparisKontrolV22.MusteriSoyadi_Specified(Index: Integer): boolean;
begin
  Result := FMusteriSoyadi_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetSiparisAdresi(Index: Integer; const Astring: string);
begin
  FSiparisAdresi := Astring;
  FSiparisAdresi_Specified := True;
end;

function TedarikciSiparisKontrolV22.SiparisAdresi_Specified(Index: Integer): boolean;
begin
  Result := FSiparisAdresi_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetSiparisIlce(Index: Integer; const Astring: string);
begin
  FSiparisIlce := Astring;
  FSiparisIlce_Specified := True;
end;

function TedarikciSiparisKontrolV22.SiparisIlce_Specified(Index: Integer): boolean;
begin
  Result := FSiparisIlce_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetSiparisIli(Index: Integer; const Astring: string);
begin
  FSiparisIli := Astring;
  FSiparisIli_Specified := True;
end;

function TedarikciSiparisKontrolV22.SiparisIli_Specified(Index: Integer): boolean;
begin
  Result := FSiparisIli_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetSiparisNo(Index: Integer; const Astring: string);
begin
  FSiparisNo := Astring;
  FSiparisNo_Specified := True;
end;

function TedarikciSiparisKontrolV22.SiparisNo_Specified(Index: Integer): boolean;
begin
  Result := FSiparisNo_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetSiparisUrunler(Index: Integer; const AArrayOfSiparisUrun: ArrayOfSiparisUrun);
begin
  FSiparisUrunler := AArrayOfSiparisUrun;
  FSiparisUrunler_Specified := True;
end;

function TedarikciSiparisKontrolV22.SiparisUrunler_Specified(Index: Integer): boolean;
begin
  Result := FSiparisUrunler_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetTCKN(Index: Integer; const Astring: string);
begin
  FTCKN := Astring;
  FTCKN_Specified := True;
end;

function TedarikciSiparisKontrolV22.TCKN_Specified(Index: Integer): boolean;
begin
  Result := FTCKN_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetTedarikciFirmaAdi(Index: Integer; const Astring: string);
begin
  FTedarikciFirmaAdi := Astring;
  FTedarikciFirmaAdi_Specified := True;
end;

function TedarikciSiparisKontrolV22.TedarikciFirmaAdi_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciFirmaAdi_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetTelefonNo(Index: Integer; const Astring: string);
begin
  FTelefonNo := Astring;
  FTelefonNo_Specified := True;
end;

function TedarikciSiparisKontrolV22.TelefonNo_Specified(Index: Integer): boolean;
begin
  Result := FTelefonNo_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetUrunAdi(Index: Integer; const Astring: string);
begin
  FUrunAdi := Astring;
  FUrunAdi_Specified := True;
end;

function TedarikciSiparisKontrolV22.UrunAdi_Specified(Index: Integer): boolean;
begin
  Result := FUrunAdi_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetUrunKodu(Index: Integer; const Astring: string);
begin
  FUrunKodu := Astring;
  FUrunKodu_Specified := True;
end;

function TedarikciSiparisKontrolV22.UrunKodu_Specified(Index: Integer): boolean;
begin
  Result := FUrunKodu_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetVergiDaire(Index: Integer; const Astring: string);
begin
  FVergiDaire := Astring;
  FVergiDaire_Specified := True;
end;

function TedarikciSiparisKontrolV22.VergiDaire_Specified(Index: Integer): boolean;
begin
  Result := FVergiDaire_Specified;
end;

procedure TedarikciSiparisKontrolV22.SetVergiNo(Index: Integer; const Astring: string);
begin
  FVergiNo := Astring;
  FVergiNo_Specified := True;
end;

function TedarikciSiparisKontrolV22.VergiNo_Specified(Index: Integer): boolean;
begin
  Result := FVergiNo_Specified;
end;

destructor TedarikciSiparisKontrol2.Destroy;
begin
  System.SysUtils.FreeAndNil(FIslemTarihi);
  inherited Destroy;
end;

procedure TedarikciSiparisKontrol2.SetEposta(Index: Integer; const Astring: string);
begin
  FEposta := Astring;
  FEposta_Specified := True;
end;

function TedarikciSiparisKontrol2.Eposta_Specified(Index: Integer): boolean;
begin
  Result := FEposta_Specified;
end;

procedure TedarikciSiparisKontrol2.SetFirmaUnvani(Index: Integer; const Astring: string);
begin
  FFirmaUnvani := Astring;
  FFirmaUnvani_Specified := True;
end;

function TedarikciSiparisKontrol2.FirmaUnvani_Specified(Index: Integer): boolean;
begin
  Result := FFirmaUnvani_Specified;
end;

procedure TedarikciSiparisKontrol2.SetGarantiVerenFirma(Index: Integer; const Astring: string);
begin
  FGarantiVerenFirma := Astring;
  FGarantiVerenFirma_Specified := True;
end;

function TedarikciSiparisKontrol2.GarantiVerenFirma_Specified(Index: Integer): boolean;
begin
  Result := FGarantiVerenFirma_Specified;
end;

procedure TedarikciSiparisKontrol2.SetIlKod(Index: Integer; const Astring: string);
begin
  FIlKod := Astring;
  FIlKod_Specified := True;
end;

function TedarikciSiparisKontrol2.IlKod_Specified(Index: Integer): boolean;
begin
  Result := FIlKod_Specified;
end;

procedure TedarikciSiparisKontrol2.SetIlceKod(Index: Integer; const Astring: string);
begin
  FIlceKod := Astring;
  FIlceKod_Specified := True;
end;

function TedarikciSiparisKontrol2.IlceKod_Specified(Index: Integer): boolean;
begin
  Result := FIlceKod_Specified;
end;

procedure TedarikciSiparisKontrol2.SetIslemTarihi(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FIslemTarihi := ATXSDateTime;
  FIslemTarihi_Specified := True;
end;

function TedarikciSiparisKontrol2.IslemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FIslemTarihi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetKargoIndirimi(Index: Integer; const Astring: string);
begin
  FKargoIndirimi := Astring;
  FKargoIndirimi_Specified := True;
end;

function TedarikciSiparisKontrol2.KargoIndirimi_Specified(Index: Integer): boolean;
begin
  Result := FKargoIndirimi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetKargoTutari(Index: Integer; const ADouble: Double);
begin
  FKargoTutari := ADouble;
  FKargoTutari_Specified := True;
end;

function TedarikciSiparisKontrol2.KargoTutari_Specified(Index: Integer): boolean;
begin
  Result := FKargoTutari_Specified;
end;

procedure TedarikciSiparisKontrol2.SetKdvDahilToplamTutar(Index: Integer; const ADouble: Double);
begin
  FKdvDahilToplamTutar := ADouble;
  FKdvDahilToplamTutar_Specified := True;
end;

function TedarikciSiparisKontrol2.KdvDahilToplamTutar_Specified(Index: Integer): boolean;
begin
  Result := FKdvDahilToplamTutar_Specified;
end;

procedure TedarikciSiparisKontrol2.SetKdvHaricToplamTutar(Index: Integer; const ADouble: Double);
begin
  FKdvHaricToplamTutar := ADouble;
  FKdvHaricToplamTutar_Specified := True;
end;

function TedarikciSiparisKontrol2.KdvHaricToplamTutar_Specified(Index: Integer): boolean;
begin
  Result := FKdvHaricToplamTutar_Specified;
end;

procedure TedarikciSiparisKontrol2.SetKdvHaricTutar(Index: Integer; const ADouble: Double);
begin
  FKdvHaricTutar := ADouble;
  FKdvHaricTutar_Specified := True;
end;

function TedarikciSiparisKontrol2.KdvHaricTutar_Specified(Index: Integer): boolean;
begin
  Result := FKdvHaricTutar_Specified;
end;

procedure TedarikciSiparisKontrol2.SetKdvOrani(Index: Integer; const ADouble: Double);
begin
  FKdvOrani := ADouble;
  FKdvOrani_Specified := True;
end;

function TedarikciSiparisKontrol2.KdvOrani_Specified(Index: Integer): boolean;
begin
  Result := FKdvOrani_Specified;
end;

procedure TedarikciSiparisKontrol2.SetKomisyon(Index: Integer; const ADouble: Double);
begin
  FKomisyon := ADouble;
  FKomisyon_Specified := True;
end;

function TedarikciSiparisKontrol2.Komisyon_Specified(Index: Integer): boolean;
begin
  Result := FKomisyon_Specified;
end;

procedure TedarikciSiparisKontrol2.SetMusteriAdi(Index: Integer; const Astring: string);
begin
  FMusteriAdi := Astring;
  FMusteriAdi_Specified := True;
end;

function TedarikciSiparisKontrol2.MusteriAdi_Specified(Index: Integer): boolean;
begin
  Result := FMusteriAdi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetMusteriId(Index: Integer; const Astring: string);
begin
  FMusteriId := Astring;
  FMusteriId_Specified := True;
end;

function TedarikciSiparisKontrol2.MusteriId_Specified(Index: Integer): boolean;
begin
  Result := FMusteriId_Specified;
end;

procedure TedarikciSiparisKontrol2.SetMusteriSoyadi(Index: Integer; const Astring: string);
begin
  FMusteriSoyadi := Astring;
  FMusteriSoyadi_Specified := True;
end;

function TedarikciSiparisKontrol2.MusteriSoyadi_Specified(Index: Integer): boolean;
begin
  Result := FMusteriSoyadi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetSiparisAdresi(Index: Integer; const Astring: string);
begin
  FSiparisAdresi := Astring;
  FSiparisAdresi_Specified := True;
end;

function TedarikciSiparisKontrol2.SiparisAdresi_Specified(Index: Integer): boolean;
begin
  Result := FSiparisAdresi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetSiparisBilgisi(Index: Integer; const Astring: string);
begin
  FSiparisBilgisi := Astring;
  FSiparisBilgisi_Specified := True;
end;

function TedarikciSiparisKontrol2.SiparisBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FSiparisBilgisi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetSiparisDurumu(Index: Integer; const Astring: string);
begin
  FSiparisDurumu := Astring;
  FSiparisDurumu_Specified := True;
end;

function TedarikciSiparisKontrol2.SiparisDurumu_Specified(Index: Integer): boolean;
begin
  Result := FSiparisDurumu_Specified;
end;

procedure TedarikciSiparisKontrol2.SetSiparisIlce(Index: Integer; const Astring: string);
begin
  FSiparisIlce := Astring;
  FSiparisIlce_Specified := True;
end;

function TedarikciSiparisKontrol2.SiparisIlce_Specified(Index: Integer): boolean;
begin
  Result := FSiparisIlce_Specified;
end;

procedure TedarikciSiparisKontrol2.SetSiparisIli(Index: Integer; const Astring: string);
begin
  FSiparisIli := Astring;
  FSiparisIli_Specified := True;
end;

function TedarikciSiparisKontrol2.SiparisIli_Specified(Index: Integer): boolean;
begin
  Result := FSiparisIli_Specified;
end;

procedure TedarikciSiparisKontrol2.SetSiparisNo(Index: Integer; const Astring: string);
begin
  FSiparisNo := Astring;
  FSiparisNo_Specified := True;
end;

function TedarikciSiparisKontrol2.SiparisNo_Specified(Index: Integer): boolean;
begin
  Result := FSiparisNo_Specified;
end;

procedure TedarikciSiparisKontrol2.SetTCKN(Index: Integer; const Astring: string);
begin
  FTCKN := Astring;
  FTCKN_Specified := True;
end;

function TedarikciSiparisKontrol2.TCKN_Specified(Index: Integer): boolean;
begin
  Result := FTCKN_Specified;
end;

procedure TedarikciSiparisKontrol2.SetTedarikciFirmaAdi(Index: Integer; const Astring: string);
begin
  FTedarikciFirmaAdi := Astring;
  FTedarikciFirmaAdi_Specified := True;
end;

function TedarikciSiparisKontrol2.TedarikciFirmaAdi_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciFirmaAdi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetTelefonNo(Index: Integer; const Astring: string);
begin
  FTelefonNo := Astring;
  FTelefonNo_Specified := True;
end;

function TedarikciSiparisKontrol2.TelefonNo_Specified(Index: Integer): boolean;
begin
  Result := FTelefonNo_Specified;
end;

procedure TedarikciSiparisKontrol2.SetToplamIslemAdedi(Index: Integer; const AInteger: Integer);
begin
  FToplamIslemAdedi := AInteger;
  FToplamIslemAdedi_Specified := True;
end;

function TedarikciSiparisKontrol2.ToplamIslemAdedi_Specified(Index: Integer): boolean;
begin
  Result := FToplamIslemAdedi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetUrunAdi(Index: Integer; const Astring: string);
begin
  FUrunAdi := Astring;
  FUrunAdi_Specified := True;
end;

function TedarikciSiparisKontrol2.UrunAdi_Specified(Index: Integer): boolean;
begin
  Result := FUrunAdi_Specified;
end;

procedure TedarikciSiparisKontrol2.SetUrunBarkod(Index: Integer; const Astring: string);
begin
  FUrunBarkod := Astring;
  FUrunBarkod_Specified := True;
end;

function TedarikciSiparisKontrol2.UrunBarkod_Specified(Index: Integer): boolean;
begin
  Result := FUrunBarkod_Specified;
end;

procedure TedarikciSiparisKontrol2.SetUrunId(Index: Integer; const Astring: string);
begin
  FUrunId := Astring;
  FUrunId_Specified := True;
end;

function TedarikciSiparisKontrol2.UrunId_Specified(Index: Integer): boolean;
begin
  Result := FUrunId_Specified;
end;

procedure TedarikciSiparisKontrol2.SetUrunKodu(Index: Integer; const Astring: string);
begin
  FUrunKodu := Astring;
  FUrunKodu_Specified := True;
end;

function TedarikciSiparisKontrol2.UrunKodu_Specified(Index: Integer): boolean;
begin
  Result := FUrunKodu_Specified;
end;

procedure TedarikciSiparisKontrol2.SetVariantBarkod(Index: Integer; const Astring: string);
begin
  FVariantBarkod := Astring;
  FVariantBarkod_Specified := True;
end;

function TedarikciSiparisKontrol2.VariantBarkod_Specified(Index: Integer): boolean;
begin
  Result := FVariantBarkod_Specified;
end;

procedure TedarikciSiparisKontrol2.SetVergiDaire(Index: Integer; const Astring: string);
begin
  FVergiDaire := Astring;
  FVergiDaire_Specified := True;
end;

function TedarikciSiparisKontrol2.VergiDaire_Specified(Index: Integer): boolean;
begin
  Result := FVergiDaire_Specified;
end;

procedure TedarikciSiparisKontrol2.SetVergiNo(Index: Integer; const Astring: string);
begin
  FVergiNo := Astring;
  FVergiNo_Specified := True;
end;

function TedarikciSiparisKontrol2.VergiNo_Specified(Index: Integer): boolean;
begin
  Result := FVergiNo_Specified;
end;

procedure SiparisUrun2.SetGarantiVerenFirma(Index: Integer; const Astring: string);
begin
  FGarantiVerenFirma := Astring;
  FGarantiVerenFirma_Specified := True;
end;

function SiparisUrun2.GarantiVerenFirma_Specified(Index: Integer): boolean;
begin
  Result := FGarantiVerenFirma_Specified;
end;

procedure SiparisUrun2.SetKdvDahilToplamTutar(Index: Integer; const ADouble: Double);
begin
  FKdvDahilToplamTutar := ADouble;
  FKdvDahilToplamTutar_Specified := True;
end;

function SiparisUrun2.KdvDahilToplamTutar_Specified(Index: Integer): boolean;
begin
  Result := FKdvDahilToplamTutar_Specified;
end;

procedure SiparisUrun2.SetKdvHaricToplamTutar(Index: Integer; const ADouble: Double);
begin
  FKdvHaricToplamTutar := ADouble;
  FKdvHaricToplamTutar_Specified := True;
end;

function SiparisUrun2.KdvHaricToplamTutar_Specified(Index: Integer): boolean;
begin
  Result := FKdvHaricToplamTutar_Specified;
end;

procedure SiparisUrun2.SetKdvHaricTutar(Index: Integer; const ADouble: Double);
begin
  FKdvHaricTutar := ADouble;
  FKdvHaricTutar_Specified := True;
end;

function SiparisUrun2.KdvHaricTutar_Specified(Index: Integer): boolean;
begin
  Result := FKdvHaricTutar_Specified;
end;

procedure SiparisUrun2.SetKdvOrani(Index: Integer; const ADouble: Double);
begin
  FKdvOrani := ADouble;
  FKdvOrani_Specified := True;
end;

function SiparisUrun2.KdvOrani_Specified(Index: Integer): boolean;
begin
  Result := FKdvOrani_Specified;
end;

procedure SiparisUrun2.SetKomisyon(Index: Integer; const ADouble: Double);
begin
  FKomisyon := ADouble;
  FKomisyon_Specified := True;
end;

function SiparisUrun2.Komisyon_Specified(Index: Integer): boolean;
begin
  Result := FKomisyon_Specified;
end;

procedure SiparisUrun2.SetSiparisDurumu(Index: Integer; const Astring: string);
begin
  FSiparisDurumu := Astring;
  FSiparisDurumu_Specified := True;
end;

function SiparisUrun2.SiparisDurumu_Specified(Index: Integer): boolean;
begin
  Result := FSiparisDurumu_Specified;
end;

procedure SiparisUrun2.SetSiparisNotu(Index: Integer; const Astring: string);
begin
  FSiparisNotu := Astring;
  FSiparisNotu_Specified := True;
end;

function SiparisUrun2.SiparisNotu_Specified(Index: Integer): boolean;
begin
  Result := FSiparisNotu_Specified;
end;

procedure SiparisUrun2.SetToplamIslemAdedi(Index: Integer; const AInteger: Integer);
begin
  FToplamIslemAdedi := AInteger;
  FToplamIslemAdedi_Specified := True;
end;

function SiparisUrun2.ToplamIslemAdedi_Specified(Index: Integer): boolean;
begin
  Result := FToplamIslemAdedi_Specified;
end;

procedure SiparisUrun2.SetUrunBarkod(Index: Integer; const Astring: string);
begin
  FUrunBarkod := Astring;
  FUrunBarkod_Specified := True;
end;

function SiparisUrun2.UrunBarkod_Specified(Index: Integer): boolean;
begin
  Result := FUrunBarkod_Specified;
end;

procedure SiparisUrun2.SetUrunId(Index: Integer; const AInteger: Integer);
begin
  FUrunId := AInteger;
  FUrunId_Specified := True;
end;

function SiparisUrun2.UrunId_Specified(Index: Integer): boolean;
begin
  Result := FUrunId_Specified;
end;

procedure SiparisUrun2.SetVariantBarkod(Index: Integer; const Astring: string);
begin
  FVariantBarkod := Astring;
  FVariantBarkod_Specified := True;
end;

function SiparisUrun2.VariantBarkod_Specified(Index: Integer): boolean;
begin
  Result := FVariantBarkod_Specified;
end;

destructor StokKontrolDetay2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FResimListesi)-1 do
    System.SysUtils.FreeAndNil(FResimListesi[I]);
  System.SetLength(FResimListesi, 0);
  for I := 0 to System.Length(FVariantListesi)-1 do
    System.SysUtils.FreeAndNil(FVariantListesi[I]);
  System.SetLength(FVariantListesi, 0);
  System.SysUtils.FreeAndNil(FAgirlik);
  System.SysUtils.FreeAndNil(FIskonto);
  System.SysUtils.FreeAndNil(FKDVOran);
  System.SysUtils.FreeAndNil(FKDVli);
  System.SysUtils.FreeAndNil(FKDVsiz);
  inherited Destroy;
end;

procedure StokKontrolDetay2.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function StokKontrolDetay2.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure StokKontrolDetay2.SetAdminCode(Index: Integer; const Astring: string);
begin
  FAdminCode := Astring;
  FAdminCode_Specified := True;
end;

function StokKontrolDetay2.AdminCode_Specified(Index: Integer): boolean;
begin
  Result := FAdminCode_Specified;
end;

procedure StokKontrolDetay2.SetAgirlik(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FAgirlik := ATXSDecimal;
  FAgirlik_Specified := True;
end;

function StokKontrolDetay2.Agirlik_Specified(Index: Integer): boolean;
begin
  Result := FAgirlik_Specified;
end;

procedure StokKontrolDetay2.SetAktif(Index: Integer; const ABoolean: Boolean);
begin
  FAktif := ABoolean;
  FAktif_Specified := True;
end;

function StokKontrolDetay2.Aktif_Specified(Index: Integer): boolean;
begin
  Result := FAktif_Specified;
end;

procedure StokKontrolDetay2.SetAltKategoriAdi(Index: Integer; const Astring: string);
begin
  FAltKategoriAdi := Astring;
  FAltKategoriAdi_Specified := True;
end;

function StokKontrolDetay2.AltKategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FAltKategoriAdi_Specified;
end;

procedure StokKontrolDetay2.SetAltKategoriId(Index: Integer; const AInteger: Integer);
begin
  FAltKategoriId := AInteger;
  FAltKategoriId_Specified := True;
end;

function StokKontrolDetay2.AltKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FAltKategoriId_Specified;
end;

procedure StokKontrolDetay2.SetAnaKategoriId(Index: Integer; const AInteger: Integer);
begin
  FAnaKategoriId := AInteger;
  FAnaKategoriId_Specified := True;
end;

function StokKontrolDetay2.AnaKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FAnaKategoriId_Specified;
end;

procedure StokKontrolDetay2.SetBarkod(Index: Integer; const Astring: string);
begin
  FBarkod := Astring;
  FBarkod_Specified := True;
end;

function StokKontrolDetay2.Barkod_Specified(Index: Integer): boolean;
begin
  Result := FBarkod_Specified;
end;

procedure StokKontrolDetay2.SetBoyX(Index: Integer; const AInteger: Integer);
begin
  FBoyX := AInteger;
  FBoyX_Specified := True;
end;

function StokKontrolDetay2.BoyX_Specified(Index: Integer): boolean;
begin
  Result := FBoyX_Specified;
end;

procedure StokKontrolDetay2.SetBoyY(Index: Integer; const AInteger: Integer);
begin
  FBoyY := AInteger;
  FBoyY_Specified := True;
end;

function StokKontrolDetay2.BoyY_Specified(Index: Integer): boolean;
begin
  Result := FBoyY_Specified;
end;

procedure StokKontrolDetay2.SetBoyZ(Index: Integer; const AInteger: Integer);
begin
  FBoyZ := AInteger;
  FBoyZ_Specified := True;
end;

function StokKontrolDetay2.BoyZ_Specified(Index: Integer): boolean;
begin
  Result := FBoyZ_Specified;
end;

procedure StokKontrolDetay2.SetDesi(Index: Integer; const ADouble: Double);
begin
  FDesi := ADouble;
  FDesi_Specified := True;
end;

function StokKontrolDetay2.Desi_Specified(Index: Integer): boolean;
begin
  Result := FDesi_Specified;
end;

procedure StokKontrolDetay2.SetDurum(Index: Integer; const AKayitDurum: KayitDurum);
begin
  FDurum := AKayitDurum;
  FDurum_Specified := True;
end;

function StokKontrolDetay2.Durum_Specified(Index: Integer): boolean;
begin
  Result := FDurum_Specified;
end;

procedure StokKontrolDetay2.SetGarantiSuresi(Index: Integer; const AInteger: Integer);
begin
  FGarantiSuresi := AInteger;
  FGarantiSuresi_Specified := True;
end;

function StokKontrolDetay2.GarantiSuresi_Specified(Index: Integer): boolean;
begin
  Result := FGarantiSuresi_Specified;
end;

procedure StokKontrolDetay2.SetGarantiVerenFirma(Index: Integer; const Astring: string);
begin
  FGarantiVerenFirma := Astring;
  FGarantiVerenFirma_Specified := True;
end;

function StokKontrolDetay2.GarantiVerenFirma_Specified(Index: Integer): boolean;
begin
  Result := FGarantiVerenFirma_Specified;
end;

procedure StokKontrolDetay2.SetIskonto(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FIskonto := ATXSDecimal;
  FIskonto_Specified := True;
end;

function StokKontrolDetay2.Iskonto_Specified(Index: Integer): boolean;
begin
  Result := FIskonto_Specified;
end;

procedure StokKontrolDetay2.SetKDVOran(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FKDVOran := ATXSDecimal;
  FKDVOran_Specified := True;
end;

function StokKontrolDetay2.KDVOran_Specified(Index: Integer): boolean;
begin
  Result := FKDVOran_Specified;
end;

procedure StokKontrolDetay2.SetKDVli(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FKDVli := ATXSDecimal;
  FKDVli_Specified := True;
end;

function StokKontrolDetay2.KDVli_Specified(Index: Integer): boolean;
begin
  Result := FKDVli_Specified;
end;

procedure StokKontrolDetay2.SetKDVsiz(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FKDVsiz := ATXSDecimal;
  FKDVsiz_Specified := True;
end;

function StokKontrolDetay2.KDVsiz_Specified(Index: Integer): boolean;
begin
  Result := FKDVsiz_Specified;
end;

procedure StokKontrolDetay2.SetKategoriBilgisiGuncelle(Index: Integer; const AInteger: Integer);
begin
  FKategoriBilgisiGuncelle := AInteger;
  FKategoriBilgisiGuncelle_Specified := True;
end;

function StokKontrolDetay2.KategoriBilgisiGuncelle_Specified(Index: Integer): boolean;
begin
  Result := FKategoriBilgisiGuncelle_Specified;
end;

procedure StokKontrolDetay2.SetMevcut(Index: Integer; const ABoolean: Boolean);
begin
  FMevcut := ABoolean;
  FMevcut_Specified := True;
end;

function StokKontrolDetay2.Mevcut_Specified(Index: Integer): boolean;
begin
  Result := FMevcut_Specified;
end;

procedure StokKontrolDetay2.SetMiktar(Index: Integer; const AInteger: Integer);
begin
  FMiktar := AInteger;
  FMiktar_Specified := True;
end;

function StokKontrolDetay2.Miktar_Specified(Index: Integer): boolean;
begin
  Result := FMiktar_Specified;
end;

procedure StokKontrolDetay2.SetResim1Stream(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FResim1Stream := ATByteDynArray;
  FResim1Stream_Specified := True;
end;

function StokKontrolDetay2.Resim1Stream_Specified(Index: Integer): boolean;
begin
  Result := FResim1Stream_Specified;
end;

procedure StokKontrolDetay2.SetResim1Url(Index: Integer; const Astring: string);
begin
  FResim1Url := Astring;
  FResim1Url_Specified := True;
end;

function StokKontrolDetay2.Resim1Url_Specified(Index: Integer): boolean;
begin
  Result := FResim1Url_Specified;
end;

procedure StokKontrolDetay2.SetResim2Stream(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FResim2Stream := ATByteDynArray;
  FResim2Stream_Specified := True;
end;

function StokKontrolDetay2.Resim2Stream_Specified(Index: Integer): boolean;
begin
  Result := FResim2Stream_Specified;
end;

procedure StokKontrolDetay2.SetResim2Url(Index: Integer; const Astring: string);
begin
  FResim2Url := Astring;
  FResim2Url_Specified := True;
end;

function StokKontrolDetay2.Resim2Url_Specified(Index: Integer): boolean;
begin
  Result := FResim2Url_Specified;
end;

procedure StokKontrolDetay2.SetResim3Stream(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FResim3Stream := ATByteDynArray;
  FResim3Stream_Specified := True;
end;

function StokKontrolDetay2.Resim3Stream_Specified(Index: Integer): boolean;
begin
  Result := FResim3Stream_Specified;
end;

procedure StokKontrolDetay2.SetResim3Url(Index: Integer; const Astring: string);
begin
  FResim3Url := Astring;
  FResim3Url_Specified := True;
end;

function StokKontrolDetay2.Resim3Url_Specified(Index: Integer): boolean;
begin
  Result := FResim3Url_Specified;
end;

procedure StokKontrolDetay2.SetResimListesi(Index: Integer; const AArrayOfUrunResim: ArrayOfUrunResim);
begin
  FResimListesi := AArrayOfUrunResim;
  FResimListesi_Specified := True;
end;

function StokKontrolDetay2.ResimListesi_Specified(Index: Integer): boolean;
begin
  Result := FResimListesi_Specified;
end;

procedure StokKontrolDetay2.SetShopId(Index: Integer; const AInteger: Integer);
begin
  FShopId := AInteger;
  FShopId_Specified := True;
end;

function StokKontrolDetay2.ShopId_Specified(Index: Integer): boolean;
begin
  Result := FShopId_Specified;
end;

procedure StokKontrolDetay2.SetTag(Index: Integer; const Astring: string);
begin
  FTag := Astring;
  FTag_Specified := True;
end;

function StokKontrolDetay2.Tag_Specified(Index: Integer): boolean;
begin
  Result := FTag_Specified;
end;

procedure StokKontrolDetay2.SetTedarikciAltKategoriAdi(Index: Integer; const Astring: string);
begin
  FTedarikciAltKategoriAdi := Astring;
  FTedarikciAltKategoriAdi_Specified := True;
end;

function StokKontrolDetay2.TedarikciAltKategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciAltKategoriAdi_Specified;
end;

procedure StokKontrolDetay2.SetTedarikciAltKategoriId(Index: Integer; const AInteger: Integer);
begin
  FTedarikciAltKategoriId := AInteger;
  FTedarikciAltKategoriId_Specified := True;
end;

function StokKontrolDetay2.TedarikciAltKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciAltKategoriId_Specified;
end;

procedure StokKontrolDetay2.SetTedarikciSanalKategoriId(Index: Integer; const AInteger: Integer);
begin
  FTedarikciSanalKategoriId := AInteger;
  FTedarikciSanalKategoriId_Specified := True;
end;

function StokKontrolDetay2.TedarikciSanalKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciSanalKategoriId_Specified;
end;

procedure StokKontrolDetay2.SetUrunAdi(Index: Integer; const Astring: string);
begin
  FUrunAdi := Astring;
  FUrunAdi_Specified := True;
end;

function StokKontrolDetay2.UrunAdi_Specified(Index: Integer): boolean;
begin
  Result := FUrunAdi_Specified;
end;

procedure StokKontrolDetay2.SetUrunId(Index: Integer; const AInteger: Integer);
begin
  FUrunId := AInteger;
  FUrunId_Specified := True;
end;

function StokKontrolDetay2.UrunId_Specified(Index: Integer): boolean;
begin
  Result := FUrunId_Specified;
end;

procedure StokKontrolDetay2.SetUrunKodu(Index: Integer; const Astring: string);
begin
  FUrunKodu := Astring;
  FUrunKodu_Specified := True;
end;

function StokKontrolDetay2.UrunKodu_Specified(Index: Integer): boolean;
begin
  Result := FUrunKodu_Specified;
end;

procedure StokKontrolDetay2.SetUrunUrl(Index: Integer; const Astring: string);
begin
  FUrunUrl := Astring;
  FUrunUrl_Specified := True;
end;

function StokKontrolDetay2.UrunUrl_Specified(Index: Integer): boolean;
begin
  Result := FUrunUrl_Specified;
end;

procedure StokKontrolDetay2.SetUzunAciklama(Index: Integer; const Astring: string);
begin
  FUzunAciklama := Astring;
  FUzunAciklama_Specified := True;
end;

function StokKontrolDetay2.UzunAciklama_Specified(Index: Integer): boolean;
begin
  Result := FUzunAciklama_Specified;
end;

procedure StokKontrolDetay2.SetVariantListesi(Index: Integer; const AArrayOfVariants: ArrayOfVariants);
begin
  FVariantListesi := AArrayOfVariants;
  FVariantListesi_Specified := True;
end;

function StokKontrolDetay2.VariantListesi_Specified(Index: Integer): boolean;
begin
  Result := FVariantListesi_Specified;
end;

procedure ServiceStateResult2.SeterrorMessage(Index: Integer; const Astring: string);
begin
  FerrorMessage := Astring;
  FerrorMessage_Specified := True;
end;

function ServiceStateResult2.errorMessage_Specified(Index: Integer): boolean;
begin
  Result := FerrorMessage_Specified;
end;

procedure ServiceStateResult2.Setstatus(Index: Integer; const Astring: string);
begin
  Fstatus := Astring;
  Fstatus_Specified := True;
end;

function ServiceStateResult2.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

destructor VariantAttr2.Destroy;
begin
  System.SysUtils.FreeAndNil(FFiyat);
  inherited Destroy;
end;

procedure VariantAttr2.SetDeger(Index: Integer; const Astring: string);
begin
  FDeger := Astring;
  FDeger_Specified := True;
end;

function VariantAttr2.Deger_Specified(Index: Integer): boolean;
begin
  Result := FDeger_Specified;
end;

procedure VariantAttr2.SetFiyat(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FFiyat := ATXSDecimal;
  FFiyat_Specified := True;
end;

function VariantAttr2.Fiyat_Specified(Index: Integer): boolean;
begin
  Result := FFiyat_Specified;
end;

procedure VariantAttr2.SetFiyatFarkiMi(Index: Integer; const ABoolean: Boolean);
begin
  FFiyatFarkiMi := ABoolean;
  FFiyatFarkiMi_Specified := True;
end;

function VariantAttr2.FiyatFarkiMi_Specified(Index: Integer): boolean;
begin
  Result := FFiyatFarkiMi_Specified;
end;

procedure VariantAttr2.SetTanim(Index: Integer; const Astring: string);
begin
  FTanim := Astring;
  FTanim_Specified := True;
end;

function VariantAttr2.Tanim_Specified(Index: Integer): boolean;
begin
  Result := FTanim_Specified;
end;

destructor Variant2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FAttributes)-1 do
    System.SysUtils.FreeAndNil(FAttributes[I]);
  System.SetLength(FAttributes, 0);
  for I := 0 to System.Length(FCombination)-1 do
    System.SysUtils.FreeAndNil(FCombination[I]);
  System.SetLength(FCombination, 0);
  inherited Destroy;
end;

procedure Variant2.SetAnaUrunKodu(Index: Integer; const Astring: string);
begin
  FAnaUrunKodu := Astring;
  FAnaUrunKodu_Specified := True;
end;

function Variant2.AnaUrunKodu_Specified(Index: Integer): boolean;
begin
  Result := FAnaUrunKodu_Specified;
end;

procedure Variant2.SetAttributes(Index: Integer; const AArrayOfVariantAttr: ArrayOfVariantAttr);
begin
  FAttributes := AArrayOfVariantAttr;
  FAttributes_Specified := True;
end;

function Variant2.Attributes_Specified(Index: Integer): boolean;
begin
  Result := FAttributes_Specified;
end;

procedure Variant2.SetCombination(Index: Integer; const AArrayOfVariantCombination: ArrayOfVariantCombination);
begin
  FCombination := AArrayOfVariantCombination;
  FCombination_Specified := True;
end;

function Variant2.Combination_Specified(Index: Integer): boolean;
begin
  Result := FCombination_Specified;
end;

procedure Variant2.SetDurum(Index: Integer; const AKayitDurum: KayitDurum);
begin
  FDurum := AKayitDurum;
  FDurum_Specified := True;
end;

function Variant2.Durum_Specified(Index: Integer): boolean;
begin
  Result := FDurum_Specified;
end;

procedure Variant2.SetGuncellemeSonucu(Index: Integer; const Astring: string);
begin
  FGuncellemeSonucu := Astring;
  FGuncellemeSonucu_Specified := True;
end;

function Variant2.GuncellemeSonucu_Specified(Index: Integer): boolean;
begin
  Result := FGuncellemeSonucu_Specified;
end;

procedure Variant2.SetKayitDegisti(Index: Integer; const AInteger: Integer);
begin
  FKayitDegisti := AInteger;
  FKayitDegisti_Specified := True;
end;

function Variant2.KayitDegisti_Specified(Index: Integer): boolean;
begin
  Result := FKayitDegisti_Specified;
end;

procedure Variant2.SetMiktar(Index: Integer; const AInteger: Integer);
begin
  FMiktar := AInteger;
  FMiktar_Specified := True;
end;

function Variant2.Miktar_Specified(Index: Integer): boolean;
begin
  Result := FMiktar_Specified;
end;

procedure Variant2.SetVariantBarkod(Index: Integer; const Astring: string);
begin
  FVariantBarkod := Astring;
  FVariantBarkod_Specified := True;
end;

function Variant2.VariantBarkod_Specified(Index: Integer): boolean;
begin
  Result := FVariantBarkod_Specified;
end;

procedure UrunResimBase642.SetBase64String(Index: Integer; const Astring: string);
begin
  FBase64String := Astring;
  FBase64String_Specified := True;
end;

function UrunResimBase642.Base64String_Specified(Index: Integer): boolean;
begin
  Result := FBase64String_Specified;
end;

procedure UrunResimBase642.SetFileExtention(Index: Integer; const Astring: string);
begin
  FFileExtention := Astring;
  FFileExtention_Specified := True;
end;

function UrunResimBase642.FileExtention_Specified(Index: Integer): boolean;
begin
  Result := FFileExtention_Specified;
end;

procedure UrunResimBase642.SetSira(Index: Integer; const AInteger: Integer);
begin
  FSira := AInteger;
  FSira_Specified := True;
end;

function UrunResimBase642.Sira_Specified(Index: Integer): boolean;
begin
  Result := FSira_Specified;
end;

destructor StokUrun2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FUrunResimleri)-1 do
    System.SysUtils.FreeAndNil(FUrunResimleri[I]);
  System.SetLength(FUrunResimleri, 0);
  for I := 0 to System.Length(FUrunResimleriBase64)-1 do
    System.SysUtils.FreeAndNil(FUrunResimleriBase64[I]);
  System.SetLength(FUrunResimleriBase64, 0);
  for I := 0 to System.Length(FVariantListesi)-1 do
    System.SysUtils.FreeAndNil(FVariantListesi[I]);
  System.SetLength(FVariantListesi, 0);
  System.SysUtils.FreeAndNil(FAgirlik);
  System.SysUtils.FreeAndNil(FIskonto);
  System.SysUtils.FreeAndNil(FKDVOran);
  System.SysUtils.FreeAndNil(FKDVli);
  System.SysUtils.FreeAndNil(FKDVsiz);
  inherited Destroy;
end;

procedure StokUrun2.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function StokUrun2.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure StokUrun2.SetAdminCode(Index: Integer; const Astring: string);
begin
  FAdminCode := Astring;
  FAdminCode_Specified := True;
end;

function StokUrun2.AdminCode_Specified(Index: Integer): boolean;
begin
  Result := FAdminCode_Specified;
end;

procedure StokUrun2.SetAgirlik(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FAgirlik := ATXSDecimal;
  FAgirlik_Specified := True;
end;

function StokUrun2.Agirlik_Specified(Index: Integer): boolean;
begin
  Result := FAgirlik_Specified;
end;

procedure StokUrun2.SetAktif(Index: Integer; const ABoolean: Boolean);
begin
  FAktif := ABoolean;
  FAktif_Specified := True;
end;

function StokUrun2.Aktif_Specified(Index: Integer): boolean;
begin
  Result := FAktif_Specified;
end;

procedure StokUrun2.SetAltKategoriAdi(Index: Integer; const Astring: string);
begin
  FAltKategoriAdi := Astring;
  FAltKategoriAdi_Specified := True;
end;

function StokUrun2.AltKategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FAltKategoriAdi_Specified;
end;

procedure StokUrun2.SetAltKategoriId(Index: Integer; const AInteger: Integer);
begin
  FAltKategoriId := AInteger;
  FAltKategoriId_Specified := True;
end;

function StokUrun2.AltKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FAltKategoriId_Specified;
end;

procedure StokUrun2.SetAnaKategoriId(Index: Integer; const AInteger: Integer);
begin
  FAnaKategoriId := AInteger;
  FAnaKategoriId_Specified := True;
end;

function StokUrun2.AnaKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FAnaKategoriId_Specified;
end;

procedure StokUrun2.SetBarkod(Index: Integer; const Astring: string);
begin
  FBarkod := Astring;
  FBarkod_Specified := True;
end;

function StokUrun2.Barkod_Specified(Index: Integer): boolean;
begin
  Result := FBarkod_Specified;
end;

procedure StokUrun2.SetBoyX(Index: Integer; const AInteger: Integer);
begin
  FBoyX := AInteger;
  FBoyX_Specified := True;
end;

function StokUrun2.BoyX_Specified(Index: Integer): boolean;
begin
  Result := FBoyX_Specified;
end;

procedure StokUrun2.SetBoyY(Index: Integer; const AInteger: Integer);
begin
  FBoyY := AInteger;
  FBoyY_Specified := True;
end;

function StokUrun2.BoyY_Specified(Index: Integer): boolean;
begin
  Result := FBoyY_Specified;
end;

procedure StokUrun2.SetBoyZ(Index: Integer; const AInteger: Integer);
begin
  FBoyZ := AInteger;
  FBoyZ_Specified := True;
end;

function StokUrun2.BoyZ_Specified(Index: Integer): boolean;
begin
  Result := FBoyZ_Specified;
end;

procedure StokUrun2.SetDesi(Index: Integer; const ADouble: Double);
begin
  FDesi := ADouble;
  FDesi_Specified := True;
end;

function StokUrun2.Desi_Specified(Index: Integer): boolean;
begin
  Result := FDesi_Specified;
end;

procedure StokUrun2.SetDurum(Index: Integer; const AKayitDurum: KayitDurum);
begin
  FDurum := AKayitDurum;
  FDurum_Specified := True;
end;

function StokUrun2.Durum_Specified(Index: Integer): boolean;
begin
  Result := FDurum_Specified;
end;

procedure StokUrun2.SetGarantiSuresi(Index: Integer; const AInteger: Integer);
begin
  FGarantiSuresi := AInteger;
  FGarantiSuresi_Specified := True;
end;

function StokUrun2.GarantiSuresi_Specified(Index: Integer): boolean;
begin
  Result := FGarantiSuresi_Specified;
end;

procedure StokUrun2.SetGarantiVerenFirma(Index: Integer; const Astring: string);
begin
  FGarantiVerenFirma := Astring;
  FGarantiVerenFirma_Specified := True;
end;

function StokUrun2.GarantiVerenFirma_Specified(Index: Integer): boolean;
begin
  Result := FGarantiVerenFirma_Specified;
end;

procedure StokUrun2.SetGtin(Index: Integer; const Astring: string);
begin
  FGtin := Astring;
  FGtin_Specified := True;
end;

function StokUrun2.Gtin_Specified(Index: Integer): boolean;
begin
  Result := FGtin_Specified;
end;

procedure StokUrun2.SetIsAdmin(Index: Integer; const ABoolean: Boolean);
begin
  FIsAdmin := ABoolean;
  FIsAdmin_Specified := True;
end;

function StokUrun2.IsAdmin_Specified(Index: Integer): boolean;
begin
  Result := FIsAdmin_Specified;
end;

procedure StokUrun2.SetIskonto(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FIskonto := ATXSDecimal;
  FIskonto_Specified := True;
end;

function StokUrun2.Iskonto_Specified(Index: Integer): boolean;
begin
  Result := FIskonto_Specified;
end;

procedure StokUrun2.SetKDVOran(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FKDVOran := ATXSDecimal;
  FKDVOran_Specified := True;
end;

function StokUrun2.KDVOran_Specified(Index: Integer): boolean;
begin
  Result := FKDVOran_Specified;
end;

procedure StokUrun2.SetKDVli(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FKDVli := ATXSDecimal;
  FKDVli_Specified := True;
end;

function StokUrun2.KDVli_Specified(Index: Integer): boolean;
begin
  Result := FKDVli_Specified;
end;

procedure StokUrun2.SetKDVsiz(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FKDVsiz := ATXSDecimal;
  FKDVsiz_Specified := True;
end;

function StokUrun2.KDVsiz_Specified(Index: Integer): boolean;
begin
  Result := FKDVsiz_Specified;
end;

procedure StokUrun2.SetKategoriBilgisiGuncelle(Index: Integer; const AInteger: Integer);
begin
  FKategoriBilgisiGuncelle := AInteger;
  FKategoriBilgisiGuncelle_Specified := True;
end;

function StokUrun2.KategoriBilgisiGuncelle_Specified(Index: Integer): boolean;
begin
  Result := FKategoriBilgisiGuncelle_Specified;
end;

procedure StokUrun2.SetMevcut(Index: Integer; const ABoolean: Boolean);
begin
  FMevcut := ABoolean;
  FMevcut_Specified := True;
end;

function StokUrun2.Mevcut_Specified(Index: Integer): boolean;
begin
  Result := FMevcut_Specified;
end;

procedure StokUrun2.SetMiktar(Index: Integer; const AInteger: Integer);
begin
  FMiktar := AInteger;
  FMiktar_Specified := True;
end;

function StokUrun2.Miktar_Specified(Index: Integer): boolean;
begin
  Result := FMiktar_Specified;
end;

procedure StokUrun2.SetSatisBaslangicTarihi(Index: Integer; const Astring: string);
begin
  FSatisBaslangicTarihi := Astring;
  FSatisBaslangicTarihi_Specified := True;
end;

function StokUrun2.SatisBaslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FSatisBaslangicTarihi_Specified;
end;

procedure StokUrun2.SetSatisBitisTarihi(Index: Integer; const Astring: string);
begin
  FSatisBitisTarihi := Astring;
  FSatisBitisTarihi_Specified := True;
end;

function StokUrun2.SatisBitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FSatisBitisTarihi_Specified;
end;

procedure StokUrun2.SetShopId(Index: Integer; const AInteger: Integer);
begin
  FShopId := AInteger;
  FShopId_Specified := True;
end;

function StokUrun2.ShopId_Specified(Index: Integer): boolean;
begin
  Result := FShopId_Specified;
end;

procedure StokUrun2.SetTag(Index: Integer; const Astring: string);
begin
  FTag := Astring;
  FTag_Specified := True;
end;

function StokUrun2.Tag_Specified(Index: Integer): boolean;
begin
  Result := FTag_Specified;
end;

procedure StokUrun2.SetTedarikciAltKategoriAdi(Index: Integer; const Astring: string);
begin
  FTedarikciAltKategoriAdi := Astring;
  FTedarikciAltKategoriAdi_Specified := True;
end;

function StokUrun2.TedarikciAltKategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciAltKategoriAdi_Specified;
end;

procedure StokUrun2.SetTedarikciAltKategoriId(Index: Integer; const AInteger: Integer);
begin
  FTedarikciAltKategoriId := AInteger;
  FTedarikciAltKategoriId_Specified := True;
end;

function StokUrun2.TedarikciAltKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciAltKategoriId_Specified;
end;

procedure StokUrun2.SetTedarikciSanalKategoriId(Index: Integer; const AInteger: Integer);
begin
  FTedarikciSanalKategoriId := AInteger;
  FTedarikciSanalKategoriId_Specified := True;
end;

function StokUrun2.TedarikciSanalKategoriId_Specified(Index: Integer): boolean;
begin
  Result := FTedarikciSanalKategoriId_Specified;
end;

procedure StokUrun2.SetUrunAdi(Index: Integer; const Astring: string);
begin
  FUrunAdi := Astring;
  FUrunAdi_Specified := True;
end;

function StokUrun2.UrunAdi_Specified(Index: Integer): boolean;
begin
  Result := FUrunAdi_Specified;
end;

procedure StokUrun2.SetUrunId(Index: Integer; const AInteger: Integer);
begin
  FUrunId := AInteger;
  FUrunId_Specified := True;
end;

function StokUrun2.UrunId_Specified(Index: Integer): boolean;
begin
  Result := FUrunId_Specified;
end;

procedure StokUrun2.SetUrunKodu(Index: Integer; const Astring: string);
begin
  FUrunKodu := Astring;
  FUrunKodu_Specified := True;
end;

function StokUrun2.UrunKodu_Specified(Index: Integer): boolean;
begin
  Result := FUrunKodu_Specified;
end;

procedure StokUrun2.SetUrunResimleri(Index: Integer; const AArrayOfUrunResim: ArrayOfUrunResim);
begin
  FUrunResimleri := AArrayOfUrunResim;
  FUrunResimleri_Specified := True;
end;

function StokUrun2.UrunResimleri_Specified(Index: Integer): boolean;
begin
  Result := FUrunResimleri_Specified;
end;

procedure StokUrun2.SetUrunResimleriBase64(Index: Integer; const AArrayOfUrunResimBase64: ArrayOfUrunResimBase64);
begin
  FUrunResimleriBase64 := AArrayOfUrunResimBase64;
  FUrunResimleriBase64_Specified := True;
end;

function StokUrun2.UrunResimleriBase64_Specified(Index: Integer): boolean;
begin
  Result := FUrunResimleriBase64_Specified;
end;

procedure StokUrun2.SetUrunUrl(Index: Integer; const Astring: string);
begin
  FUrunUrl := Astring;
  FUrunUrl_Specified := True;
end;

function StokUrun2.UrunUrl_Specified(Index: Integer): boolean;
begin
  Result := FUrunUrl_Specified;
end;

procedure StokUrun2.SetUzunAciklama(Index: Integer; const Astring: string);
begin
  FUzunAciklama := Astring;
  FUzunAciklama_Specified := True;
end;

function StokUrun2.UzunAciklama_Specified(Index: Integer): boolean;
begin
  Result := FUzunAciklama_Specified;
end;

procedure StokUrun2.SetVariantListesi(Index: Integer; const AArrayOfVariant: ArrayOfVariant);
begin
  FVariantListesi := AArrayOfVariant;
  FVariantListesi_Specified := True;
end;

function StokUrun2.VariantListesi_Specified(Index: Integer): boolean;
begin
  Result := FVariantListesi_Specified;
end;

procedure StokResult2.SetErrorMessage(Index: Integer; const Astring: string);
begin
  FErrorMessage := Astring;
  FErrorMessage_Specified := True;
end;

function StokResult2.ErrorMessage_Specified(Index: Integer): boolean;
begin
  Result := FErrorMessage_Specified;
end;

procedure StokResult2.SetSuccess(Index: Integer; const ABoolean: Boolean);
begin
  FSuccess := ABoolean;
  FSuccess_Specified := True;
end;

function StokResult2.Success_Specified(Index: Integer): boolean;
begin
  Result := FSuccess_Specified;
end;

procedure StokResult2.SetUrunId(Index: Integer; const AInteger: Integer);
begin
  FUrunId := AInteger;
  FUrunId_Specified := True;
end;

function StokResult2.UrunId_Specified(Index: Integer): boolean;
begin
  Result := FUrunId_Specified;
end;

procedure StokResult2.SetWarningMessages(Index: Integer; const AArrayOfstring: ArrayOfstring);
begin
  FWarningMessages := AArrayOfstring;
  FWarningMessages_Specified := True;
end;

function StokResult2.WarningMessages_Specified(Index: Integer): boolean;
begin
  Result := FWarningMessages_Specified;
end;

procedure VariantCombination2.SetAktif(Index: Integer; const ABoolean: Boolean);
begin
  FAktif := ABoolean;
  FAktif_Specified := True;
end;

function VariantCombination2.Aktif_Specified(Index: Integer): boolean;
begin
  Result := FAktif_Specified;
end;

procedure VariantCombination2.SetBarkod(Index: Integer; const Astring: string);
begin
  FBarkod := Astring;
  FBarkod_Specified := True;
end;

function VariantCombination2.Barkod_Specified(Index: Integer): boolean;
begin
  Result := FBarkod_Specified;
end;

procedure VariantCombination2.SetDegerler(Index: Integer; const Astring: string);
begin
  FDegerler := Astring;
  FDegerler_Specified := True;
end;

function VariantCombination2.Degerler_Specified(Index: Integer): boolean;
begin
  Result := FDegerler_Specified;
end;

procedure VariantCombination2.SetStok(Index: Integer; const Astring: string);
begin
  FStok := Astring;
  FStok_Specified := True;
end;

function VariantCombination2.Stok_Specified(Index: Integer): boolean;
begin
  Result := FStok_Specified;
end;

procedure ApiResult2.SetErrorCode(Index: Integer; const Astring: string);
begin
  FErrorCode := Astring;
  FErrorCode_Specified := True;
end;

function ApiResult2.ErrorCode_Specified(Index: Integer): boolean;
begin
  Result := FErrorCode_Specified;
end;

procedure ApiResult2.SetErrorMessage(Index: Integer; const Astring: string);
begin
  FErrorMessage := Astring;
  FErrorMessage_Specified := True;
end;

function ApiResult2.ErrorMessage_Specified(Index: Integer): boolean;
begin
  Result := FErrorMessage_Specified;
end;

procedure ApiResult2.SetSuccess(Index: Integer; const ABoolean: Boolean);
begin
  FSuccess := ABoolean;
  FSuccess_Specified := True;
end;

function ApiResult2.Success_Specified(Index: Integer): boolean;
begin
  Result := FSuccess_Specified;
end;

procedure AktifUrunRequest2.SetAktif(Index: Integer; const ABoolean: Boolean);
begin
  FAktif := ABoolean;
  FAktif_Specified := True;
end;

function AktifUrunRequest2.Aktif_Specified(Index: Integer): boolean;
begin
  Result := FAktif_Specified;
end;

procedure AktifUrunRequest2.SetUrunId(Index: Integer; const AInteger: Integer);
begin
  FUrunId := AInteger;
  FUrunId_Specified := True;
end;

function AktifUrunRequest2.UrunId_Specified(Index: Integer): boolean;
begin
  Result := FUrunId_Specified;
end;

initialization
  { IService }
  InvRegistry.RegisterInterface(TypeInfo(IService), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IService), 'http://tempuri.org/IService/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IService), ioDocument);
  { IService.KullaniciTedarikciBilgisiGetir }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'KullaniciTedarikciBilgisiGetir', '',
                                 '[ReturnName="KullaniciTedarikciBilgisiGetirResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'KullaniciTedarikciBilgisiGetir', 'KullaniciTedarikciBilgisiGetirResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  { IService.StokKontrolListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokKontrolListesi', '',
                                 '[ReturnName="StokKontrolListesiResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokKontrolListesi', 'SearchUrunAdi', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokKontrolListesi', 'SearchBarkod', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokKontrolListesi', 'StokKontrolListesiResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="StokKontrolDetay"]', IS_NLBL);
  { IService.BarkodKontrol }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'BarkodKontrol', '',
                                 '[ReturnName="BarkodKontrolResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'BarkodKontrol', 'Barkod', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'BarkodKontrol', 'BarkodKontrolResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  { IService.KategoriListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'KategoriListesi', '',
                                 '[ReturnName="KategoriListesiResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'KategoriListesi', 'KategoriListesiResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="KategoriDetay"]', IS_NLBL);
  { IService.AltKategoriListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'AltKategoriListesi', '',
                                 '[ReturnName="AltKategoriListesiResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'AltKategoriListesi', 'AltKategoriListesiResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="AltKategoriDetay"]', IS_NLBL);
  { IService.KargoBilgiListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'KargoBilgiListesi', '',
                                 '[ReturnName="KargoBilgiListesiResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'KargoBilgiListesi', 'orderId', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'KargoBilgiListesi', 'KargoBilgiListesiResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="KargoBilgi"]', IS_NLBL);
  { IService.StokGuncelle }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokGuncelle', '',
                                 '[ReturnName="StokGuncelleResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelle', 'item', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  { IService.StokFiyatGuncelle }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokFiyatGuncelle', '',
                                 '[ReturnName="StokFiyatGuncelleResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokFiyatGuncelle', 'item', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  { IService.StokFiyatGuncelle2 }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokFiyatGuncelle2', '',
                                 '[ReturnName="StokFiyatGuncelle2Result"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokFiyatGuncelle2', 'item', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  { IService.SiparisKontrolListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'SiparisKontrolListesi', '',
                                 '[ReturnName="SiparisKontrolListesiResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'SiparisKontrolListesi', 'SiparisKontrolListesiResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="TedarikciSiparisKontrol"]', IS_NLBL);
  { IService.TedarikciAltKategoriListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'TedarikciAltKategoriListesi', '',
                                 '[ReturnName="TedarikciAltKategoriListesiResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'TedarikciAltKategoriListesi', 'TedarikciAltKategoriListesiResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="AltKategoriDetay"]', IS_NLBL);
  { IService.GetVersion }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'GetVersion', '',
                                 '[ReturnName="GetVersionResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'GetVersion', 'GetVersionResult', '',
                                '', IS_NLBL);
  { IService.SiparisKontrolListesiV2 }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'SiparisKontrolListesiV2', '',
                                 '[ReturnName="SiparisKontrolListesiV2Result"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'SiparisKontrolListesiV2', 'SiparisKontrolListesiV2Result', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="TedarikciSiparisKontrolV2"]', IS_NLBL);
  { IService.OlmayanUrunAdetleriSifirla }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'OlmayanUrunAdetleriSifirla', '',
                                 '[ReturnName="OlmayanUrunAdetleriSifirlaResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'OlmayanUrunAdetleriSifirla', 'AktifUrunIds', '',
                                '[Namespace="http://schemas.microsoft.com/2003/10/Serialization/Arrays", ArrayItemName="int"]', IS_NLBL);
  { IService.StokGuncelleBulk }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokGuncelleBulk', '',
                                 '[ReturnName="StokGuncelleBulkResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelleBulk', 'items', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="StokKontrolDetay"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelleBulk', 'StokGuncelleBulkResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="clsResultTransferObject"]', IS_NLBL);
  { IService.StokGuncelleV2Bulk }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokGuncelleV2Bulk', '',
                                 '[ReturnName="StokGuncelleV2BulkResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelleV2Bulk', 'items', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="StokUrun"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelleV2Bulk', 'StokGuncelleV2BulkResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="clsResultTransferObject"]', IS_NLBL);
  { IService.StokFiyatGuncelleBulk }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokFiyatGuncelleBulk', '',
                                 '[ReturnName="StokFiyatGuncelleBulkResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokFiyatGuncelleBulk', 'items', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="StokKontrolDetay"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokFiyatGuncelleBulk', 'StokFiyatGuncelleBulkResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="clsResultTransferObject"]', IS_NLBL);
  { IService.BarkodKontrolBulk }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'BarkodKontrolBulk', '',
                                 '[ReturnName="BarkodKontrolBulkResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'BarkodKontrolBulk', 'Barkod', '',
                                '[Namespace="http://schemas.microsoft.com/2003/10/Serialization/Arrays", ArrayItemName="string"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'BarkodKontrolBulk', 'BarkodKontrolBulkResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService", ArrayItemName="StokKontrolDetay"]', IS_NLBL);
  { IService.StokFiyatGuncelle3 }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokFiyatGuncelle3', '',
                                 '[ReturnName="StokFiyatGuncelle3Result"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokFiyatGuncelle3', 'item', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokFiyatGuncelle3', 'StokFiyatGuncelle3Result', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  { IService.StokGuncelleV2 }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokGuncelleV2', '',
                                 '[ReturnName="StokGuncelleV2Result"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelleV2', 'item', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelleV2', 'StokGuncelleV2Result', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  { IService.AktifYap }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'AktifYap', '',
                                 '[ReturnName="AktifYapResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'AktifYap', 'req', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'AktifYap', 'AktifYapResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  { IService.ServiceState }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'ServiceState', '',
                                 '[ReturnName="ServiceStateResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'ServiceState', 'token', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'ServiceState', 'ServiceStateResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService.Model"]', IS_NLBL);
  { IService.StokGuncelleTestApi }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'StokGuncelleTestApi', '',
                                 '[ReturnName="StokGuncelleTestApiResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelleTestApi', 'item', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'StokGuncelleTestApi', 'StokGuncelleTestApiResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/ePttAVMService"]', IS_NLBL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSiparisUrun), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfSiparisUrun');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfclsResultTransferObject), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfclsResultTransferObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAltKategoriDetay), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfAltKategoriDetay');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTedarikciSiparisKontrolV2), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfTedarikciSiparisKontrolV2');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTedarikciSiparisKontrol), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfTedarikciSiparisKontrol');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfKargoBilgi), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfKargoBilgi');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfStokKontrolDetay), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfStokKontrolDetay');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfint), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfint');
  RemClassRegistry.RegisterXSClass(Tedarikci2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'Tedarikci2', 'Tedarikci');
  RemClassRegistry.RegisterXSClass(KargoBilgi2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'KargoBilgi2', 'KargoBilgi');
  RemClassRegistry.RegisterXSClass(AltKategoriDetay2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'AltKategoriDetay2', 'AltKategoriDetay');
  RemClassRegistry.RegisterXSClass(KategoriDetay2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'KategoriDetay2', 'KategoriDetay');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfstring), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring');
  RemClassRegistry.RegisterXSClass(clsResultTransferObject2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'clsResultTransferObject2', 'clsResultTransferObject');
  RemClassRegistry.RegisterXSClass(UrunResim2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'UrunResim2', 'UrunResim');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfVariants), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfVariants');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfKategoriDetay), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfKategoriDetay');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KayitDurum), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'KayitDurum');
  RemClassRegistry.RegisterXSClass(Variants2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'Variants2', 'Variants');
  RemClassRegistry.RegisterXSClass(TedarikciSiparisKontrolV22, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'TedarikciSiparisKontrolV22', 'TedarikciSiparisKontrolV2');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TedarikciSiparisKontrolV22), 'SiparisUrunler', '[ArrayItemName="SiparisUrun"]');
  RemClassRegistry.RegisterXSClass(TedarikciSiparisKontrol2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'TedarikciSiparisKontrol2', 'TedarikciSiparisKontrol');
  RemClassRegistry.RegisterXSClass(SiparisUrun2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'SiparisUrun2', 'SiparisUrun');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfUrunResim), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfUrunResim');
  RemClassRegistry.RegisterXSClass(StokKontrolDetay2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'StokKontrolDetay2', 'StokKontrolDetay');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StokKontrolDetay2), 'ResimListesi', '[ArrayItemName="UrunResim"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StokKontrolDetay2), 'VariantListesi', '[ArrayItemName="Variants"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfStokUrun), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfStokUrun');
  RemClassRegistry.RegisterXSClass(clsResultTransferObject, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'clsResultTransferObject');
  RemClassRegistry.RegisterXSClass(SiparisUrun, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'SiparisUrun');
  RemClassRegistry.RegisterXSClass(KargoBilgi, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'KargoBilgi');
  RemClassRegistry.RegisterXSClass(AltKategoriDetay, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'AltKategoriDetay');
  RemClassRegistry.RegisterXSClass(TedarikciSiparisKontrolV2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'TedarikciSiparisKontrolV2');
  RemClassRegistry.RegisterXSClass(TedarikciSiparisKontrol, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'TedarikciSiparisKontrol');
  RemClassRegistry.RegisterXSClass(ServiceStateResult2, 'http://schemas.datacontract.org/2004/07/ePttAVMService.Model', 'ServiceStateResult2', 'ServiceStateResult');
  RemClassRegistry.RegisterXSClass(ServiceStateResult, 'http://schemas.datacontract.org/2004/07/ePttAVMService.Model', 'ServiceStateResult');
  RemClassRegistry.RegisterXSClass(KategoriDetay, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'KategoriDetay');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfVariantAttr), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfVariantAttr');
  RemClassRegistry.RegisterXSClass(VariantAttr2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'VariantAttr2', 'VariantAttr');
  RemClassRegistry.RegisterXSClass(VariantAttr, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'VariantAttr');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfVariantCombination), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfVariantCombination');
  RemClassRegistry.RegisterXSClass(Variant2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'Variant2', 'Variant');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Variant2), 'Attributes', '[ArrayItemName="VariantAttr"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Variant2), 'Combination', '[ArrayItemName="VariantCombination"]');
  RemClassRegistry.RegisterXSClass(Variant, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'Variant');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfUrunResimBase64), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfUrunResimBase64');
  RemClassRegistry.RegisterXSClass(UrunResimBase642, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'UrunResimBase642', 'UrunResimBase64');
  RemClassRegistry.RegisterXSClass(UrunResimBase64, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'UrunResimBase64');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfVariant), 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ArrayOfVariant');
  RemClassRegistry.RegisterXSClass(StokUrun2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'StokUrun2', 'StokUrun');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StokUrun2), 'UrunResimleri', '[ArrayItemName="UrunResim"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StokUrun2), 'UrunResimleriBase64', '[ArrayItemName="UrunResimBase64"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StokUrun2), 'VariantListesi', '[ArrayItemName="Variant"]');
  RemClassRegistry.RegisterXSClass(StokUrun, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'StokUrun');
  RemClassRegistry.RegisterXSClass(StokKontrolDetay, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'StokKontrolDetay');
  RemClassRegistry.RegisterXSClass(Tedarikci, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'Tedarikci');
  RemClassRegistry.RegisterXSClass(Variants, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'Variants');
  RemClassRegistry.RegisterXSClass(UrunResim, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'UrunResim');
  RemClassRegistry.RegisterXSClass(StokResult2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'StokResult2', 'StokResult');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StokResult2), 'WarningMessages', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterXSClass(StokResult, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'StokResult');
  RemClassRegistry.RegisterXSClass(VariantCombination2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'VariantCombination2', 'VariantCombination');
  RemClassRegistry.RegisterXSClass(VariantCombination, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'VariantCombination');
  RemClassRegistry.RegisterXSClass(ApiResult2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ApiResult2', 'ApiResult');
  RemClassRegistry.RegisterXSClass(ApiResult, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'ApiResult');
  RemClassRegistry.RegisterXSClass(AktifUrunRequest2, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'AktifUrunRequest2', 'AktifUrunRequest');
  RemClassRegistry.RegisterXSClass(AktifUrunRequest, 'http://schemas.datacontract.org/2004/07/ePttAVMService', 'AktifUrunRequest');

end.