object FrmEstado: TFrmEstado
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estado'
  ClientHeight = 335
  ClientWidth = 677
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
    Width = 677
    Height = 57
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 456
      Height = 55
      DataSource = DsEstado
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 677
    Height = 120
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 144
      Top = 6
      Width = 33
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 543
      Top = 6
      Width = 28
      Height = 16
      Caption = 'Sigla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 66
      Width = 23
      Height = 16
      Caption = 'Pa'#237's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 21
      DataField = 'EST_CODIGO'
      DataSource = DsEstado
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 24
      Width = 384
      Height = 21
      DataField = 'EST_NOME'
      DataSource = DsEstado
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 543
      Top = 24
      Width = 74
      Height = 21
      DataField = 'EST_SIGLA'
      DataSource = DsEstado
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 177
    Width = 677
    Height = 160
    Align = alTop
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 675
      Height = 160
      Align = alTop
      DataSource = DsEstado
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 145
    Width = 609
    Height = 21
    DataField = 'PAI_NOME'
    DataSource = DsEstado
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = dsPais
    TabOrder = 3
  end
  object DsEstado: TDataSource
    DataSet = DmCadastroLocalizacao.CdsEstado
    Left = 480
    Top = 8
  end
  object dsPais: TDataSource
    DataSet = DmCadastroLocalizacao.CdsPais
    Left = 544
    Top = 8
  end
end
