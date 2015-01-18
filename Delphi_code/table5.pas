unit table5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Registry;

type
  TFormTable5 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable5: TFormTable5;

implementation
uses main;
{$R *.dfm}

procedure TFormTable5.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin 
  Caption:='Диаграмма «У син»';
Image1.Picture.LoadFromFile(FilePlace+'\bmp\diag4.bmp');
MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table5','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table5','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Table5','Visible',false);
MyRegIniFile.Free;
end;

end.
