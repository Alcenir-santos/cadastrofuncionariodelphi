object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 303
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnCadastrar: TButton
    Left = 8
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Cadastrar Funconario'
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object codigoBusca: TEdit
    Left = 336
    Top = 8
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 39
    Width = 554
    Height = 250
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'first_name'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 295
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 487
    Top = 8
    Width = 78
    Height = 25
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://reqres.in/api/users'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 240
    Top = 256
  end
  object Requisicao: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 296
    Top = 256
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'data'
    Left = 360
    Top = 256
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 432
    Top = 256
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'email'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'first_name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'last_name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'avatar'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 512
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 184
    Top = 256
  end
end
