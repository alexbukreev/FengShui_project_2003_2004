unit graph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Math, StdCtrls, TeeProcs, TeEngine, Chart,
  ToolWin;

type
  TFormGraph = class(TForm)
    ImageGraph: TImage;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    FromTime: TDateTimePicker;
    ToTime: TDateTimePicker;
    procedure DrawGraph;
    procedure DrawGraphRasmetka;
    procedure FormCreate(Sender: TObject);
    procedure ToTimeChange(Sender: TObject);
    procedure FromTimeChange(Sender: TObject);
    function CombAnaliz(TimeStar, MainStar:Shortint):Shortint;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGraph: TFormGraph;

implementation
uses calendar;
{$R *.dfm}

procedure TFormGraph.DrawGraph;
begin
ImageGraph.Canvas.Pen.Style:=psClear;
ImageGraph.Canvas.Brush.Color:=clGreen;
ImageGraph.Canvas.Rectangle(0,0,5,(ImageGraph.Height div 4)+1);
ImageGraph.Canvas.Brush.Color:=$00B5CCB9;
ImageGraph.Canvas.Rectangle(0,ImageGraph.Height div 4,5,(ImageGraph.Height div 2)+1);
ImageGraph.Canvas.Brush.Color:=$008080FF;
ImageGraph.Canvas.Rectangle(0,ImageGraph.Height div 2,5,3*(ImageGraph.Height div 4)+1);
ImageGraph.Canvas.Brush.Color:=clMaroon;
ImageGraph.Canvas.Rectangle(0,3*ImageGraph.Height div 4,5,ImageGraph.Height+1);
end;

procedure TFormGraph.DrawGraphRasmetka;
var
Shag, index:Cardinal;
IndexHeight, IndexCoord:integer;
begin
Shag:=Floor(abs(ToTime.Date - FromTime.Date))+1;
ImageGraph.Width:=Shag*80+1;


ImageGraph.Canvas.Pen.Style:=psSolid;
ImageGraph.Canvas.MoveTo(0, ImageGraph.Height div 2);
ImageGraph.Canvas.LineTo(ImageGraph.Width,ImageGraph.Height div 2);

IndexHeight:=ImageGraph.Height div 2;
index:=1;
while index<=Shag do
 begin
   IndexCoord:=index*80;
   ImageGraph.Canvas.MoveTo(IndexCoord, IndexHeight-5);
   ImageGraph.Canvas.LineTo(IndexCoord, IndexHeight+5);
   index:=index+1;

   //ImageGraph.Canvas.MoveTo(IndexCoord-40,IndexHeight-CombAnaliz(Calendar.StarDay(FromTime.Date-1+index),1));
  // ImageGraph.Canvas.LineTo(IndexCoord+40,IndexHeight-CombAnaliz(Calendar.StarDay(FromTime.Date+index),1));
   //ImageGraph.Canvas.TextOut(IndexCoord-35,IndexHeight+10, IntToStr(Calendar.StarDay(FromTime.Date-1+index)));
  // ImageGraph.Canvas.TextOut(IndexCoord-75,IndexHeight+30, DateToStr(FromTime.Date-1+index));
 end;

ImageGraph.Repaint;
end;

procedure TFormGraph.FormCreate(Sender: TObject);
begin
FromTime.Date:=Date;
ToTime.Date:=Date+20;
DrawGraphRasmetka;
//DrawGraph;
end;

procedure TFormGraph.ToTimeChange(Sender: TObject);
begin
if ToTime.Date<FromTime.Date then ToTime.Date:=FromTime.Date;
DrawGraphRasmetka;
end;

procedure TFormGraph.FromTimeChange(Sender: TObject);
begin
DrawGraphRasmetka;
end;

function TFormGraph.CombAnaliz(TimeStar, MainStar:ShortInt):ShortInt;
var
IndexHeight:integer;
begin
IndexHeight:=ImageGraph.Height div 4;
case TimeStar of
1:case MainStar of
   1:result:=IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
2:case MainStar of
   1:result:=-IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
3:case MainStar of
   1:result:=-2*IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
4:case MainStar of
   1:result:=-IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
5:case MainStar of
   1:result:=-2*IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
6:case MainStar of
   1:result:=2*IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
7:case MainStar of
   1:result:=IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
8:case MainStar of
   1:result:=IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
9:case MainStar of
   1:result:=2*IndexHeight;
   2:result:=0;
   3:result:=0;
   4:result:=0;
   5:result:=0;
   6:result:=0;
   7:result:=0;
   8:result:=0;
   9:result:=0;
  end;
end;
end;

end.
