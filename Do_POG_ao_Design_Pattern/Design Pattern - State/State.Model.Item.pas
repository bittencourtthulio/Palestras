unit State.Model.Item;

interface

uses State.Model.Interfaces, State.Model.Item.Ativo, State.Model.Item.Vendido;

Type
  TModelItem = class(TInterfacedObject, iItem, iItemOperacaoes, iState<iItemOperacaoes>)
  private
    FState : iItemOperacaoes;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iItem;
    function Vender: iItemOperacaoes;
    function Cancelar: iItemOperacaoes;
    function Desconto: iItemOperacaoes;
    function Devolver: iItemOperacaoes;
    function SetState(Value : iItemOperacaoes) : iItemOperacaoes;
    function State : iState<iItemOperacaoes>;
    function Operacoes : iItemOperacaoes;
  end;

implementation

{ TModelItem }

function TModelItem.Cancelar: iItemOperacaoes;
begin
  FState.Cancelar;
  FState := TModelItemAtivo.New;
  Result := Self;
end;

constructor TModelItem.Create;
begin
  FState := TModelItemAtivo.New;
end;

function TModelItem.Desconto: iItemOperacaoes;
begin
  FState.Desconto;
  Result := Self;
end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

function TModelItem.Devolver: iItemOperacaoes;
begin
  FState.Devolver;
  FState := TModelItemAtivo.New;
  Result := Self;
end;

class function TModelItem.New: iItem;
begin
  Result := Self.Create;
end;

function TModelItem.Operacoes: iItemOperacaoes;
begin
  Result := Self;
end;

function TModelItem.SetState(Value: iItemOperacaoes): iItemOperacaoes;
begin
  Result := Self;
  FState := Value;
end;

function TModelItem.State: iState<iItemOperacaoes>;
begin
  Result := Self;
end;

function TModelItem.Vender: iItemOperacaoes;
begin
  FState.Vender;
  FState := TModelItemVendido.New;
  Result := Self;
end;

end.
