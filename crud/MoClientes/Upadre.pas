unit Upadre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFpadre = class(TForm)
    Panel6: TPanel;
    BitBtn8: TBitBtn;
    BtNuevo: TBitBtn;
    BtModificar: TBitBtn;
    BtEliminar: TBitBtn;
    BitGuardar: TBitBtn;
    StatusBar1: TStatusBar;
    titulo1: TLabel;
    titulo2: TLabel;
    titulo3: TLabel;
    Edcampo1: TEdit;
    Edcampo2: TEdit;
    Edcampo3: TEdit;
    DataS: TDataSource;
    DBGrid1: TDBGrid;
    Edcampo4: TEdit;
    titulo4: TLabel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BtNuevoClick(Sender: TObject);
    procedure BitGuardarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpadre: TFpadre;

implementation

{$R *.dfm}

procedure TFpadre.BitGuardarClick(Sender: TObject);
begin

  BtNuevo.Enabled:= True;
  BtModificar.Enabled:= True;
  BtEliminar.Enabled:= True;

end;

procedure TFpadre.BtNuevoClick(Sender: TObject);
begin
  Edcampo1.Enabled:= True;
  Edcampo2.Enabled:= True;
  Edcampo3.Enabled:= True;
  Edcampo1.Text:= '';
  Edcampo2.Text:= '';
  Edcampo3.Text:= '';
  Edcampo1.SetFocus;
  BtNuevo.Enabled:= False;
  BtModificar.Enabled:= False;
  BtEliminar.Enabled:= False;

end;

procedure TFpadre.DBGrid1CellClick(Column: TColumn);
begin
  Edcampo1.Enabled:= True;
  Edcampo2.Enabled:= True;
  Edcampo3.Enabled:= True;

  Edcampo1.Text :=   Column.Field.DataSet.Fields[0].Value;
  Edcampo2.text :=   Column.Field.DataSet.Fields[1].Value;
  Edcampo3.Text   :=   Column.Field.DataSet.Fields[2].Value;
end;



end.
