object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 242
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Localizao1: TMenuItem
        Caption = 'Localiza'#231#227'o'
        object Pas1: TMenuItem
          Caption = 'Pa'#237's'
          OnClick = Pas1Click
        end
        object Estado1: TMenuItem
          Caption = 'Estado'
          OnClick = Estado1Click
        end
        object Cidade1: TMenuItem
          Caption = 'Cidade'
          OnClick = Cidade1Click
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Geral1: TMenuItem
        Caption = 'Geral'
        object Produto1: TMenuItem
          Caption = 'Produto'
          OnClick = Produto1Click
        end
        object Cliente1: TMenuItem
          Caption = 'Cliente'
          OnClick = Cliente1Click
        end
      end
    end
    object Mo1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object RalizaoVenda1: TMenuItem
        Caption = 'Raliza'#231#227'o de Venda'
        OnClick = RalizaoVenda1Click
      end
    end
    object S1: TMenuItem
      Caption = 'Sair'
      OnClick = S1Click
    end
  end
end
