unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type

  iFutebol = interface
    ['{A0620959-FBD3-4FB8-87AC-11828B4E0F63}']
    procedure TreinarTime(Tatica : String);
    procedure OrganizarTatica;
    procedure Jogam;
  end;

  iJogador = interface
    ['{88A14966-D95D-4366-8C67-350BDC3C060F}']
    procedure Jogar;
  end;

  iComissaoTecnica = interface
    ['{7FACE194-BB30-42D8-B41C-D8D2637465CD}']
    procedure TreinarTime(Tatica : String);
  end;

  iTreinador = interface
    ['{7FD78CAD-B09B-4D75-A87E-5D92F508C212}']
    procedure OrganizarTatica;
  end;


  TComissaoTecnica = class(TInterfacedObject, iFutebol)
    procedure TreinarTime(Tatica : String);
    procedure OrganizarTatica;
    procedure Jogam;
  end;

  TTreinador = class(TInterfacedObject, iFutebol)
    procedure TreinarTime;
    procedure OrganizarTatica;
    procedure Jogam;
  end;

  TJogadores = class(TInterfacedObject, iFutebol)
    procedure TreinarTime;
    procedure OrganizarTatica;
    procedure Jogam;
  end;



  TForm3 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
