unit ULogica;

interface

uses
  SysUtils, Classes, DB, Provider, DBClient, ADODB, Datasnap.Win.MConnect;

type
  TLogicaDatos = class(TDataModule)
    Clientes: TADOQuery;
    ClientesCodigo: TIntegerField;
    ClientesNombre_Cliente: TWideStringField;
    Clientesdireccion: TWideStringField;
    Productos: TADOQuery;
    ProductosProducto: TIntegerField;
    ProductosNombre_Producto: TWideStringField;
    ProductosValor: TBCDField;
    Facturacion: TADOQuery;
    DetalleF: TADOQuery;
    FacturacionNumero: TIntegerField;
    FacturacionFecha: TDateTimeField;
    FacturacionCliente: TIntegerField;
    FacturacionTotal: TBCDField;
    DetalleFNumero: TIntegerField;
    DetalleFFactura: TIntegerField;
    DetalleFProducto: TIntegerField;
    DetalleFCantidad: TIntegerField;
    DetalleFValor: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogicaDatos: TLogicaDatos;

implementation

{$R *.dfm}
uses UAcceso;


end.
