object ProvidersConnection: TProvidersConnection
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=race')
    LoginPrompt = False
    Left = 96
    Top = 24
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'E:\projetos-delphi\Servidor'
    Left = 96
    Top = 80
  end
end
