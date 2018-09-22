object FrmVeiculoMultas: TFrmVeiculoMultas
  Left = 0
  Top = 0
  Caption = 'Veiculo e Multas'
  ClientHeight = 512
  ClientWidth = 765
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
    Width = 765
    Height = 41
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 763
      Height = 39
      DataSource = DsVeiculo
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 765
    Height = 240
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 29
      Height = 13
      Caption = 'Placa:'
    end
    object Label3: TLabel
      Left = 160
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Marca:'
    end
    object Label4: TLabel
      Left = 345
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Modelo:'
    end
    object Label5: TLabel
      Left = 544
      Top = 64
      Width = 23
      Height = 13
      Caption = 'Ano:'
    end
    object Label6: TLabel
      Left = 16
      Top = 113
      Width = 60
      Height = 13
      Caption = 'Proprietario:'
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 160
      Width = 763
      Height = 79
      Align = alBottom
      DataSource = DsVeiculo
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'VEI_CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEI_PLACA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEI_MARCA'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEI_MODELO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEI_ANO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRP_CODIGO'
          Width = 64
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 28
      Width = 121
      Height = 21
      DataField = 'VEI_CODIGO'
      DataSource = DsVeiculo
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 83
      Width = 121
      Height = 21
      DataField = 'VEI_PLACA'
      DataSource = DsVeiculo
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 133
      Width = 729
      Height = 21
      DataField = 'PRP_CODIGO'
      DataSource = DsVeiculo
      KeyField = 'PRP_CODIGO'
      ListField = 'PRP_NOME'
      ListSource = DsProprietario
      TabOrder = 6
    end
    object DBEdit3: TDBEdit
      Left = 160
      Top = 83
      Width = 155
      Height = 21
      DataField = 'VEI_MARCA'
      DataSource = DsVeiculo
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 345
      Top = 80
      Width = 168
      Height = 21
      DataField = 'VEI_MODELO'
      DataSource = DsVeiculo
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 544
      Top = 83
      Width = 201
      Height = 21
      DataField = 'VEI_ANO'
      DataSource = DsVeiculo
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 281
    Width = 765
    Height = 248
    Align = alTop
    TabOrder = 2
    object Label7: TLabel
      Left = 20
      Top = 37
      Width = 26
      Height = 13
      Caption = 'Item:'
    end
    object Label8: TLabel
      Left = 162
      Top = 37
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label9: TLabel
      Left = 306
      Top = 37
      Width = 27
      Height = 13
      Caption = 'Hora:'
    end
    object Label10: TLabel
      Left = 450
      Top = 37
      Width = 44
      Height = 13
      Caption = 'R$ Valor:'
    end
    object Label11: TLabel
      Left = 20
      Top = 76
      Width = 28
      Height = 13
      Caption = 'Local:'
    end
    object Label12: TLabel
      Left = 20
      Top = 117
      Width = 49
      Height = 13
      Caption = 'Condutor:'
    end
    object DBNavigator2: TDBNavigator
      Left = 16
      Top = 2
      Width = 270
      Height = 33
      DataSource = DmConexao.DsMestreVeiculo
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 18
      Top = 50
      Width = 121
      Height = 21
      DataField = 'MLT_ITEM'
      DataSource = DsMulta
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 162
      Top = 50
      Width = 121
      Height = 21
      DataField = 'MLT_DATA'
      DataSource = DsMulta
      MaxLength = 10
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 306
      Top = 50
      Width = 121
      Height = 21
      DataField = 'MLT_HORA'
      DataSource = DsMulta
      MaxLength = 5
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 450
      Top = 50
      Width = 267
      Height = 21
      DataField = 'MLT_VALOR'
      DataSource = DsMulta
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 18
      Top = 90
      Width = 699
      Height = 21
      DataField = 'MLT_LOCAL'
      DataSource = DsMulta
      TabOrder = 5
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 160
      Width = 763
      Height = 87
      Align = alBottom
      DataSource = DsMulta
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'VEI_CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MLT_ITEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MLT_DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MLT_HORA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MLT_VALOR'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MLT_LOCAL'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MLT_COND_CODIGO'
          Width = 64
          Visible = True
        end>
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 18
      Top = 133
      Width = 699
      Height = 21
      DataField = 'MLT_COND_CODIGO'
      DataSource = DsMulta
      KeyField = 'COND_CODIGO'
      ListField = 'COND_NOME'
      ListSource = DsCondutor
      TabOrder = 7
    end
  end
  object DsVeiculo: TDataSource
    DataSet = DmConexao.QryVeiculo
    Left = 289
    Top = 49
  end
  object DsMulta: TDataSource
    DataSet = DmConexao.QryMultas
    Left = 353
    Top = 49
  end
  object DsProprietario: TDataSource
    DataSet = DmConexao.QryProprietario
    Left = 417
    Top = 49
  end
  object DsCondutor: TDataSource
    DataSet = DmConexao.QryCondutor
    Left = 488
    Top = 48
  end
end
