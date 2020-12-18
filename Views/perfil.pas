unit perfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
IdHTTP, Jpeg, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  REST.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,System.JSON;

type
  TfrmPerfil = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RESTClientPerfil: TRESTClient;
    restPerfil: TRESTRequest;
    responsePerfil: TRESTResponse;
    RESTResponseDataSetAdapterPerfil: TRESTResponseDataSetAdapter;
    FDMemTablePerfil: TFDMemTable;
  private
    { Private declarations }

  public
    { Public declarations }
    constructor Create(AOwner : TComponent; id : String);
  end;

var
  frmPerfil: TfrmPerfil;

implementation
Constructor TfrmPerfil.Create(AOwner : TComponent; id : String);
var
  data,obj : TJSONObject;

begin
    inherited Create(AOwner);

    RESTClientPerfil.BaseURL := 'https://reqres.in/api/users/'+id;
    restPerfil.Execute;
    obj := TJSONObject.ParseJSONValue(responsePerfil.Content) as TJSONObject;

    data := obj.Values['data'] as TJSONObject;
    Edit1.Text := data.Values['first_name'].Value;
    Edit2.Text := data.Values['last_name'].Value;
    Edit3.Text := data.Values['email'].Value;




end;
{$R *.dfm}

end.
