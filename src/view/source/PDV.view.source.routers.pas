unit PDV.view.source.routers;

interface

uses
  Router4D,
  PDV.view.pages.app, PDV.view.pages.main, PDV.view.pages.teste;

type
  TRouters = class
    private
    public
      constructor Create;
      destructor Destroy; override;
  end;
var
  Routers : TRouters;

implementation


{ TRouter }

constructor TRouters.Create;
begin
  TRouter4D
    .Switch
      .Router('App',TpageApp)
      .Router('Main',TpageMain)
      .Router('Teste',TTeste);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization
  Routers := TRouters.Create;

finalization
  Routers.Free;

end.
