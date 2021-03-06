object LogicaDatos: TLogicaDatos
  OldCreateOrder = False
  Height = 150
  Width = 316
  object Clientes: TADOQuery
    Active = True
    Connection = Accesobd.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from clientes')
    Left = 32
    Top = 16
    object ClientesCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ClientesNombre_Cliente: TWideStringField
      FieldName = 'Nombre_Cliente'
      Size = 255
    end
    object Clientesdireccion: TWideStringField
      FieldName = 'direccion'
      Size = 255
    end
  end
  object Productos: TADOQuery
    Active = True
    Connection = Accesobd.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from productos'
      '')
    Left = 104
    Top = 16
    object ProductosProducto: TIntegerField
      DisplayWidth = 12
      FieldName = 'Producto'
    end
    object ProductosNombre_Producto: TWideStringField
      DisplayWidth = 55
      FieldName = 'Nombre_Producto'
      Size = 255
    end
    object ProductosValor: TBCDField
      DisplayWidth = 27
      FieldName = 'Valor'
      Precision = 19
    end
  end
  object Facturacion: TADOQuery
    Active = True
    Connection = Accesobd.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Factura'
      '')
    Left = 168
    Top = 16
    object FacturacionNumero: TIntegerField
      FieldName = 'Numero'
    end
    object FacturacionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object FacturacionCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object FacturacionTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
    end
  end
  object DetalleF: TADOQuery
    Active = True
    Connection = Accesobd.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Detalle_Factura'
      '')
    Left = 168
    Top = 72
    object DetalleFNumero: TIntegerField
      FieldName = 'Numero'
    end
    object DetalleFFactura: TIntegerField
      FieldName = 'Factura'
    end
    object DetalleFProducto: TIntegerField
      FieldName = 'Producto'
    end
    object DetalleFCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object DetalleFValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
    end
  end
end
