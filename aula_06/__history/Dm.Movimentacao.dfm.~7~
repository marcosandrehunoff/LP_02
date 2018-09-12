object DmMovimentacao: TDmMovimentacao
  OldCreateOrder = False
  Height = 243
  Width = 262
  object SdsVenda: TSQLDataSet
    CommandText = 'select VEN_CLI_CODIGO, VEN_CODIGO, VEN_DATA, VEN_OBS from VENDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 32
    Top = 24
    object SdsVendaVEN_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO VENDA'
      FieldName = 'VEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsVendaVEN_DATA: TDateField
      DisplayLabel = 'DATA VENDA'
      FieldName = 'VEN_DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsVendaVEN_OBS: TStringField
      DisplayLabel = 'OBSERVA'#199#195'O'
      FieldName = 'VEN_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object SdsVendaVEN_CLI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO DO CLIENTE'
      FieldName = 'VEN_CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspVenda: TDataSetProvider
    DataSet = SdsVenda
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 96
  end
  object CdsVenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVenda'
    AfterPost = CdsVendaAfterPost
    AfterDelete = CdsVendaAfterDelete
    Left = 32
    Top = 168
    object CdsVendaVEN_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO VENDA'
      FieldName = 'VEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsVendaVEN_DATA: TDateField
      DisplayLabel = 'DATA VENDA'
      FieldName = 'VEN_DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsVendaVEN_OBS: TStringField
      DisplayLabel = 'OBSERVA'#199#195'O'
      FieldName = 'VEN_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object CdsVendaVEN_CLI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO DO CLIENTE'
      FieldName = 'VEN_CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsVendaCLI_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_NOME'
      LookupDataSet = DmCadastroGeral.SdsCliente
      LookupKeyFields = 'CLI_CODIGO'
      LookupResultField = 'CLI_NOME'
      KeyFields = 'VEN_CLI_CODIGO'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object CdsVendaSdsItem: TDataSetField
      FieldName = 'SdsItem'
    end
  end
  object DsMestre: TDataSource
    DataSet = SdsVenda
    Left = 120
    Top = 96
  end
  object SdsItem: TSQLDataSet
    CommandText = 
      'SELECT VEI_CODIGO, VEI_QUANTIDADE, VEI_UNITARIO, '#13#10'VEI_TOTAL, VE' +
      'I_VEN_CODIGO,VEI_PRO_CODIGO FROM '#13#10'VENDA_ITEM WHERE VENDA_ITEM.V' +
      'EI_VEN_CODIGO ='#13#10' :VEN_CODIGO'
    DataSource = DsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'VEN_CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DmDataBase.Conexao
    Left = 200
    Top = 32
    object SdsItemVEI_CODIGO: TIntegerField
      FieldName = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsItemVEI_QUANTIDADE: TFMTBCDField
      FieldName = 'VEI_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 4
    end
    object SdsItemVEI_UNITARIO: TFMTBCDField
      FieldName = 'VEI_UNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object SdsItemVEI_TOTAL: TFMTBCDField
      FieldName = 'VEI_TOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object SdsItemVEI_VEN_CODIGO: TIntegerField
      FieldName = 'VEI_VEN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsItemVEI_PRO_CODIGO: TIntegerField
      FieldName = 'VEI_PRO_CODIGO'
      Required = True
    end
  end
  object CdsItem: TClientDataSet
    Aggregates = <>
    DataSetField = CdsVendaSdsItem
    Params = <>
    AfterInsert = CdsItemAfterInsert
    Left = 192
    Top = 168
    object CdsItemVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Required = True
    end
    object CdsItemVEN_DATA: TDateField
      FieldName = 'VEN_DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsItemVEN_OBS: TStringField
      FieldName = 'VEN_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object CdsItemVEN_CLI_CODIGO: TIntegerField
      FieldName = 'VEN_CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Required = True
    end
    object CdsItemSdsItem: TDataSetField
      FieldName = 'SdsItem'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemPRO_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NOME'
      LookupDataSet = DmCadastroGeral.SdsProduto
      LookupKeyFields = 'PRO_CODIGO'
      LookupResultField = 'PRO_DESCRICAO'
      KeyFields = 'SdsItem'
      Size = 50
      Lookup = True
    end
    object CdsItemVEI_CODIGO: TIntegerField
      FieldName = 'VEI_CODIGO'
      Required = True
    end
    object CdsItemVEI_QUANTIDADE: TFMTBCDField
      FieldName = 'VEI_QUANTIDADE'
      Required = True
      Precision = 18
      Size = 4
    end
    object CdsItemVEI_UNITARIO: TFMTBCDField
      FieldName = 'VEI_UNITARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object CdsItemVEI_TOTAL: TFMTBCDField
      FieldName = 'VEI_TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object CdsItemVEI_VEN_CODIGO: TIntegerField
      FieldName = 'VEI_VEN_CODIGO'
      Required = True
    end
    object CdsItemVEI_PRO_CODIGO: TIntegerField
      FieldName = 'VEI_PRO_CODIGO'
      Required = True
    end
  end
end
