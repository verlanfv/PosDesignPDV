unit PDV.view.components.itembutton;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, PDV.view.source.utils,
  PDV.view.components.itemlista;

type
  TCompButton = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    lblPreco: TLabel;
    lblDescricao: TLabel;
    Layout4: TLayout;
    Image1: TImage;
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    FItem : Integer;
    FIndex : TComponentItemLista;
    FFramed : TFramedVertScrollBox;


    procedure RemoveFrame(Sender: TObject);
  public
    { Public declarations }
    function Recursos(Item: Integer; Framed: TFramedVertScrollBox;
         Imagem, Descricao, Valor : string): TCompButton;
  end;

var
  CompButton: TCompButton;

implementation

uses
  PDV.view.pages.main;

{$R *.fmx}

{ TCompButton }

function TCompButton.Recursos(Item: Integer; Framed: TFramedVertScrollBox;
         Imagem, Descricao, Valor : string): TCompButton;
begin
  Result := Self;

  FItem := Item;
  FFramed := Framed;
  lblDescricao.Text := Descricao;
  lblPreco.Text := Valor;
  TUtils.ResourceImage(Imagem, Image1);
end;

procedure TCompButton.RemoveFrame(Sender: TObject);
begin
  FFramed.RemoveObject(FIndex);
  FIndex.DisposeOf;
  Dec(FItem);
end;

procedure TCompButton.SpeedButton1Click(Sender: TObject);
var
  lFrameItem : TComponentItemLista;
begin
  Inc(FItem);
  lFrameItem := TComponentItemLista.Create(Self);
  lFrameItem.Name := 'FramItem' + FItem.ToString;
  lFrameItem.lblDescricao.Text := Self.lblDescricao.Text;
  lFrameItem.lblValor.Text := FormatCurr('R$ #,##0.00', StrtoCurr(Self.lblPreco.Text));
  lFrameItem.lblQuantidade.Text := '1';
  lFrameItem.ValorUnitario := StrtoCurr(Self.lblPreco.Text);
  lFrameItem.Align := TAlignLayout.Top;
  FIndex := lFrameItem;
  lFrameItem.Click(RemoveFrame);
  FFramed.AddObject(lFrameItem);

end;

end.
