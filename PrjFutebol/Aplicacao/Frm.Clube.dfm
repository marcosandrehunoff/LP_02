object FrmClube: TFrmClube
  Left = 0
  Top = 0
  Caption = 'Cadastro Clube'
  ClientHeight = 673
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 861
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 758
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 448
      Height = 39
      DataSource = DsClube
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 861
    Height = 128
    Align = alTop
    TabOrder = 1
    ExplicitTop = 46
    ExplicitWidth = 804
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 186
      Top = 24
      Width = 27
      Height = 12
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 467
      Top = 24
      Width = 35
      Height = 13
      Caption = 'Estadio'
    end
    object Label4: TLabel
      Left = 651
      Top = 24
      Width = 73
      Height = 13
      Caption = 'Data Funda'#231#227'o'
    end
    object Label5: TLabel
      Left = 16
      Top = 70
      Width = 29
      Height = 13
      Caption = 'Tatica'
    end
    object Label6: TLabel
      Left = 238
      Top = 69
      Width = 36
      Height = 13
      Caption = 'Tecnico'
    end
    object Label7: TLabel
      Left = 498
      Top = 70
      Width = 19
      Height = 13
      Caption = 'Pais'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 121
      Height = 21
      DataField = 'CLB_CODIGO'
      DataSource = DsClube
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 186
      Top = 40
      Width = 241
      Height = 20
      DataField = 'CLB_NOME'
      DataSource = DsClube
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 467
      Top = 43
      Width = 153
      Height = 21
      DataField = 'CLB_ESTADIO'
      DataSource = DsClube
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 651
      Top = 43
      Width = 145
      Height = 21
      DataField = 'CLB_DTFUNDACAO'
      DataSource = DsClube
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 84
      Width = 168
      Height = 21
      DataField = 'TAT_CODIGO'
      DataSource = DsClube
      KeyField = 'TAT_CODIGO'
      ListField = 'TAT_DESCRICAO'
      ListSource = DsTatica
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 238
      Top = 84
      Width = 209
      Height = 21
      DataField = 'TEC_CODIGO'
      DataSource = DsClube
      KeyField = 'TEC_CODIGO'
      ListField = 'TEC_NOME'
      ListSource = DsTecnico
      TabOrder = 5
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 498
      Top = 84
      Width = 298
      Height = 21
      DataField = 'PAI_CODIGO'
      DataSource = DsClube
      KeyField = 'PAI_CODIGO'
      ListField = 'PAI_NOME'
      ListSource = DsPais
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 169
    Width = 861
    Height = 122
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 758
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 859
      Height = 120
      Align = alClient
      DataSource = DsClube
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 429
    Width = 861
    Height = 32
    Align = alTop
    TabOrder = 3
    ExplicitTop = 265
    ExplicitWidth = 758
    object DBNavigator2: TDBNavigator
      Left = 1
      Top = 1
      Width = 448
      Height = 30
      DataSource = DsJogador
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 291
    Width = 861
    Height = 138
    Align = alTop
    TabOrder = 7
    ExplicitTop = 296
    object Label8: TLabel
      Left = 16
      Top = 6
      Width = 37
      Height = 13
      Align = alCustom
      Caption = 'Numero'
    end
    object Label9: TLabel
      Left = 128
      Top = 6
      Width = 30
      Height = 17
      Align = alCustom
      Caption = 'Nome'
    end
    object Label10: TLabel
      Left = 328
      Top = 8
      Width = 38
      Height = 17
      Align = alCustom
      Caption = 'Posi'#231#227'o'
    end
    object Label11: TLabel
      Left = 533
      Top = 6
      Width = 28
      Height = 13
      Align = alCustom
      Caption = 'Idade'
    end
    object Label12: TLabel
      Left = 708
      Top = 6
      Width = 25
      Height = 17
      Align = alCustom
      Caption = 'Lado'
    end
    object Label13: TLabel
      Left = 16
      Top = 86
      Width = 30
      Height = 16
      Align = alCustom
      Caption = 'Titular'
    end
    object Label14: TLabel
      Left = 186
      Top = 86
      Width = 87
      Height = 18
      Align = alCustom
      Caption = 'Caracteristicas'
    end
    object Label15: TLabel
      Left = 533
      Top = 86
      Width = 25
      Height = 17
      Align = alCustom
      Caption = 'Pais'
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 25
      Width = 79
      Height = 21
      Align = alCustom
      DataField = 'JOG_NUMERO'
      DataSource = DsJogador
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 128
      Top = 25
      Width = 176
      Height = 21
      Align = alCustom
      DataField = 'JOG_NOME'
      DataSource = DsJogador
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 328
      Top = 25
      Width = 174
      Height = 22
      Align = alCustom
      DataField = 'JOG_POSICAO'
      DataSource = DsJogador
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 533
      Top = 25
      Width = 152
      Height = 22
      Align = alCustom
      DataField = 'JOG_IDADE'
      DataSource = DsJogador
      TabOrder = 3
    end
    object DBEdit11: TDBEdit
      Left = 186
      Top = 103
      Width = 316
      Height = 20
      Align = alCustom
      DataField = 'JOG_CARACTERISTICA'
      DataSource = DsJogador
      TabOrder = 4
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 461
    Width = 861
    Height = 212
    Align = alTop
    Caption = 'Panel6'
    TabOrder = 8
    ExplicitLeft = 8
    ExplicitTop = 387
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 859
      Height = 210
      Align = alClient
      DataSource = DsJogador
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 533
    Top = 393
    Width = 320
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsJogador
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox
    Left = 708
    Top = 320
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'JOG_LADO'
    DataSource = DsJogador
    Items.Strings = (
      'D'
      'E')
    TabOrder = 4
  end
  object DBComboBox2: TDBComboBox
    Left = 16
    Top = 393
    Width = 128
    Height = 21
    Style = csDropDownList
    DataField = 'JOG_TITULAR'
    DataSource = DsJogador
    Items.Strings = (
      'S'
      'N')
    TabOrder = 6
  end
  object DsClube: TDataSource
    DataSet = DmDados.QryClube
    Left = 480
    Top = 8
  end
  object DsTatica: TDataSource
    DataSet = DmDados.QryTatica
    Left = 544
    Top = 8
  end
  object DsTecnico: TDataSource
    DataSet = DmDados.QryTecnico
    Left = 600
    Top = 8
  end
  object DsPais: TDataSource
    DataSet = DmDados.QryPais
    Left = 656
    Top = 8
  end
  object DsJogador: TDataSource
    DataSet = DmDados.QryJogador
    Left = 704
    Top = 8
  end
end
