object FrmProprietario: TFrmProprietario
  Left = 0
  Top = 0
  Caption = 'Proprietario'
  ClientHeight = 447
  ClientWidth = 776
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
    Width = 776
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 774
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 774
      Height = 63
      DataSource = DsProprietario
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 772
      ExplicitHeight = 56
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 776
    Height = 160
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 60
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 8
      Top = 61
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 8
      Top = 114
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 25
      Width = 121
      Height = 21
      DataField = 'PRP_CODIGO'
      DataSource = DsProprietario
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 80
      Width = 753
      Height = 21
      DataField = 'PRP_NOME'
      DataSource = DsProprietario
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 133
      Width = 753
      Height = 21
      DataField = 'PRP_ENDERECO'
      DataSource = DsProprietario
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 225
    Width = 776
    Height = 224
    Align = alTop
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 774
      Height = 222
      Align = alClient
      DataSource = DsProprietario
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DsProprietario: TDataSource
    DataSet = DmConexao.QryProprietario
    Left = 512
    Top = 80
  end
end
