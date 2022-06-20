unit PDV.view.components.itemlista;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts;

type
  TComponentItemLista = class(TFrame)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    lblDescricao: TLabel;
    lblValor: TLabel;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    lblQuantidade: TLabel;
    Image1: TImage;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    FClick : TProc<TObject>;
    FValorUnitario : Currency;


    procedure UpdateValor(Value: Currency);
  public


    function Click(Value: TProc<TObject>) : TComponentItemLista;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;


  end;

implementation


{$R *.fmx}

{ TComponentItemLista }

function TComponentItemLista.Click(Value: TProc<TObject>): TComponentItemLista;
begin
  Result := Self;
  FClick := Value;
end;

procedure TComponentItemLista.SpeedButton1Click(Sender: TObject);
begin
  if (StrToInt(lblQuantidade.Text) > 0) and (StrToInt(lblQuantidade.Text) <> 1) then
  begin
    lblQuantidade.Text := IntToStr(StrToInt(lblQuantidade.Text) - 1);
    UpdateValor(StrToCurr(lblQuantidade.Text));
  end;
end;

procedure TComponentItemLista.SpeedButton2Click(Sender: TObject);
begin
    lblQuantidade.Text := IntToStr(StrToInt(lblQuantidade.Text) + 1);
    UpdateValor(StrToCurr(lblQuantidade.Text));

end;

procedure TComponentItemLista.SpeedButton3Click(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);

end;

procedure TComponentItemLista.UpdateValor(Value: Currency);
begin
  lblValor.Text := FormatCurr('R$ #,##0.00', (ValorUnitario * Value));

end;

end.
