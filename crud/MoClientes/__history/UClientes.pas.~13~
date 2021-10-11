unit UClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ExtCtrls, DBCtrls, StdCtrls, Buttons,
  DBTables, Mask;

type
  TClientes = class(TForm)
    DataS: TDataSource;
    Panel6: TPanel;
    BitBtn8: TBitBtn;
    BtNuevo: TBitBtn;
    BtModificar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edcliente: TEdit;
    Ednombre: TEdit;
    Edirecion: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BtNuevoClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Clientes: TClientes;

implementation

{$R *.dfm}

uses ULogica,UAcceso,UServidorDCOM;


procedure TClientes.BtModificarClick(Sender: TObject);
begin
With LogicaDatos.Clientes do
begin
 Edit;
    FieldByname('Codigo').AsString:=Edcliente.Text;
    FieldByname('Nombre_Cliente').AsString:=Ednombre.Text;
    FieldByname('Direccion').AsString:=Edirecion.Text;
    Post;
end;
end;

procedure TClientes.BtNuevoClick(Sender: TObject);
begin
With LogicaDatos.Clientes do
  begin

    Append;
    FieldByname('Codigo').AsString:=Edcliente.Text;
    FieldByname('Nombre_Cliente').AsString:=Ednombre.Text;
    FieldByname('Direccion').AsString:=Edirecion.Text;
    Post;

  end;
end;

procedure TClientes.DBGrid1CellClick(Column: TColumn);
begin
  Edcliente.Text :=   Column.Field.DataSet.Fields[0].Value;
  Ednombre.text :=   Column.Field.DataSet.Fields[1].Value;
  Edirecion.Text   :=   Column.Field.DataSet.Fields[2].Value;

end;

end.
