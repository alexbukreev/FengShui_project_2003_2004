unit table7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, ExtCtrls;

type
  TFormTable7 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable7: TFormTable7;

implementation
uses main;
{$R *.dfm}

procedure TFormTable7.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin 
Caption:='Лопань. Ориентация ГОРЫ.';
Image1.Picture.LoadFromFile(FilePlace+'\bmp\lopan.bmp');
MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Height:=MyRegIniFile.ReadInteger('Table7','Height',300);
   Width:=MyRegIniFile.ReadInteger('Table7','Width',300);
   Left:=MyRegIniFile.ReadInteger('Table7','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table7','Top',((screen.Height-height) div 2));
   //Visible:=MyRegIniFile.ReadBool('Table7','Visible',false);
MyRegIniFile.Free;
end;

end.
