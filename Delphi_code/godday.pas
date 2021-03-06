unit godday;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Registry;

type
  TFormGoodDay = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RichEdit1: TRichEdit;
    Panel3: TPanel;
    procedure FormResize(Sender: TObject);
    procedure RaschetGoodDay;
    procedure FormCreate(Sender: TObject);
    function Chzang(M2Ind, D2Ind:shortint):Shortint;
    //function ChzangStr(M2Ind, D2Ind:shortint):string;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGoodDay: TFormGoodDay;

implementation
uses calendar, main, callform;
{$R *.dfm}

procedure TFormGoodDay.FormResize(Sender: TObject);
begin
  
end;

//--------------------------------------------------------

procedure TFormGoodDay.RaschetGoodDay;
begin
 Caption:='12 установлений, '+FormatDateTime('c',CalendarTime);
 RichEdit1.Lines.LoadFromFile(FilePlace+'\other\czang\c'+IntToStr(Chzang(Mmain2,D2))+'.rtf');
end;

//--------------------------------------------------------

procedure TFormGoodDay.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='12 установлений';
  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('GoonDay','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('GoonDay','Top',((screen.Height-height) div 2));
   Height:=MyRegIniFile.ReadInteger('GoonDay','Height',279);
   Width:=MyRegIniFile.ReadInteger('GoonDay','Width',509);
   Visible:=MyRegIniFile.ReadBool('GoonDay','Visible',false);
  MyRegIniFile.Free;
end;

//--------------------------------------------------------

function TFormGoodDay.Chzang(M2Ind, D2Ind:shortint):Shortint;
begin
 case M2Ind of
 1:result:=D2Ind;
 2:result:=D2Ind+11;
 3:result:=D2Ind+10;
 4:result:=D2Ind+9;
 5:result:=D2Ind+8;
 6:result:=D2Ind+7;
 7:result:=D2Ind+6;
 8:result:=D2Ind+5;
 9:result:=D2Ind+4;
 10:result:=D2Ind+3;
 11:result:=D2Ind+2;
 12:result:=D2Ind+1;
 end;
 if result>12 then result:=result-12;
end;

//--------------------------------------------------------
{function TFormGoodDay.ChzangStr(M2Ind, D2Ind:shortint):string;
begin
  case Chzang(M2Ind,D2Ind) of
  1:result:='c1.rtf';
  2:result:='c2.rtf';
  3:result:='c3.rtf';
  4:result:='c4.rtf';
  5:result:='c5.rtf';
  6:result:='c6.rtf';
  7:result:='c7.rtf';
  8:result:='c8.rtf';
  9:result:='c9.rtf';
  10:result:='c10.rtf';
  11:result:='c11.rtf';
  12:result:='c12.rtf';
  end;
end; }

procedure TFormGoodDay.FormShow(Sender: TObject);
begin
 RaschetGoodDay;
end;

end.
