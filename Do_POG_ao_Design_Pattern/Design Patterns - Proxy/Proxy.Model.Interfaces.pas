unit Proxy.Model.Interfaces;

interface

type

  iModelProduto = interface
    ['{B7EFCFDE-22B7-4300-A818-425033A597CA}']
    function ConsultaID(Value : Integer) : iModelProduto;
  end;

  iProxyProduto = interface
    ['{81EA7AC4-E912-48AA-8E26-8DEA34D05388}']
    function ConsultaId(Value : Integer) : iModelProduto;
  end;


implementation

end.
