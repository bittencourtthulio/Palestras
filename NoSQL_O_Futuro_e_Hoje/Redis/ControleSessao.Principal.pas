unit ControleSessao.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls,
  Redis.Commons, // Interfaces and types
  Redis.Client, // The client itself
  Redis.NetLib.INDY, // The tcp library used
  Redis.Values, FMX.ScrollBox, FMX.Memo, FMX.Edit; // nullable types for redis commands;

type
  TForm1 = class(TForm)
    btnRenova: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    Edit1: TEdit;
    ToolBar1: TToolBar;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnRenovaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    lRedis: IRedisClient;
    lValue: TRedisString;
    Chave : String;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnRenovaClick(Sender: TObject);
begin
  lRedis.&EXPIRE(Chave, 5);
  Memo1.Lines.Add('Chave renovada por mais 5 sec');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  lRedis.&SET(Chave, Edit1.Text, 5);
  Memo1.Lines.Add('O Usuário ' + Edit1.Text + ' está logado com a chave: ' + Chave);
  Timer1.Enabled := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Chave := TGUID.NewGuid.ToString;
  lRedis := TRedisClient.Create('127.0.0.1', 6379);
  lRedis.Connect;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if lRedis.EXISTS(CHAVE) then
    Memo1.Lines.Add('O Usuário está logado')
  else
  begin
    Memo1.Lines.Add('O Usuário não está logado');
    Timer1.Enabled := false;
  end;

end;

end.
