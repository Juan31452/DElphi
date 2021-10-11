object ServidorDCOM: TServidorDCOM
  OldCreateOrder = False
  Height = 235
  VerticalOffset = 85
  Width = 346
  object BaseDatos: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:C:\PRUEBA1.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 64
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = BaseDatos
    Left = 136
    Top = 32
  end
  object IBClientes: TIBQuery
    Database = BaseDatos
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 40
    Top = 88
    object IBClientesCODIGO: TIBStringField
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBClientesNOMBRE_CLIENTE: TIBStringField
      DisplayWidth = 36
      FieldName = 'NOMBRE_CLIENTE'
      Origin = '"CLIENTES"."NOMBRE_CLIENTE"'
      Size = 50
    end
    object IBClientesDIRECCION: TIBStringField
      DisplayWidth = 48
      FieldName = 'DIRECCION'
      Origin = '"CLIENTES"."DIRECCION"'
      Size = 40
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = IBClientes
    Left = 152
    Top = 120
  end
end
