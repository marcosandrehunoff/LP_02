object FrmTecnico: TFrmTecnico
  Left = 0
  Top = 0
  Caption = 'Cadastro de Tecnicos'
  ClientHeight = 328
  ClientWidth = 726
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
    Width = 726
    Height = 49
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 520
      Height = 47
      DataSource = DsTecnico
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 726
    Height = 112
    Align = alTop
    TabOrder = 1
    ExplicitTop = 44
    object Label1: TLabel
      Left = 24
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 168
      Top = 6
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 24
      Top = 53
      Width = 19
      Height = 13
      Caption = 'Pais'
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 26
      Width = 121
      Height = 21
      DataField = 'TEC_CODIGO'
      DataSource = DsTecnico
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 168
      Top = 25
      Width = 481
      Height = 21
      DataField = 'TEC_NOME'
      DataSource = DsTecnico
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 161
    Width = 726
    Height = 168
    Align = alTop
    TabOrder = 2
    ExplicitTop = 167
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 724
      Height = 166
      Align = alClient
      DataSource = DsTecnico
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 121
    Width = 625
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsTecnico
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 3
  end
  object DsTecnico: TDataSource
    DataSet = DmDados.QryTecnico
    Left = 560
    Top = 8
  end
  object DsPais: TDataSource
    DataSet = DmDados.QryPais
    Left = 624
    Top = 8
  end
end
