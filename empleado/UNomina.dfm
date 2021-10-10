object FNomina: TFNomina
  Left = 192
  Top = 159
  Width = 481
  Height = 329
  Caption = 'NOMINA'
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 85
    Height = 25
    Caption = 'NOMBRE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 112
    Width = 202
    Height = 25
    Caption = 'HORAS TRABAJADAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 120
    Top = 8
    Width = 205
    Height = 28
    Caption = 'CALCULO SUELDO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Ednombre: TEdit
    Left = 216
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object Edhoras: TEdit
    Left = 216
    Top = 112
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Btncalcula: TBitBtn
    Left = 160
    Top = 184
    Width = 75
    Height = 25
    Caption = 'CALCULAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtncalculaClick
  end
  object BtnLimpiar: TBitBtn
    Left = 256
    Top = 184
    Width = 75
    Height = 25
    Caption = 'LIMPIAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BtnLimpiarClick
  end
end
