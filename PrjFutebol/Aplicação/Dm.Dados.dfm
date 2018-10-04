object DmDados: TDmDados
  OldCreateOrder = False
  Height = 355
  Width = 211
  object DsMestreDetalhe: TDataSource
    DataSet = QryClube
    Left = 56
    Top = 41
  end
  object QryPais: TFDQuery
    Connection = DmConexao.FDConexao
    SQL.Strings = (
      'select pai_codigo, pai_nome from pais')
    Left = 144
    Top = 40
    object QryPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
  end
  object QryClube: TFDQuery
    Connection = DmConexao.FDConexao
    SQL.Strings = (
      
        'select clb_codigo, tat_codigo, tec_codigo, pai_codigo, clb_nome,' +
        ' clb_estadio, clb_dtfundacao from clube ')
    Left = 144
    Top = 96
    object QryClubeCLB_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO CLUBE'
      FieldName = 'CLB_CODIGO'
      Origin = 'CLB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryClubeTAT_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO TATICA'
      FieldName = 'TAT_CODIGO'
      Origin = 'TAT_CODIGO'
      Required = True
    end
    object QryClubeTEC_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO TECNICO'
      FieldName = 'TEC_CODIGO'
      Origin = 'TEC_CODIGO'
      Required = True
    end
    object QryClubePAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO PAIS'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      Required = True
    end
    object QryClubeCLB_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CLB_NOME'
      Origin = 'CLB_NOME'
      Required = True
      Size = 60
    end
    object QryClubeCLB_ESTADIO: TStringField
      DisplayLabel = 'ESTADIO'
      FieldName = 'CLB_ESTADIO'
      Origin = 'CLB_ESTADIO'
      Size = 60
    end
    object QryClubeCLB_DTFUNDACAO: TDateField
      DisplayLabel = 'DATA FUNDACAO'
      FieldName = 'CLB_DTFUNDACAO'
      Origin = 'CLB_DTFUNDACAO'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object QryTatica: TFDQuery
    Connection = DmConexao.FDConexao
    SQL.Strings = (
      'select tat_codigo, tat_descricao, tat_esquema from tatica')
    Left = 144
    Top = 152
    object QryTaticaTAT_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'TAT_CODIGO'
      Origin = 'TAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTaticaTAT_DESCRICAO: TStringField
      DisplayLabel = 'DESCRICAO'
      FieldName = 'TAT_DESCRICAO'
      Origin = 'TAT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QryTaticaTAT_ESQUEMA: TStringField
      DisplayLabel = 'ESQUEMA'
      FieldName = 'TAT_ESQUEMA'
      Origin = 'TAT_ESQUEMA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
  end
  object QryJogador: TFDQuery
    MasterSource = DsMestreDetalhe
    MasterFields = 'CLB_CODIGO'
    Connection = DmConexao.FDConexao
    SQL.Strings = (
      
        'select jog_numero, pai_codigo, clb_codigo, jog_nome, jog_posicao' +
        ', jog_idade, jog_lado, jog_titular, jog_caracteristica from joga' +
        'dor where(jogador.clb_codigo = :clb_codigo)')
    Left = 144
    Top = 224
    ParamData = <
      item
        Name = 'CLB_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QryJogadorJOG_NUMERO: TIntegerField
      DisplayLabel = 'NUMERO JOGADOR'
      FieldName = 'JOG_NUMERO'
      Origin = 'JOG_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryJogadorPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO PAIS'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryJogadorCLB_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO CLUBE'
      FieldName = 'CLB_CODIGO'
      Origin = 'CLB_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryJogadorJOG_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'JOG_NOME'
      Origin = 'JOG_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QryJogadorJOG_POSICAO: TStringField
      DisplayLabel = 'POSICAO'
      FieldName = 'JOG_POSICAO'
      Origin = 'JOG_POSICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QryJogadorJOG_IDADE: TIntegerField
      DisplayLabel = 'IDADE'
      FieldName = 'JOG_IDADE'
      Origin = 'JOG_IDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryJogadorJOG_LADO: TStringField
      DisplayLabel = 'LADO'
      FieldName = 'JOG_LADO'
      Origin = 'JOG_LADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryJogadorJOG_TITULAR: TStringField
      DisplayLabel = 'TITULAR'
      FieldName = 'JOG_TITULAR'
      Origin = 'JOG_TITULAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryJogadorJOG_CARACTERISTICA: TStringField
      DisplayLabel = 'CARACTERISTICA'
      FieldName = 'JOG_CARACTERISTICA'
      Origin = 'JOG_CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object QryTecnico: TFDQuery
    Connection = DmConexao.FDConexao
    SQL.Strings = (
      'select tec_codigo, pai_codigo, tec_nome from tecnico')
    Left = 144
    Top = 288
    object QryTecnicoTEC_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'TEC_CODIGO'
      Origin = 'TEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTecnicoPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO PAIS'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryTecnicoTEC_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'TEC_NOME'
      Origin = 'TEC_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
  end
end
