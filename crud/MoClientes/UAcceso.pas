unit UAcceso;

interface

uses
  SysUtils, Classes, DB, ADODB, SqlExpr, Data.DBXMySQL;

type
  TAccesobd = class(TDataModule)
    ADOConnection: TADOConnection;
    SQLConnection1: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Accesobd: TAccesobd;

implementation

{$R *.dfm}

end.
