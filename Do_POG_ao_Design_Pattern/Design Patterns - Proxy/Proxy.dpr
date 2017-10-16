program Proxy;

uses
  Vcl.Forms,
  Proxy.View.Principal in 'Proxy.View.Principal.pas' {Form2},
  Proxy.Model.Interfaces in 'Proxy.Model.Interfaces.pas',
  Proxy.Model.Produto in 'Proxy.Model.Produto.pas',
  Proxy.Model.Produto.Proxy in 'Proxy.Model.Produto.Proxy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
