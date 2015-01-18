unit DrawFh;


interface
uses ExtCtrls, Graphics, SysUtils, MyType;

procedure DrawNumbers (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
procedure DrawNumbersStarM (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
procedure DrawNumbersStarF (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
procedure DrawNumbersYearStar (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
procedure DrawNumbersMoonStar (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
procedure FhRectengle(Image:TImage; x1,y1,x2,y2:integer);

function StyleDraw (Image:TImage; st:shortint; Style:TDrawStyle):string;

implementation

procedure DrawNumbers (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
begin
  Image.Canvas.Brush.Style:=bsClear;
  Image.Canvas.Font.Size:=24;

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)-8,
                       y1+(y2 div 3)+((y2 div 3)div 2)-17, StyleDraw(Image,st1,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)-8,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-17, StyleDraw(Image,st2,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)-8,
                       y1+(y2 div 3)+((y2 div 3)div 2)-17, StyleDraw(Image,st3,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)-8,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-17, StyleDraw(Image,st4,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)-8,
                       y1+((y2 div 3)div 2)-17, StyleDraw(Image,st5,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)-8,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-17, StyleDraw(Image,st6,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)-8,
                       y1+((y2 div 3)div 2)-17, StyleDraw(Image,st7,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)-8,
                       y1+(y2 div 3)+((y2 div 3)div 2)-17, StyleDraw(Image,st8,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)-8,
                       y1+((y2 div 3)div 2)-17, StyleDraw(Image,st9,style));
end;

//--------------------------------------------------------

procedure DrawNumbersStarM (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
begin
  Image.Canvas.Brush.Style:=bsClear;
  Image.Canvas.Font.Size:=16;

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)-30,
                       y1+(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st1,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)-30,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st2,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)-30,
                       y1+(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st3,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)-30,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st4,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)-30,
                       y1+((y2 div 3)div 2)-34, StyleDraw(Image,st5,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)-30,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st6,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)-30,
                       y1+((y2 div 3)div 2)-34, StyleDraw(Image,st7,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)-30,
                       y1+(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st8,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)-30,
                       y1+((y2 div 3)div 2)-34, StyleDraw(Image,st9,style));
end;

//--------------------------------------------------------

procedure DrawNumbersStarF (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
begin
  Image.Canvas.Brush.Style:=bsClear;
  Image.Canvas.Font.Size:=16;

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st1,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st2,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st3,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st4,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2)-34, StyleDraw(Image,st5,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st6,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2)-34, StyleDraw(Image,st7,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2)-34, StyleDraw(Image,st8,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2)-34, StyleDraw(Image,st9,style));
end;

//--------------------------------------------------------

procedure DrawNumbersYearStar (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
begin
  Image.Canvas.Brush.Style:=bsClear;
  Image.Canvas.Font.Size:=12;

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2), StyleDraw(Image,st1,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2), StyleDraw(Image,st2,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2), StyleDraw(Image,st3,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2), StyleDraw(Image,st4,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2), StyleDraw(Image,st5,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2), StyleDraw(Image,st6,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2), StyleDraw(Image,st7,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2), StyleDraw(Image,st8,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2), StyleDraw(Image,st9,style));
end;

//--------------------------------------------------------

procedure DrawNumbersMoonStar (Image:TImage;x1,y1,x2,y2:integer;st1,st2,st3,st4,st5,st6,st7,st8,st9:shortint; Style:TDrawStyle);
begin
  Image.Canvas.Brush.Style:=bsClear;
  Image.Canvas.Font.Size:=12;

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2)+18, StyleDraw(Image,st1,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)+18, StyleDraw(Image,st2,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2)+18, StyleDraw(Image,st3,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)+18, StyleDraw(Image,st4,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2)+18, StyleDraw(Image,st5,style));

  Image.Canvas.TextOut(x1+(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+2*(y2 div 3)+((y2 div 3)div 2)+18, StyleDraw(Image,st6,style));

  Image.Canvas.TextOut(x1+2*(x2 div 3)+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2)+18, StyleDraw(Image,st7,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+(y2 div 3)+((y2 div 3)div 2)+18, StyleDraw(Image,st8,style));

  Image.Canvas.TextOut(x1+((x2 div 3)div 2)+20,
                       y1+((y2 div 3)div 2)+18, StyleDraw(Image,st9,style));
end;

//--------------------------------------------------------

procedure FhRectengle(Image:TImage;x1,y1,x2,y2:integer);
begin
  Image.Canvas.Brush.Style:=bsSolid;

  Image.Canvas.Pen.Color:=clNone;
  Image.Canvas.Pen.Style:=psClear;
  Image.Canvas.Rectangle(-1,-1,Image.Width+1,Image.Height+1);
  Image.Canvas.Pen.Style:=psSolid;
  Image.Canvas.Pen.Color:=clBlack;
  Image.Canvas.Rectangle(x1,y1,x2-1,y2-1);

  Image.Canvas.MoveTo(x1+(x2 div 3),y1);
  Image.Canvas.LineTo(x1+(x2 div 3),y2-1);
  Image.Canvas.MoveTo(x1+2*(x2 div 3),y1);
  Image.Canvas.LineTo(x1+2*(x2 div 3),y2-1);

  Image.Canvas.MoveTo(x1,y1+(y2 div 3));
  Image.Canvas.LineTo(x2-1,y1+(y2 div 3));
  Image.Canvas.MoveTo(x1,y1+2*(y2 div 3));
  Image.Canvas.LineTo(x2-1,y1+2*(y2 div 3));

  Image.Canvas.Brush.Style:=bsClear;
end;


function StyleDraw (Image:TImage; st:shortint; style:TDrawStyle):string;
begin
if style=ds_Num then//обычная прорисовка
 begin
  Image.Canvas.Font.Color:=clBlack;
  case st of
  1:result:='1';
  2:result:='2';
  3:result:='3';
  4:result:='4';
  5:result:='5';
  6:result:='6';
  7:result:='7';
  8:result:='8';
  9:result:='9';
  end;
end;

if style=ds_CNum then //Земной круг
 begin
  case st of
  1:begin
    Image.Canvas.Font.Color:=clGreen;
    result:='1';
    end;
  2:begin
    Image.Canvas.Font.Color:=clRed;
    result:='2';
    end;
  3:begin
    Image.Canvas.Font.Color:=clRed;
    result:='3';
    end;
  4:begin
    Image.Canvas.Font.Color:=clGreen;
    result:='4';
    end;
  5:begin
    Image.Canvas.Font.Color:=clRed;
    result:='5';
    end;
  6:begin
    Image.Canvas.Font.Color:=clGreen;
    result:='6';
    end;
  7:begin
    Image.Canvas.Font.Color:=clRed;
    result:='7';
    end;
  8:begin
    Image.Canvas.Font.Color:=clGreen;
    result:='8';
    end;
  9:begin
    Image.Canvas.Font.Color:=clGray;
    result:='9';
    end;
  end;
 End;

if style=ds_Sin then //У Син
 begin
  case st of
  1:begin
    Image.Canvas.Font.Color:=clBlack;
    result:='в';
    end;
  2:begin
    Image.Canvas.Font.Color:=$0001BFE0;
    result:='п';
    end;
  3:begin
    Image.Canvas.Font.Color:=clTeal;
    result:='д';
    end;
  4:begin
    Image.Canvas.Font.Color:=clTeal;
    result:='д';
    end;
  5:begin
    Image.Canvas.Font.Color:=$0001BFE0;
    result:='п';
    end;
  6:begin
    Image.Canvas.Font.Color:=clGray;
    result:='м';
    end;
  7:begin
    Image.Canvas.Font.Color:=clGray;
    result:='м';
    end;
  8:begin
    Image.Canvas.Font.Color:=$0001BFE0;
    result:='п';
    end;
  9:begin
    Image.Canvas.Font.Color:=$000010D2;
    result:='о';
    end;
  end;
end;
end;

end.
