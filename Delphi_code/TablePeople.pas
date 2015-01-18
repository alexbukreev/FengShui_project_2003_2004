unit TablePeople;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, ExtCtrls;

type
  TFormTabPeop = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabPeop: TFormTabPeop;

implementation
uses main;
{$R *.dfm}

procedure TFormTabPeop.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
Image1.Picture.LoadFromFile(FilePlace+'\bmp\table2.bmp');
MyRegIniFile:=TRegIniFile.Create('Software\FengShuj');
   Left:=MyRegIniFile.ReadInteger('TPeop','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('TPeop','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('TPeop','Visible',false);
MyRegIniFile.Free;
end;

end.
