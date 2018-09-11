object DmCadastroLocalizacao: TDmCadastroLocalizacao
  OldCreateOrder = False
  Height = 255
  Width = 270
  object SdsPais: TSQLDataSet
    CommandText = 'select pai_codigo, pai_nome, Pai_sigla, pai_bacen from pais'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 48
    Top = 40
    object SdsPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsPaisPAI_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'PAI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SdsPaisPAI_BACEN: TIntegerField
      DisplayLabel = 'BACEN'
      FieldName = 'PAI_BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspPais: TDataSetProvider
    DataSet = SdsPais
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 96
  end
  object CdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPais'
    AfterPost = CdsPaisAfterPost
    AfterDelete = CdsPaisAfterDelete
    Left = 48
    Top = 168
    object CdsPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsPaisPAI_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'PAI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsPaisPAI_BACEN: TIntegerField
      DisplayLabel = 'BACEN'
      FieldName = 'PAI_BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object SdsEstado: TSQLDataSet
    CommandText = 
      'SELECT EST_CODIGO, EST_NOME, EST_PAI_CODIGO, EST_SIGLA FROM ESTA' +
      'DO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 120
    Top = 40
    object SdsEstadoEST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'EST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsEstadoEST_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'EST_NOME'
      Required = True
      Size = 60
    end
    object SdsEstadoEST_PAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO DO PA'#205'S'
      FieldName = 'EST_PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SdsEstadoEST_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'EST_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
  end
  object DspEstado: TDataSetProvider
    DataSet = SdsEstado
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 96
  end
  object CdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEstado'
    AfterPost = CdsEstadoAfterPost
    AfterDelete = CdsEstadoAfterDelete
    Left = 120
    Top = 168
    object CdsEstadoEST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'EST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEstadoEST_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'EST_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsEstadoEST_PAI_CODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO PA'#205'S'
      FieldName = 'EST_PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEstadoEST_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'EST_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object CdsEstadoPAI_NOME: TStringField
      DisplayLabel = 'NOME PA'#205'S'
      FieldKind = fkLookup
      FieldName = 'PAI_NOME'
      LookupDataSet = CdsPais
      LookupKeyFields = 'PAI_CODIGO'
      LookupResultField = 'PAI_NOME'
      KeyFields = 'EST_PAI_CODIGO'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
  object SdsCidade: TSQLDataSet
    CommandText = 
      'SELECT CID_CODIGO, CID_EST_CODIGO, CID_IBGE, CID_NOME FROM CIDAD' +
      'E'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 200
    Top = 40
    object SdsCidadeCID_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsCidadeCID_EST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO ESTADO'
      FieldName = 'CID_EST_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsCidadeCID_IBGE: TIntegerField
      DisplayLabel = 'IBGE'
      FieldName = 'CID_IBGE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsCidadeCID_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CID_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
  end
  object DspCidade: TDataSetProvider
    DataSet = SdsCidade
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 96
  end
  object CdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidade'
    AfterPost = CdsCidadeAfterPost
    BeforeDelete = CdsCidadeBeforeDelete
    Left = 200
    Top = 168
    object CdsCidadeCID_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCidadeCID_EST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO ESTADO'
      FieldName = 'CID_EST_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCidadeCID_IBGE: TIntegerField
      DisplayLabel = 'IBGE'
      FieldName = 'CID_IBGE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCidadeCID_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CID_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsCidadeEST_NOME: TStringField
      DisplayLabel = 'NOME ESTADO'
      FieldKind = fkLookup
      FieldName = 'EST_NOME'
      LookupDataSet = CdsEstado
      LookupKeyFields = 'EST_CODIGO'
      LookupResultField = 'EST_NOME'
      KeyFields = 'CID_EST_CODIGO'
      Size = 60
      Lookup = True
    end
  end
end
