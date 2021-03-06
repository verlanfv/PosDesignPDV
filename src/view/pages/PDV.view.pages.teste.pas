unit PDV.view.pages.teste;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, Router4D.Interfaces,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls,
  PDV.view.components.navbar, PDV.view.components.itembutton;

type
  TTeste = class(TForm, iRouter4DComponent)
    LayoutContainer: TLayout;
    Label1: TLabel;
  private
    { Private declarations }
    procedure CarregaItens;
  public
    { Public declarations }
    function Render : TFmxObject;
    procedure UnRender;
  end;

var
  Teste: TTeste;

implementation

{$R *.fmx}

{ TTeste }

procedure TTeste.CarregaItens;

begin

end;

function TTeste.Render: TFmxObject;
begin
  Result := LayoutContainer;
  //LayoutNavBar.AddObject(TComponentsNavBar.Create(Self).Build);

end;

procedure TTeste.UnRender;
begin

end;

end.
