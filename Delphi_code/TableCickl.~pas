unit TableCickl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Registry;

type
  TFormTableCickl = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTableCickl: TFormTableCickl;

implementation
uses main;
{$R *.dfm}

procedure TFormTableCickl.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
Image1.Picture.LoadFromFile(FilePlace+'\bmp\table1.bmp');
MyRegIniFile:=TRegIniFile.Create('Software\FengShuj');
   Left:=MyRegIniFile.ReadInteger('TableCickl','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('TableCickl','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('TableCickl','Visible',false);
MyRegIniFile.Free;
end;

end.
