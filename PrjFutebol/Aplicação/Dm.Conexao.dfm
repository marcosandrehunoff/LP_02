object DmConexao: TDmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 325
  Width = 156
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=E:\Quarto Semestre\Linguagem de Programa'#231#227'o II\LP_02\Pr' +
        'jFutebol\Dados\FUTEBOL.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'MonitorBy=FlatFile'
      'DriverID=FB')
    LoginPrompt = False
    Left = 64
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 104
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 64
    Top = 168
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    FileName = 
      'E:\Quarto Semestre\Linguagem de Programa'#231#227'o II\LP_02\aula_07 ( F' +
      'ireDAC)\Logs'
    FileAppend = True
    FileColumns = [tiRefNo, tiTime, tiThreadID, tiClassName, tiObjID, tiMsgText]
    Tracing = True
    Left = 64
    Top = 248
  end
end
