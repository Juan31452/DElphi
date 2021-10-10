unit UFibonacci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFcalculoF = class(TForm)
    Label1: TLabel;
    Ednumero: TEdit;
    Btncalcula: TButton;
    Lista: TListBox;
    Btnlimpia: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure BtnbClick(Sender: TObject);
    procedure Borrar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FcalculoF: TFcalculoF;


implementation

{$R *.dfm}



procedure TFcalculoF.BtnbClick(Sender: TObject);

  var numero,a,b,c,i: Integer;
begin
   a:=1;
   b:=1;
   c:=0;

   numero:=StrToInt(Ednumero.Text);

   for i:=1 to numero do
      begin
     a:=b;
     b:=c;
     c:=a+b;

     Lista.Items.Add( IntToStr(c) );
   end;
     
end;


procedure TFcalculoF.Borrar(Sender: TObject);
begin
 Ednumero.Text:=' ';
  Lista.Items.Clear;
end;

end.

