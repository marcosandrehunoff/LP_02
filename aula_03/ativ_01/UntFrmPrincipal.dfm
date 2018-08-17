object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Produtos'
  ClientHeight = 442
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 922
    Height = 442
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 788
    ExplicitHeight = 541
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 920
      Height = 56
      Align = alTop
      Caption = 'Filtros'
      TabOrder = 0
      ExplicitTop = 0
      ExplicitWidth = 916
      object Label1: TLabel
        Left = 33
        Top = 21
        Width = 81
        Height = 16
        Caption = 'Valor do Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtValorFiltro: TEdit
        Left = 129
        Top = 16
        Width = 377
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object btnAdcFiltro: TButton
        Left = 561
        Top = 16
        Width = 98
        Height = 25
        Caption = 'Adicionar Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object btnRmvFiltro: TButton
        Left = 681
        Top = 16
        Width = 97
        Height = 25
        Caption = 'Remove Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 121
      Width = 920
      Height = 203
      Align = alClient
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object GroupBox6: TGroupBox
      Left = 1
      Top = 57
      Width = 920
      Height = 64
      Align = alTop
      Caption = 'Controle de Navega'#231#227'o e Edi'#231#227'o'
      TabOrder = 2
      ExplicitTop = 63
      ExplicitWidth = 916
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 15
        Width = 916
        Height = 47
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 208
        ExplicitTop = 16
        ExplicitWidth = 410
        ExplicitHeight = 34
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 324
      Width = 920
      Height = 117
      Align = alBottom
      TabOrder = 3
      ExplicitTop = 384
      ExplicitWidth = 916
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 192
        Height = 115
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = 9
        ExplicitTop = 2
        object btnLimparDados: TButton
          Left = 2
          Top = 15
          Width = 188
          Height = 34
          Align = alTop
          Caption = 'Limpar Dados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btnIndexarId: TButton
          Left = 2
          Top = 82
          Width = 188
          Height = 31
          Align = alClient
          Caption = 'Indexar Por ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitTop = 88
          ExplicitHeight = 25
        end
        object btnIndexarName: TButton
          Left = 2
          Top = 49
          Width = 188
          Height = 33
          Align = alTop
          Caption = 'Indexar Por Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ExplicitLeft = -2
          ExplicitTop = 46
        end
      end
      object GroupBox3: TGroupBox
        Left = 193
        Top = 1
        Width = 192
        Height = 115
        Align = alLeft
        Caption = 'Percorrer e Localizar'
        TabOrder = 1
        ExplicitLeft = 197
        ExplicitTop = 6
      end
      object GroupBox4: TGroupBox
        Left = 385
        Top = 1
        Width = 185
        Height = 115
        Align = alLeft
        Caption = 'Locate'
        TabOrder = 2
        ExplicitLeft = 409
        ExplicitTop = 392
        ExplicitHeight = 123
      end
      object GroupBox5: TGroupBox
        Left = 755
        Top = 1
        Width = 185
        Height = 115
        Align = alLeft
        Caption = 'Total Agregado'
        TabOrder = 3
        ExplicitLeft = 576
        ExplicitTop = 6
        object DBEdit1: TDBEdit
          Left = 26
          Top = 48
          Width = 119
          Height = 33
          TabOrder = 0
        end
      end
      object GroupBox7: TGroupBox
        Left = 570
        Top = 1
        Width = 185
        Height = 115
        Align = alLeft
        Caption = 'FindKey'
        TabOrder = 4
        ExplicitLeft = 576
        ExplicitTop = 6
      end
    end
  end
  object DataSource1: TDataSource
    Left = 744
    Top = 184
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 824
    Top = 184
  end
end
