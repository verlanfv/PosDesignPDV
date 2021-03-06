unit PDV.view.components.categorybutton;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, PDV.view.source.utils,
  FMX.Effects;

type
  TComponentCategoryButton = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    lblDescricao: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    ShadowEffect1: TShadowEffect;
    procedure SpeedButton1Click(Sender: TObject);
  private
    FClick : TProc<TObject>;
    procedure Selecionar;
  public
    { Public declarations }
    function Recursos(Imagem, Descricao: String): TComponentCategoryButton;
    function Click(Value: TProc<TObject>) : TComponentCategoryButton;
  end;

var
  ComponentCategoryButton: TComponentCategoryButton;

implementation

{$R *.fmx}

{ TComponentCategoryButton }


procedure TComponentCategoryButton.Selecionar;
begin
  Rectangle1.Stroke.Kind := TBrushKind.Solid;
  Rectangle1.Stroke.Color := TAlphaColor(4279148392);
  Image1.Bitmap.ReplaceOpaqueColor(TAlphaColor(4279148392));
  lblDescricao.TextSettings.FontColor := TAlphaColor(4279148392);
end;

procedure TComponentCategoryButton.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);

  Selecionar;

end;

function TComponentCategoryButton.Click(
  Value: TProc<TObject>): TComponentCategoryButton;
begin
  Result := Self;
  FClick := Value;
end;

function TComponentCategoryButton.Recursos(Imagem,
  Descricao: String): TComponentCategoryButton;
begin
  Result := Self;
  lblDescricao.Text := Descricao;
  Tutils.ResourceImage(Imagem, Image1);
  Image1.Bitmap.ReplaceOpaqueColor(TAlphaColor($FFb5b5b5));
end;

end.
