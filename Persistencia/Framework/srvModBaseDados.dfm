object TDSServerModuleBaseDados: TTDSServerModuleBaseDados
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=TESTE'
      'User_Name=vnmeirelles'
      'Password=@VnMeirelles64@'
      'Server=192.168.0.113'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    VendorLib = 'C:\LibMySQL\Lib_MySql_5_5\x32\libmysql.dll'
    Left = 16
    Top = 80
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 96
    Top = 16
  end
end
