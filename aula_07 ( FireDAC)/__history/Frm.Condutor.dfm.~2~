object FrmCondutor: TFrmCondutor
  Left = 0
  Top = 0
  Caption = 'Cadastro de Condutores'
  ClientHeight = 305
  ClientWidth = 752
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
    Width = 752
    Height = 57
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 750
      Height = 55
      DataSource = DsCondutor
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 56
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 752
    Height = 104
    Align = alTop
    TabOrder = 1
    ExplicitTop = 62
    object Label1: TLabel
      Left = 16
      Top = 38
      Width = 39
      Height = 16
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 38
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
    object DBEdit1: TDBEdit
      Left = 16
      Top = 56
      Width = 121
      Height = 24
      DataField = 'COND_CODIGO'
      DataSource = DsCondutor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 160
      Top = 56
      Width = 577
      Height = 24
      DataField = 'COND_NOME'
      DataSource = DsCondutor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 161
    Width = 752
    Height = 144
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 167
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 750
      Height = 142
      Align = alClient
      DataSource = DsCondutor
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DsCondutor: TDataSource
    DataSet = DmConexao.QryCondutor
    Left = 368
    Top = 64
  end
end
