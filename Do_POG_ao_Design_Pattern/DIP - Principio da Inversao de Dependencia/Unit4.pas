unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type

  iDispositivo = interface
    ['{07B0D206-0BC5-4DFA-9EC6-3666EE56EDDE}']
    procedure Ligar;
    procedure Desligar;
  end;

  TLampada = class(TInterfacedObject, iDispositivo)
    procedure Ligar;
    procedure Desligar;
  end;

  TVentilador = class(TInterfacedObject, iDispositivo)
    procedure Ligar;
    procedure Desligar;
  end;

  TBotao = class
    FDispositivo : iDispositivo;
    constructor Create(Dispositivo : iDispositivo);
    procedure Acionar;
  end;

  TForm4 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

{ TBotao }

procedure TBotao.Acionar;
begin
  FDispositivo.Ligar;
end;

constructor TBotao.Create(Dispositivo : iDispositivo);
begin
  FDispositivo := Dispositivo;
end;

{ TLampada }

procedure TLampada.Desligar;
begin

end;

procedure TLampada.Ligar;
begin
   ShowMessage('Lampada Ligada');
end;

{ TVentilador }

procedure TVentilador.Desligar;
begin

end;

procedure TVentilador.Ligar;
begin
  ShowMessage('Ventilador Ligado');
end;

end.
