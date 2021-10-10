program Fibonacci;

uses
  Forms,
  UFibonacci in 'UFibonacci.pas' {FcalculoF};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFcalculoF, FcalculoF);
  Application.Run;
end.
