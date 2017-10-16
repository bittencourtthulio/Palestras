unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Venda;
    function AdicionarProduto(Codigo : integer) : boolean;
    function CalcularTotal : Currency;
    function EnviarEmail : boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.AdicionarProduto(Codigo: integer): boolean;
begin

end;

function TForm1.CalcularTotal: Currency;
begin

end;

function TForm1.EnviarEmail: boolean;
begin

end;


procedure TForm1.Venda;
begin
  AdicionarProduto(StrToInt(Edit1.Text));
  CalcularTotal;
  EnviarEmail;
end;

end.
