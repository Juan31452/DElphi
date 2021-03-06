unit UProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Upadre, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFpadre1 = class(TFpadre)
    procedure BitGuardarClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure BtEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpadre1: TFpadre1;

implementation

{$R *.dfm}

uses ULogica;


procedure TFpadre1.BitGuardarClick(Sender: TObject);
begin
  inherited;

  With LogicaDatos.Productos do
  begin

    Append;
    FieldByname('Producto').AsString:=Edcampo1.Text;
    FieldByname('Nombre_Producto').AsString:=Edcampo2.Text;
    FieldByname('Valor').AsString:=Edcampo3.Text;
    Post;

  end;

end;

procedure TFpadre1.BtEliminarClick(Sender: TObject);
begin
  inherited;
  if  Application.MessageBox('?Desea eliminar el registro?', 'Eliminaci?n...',
   Mb_IconQuestion + Mb_YesNo)=Id_No then Exit;
  LogicaDatos.Productos.SQL.Clear;
  LogicaDatos.Productos.SQL.Add('delete from productos where Producto=' + (Edcampo1.Text));
  LogicaDatos.Productos.ExecSQL;


  LogicaDatos.Productos.SQL.Clear;
  LogicaDatos.Productos.SQL.Add('SELECT * FROM productos');
  LogicaDatos.Productos.Open;

end;

procedure TFpadre1.BtModificarClick(Sender: TObject);
begin
  inherited;
   With LogicaDatos.Productos do
  begin
    if (Edcampo1.Enabled = True) then
    begin
      Edit;
      FieldByname('Producto').AsString:=Edcampo1.Text;
      FieldByname('Nombre_Producto').AsString:=Edcampo2.Text;
      FieldByname('Valor').AsString:=Edcampo3.Text;
      Post;
      Edcampo1.Enabled:= False;
      Edcampo2.Enabled:= False;
      Edcampo3.Enabled:= False;
     end;
  end;
end;

end.
