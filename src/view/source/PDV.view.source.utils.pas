unit PDV.view.source.utils;

interface

uses
  FMX.Objects, System.Types, System.Classes;

type
  TUtils = Class
  private
  public
    class procedure ResourceImage(Resource: String; Image: TImage);
  end;

implementation

{ TUtils }

class procedure TUtils.ResourceImage(Resource: String; Image: TImage);
var
  lResource: TResourceStream;
begin
  lResource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    Image.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

end.
