unit State.Model.Item.Vendido;

interface

uses State.Model.Interfaces;

Type
  TModelItemVendido = class(TInterfacedObject, iItemOperacaoes)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iItemOperacaoes;
      function Vender : iItemOperacaoes;
      function Cancelar : iItemOperacaoes;
      function Desconto : iItemOperacaoes;
      function Devolver : iItemOperacaoes;
  end;

implementation

uses
  System.SysUtils;

{ TModelItemVendido }

function TModelItemVendido.Cancelar: iItemOperacaoes;
begin
  Result := Self;
end;

constructor TModelItemVendido.Create;
begin

end;

function TModelItemVendido.Desconto: iItemOperacaoes;
begin
  Result := Self;
end;

destructor TModelItemVendido.Destroy;
begin

  inherited;
end;

function TModelItemVendido.Devolver: iItemOperacaoes;
begin
  Result := Self;
end;

class function TModelItemVendido.New : iItemOperacaoes;
begin
  Result := Self.Create;
end;

function TModelItemVendido.Vender: iItemOperacaoes;
begin
  Result := Self;
  raise Exception.Create('Este item já foi vendido');
end;

end.

