unit Proxy.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Proxy.Model.Interfaces,
  Proxy.Model.Produto.Proxy, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FProduto : iProxyProduto;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add('BUSCANDO O PRODUTO: ' + Edit1.Text + ' AGUARDE...');
  FProduto.ConsultaId(StrToInt(Edit1.Text));
  Memo1.Lines.Add('PRODUTO: ' + Edit1.Text + ' ENCONTRADO');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FProduto := TModelProdutoProxy.New;
end;

end.
