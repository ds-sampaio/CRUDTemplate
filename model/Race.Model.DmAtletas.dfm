object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 119
  Width = 253
  object qryAtletas: TFDQuery
    Connection = ProvidersConnection.FDConnection
    SQL.Strings = (
      'select * from atletas')
    Left = 56
    Top = 24
    object qryAtletasid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryAtletasnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 8190
    end
    object qryAtletascategoria: TWideStringField
      FieldName = 'categoria'
      Origin = 'categoria'
      Size = 8190
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 152
    Top = 24
  end
end
