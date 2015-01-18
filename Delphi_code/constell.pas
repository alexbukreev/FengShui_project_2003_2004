unit constell;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Registry;

type
  TFormConstell = class(TForm)
    RichEdit1: TRichEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RaschetConstell;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConstell: TFormConstell;

implementation 
uses calendar, callform, main ;

{$R *.dfm}

procedure TFormConstell.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='28 созвездий';
  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Constell','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Constell','Top',((screen.Height-height) div 2));
   Height:=MyRegIniFile.ReadInteger('Constell','Height',279);
   Width:=MyRegIniFile.ReadInteger('Constell','Width',509);
   Visible:=MyRegIniFile.ReadBool('Constell','Visible',false);
  MyRegIniFile.Free;
end;

procedure TFormConstell.FormShow(Sender: TObject);
begin
 RaschetConstell;
end;

procedure TFormConstell.RaschetConstell ;
begin
Caption:='28 созвездий, '+FormatDateTime('ddddd',CalendarTime);
RichEdit1.Lines.LoadFromFile(FilePlace+'\other\constell\c'+IntToStr(ConstellNo)+'.rtf');
end;


end.
