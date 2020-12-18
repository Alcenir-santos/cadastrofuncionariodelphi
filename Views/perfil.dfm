object frmPerfil: TfrmPerfil
  Left = 0
  Top = 0
  Caption = 'frmPerfil'
  ClientHeight = 151
  ClientWidth = 238
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 7
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Sobrenome'
  end
  object Label3: TLabel
    Left = 8
    Top = 93
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object Edit1: TEdit
    Left = 8
    Top = 26
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 67
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 8
    Top = 112
    Width = 225
    Height = 21
    TabOrder = 2
  end
  object RESTClientPerfil: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://reqres.in/api/users/3'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 16
    Top = 112
  end
  object restPerfil: TRESTRequest
    Client = RESTClientPerfil
    Params = <>
    Response = responsePerfil
    SynchronizedEvents = False
    Left = 64
    Top = 48
  end
  object responsePerfil: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'data'
    Left = 176
    Top = 40
  end
  object RESTResponseDataSetAdapterPerfil: TRESTResponseDataSetAdapter
    Dataset = FDMemTablePerfil
    FieldDefs = <>
    Response = responsePerfil
    Left = 80
    Top = 96
  end
  object FDMemTablePerfil: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 176
    Top = 112
  end
end
