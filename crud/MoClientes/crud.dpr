program crud;

uses
  Forms,
  UClientes in 'UClientes.pas' {Clientes},
  UAcceso in 'UAcceso.pas' {Accesobd: TDataModule},
  ULogica in 'ULogica.pas' {LogicaDatos: TDataModule},
  Upadre in 'Upadre.pas' {Fpadre},
  UProductos in 'UProductos.pas' {Fpadre1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFpadre1, Fpadre1);
  Application.CreateForm(TClientes, Clientes);
  Application.CreateForm(TAccesobd, Accesobd);
  Application.CreateForm(TLogicaDatos, LogicaDatos);
  Application.CreateForm(TFpadre, Fpadre);
  Application.CreateForm(TFpadre1, Fpadre1);
  Application.Run;
end.