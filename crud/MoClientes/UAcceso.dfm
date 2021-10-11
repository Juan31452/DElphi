object Accesobd: TAccesobd
  OldCreateOrder = False
  Height = 150
  Width = 263
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=prueba1'
    LoginPrompt = False
    Left = 48
    Top = 8
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=ServerName'
      'Database=C:\prueba1.gdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60')
    VendorLib = 'LIBMYSQL.dll'
    Left = 128
    Top = 56
  end
end
