program ControleSessao;

uses
  System.StartUpCopy,
  FMX.Forms,
  ControleSessao.Principal in 'ControleSessao.Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
