inherited FACTURACION: TFACTURACION
  Caption = 'FACTURACION'
  PixelsPerInch = 96
  TextHeight = 13
  inherited titulo1: TLabel
    Width = 37
    Caption = 'Numero'
    ExplicitWidth = 37
  end
  inherited titulo2: TLabel
    Width = 29
    Caption = 'Fecha'
    ExplicitWidth = 29
  end
  inherited titulo3: TLabel
    Width = 33
    Caption = 'Cliente'
    ExplicitWidth = 33
  end
  inherited titulo4: TLabel
    Left = 20
    Width = 24
    Caption = 'Total'
    ExplicitLeft = 20
    ExplicitWidth = 24
  end
  object Label1: TLabel [4]
    Left = 296
    Top = 40
    Width = 92
    Height = 13
    Caption = 'DETALLE FACTURA'
  end
  inherited Panel6: TPanel
    inherited BtModificar: TBitBtn
      OnClick = BtModificarClick
    end
    object BitDetalle: TBitBtn
      Left = 352
      Top = 2
      Width = 80
      Height = 25
      Caption = '&Detalle'
      Enabled = False
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitGuardarClick
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 272
  end
  object DBGrid2: TDBGrid [12]
    Left = 296
    Top = 56
    Width = 393
    Height = 177
    DataSource = DataS1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited DataS: TDataSource
    DataSet = LogicaDatos.Facturacion
  end
  object DataS1: TDataSource
    DataSet = LogicaDatos.DetalleF
    Left = 440
    Top = 128
  end
end
