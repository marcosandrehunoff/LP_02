object FrmPais: TFrmPais
  Left = 0
  Top = 0
  Caption = 'Cadastro De Paises'
  ClientHeight = 277
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 49
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 456
      Height = 47
      DataSource = DsPais
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 63
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 639
    Height = 104
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 44
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 160
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 21
      DataField = 'PAI_CODIGO'
      DataSource = DsPais
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 160
      Top = 43
      Width = 385
      Height = 21
      DataField = 'PAI_NOME'
      DataSource = DsPais
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 153
    Width = 639
    Height = 112
    Align = alTop
    TabOrder = 2
    ExplicitTop = 169
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 637
      Height = 110
      Align = alClient
      DataSource = DsPais
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DsPais: TDataSource
    DataSet = DmDados.QryPais
    Left = 568
    Top = 56
  end
end
