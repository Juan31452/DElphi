program Empleado;

uses
  Forms,
  UNomina in 'UNomina.pas' {FNomina};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFNomina, FNomina);
  Application.Run;
end.
