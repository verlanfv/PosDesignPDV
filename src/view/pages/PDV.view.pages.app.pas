unit PDV.view.pages.app;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  PDV.view.components.navbar, Router4D, Router4D.Interfaces, FMX.Objects,
  PDV.view.pages.main;

type
  TPageApp = class(TForm,iRouter4DComponent)
    LayoutContainer: TLayout;
    LayoutNavBar: TLayout;
    LayoutBody: TLayout;
    Rectangle1: TRectangle;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TFmxObject;
    procedure UnRender;
  end;

var
  PageApp: TPageApp;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TPageApp.FormCreate(Sender: TObject);
begin
  //LayoutNavBar.AddObject(TComponentsNavBar.Create(Self).Build);
end;

function TPageApp.Render: TFmxObject;
begin
  Result := LayoutContainer;
  LayoutNavBar.AddObject(TComponentsNavBar.Create(Self).Build);
  TRouter4D.Render<TPageMain>.SetElement(LayoutBody, LayoutBody);
end;

procedure TPageApp.UnRender;
begin

end;

end.
