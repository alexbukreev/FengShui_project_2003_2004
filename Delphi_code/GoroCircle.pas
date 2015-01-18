unit GoroCircle;

interface
uses SysUtils, ExtCtrls,Math, Graphics;

procedure LabelSeasone (My_date:integer);
procedure GoroDraw (My_date:TDateTime);
procedure DrawMyShape (Deg:extended; MyCanvas:TImage);
procedure DrawOnRoundSun (Deg:extended; MyCanvas:TImage);
procedure DrawOnRoundMoon (Deg:extended; MyCanvas:TImage);
procedure LabelChange(My_date:TDateTime);
procedure ClearImage (MyCanvas:TImage);

implementation
uses main, calendar,SeasonList, Circle, my_moon, preference;

procedure LabelSeasone (My_date:integer);
begin
  Ses1:=CalcSolarTerm(My_date, st_z2)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses2:=CalcSolarTerm(My_date, st_j3)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses3:=CalcSolarTerm(My_date, st_z3)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses4:=CalcSolarTerm(My_date, st_j4)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses5:=CalcSolarTerm(My_date, st_z4)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses6:=CalcSolarTerm(My_date, st_j5)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses7:=CalcSolarTerm(My_date, st_z5)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses8:=CalcSolarTerm(My_date, st_j6)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses9:=CalcSolarTerm(My_date, st_z6)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses10:=CalcSolarTerm(My_date, st_j7)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses11:=CalcSolarTerm(My_date, st_z7)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses12:=CalcSolarTerm(My_date, st_j8)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses13:=CalcSolarTerm(My_date, st_z8)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses14:=CalcSolarTerm(My_date, st_j9)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses15:=CalcSolarTerm(My_date, st_z9)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses16:=CalcSolarTerm(My_date, st_j10)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses17:=CalcSolarTerm(My_date, st_z10)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses18:=CalcSolarTerm(My_date, st_j11)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses19:=CalcSolarTerm(My_date, st_z11)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses20:=CalcSolarTerm(My_date, st_j12)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses21:=CalcSolarTerm(My_date, st_z12)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses22:=CalcSolarTerm(My_date, st_j1)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses23:=CalcSolarTerm(My_date, st_z1)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
  Ses24:=CalcSolarTerm(My_date, st_j2)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);

  FormCircle.Label22.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses22);
  FormCircle.Label23.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses23);
  FormCircle.Label24.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses24);
  FormCircle.Label1.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses1);
  FormCircle.Label2.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses2);
  FormCircle.Label3.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses3);
  FormCircle.Label4.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses4);
  FormCircle.Label5.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses5);
  FormCircle.Label6.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses6);
  FormCircle.Label7.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses7);
  FormCircle.Label8.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses8);
  FormCircle.Label9.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses9);
  FormCircle.Label10.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses10);
  FormCircle.Label11.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses11);
  FormCircle.Label12.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses12);
  FormCircle.Label13.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses13);
  FormCircle.Label14.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses14);
  FormCircle.Label15.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses15);
  FormCircle.Label16.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses16);
  FormCircle.Label17.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses17);
  FormCircle.Label18.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses18);
  FormCircle.Label19.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses19);
  FormCircle.Label20.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses20);
  FormCircle.Label21.Caption:=FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses21);

  
  FirstYear:=StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime));
end;

//--------------------------------------------------------

procedure GoroDraw  (My_date:TDateTime);
begin
  //FormMainFSH.Image2.;
  FormMainFSH.ProgressBarMain.Position:=10;
  LabelChange (My_date-(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24)-FormMainFSH.LetneeVremja(FormPref.EditLetnee));
  FormMainFSH.ProgressBarMain.Position:=20;
  ClearImage (FormCircle.Image1);
  FormMainFSH.ProgressBarMain.Position:=40;
  DrawOnRoundSun (Sun_Position(My_date-(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24)-FormMainFSH.LetneeVremja(FormPref.EditLetnee)), FormCircle.Image1);
  FormMainFSH.ProgressBarMain.Position:=60;
  //DrawOnRoundMoon (Moon_Position(My_date-(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24)-FormMainFSH.LetneeVremja(FormPref.EditLetnee)), FormCircle.Image1);
  FormMainFSH.ProgressBarMain.Position:=100;
  SetMyCalendar(My_date-FormMainFSH.LetneeVremja(FormPref.EditLetnee));//установление значений календаря
  FormMainFSH.ProgressBarMain.Position:=0;
end;

//--------------------------------------------------------

procedure DrawMyShape (Deg:extended; MyCanvas:TImage);
var
  Ind_X, Ind_Y:integer;
begin
  Ind_X:=MyCanvas.Width div 2;
  Ind_Y:=MyCanvas.Width div 2;
  MyCanvas.Canvas.MoveTo(Ind_X,Ind_Y);
  MyCanvas.Canvas.LineTo
  (Ind_X-StrToInt(FloatToStr(RoundTo(cos(DegToRad(Deg))*MyCanvas.Width/2,0))),
  Ind_Y-StrToInt(FloatToStr(RoundTo(sin(DegToRad(Deg))*MyCanvas.Width/2,0))));
end;

//--------------------------------------------------------

procedure DrawOnRoundSun (Deg:extended; MyCanvas:TImage);
begin
  MyCanvas.Canvas.Pen.Color:=clRed;
  MyCanvas.Canvas.Pen.Style:=psSolid;
  DrawMyShape (Deg, MyCanvas);
end;

//--------------------------------------------------------

procedure DrawOnRoundMoon (Deg:extended; MyCanvas:TImage);
begin
  MyCanvas.Canvas.Pen.Color:=clNavy;
  MyCanvas.Canvas.Pen.Style:=psDot;
  DrawMyShape (Deg, MyCanvas);
  MyCanvas.Canvas.Pen.Style:=psSolid;
end;

//--------------------------------------------------------

procedure LabelChange(My_date:TDateTime);
var
index:integer;
begin
 index:=StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime));
 if index <>FirstYear then
  LabelSeasone(index);
end;

//--------------------------------------------------------

procedure ClearImage (MyCanvas:TImage);
begin
  MyCanvas.Canvas.Pen.Color:=clNone;
  MyCanvas.Canvas.Pen.Style:=psClear;
  MyCanvas.Canvas.Rectangle(-1,-1,MyCanvas.Width+1,MyCanvas.Height+1);
end;

//--------------------------------------------------------

end.

