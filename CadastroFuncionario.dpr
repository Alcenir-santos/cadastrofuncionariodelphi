program CadastroFuncionario;

uses
  Vcl.Forms,
  Pincipal in 'Views\Pincipal.pas' {Form1},
  perfil in 'Views\perfil.pas' {frmPerfil},
  cadastro in 'Views\cadastro.pas' {frmCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.Run;
end.
