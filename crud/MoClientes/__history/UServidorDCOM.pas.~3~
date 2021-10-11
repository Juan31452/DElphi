unit UServidorDCOM;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, UServidorDCOM_TLB, StdVcl, IBDatabase, Data.DB, IBCustomDataSet,
  IBQuery;

type
  TServidorDCOM = class(TRemoteDataModule, IServidorDCOM)
    BaseDatos: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBClientes: TIBQuery;
    IBClientesCODIGO: TIBStringField;
    IBClientesNOMBRE_CLIENTE: TIBStringField;
    IBClientesDIRECCION: TIBStringField;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TServidorDCOM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

initialization
  TComponentFactory.Create(ComServer, TServidorDCOM,
    Class_ServidorDCOM, ciMultiInstance, tmApartment);
end.
