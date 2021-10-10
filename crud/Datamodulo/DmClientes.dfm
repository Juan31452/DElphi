object DataClientes: TDataClientes
  OldCreateOrder = False
  Left = 1029
  Top = 205
  Height = 216
  Width = 345
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\pr' +
      'ueba2.mdb;Mode=Share Deny None;Persist Security Info=False;Jet O' +
      'LEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Dat' +
      'abase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Loc' +
      'king Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global' +
      ' Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLED' +
      'B:Create System Database=False;Jet OLEDB:Encrypt Database=False;' +
      'Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact W' +
      'ithout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 32
  end
  object ADOTable: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'clientes'
    Left = 24
    Top = 96
    object ADOTablecliente: TAutoIncField
      FieldName = 'cliente'
      ReadOnly = True
    end
    object ADOTablenombre: TWideStringField
      FieldName = 'nombre'
      Size = 255
    end
    object ADOTabledireccion: TWideStringField
      FieldName = 'direccion'
      Size = 255
    end
  end
end
