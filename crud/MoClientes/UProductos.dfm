inherited Fpadre1: TFpadre1
  Caption = 'PRODUCTOS'
  ClientHeight = 407
  ClientWidth = 718
  ExplicitWidth = 734
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited titulo1: TLabel
    Width = 37
    Caption = 'Product'
    ExplicitWidth = 37
  end
  inherited titulo2: TLabel
    Width = 37
    Caption = 'Nombre'
    ExplicitWidth = 37
  end
  inherited titulo3: TLabel
    Width = 24
    Caption = 'Valor'
    ExplicitWidth = 24
  end
  inherited titulo4: TLabel
    Visible = False
  end
  inherited Panel6: TPanel
    Width = 718
    ExplicitWidth = 718
    inherited BitBtn8: TBitBtn
      Left = 904
      ExplicitLeft = 904
    end
    inherited BtModificar: TBitBtn
      OnClick = BtModificarClick
    end
    inherited BtEliminar: TBitBtn
      OnClick = BtEliminarClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 388
    Width = 718
    ExplicitWidth = 718
  end
  inherited Edcampo4: TEdit
    Visible = False
  end
  inherited DataS: TDataSource
    DataSet = LogicaDatos.Productos
  end
end
