unit PDV.view.pages.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  System.Math.Vectors, FMX.Objects, FMX.Controls3D, FMX.Layers3D, Router4D,
  Router4D.Interfaces, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects,
  PDV.view.source.utils, FMX.Edit, PDV.view.components.itembutton,
  PDV.view.components.categorybutton, FMX.Ani;

type
  TPageMain = class(TForm,iRouter4DComponent)
    LayoutContainer: TLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3D1: TLayout3D;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Rectangle2: TRectangle;
    Rectangle1: TRectangle;
    Layout8: TLayout;
    Label1: TLabel;
    Layout9: TLayout;
    Rectangle3: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Layout10: TLayout;
    Layout3D2: TLayout3D;
    Layout11: TLayout;
    Rectangle4: TRectangle;
    Label5: TLabel;
    lblTotal: TLabel;
    Rectangle5: TRectangle;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Rectangle6: TRectangle;
    SpeedButton2: TSpeedButton;
    Rectangle7: TRectangle;
    SpeedButton3: TSpeedButton;
    Layout12: TLayout;
    SpeedButton4: TSpeedButton;
    Layout13: TLayout;
    Layout14: TLayout;
    Layout15: TLayout;
    Circle1: TCircle;
    Image1: TImage;
    SpeedButton5: TSpeedButton;
    RoundRect1: TRoundRect;
    Edit1: TEdit;
    Layout16: TLayout;
    Layout17: TLayout;
    Layout18: TLayout;
    Label9: TLabel;
    Label10: TLabel;
    lblTaxa: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lblSubTotal: TLabel;
    Rectangle8: TRectangle;
    Label15: TLabel;
    HorzScrollBox1: THorzScrollBox;
    FlowLayout2: TFlowLayout;
    VertScrollBox1: TVertScrollBox;
    FlowLayout1: TFlowLayout;
    FramedVertScrollBox1: TFramedVertScrollBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    FIndex : TComponentCategoryButton;

    procedure CarregaItens;
    procedure CarregaCategoria;
    procedure Clicar(Sender: TObject);
  public

    function Render : TFmxObject;
    procedure UnRender;

  end;

var
  PageMain: TPageMain;

implementation

{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}

{ TPageMain }

procedure TPageMain.CarregaCategoria;
begin
  FlowLayout2.AddObject(TComponentCategoryButton.Create(Self).Recursos('coffee','caf?').Click(Clicar).Layout1);
  FlowLayout2.AddObject(TComponentCategoryButton.Create(Self).Recursos('drinks','Drinks').Click(Clicar).Layout1);
  FlowLayout2.AddObject(TComponentCategoryButton.Create(Self).Recursos('bbq','BBQ').Click(Clicar).Layout1);
  FlowLayout2.AddObject(TComponentCategoryButton.Create(Self).Recursos('fast_food','Food').Click(Clicar).Layout1);
  FlowLayout2.AddObject(TComponentCategoryButton.Create(Self).Recursos('pie','Doces').Click(Clicar).Layout1);
end;

procedure TPageMain.CarregaItens;
var
  i: Integer;
begin
  for i := 1 to 11 do
  begin
    FlowLayout1
    .AddObject(
      TCompButton.Create(Self).Recursos(I, FramedVertScrollBox1, 'bebida'+i.ToString, 'Red Bull', '11,00').Layout1
    );
  end;

end;

procedure TPageMain.Clicar(Sender: TObject);
begin
  //ShowMessage('Categoria - Caf?');
end;

procedure TPageMain.Edit1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit1.TextSettings.FontColor := $FFacb0af;
end;

function TPageMain.Render: TFmxObject;
begin
  Result := LayoutContainer;
  Tutils.ResourceImage('img_search',Image1);
  CarregaItens;
  CarregaCategoria;
end;

procedure TPageMain.SpeedButton1Click(Sender: TObject);
begin
  ShowMessage(Label7.Text+Label8.Text);
end;

procedure TPageMain.SpeedButton4Click(Sender: TObject);
begin
  //TRouter4D.Link.&to('Teste');
end;

procedure TPageMain.UnRender;
begin

end;

end.
