unit PDV.view.components.navbar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, PDV.view.source.utils,
  FMX.Effects, PDV.view.components.button, Router4D;

type
  TComponentsNavBar = class(TForm)
    LayoutContainer: TLayout;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    ShadowEffect1: TShadowEffect;
    Layout3: TLayout;
    Layout2: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    procedure Clicar(Sender: TObject);
    procedure Clicar1(Sender: TObject);
    procedure Clicar2(Sender: TObject);
    procedure Clicar3(Sender: TObject);

  public
    function build : TFmxObject;
  end;

var
  ComponentsNavBar: TComponentsNavBar;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

{ TComponentsNavBar }

function TComponentsNavBar.build: TFmxObject;
begin
  Result := LayoutContainer;
end;

procedure TComponentsNavBar.Clicar(Sender: TObject);
begin
  //TRouter4D.Link.&to('Teste');
end;

procedure TComponentsNavBar.Clicar1(Sender: TObject);
begin
  ShowMessage('Click Papel');
end;

procedure TComponentsNavBar.Clicar2(Sender: TObject);
begin
  ShowMessage('Click Loja');
end;

procedure TComponentsNavBar.Clicar3(Sender: TObject);
begin
  //TRouter4D.Link.&to('Main');
end;

procedure TComponentsNavBar.FormCreate(Sender: TObject);
begin
  Layout1.AddObject(
    TComponentButton.Create(Self).Image('img_menu').Click(Clicar).build
  );

  Layout3.AddObject(
    TComponentButton.Create(Self).Image('img_papel')
    .Align(TAlignLayout.Right).Click(Clicar1).build
  );

  Layout3.AddObject(
    TComponentButton.Create(Self).Image('img_luz')
    .Align(TAlignLayout.Right).Click(Clicar3).build
  );

  Layout3.AddObject(
    TComponentButton.Create(Self).Image('img_loja')
    .Align(TAlignLayout.Right).Click(Clicar2).build
  );


end;

end.
