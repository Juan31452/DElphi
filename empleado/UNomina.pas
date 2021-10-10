unit UNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFNomina = class(TForm)
    Label1: TLabel;
    Ednombre: TEdit;
    Label2: TLabel;
    Edhoras: TEdit;
    Btncalcula: TBitBtn;
    BtnLimpiar: TBitBtn;
    Label3: TLabel;
    procedure BtnLimpiarClick(Sender: TObject);
    procedure BtncalculaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNomina: TFNomina;
  horas: Integer;
  persona: String;
  total : Integer;
  horasextra: Integer;
  totalhoras: Integer;
  totalhoraextra: Integer;



implementation

{$R *.dfm}

procedure TFNomina.BtnLimpiarClick(Sender: TObject);
begin
  FNomina.Ednombre.Text := ' ' ;
  FNomina.Edhoras.Text := ' ' ;
  Ednombre.SetFocus;
end;

procedure TFNomina.BtncalculaClick(Sender: TObject);
begin
  persona:= Ednombre.Text;
  horas:= Strtoint(Edhoras.Text);


   if(horas >35 ) then
   begin
     horasextra :=  horas - 35;
     totalhoras := 35 * 15000;
     totalhoraextra:= horasextra * 19000;
     total:=  totalhoras +  totalhoraextra;

     showmessage( 'Al empleado '+ persona + ' se le debe pagar'+
                'la suma de : ' + inttostr(total) );
   
   end;

    if(horas <35 ) then
   begin
      total :=  horas * 15000;
       showmessage( 'Al empleado '+ persona + ' se le debe pagar'+
                'la suma de : ' + inttostr(total) );
   end;
end;

end.
