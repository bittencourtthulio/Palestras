unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  iArquivo = interface
    ['{3E3F5EBD-58A7-4F2E-93B5-2A7CDB6B447F}']
    procedure GerarArquivo;
  end;


  TArquivoTXT = class(TInterfacedObject, iArquivo)
    procedure GerarArquivo;
  end;

  TArquivoWord = class(TArquivoTXT)
    procedure GerarArquivo;
  end;

  TArquivoPDF = class(TArquivoTXT)
    procedure GerarArquivo;
  end;

  TArquivoXML = class(TArquivoTXT)
    procedure GerarArquivo;
  end;


  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TArquivoWord }

procedure TArquivoWord.GerarArquivo;
begin
  //gerando arquivov
end;

{ TArquivoPDF }

procedure TArquivoPDF.GerarArquivo;
begin

end;

{ TArquivoXML }

procedure TArquivoXML.GerarArquivo;
begin

end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Arquivo : iArquivo;
begin
  Arquivo := TArquivoWord.Create;
  Arquivo.GerarArquivo;
end;

{ TArquivoTXT }

procedure TArquivoTXT.GerarArquivo;
begin

end;

end.
