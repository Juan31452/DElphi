inherited Fpadre1: TFpadre1
  Caption = 'PRODUCTOS'
  ClientHeight = 407
  ClientWidth = 718
  ExplicitWidth = 734
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Width = 43
    Caption = 'Producto'
    ExplicitWidth = 43
  end
  inherited Label2: TLabel
    Width = 37
    Caption = 'Nombre'
    ExplicitWidth = 37
  end
  inherited Label3: TLabel
    Width = 24
    Caption = 'Valor'
    ExplicitWidth = 24
  end
  inherited Panel6: TPanel
    Width = 718
    ExplicitLeft = 0
    ExplicitWidth = 664
    inherited BitBtn8: TBitBtn
      Left = 904
    end
    inherited BtNuevo: TBitBtn
      OnClick = BtNuevoClick
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
  end
  inherited DataS: TDataSource
    DataSet = LogicaDatos.ADOQuery2
  end
end