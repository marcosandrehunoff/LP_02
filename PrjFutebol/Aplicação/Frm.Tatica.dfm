object FrmTatica: TFrmTatica
  Left = 0
  Top = 0
  Caption = 'Cadastro De Taticas'
  ClientHeight = 325
  ClientWidth = 607
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
    Width = 607
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 112
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 605
      Height = 39
      DataSource = DsTatica
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 112
      ExplicitTop = 10
      ExplicitWidth = 240
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 607
    Height = 96
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 14
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 135
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 378
      Top = 17
      Width = 43
      Height = 13
      Caption = 'Esquema'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 35
      Width = 121
      Height = 21
      DataField = 'TAT_CODIGO'
      DataSource = DsTatica
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 135
      Top = 35
      Width = 237
      Height = 21
      DataField = 'TAT_DESCRICAO'
      DataSource = DsTatica
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 378
      Top = 35
      Width = 207
      Height = 21
      DataField = 'TAT_ESQUEMA'
      DataSource = DsTatica
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 137
    Width = 607
    Height = 202
    Align = alTop
    TabOrder = 2
    ExplicitTop = 127
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 605
      Height = 200
      Align = alClient
      DataSource = DsTatica
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DsTatica: TDataSource
    DataSet = DmDados.QryTatica
    Left = 448
    Top = 88
  end
end
