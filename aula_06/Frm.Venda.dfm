object FrmVenda: TFrmVenda
  Left = 0
  Top = 0
  Caption = 'Realiza'#231#227'o de Venda'
  ClientHeight = 499
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 49
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 400
      Height = 47
      DataSource = DsVenda
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 767
    Height = 160
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 144
      Top = 6
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 280
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 51
      Width = 765
      Height = 108
      Align = alBottom
      DataSource = DsVenda
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'VEN_CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEN_DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_NOME'
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 25
      Width = 130
      Height = 21
      DataField = 'VEN_CODIGO'
      DataSource = DsVenda
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 24
      Width = 130
      Height = 21
      DataField = 'VEN_DATA'
      DataSource = DsVenda
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 280
      Top = 24
      Width = 465
      Height = 21
      DataField = 'CLI_NOME'
      DataSource = DsVenda
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 215
    Width = 767
    Height = 284
    Align = alBottom
    TabOrder = 2
    object Label4: TLabel
      Left = 25
      Top = 64
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label5: TLabel
      Left = 167
      Top = 64
      Width = 87
      Height = 13
      Caption = 'Produto Descri'#231#227'o'
    end
    object Label6: TLabel
      Left = 25
      Top = 120
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label7: TLabel
      Left = 167
      Top = 120
      Width = 53
      Height = 13
      Caption = 'R$ Unit'#225'rio'
    end
    object Label8: TLabel
      Left = 309
      Top = 120
      Width = 40
      Height = 13
      Caption = 'R$ Total'
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 180
      Width = 765
      Height = 103
      Align = alBottom
      DataSource = DsItem
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBNavigator2: TDBNavigator
      Left = 25
      Top = 22
      Width = 270
      Height = 25
      DataSource = DsItem
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 25
      Top = 83
      Width = 136
      Height = 21
      DataField = 'VEI_CODIGO'
      DataSource = DsItem
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 167
      Top = 83
      Width = 578
      Height = 21
      DataField = 'PRO_DESCRICAO'
      DataSource = DsItem
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 25
      Top = 139
      Width = 136
      Height = 21
      DataField = 'VEI_QUANTIDADE'
      DataSource = DsItem
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 167
      Top = 139
      Width = 136
      Height = 21
      DataField = 'VEI_UNITARIO'
      DataSource = DsItem
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 309
      Top = 139
      Width = 136
      Height = 21
      DataField = 'VEI_TOTAL'
      DataSource = DsItem
      TabOrder = 6
    end
  end
  object DsItem: TDataSource
    DataSet = DmMovimentacao.CdsItem
    Left = 448
    Top = 8
  end
  object DsVenda: TDataSource
    DataSet = DmMovimentacao.CdsVenda
    Left = 528
    Top = 8
  end
  object DsCliente: TDataSource
    DataSet = DmCadastroGeral.CdsCliente
    Left = 600
    Top = 8
  end
  object DsProduto: TDataSource
    DataSet = DmCadastroGeral.CdsProduto
    Left = 680
    Top = 8
  end
end
