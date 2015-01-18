unit table3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Registry;

type
  TFormTable3 = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable3: TFormTable3;

implementation
uses main;
{$R *.dfm}

procedure TFormTable3.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
Image1.Picture.LoadFromFile(FilePlace+'\bmp\table3.bmp');
MyRegIniFile:=TRegIniFile.Create('Software\FengShuj');
   Left:=MyRegIniFile.ReadInteger('Table3','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table3','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Table3','Visible',false);
MyRegIniFile.Free;
end;

end.
