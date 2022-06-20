unit PDV.view.index;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts, Router4D,
  PDV.view.pages.app;

type
  TForm1 = class(TForm)
    LayoutContainer: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
  TRouter4D.Render<TPageApp>.SetElement(LayoutContainer, LayoutContainer);
end;

end.
