program SoapWsseSample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  epttavm in 'epttavm.pas',
  Soap.InvokeRegistry,
  Soap.SOAPHTTPClient,
  Winapi.ActiveX,
  WSSE in 'WSSE.pas';

var
  port :epttavm.IService;
  kimlik: TSOAPHeader;
  HTTPRIO1: THTTPRIO;
  kategori: epttavm.ArrayOfKategoriDetay;

begin
  CoInitialize(nil);
  try
    HTTPRIO1 := THTTPRIO.Create(nil);
    HTTPRIO1.HTTPWebNode.UserName := 'username';
    HTTPRIO1.HTTPWebNode.Password := 'password';
    port := epttavm.GetIService(True, '', HTTPRIO1);
    WSSE.AddHeaderWSEHeaderGSS(HTTPRIO1);
    kategori := port.KategoriListesi;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
