program CRUDClientes;

uses
  Forms,
  Clientes in 'Clientes.pas' {FClientes},
  DmClientes in '..\Domino\DmClientes.pas' {DataClientes: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFClientes, FClientes);
  Application.CreateForm(TDataClientes, DataClientes);
  Application.Run;
end.
