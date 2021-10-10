unit UFacturacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Upadre, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFACTURACION = class(TFpadre)
    DateTimePicker1: TDateTimePicker;
    procedure BitGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FACTURACION: TFACTURACION;

implementation

{$R *.dfm}
uses ULogica;

procedure TFACTURACION.BitGuardarClick(Sender: TObject);
begin
  inherited;
With LogicaDatos,Facturacion do
  begin

    Append;
    FieldByname('Numero').AsString:=Edcampo1.Text;
    FieldByname('Fecha').AsString:=Edcampo2.Text;
    FieldByname('Cliente').AsString:=Edcampo3.Text;
    FieldByname('Total').AsString:=Edcampo3.Text;

    Post;

  end;
end;

end.