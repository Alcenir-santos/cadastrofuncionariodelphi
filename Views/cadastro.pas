unit cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;

type
  TfrmCadastro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtNome: TEdit;
    txtJob: TEdit;
    Button1: TButton;
    clientCreate: TRESTClient;
    requestCreate: TRESTRequest;
    responseCreate: TRESTResponse;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

procedure TfrmCadastro.Button1Click(Sender: TObject);
var
  data,obj : TJSONObject;
begin
if (txtNome.Text <> EmptyStr) and (txtJob.Text <> EmptyStr) then
begin
  requestCreate.Params.ParameterByName('name').Value := txtNome.Text;
  requestCreate.Params.ParameterByName('job').Value := txtJob.Text;

  requestCreate.Execute;
  obj := TJSONObject.ParseJSONValue(responseCreate.Content) as TJSONObject;
  frmCadastro.Close;
  ShowMessage('Funcionario cadastrado - ' + obj.Values['createdAt'].Value);
end
else
  ShowMessage('Existem Campos em branco!!');

end;

end.
