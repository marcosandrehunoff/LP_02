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
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 88
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 64
    Top = 152
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    FileName = 
      'E:\Quarto Semestre\Linguagem de Programa'#231#227'o II\LP_02\aula_07 ( F' +
      'ireDAC)\Logs\log.txt'
    FileAppend = True
    FileColumns = [tiRefNo, tiTime, tiThreadID, tiClassName, tiObjID, tiMsgText]
    ShowTraces = False
    Tracing = True
    Left = 64
    Top = 232
  end
end
