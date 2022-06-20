program PDV;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  PDV.view.index in 'src\view\PDV.view.index.pas' {Form1},
  PDV.view.source.routers in 'src\view\source\PDV.view.source.routers.pas',
  PDV.view.pages.app in 'src\view\pages\PDV.view.pages.app.pas' {PageApp},
  PDV.view.components.navbar in 'src\view\components\navbar\PDV.view.components.navbar.pas' {ComponentsNavBar},
  PDV.view.source.utils in 'src\view\source\PDV.view.source.utils.pas',
  PDV.view.components.button in 'src\view\components\button\PDV.view.components.button.pas' {ComponentButton},
  PDV.view.pages.main in 'src\view\pages\PDV.view.pages.main.pas' {PageMain},
  PDV.view.pages.teste in 'src\view\pages\PDV.view.pages.teste.pas' {Teste},
  PDV.view.components.categorybutton in 'src\view\components\categorybutton\PDV.view.components.categorybutton.pas' {ComponentCategoryButton},
  PDV.view.components.itemlista in 'src\view\components\itemlista\PDV.view.components.itemlista.pas' {ComponentItemLista: TFrame},
  PDV.view.components.itembutton in 'src\view\components\itembutton\PDV.view.components.itembutton.pas' {CompButton};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPageApp, PageApp);
  Application.CreateForm(TComponentsNavBar, ComponentsNavBar);
  Application.CreateForm(TComponentButton, ComponentButton);
  Application.CreateForm(TCompButton, CompButton);
  Application.CreateForm(TPageMain, PageMain);
  Application.CreateForm(TTeste, Teste);
  Application.CreateForm(TComponentCategoryButton, ComponentCategoryButton);
  Application.Run;
end.
