object DmCadastroGeral: TDmCadastroGeral
  OldCreateOrder = False
  Height = 241
  Width = 209
  object SdsProduto: TSQLDataSet
    CommandText = 'select PRO_CODIGO, PRO_DESCRICAO, PRO_PRECO from PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 40
    Top = 24
    object SdsProdutoPRO_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO PRODUTO'
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsProdutoPRO_DESCRICAO: TStringField
      DisplayLabel = 'DESCRICAO'
      FieldName = 'PRO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsProdutoPRO_PRECO: TFMTBCDField
      DisplayLabel = 'PRECO'
      FieldName = 'PRO_PRECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object DpsProduto: TDataSetProvider
    DataSet = SdsProduto
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 88
  end
  object CdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsProduto'
    AfterPost = CdsProdutoAfterPost
    AfterDelete = CdsProdutoAfterDelete
    Left = 40
    Top = 152
    object CdsProdutoPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsProdutoPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsProdutoPRO_PRECO: TFMTBCDField
      FieldName = 'PRO_PRECO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object SdsCliente: TSQLDataSet
    CommandText = 
      'select CLI_BAIRRO, CLI_CEP, CLI_CID_CODIGO, CLI_CODIGO, CLI_CPFC' +
      'NPJ, CLI_EMAIL, CLI_ENDERECO, CLI_NOME, CLI_TELEFONE from CLIENT' +
      'E'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 128
    Top = 24
    object SdsClienteCLI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsClienteCLI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CLI_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SdsClienteCLI_TELEFONE: TStringField
      DisplayLabel = 'TELEFONE'
      FieldName = 'CLI_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SdsClienteCLI_ENDERECO: TStringField
      DisplayLabel = 'ENDERECO'
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SdsClienteCLI_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SdsClienteCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SdsClienteCLI_CPFCNPJ: TStringField
      DisplayLabel = 'CPF OU CNPJ'
      FieldName = 'CLI_CPFCNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SdsClienteCLI_EMAIL: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SdsClienteCLI_CID_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO CIDADE'
      FieldName = 'CLI_CID_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DpsCliente: TDataSetProvider
    DataSet = SdsCliente
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 88
  end
  object CdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsCliente'
    AfterPost = CdsClienteAfterPost
    AfterDelete = CdsClienteAfterDelete
    Left = 128
    Top = 152
    object CdsClienteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsClienteCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsClienteCLI_TELEFONE: TStringField
      FieldName = 'CLI_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsClienteCLI_CID_CODIGO: TIntegerField
      FieldName = 'CLI_CID_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsClienteCID_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'CID_NAME'
      LookupDataSet = DmCadastroLocalizacao.CdsCidade
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'CLI_CID_CODIGO'
      Size = 50
      Lookup = True
    end
  end
end
