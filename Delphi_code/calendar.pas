unit calendar;

interface
uses ExtCtrls,SysUtils, StdCtrls, MyType;

procedure SetMyCalendar(MySetTime:TDateTime);
procedure Zapolnenie(Stvol, Vetv: TImage; StvolIndex, VetvIndex:integer);
function StvolyYahrNo(ZadannajaData: TDateTime):integer;
function VetvyYahrNo(ZadannajaData: TDateTime):integer;
function StvolyChasNo(MyD1, MyH2:integer):integer;
function VetvyChasNo(ZadannajaData: TDateTime):integer;
function StvolyNo(ZadannajaData: TDateTime):integer;
function StvolyMonNo(Vetv:integer; MyY1:integer):integer;
function VetvyNo(ZadannajaData: TDateTime):integer;
procedure PSYearStvol (My_Label:TLabel; Index:integer);
procedure PSYearVetv (My_Label:TLabel; Index:integer);
function Juang (My_index:integer):string;
function Jung (My_index:integer):shortint;
function JungBig (My_index:integer):shortint;
function MoonStar (My_index, mes:integer):shortint;
function YearStar (My_index:integer):integer;
function ChzhouLuj(My_index:integer):TInJan;
function JunInJan(InJan:TInJan; My_index:shortint):TInJan;
function ScriptJun (InJan:TInJan; My_index:shortint):string;
function ScriptStar (My_index:shortint):string;
function CalcYear (MyDate:TDateTime):integer;
function StarDay(stvol, vetv:shortint; ses:string):shortint;
function StarChas(vetv_D, vetv_H:shortint; ses:string):shortint;
function SesonToNo (seson:string):shortint;
function ConstellNoRas(ZadannajaData: TDateTime):integer;

var
 Y1, Ymain2,
 M1, Mmain2,
 D1, D2,
 H1, H2,
 Year,
 Month,
 YearStarV:integer;
 MoonStarV, DayStarV, JungVBig, JungV:shortint;
 ConstellNo:shortint;

implementation
uses my_moon, season, CallForm, main,preference;

procedure SetMyCalendar(MySetTime:TDateTime);
var
Big, Smol:string;
DolgotaTime:TDateTime;
begin
//--------- время для точного расчета, учитывая долгот
if FormPref.CheckBoxDolgota.Checked then
   DolgotaTime:=MySetTime-(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24)+
   DolgotaToTime(FormPref.UpDownDolgota.Position) else DolgotaTime:=MySetTime;
//--------------------------------

CalendarTime:=FormMainFSH.MyDate.DateTime;

FormCalendar.LabelNow.Caption:=FormatDateTime('ddddd'+' '+'tt',CalendarTime);
FormCalendar.Week.Caption:=FormatDateTime('dddd',CalendarTime);

Y1:=StvolyYahrNo(MySetTime-(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24));
Ymain2:=VetvyYahrNo(MySetTime-(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24));
D1:=StvolyNo(DolgotaTime);
D2:=VetvyNo(DolgotaTime);
H2:=VetvyChasNo(DolgotaTime);
H1:=StvolyChasNo(D1,H2);
Month:=ChineseDate(DolgotaTime+(1/24)).month;
//Year:=ChineseDate(CalendarTime+(1/24)).epoch_years;//счетаем по-другому
Year:=CalcYear(CalendarTime);
YearStarV:=YearStar(Year);
ConstellNo:=ConstellNoRas(DolgotaTime);

Zapolnenie(FormCalendar.StvolYahr,FormCalendar.VetvYahr,Y1,Ymain2);
Zapolnenie(FormCalendar.StvolChas,FormCalendar.VetvChas,H1,H2);
Saesons(MySetTime-(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24), Mmain2, Big, Smol);
M1:=StvolyMonNo(Mmain2, Y1);
Zapolnenie(FormCalendar.StvolMod,FormCalendar.VetvGod,M1,Mmain2);
Zapolnenie(FormCalendar.StvolDay,FormCalendar.VetvDay,D1,D2);

FormCalendar.BigSeason.Caption :=Big;
FormCalendar.SmallSeason.Caption :=Smol;
PSYearVetv (FormCalendar.PSYear, Ymain2);
PSYearStvol (FormCalendar.PSYear, Y1);
PSYearVetv (FormCalendar.PSMon, Mmain2);
PSYearStvol (FormCalendar.PSMon, M1);
PSYearVetv (FormCalendar.PSDay, D2);
PSYearStvol (FormCalendar.PSDay, D1);
PSYearVetv (FormCalendar.PSHour, H2);
PSYearStvol (FormCalendar.PSHour, H1);

//----------------------------

FormCalendar.Label28.Caption:='Знак года '+No60Gua(Y1, Ymain2)+' из 60';
FormCalendar.Label27.Caption:='Знак периода '+No60Gua(M1, Mmain2)+' из 60';
FormCalendar.Label25.Caption:='Знак дня '+No60Gua(D1, D2)+' из 60';
FormCalendar.Label26.Caption:='Знак часа '+No60Gua(H1, H2)+' из 60';

//----------------------------
FormCalendar.epoch_years.Caption:=IntToStr(Year+61);
FormCalendar.month.Caption:=IntToStr(Month);
FormCalendar.day.Caption:=IntToStr(ChineseDate(DolgotaTime+(1/24)).day);

if ChineseDate(CalendarTime+(1/24)).leap then FormCalendar.LabelStarLeap.Visible:=true else
   FormCalendar.LabelStarLeap.Visible:=false;

FormCalendar.Juang.Caption:=Juang(Year);
JungVBig:=JungBig(Year);
FormCalendar.JungBig.Caption:=IntToStr(JungVBig);
JungV:=Jung(Year);
FormCalendar.Jung.Caption:=IntToStr(JungV);
FormCalendar.LabelYearStar.Caption:=IntToStr(YearStarV);
MoonStarV:=MoonStar(Ymain2{YearStarV}, Mmain2{Month}); //здесь изменения к звезде месяца
FormCalendar.LabelMoonStar.Caption:=IntToStr(MoonStarV);
DayStarV:=StarDay(D1, D2, Smol);
FormCalendar.DayStar.Caption:=IntToStr(DayStarV); //звезда дня
FormCalendar.ChasStar.Caption:=IntToStr(StarChas(D2, H2, Smol)); //звезда часа

//FormCalendar.LabelJunName.Caption:=ScriptJun (ChzhouLuj(Year), JungV);
//FormCalendar.LabelJuangName.Caption:=InJanToStr (ChzhouLuj(Year));
FormCalendar.LabelJunName.Caption:=ScriptStar(JungV);
FormCalendar.LabelJunBigName.Caption:=ScriptStar(JungVBig);
FormCalendar.LabelYearS.Caption:=ScriptStar(YearStarV);
FormCalendar.LabelMoonS.Caption:=ScriptStar(MoonStarV);
FormCalendar.DayStarS.Caption:=ScriptStar(StarDay(D1, D2, Smol)); //звезда дня
FormCalendar.ChasStarS.Caption:=ScriptStar(StarChas(D2, H2, Smol)); //звезда часа
end;

//--------------------------------------------------------

procedure Zapolnenie(Stvol, Vetv:TImage; StvolIndex, VetvIndex:integer);
begin
case StvolIndex of
1:Stvol.Picture:=FormMainFSH.Stvol1.Picture;
2:Stvol.Picture:=FormMainFSH.Stvol2.Picture;
3:Stvol.Picture:=FormMainFSH.Stvol3.Picture;
4:Stvol.Picture:=FormMainFSH.Stvol4.Picture;
5:Stvol.Picture:=FormMainFSH.Stvol5.Picture;
6:Stvol.Picture:=FormMainFSH.Stvol6.Picture;
7:Stvol.Picture:=FormMainFSH.Stvol7.Picture;
8:Stvol.Picture:=FormMainFSH.Stvol8.Picture;
9:Stvol.Picture:=FormMainFSH.Stvol9.Picture;
10:Stvol.Picture:=FormMainFSH.Stvol10.Picture;
end;

case VetvIndex of
1:Vetv.Picture:=FormMainFSH.Vetv1.Picture;
2:Vetv.Picture:=FormMainFSH.Vetv2.Picture;
3:Vetv.Picture:=FormMainFSH.Vetv3.Picture;
4:Vetv.Picture:=FormMainFSH.Vetv4.Picture;
5:Vetv.Picture:=FormMainFSH.Vetv5.Picture;
6:Vetv.Picture:=FormMainFSH.Vetv6.Picture;
7:Vetv.Picture:=FormMainFSH.Vetv7.Picture;
8:Vetv.Picture:=FormMainFSH.Vetv8.Picture;
9:Vetv.Picture:=FormMainFSH.Vetv9.Picture;
10:Vetv.Picture:=FormMainFSH.Vetv10.Picture;
11:Vetv.Picture:=FormMainFSH.Vetv11.Picture;
12:Vetv.Picture:=FormMainFSH.Vetv12.Picture;
end;

end;

//--------------------------------------------------------

procedure PSYearStvol (My_Label:TLabel; Index:integer);
begin
 case Index of
 1:My_Label.Caption:='Цзя (Дерево-ян), '+My_Label.Caption;
 2:My_Label.Caption:='И (Дерево-инь), '+My_Label.Caption;
 3:My_Label.Caption:='Бин (Огонь-ян), '+My_Label.Caption;
 4:My_Label.Caption:='Дин (Огонь-инь), '+My_Label.Caption;
 5:My_Label.Caption:='У (Почва-ян), '+My_Label.Caption;
 6:My_Label.Caption:='Цзи (Почва-инь), '+My_Label.Caption;
 7:My_Label.Caption:='Гэн (Металл-ян), '+My_Label.Caption;
 8:My_Label.Caption:='Синь (Металл-инь), '+My_Label.Caption;
 9:My_Label.Caption:='Жэнь (Вода-ян), '+My_Label.Caption;
 10:My_Label.Caption:='Гуй (Вода-инь), '+My_Label.Caption;
 end;
end;

//--------------------------------------------------------

procedure PSYearVetv (My_Label:TLabel; Index:integer);
begin
 case Index of
 1:My_Label.Caption:='Цзы (Вода-ян)';
 2:My_Label.Caption:='Чоу (Почва-инь)';
 3:My_Label.Caption:='Инь (Дерево-ян)';
 4:My_Label.Caption:='Мао (Дерево-инь)';
 5:My_Label.Caption:='Чэнь (Почва-ян)';
 6:My_Label.Caption:='Сы (Огонь-инь)';
 7:My_Label.Caption:='У (Огонь-ян)';
 8:My_Label.Caption:='Вэй (Почва-инь)';
 9:My_Label.Caption:='Шэнь (Металл-ян)';
 10:My_Label.Caption:='Ю (Металл-инь)';
 11:My_Label.Caption:='Сюй (Почва-ян)';
 12:My_Label.Caption:='Хай (Вода-инь)';
 end;
end;

//--------------------------------------------------------

function StvolyYahrNo(ZadannajaData: TDateTime):integer;
begin
result:=abs(StrToInt(FormatDateTime('yyyy',ZadannajaData))-1983);

result:=result mod 10;
if result=0 then result:=10;

if StrToInt(FormatDateTime('yyyy',ZadannajaData))<1983 then
 begin
  result:=10-result;
  if result=0 then result:=10;
 end;

 if StrToInt(FormatDateTime('m',ZadannajaData))<3 then
if ZadannajaData<CalcSolarTerm(StrToInt(FormatDateTime('yyyy',ZadannajaData)),st_j1) then
begin
result:=result-1;
  if result=0 then result:=10;
end;
end;

//--------------------------------------------------------

function VetvyYahrNo(ZadannajaData: TDateTime):integer;
begin
result:=abs(StrToInt(FormatDateTime('yyyy',ZadannajaData))-1983);

result:=result mod 12;
if result=0 then result:=12;

if StrToInt(FormatDateTime('yyyy',ZadannajaData))<1983 then
 begin
  result:=12-result;
  if result=0 then result:=12;
 end;

if StrToInt(FormatDateTime('m',ZadannajaData))<3 then
if ZadannajaData<CalcSolarTerm(StrToInt(FormatDateTime('yyyy',ZadannajaData)),st_j1) then
begin
result:=result-1;
  if result=0 then result:=12;
end;
end;

//--------------------------------------------------------

function StvolyChasNo(MyD1, MyH2:integer):integer;
begin
   case MyD1 of
   1,6: result:=MyH2;
   2,7: result:=MyH2+2;
   3,8: result:=MyH2+4;
   4,9: result:=MyH2+6;
   5,10: result:=MyH2+8;
   end;
if result>10 then result:=result-10;
end;

//--------------------------------------------------------

function VetvyChasNo(ZadannajaData: TDateTime):integer;
var
index:integer;
begin
index:=StrToInt(FormatDateTime('h',ZadannajaData));
  case index of
  1: result:=2;
  2: result:=2;
  3: result:=3;
  4: result:=3;
  5: result:=4;
  6: result:=4;
  7: result:=5;
  8: result:=5;
  9: result:=6;
  10: result:=6;
  11: result:=7;
  12: result:=7;
  13: result:=8;
  14: result:=8;
  15: result:=9;
  16: result:=9;
  17: result:=10;
  18: result:=10;
  19: result:=11;
  20: result:=11;
  21: result:=12;
  22: result:=12;
  23: result:=1;
  24: result:=1;
  0: result:=1;
  end;
end;

//--------------------------------------------------------

function StvolyNo(ZadannajaData: TDateTime):integer;
begin
ZadannajaData:=ZadannajaData+13/24;

result:=StrToInt
(
FormatFloat('0',
abs(ZadannajaData-37552))
);


result:=result mod 10;
if result=0 then result:=10;

if ZadannajaData<37552 then
 begin
  result:=10-result;
  if result=0 then result:=10;
 end;

if ZadannajaData=37552 then result:=1;
end;

//--------------------------------------------------------

function StvolyMonNo(Vetv:integer; MyY1:integer):integer;
begin
   case MyY1 of
   1,6: result:=Vetv;
   2,7: result:=Vetv+2;
   3,8: result:=Vetv+4;
   4,9: result:=Vetv+6;
   5,10: result:=Vetv+8;
   end;
if Vetv<3 then
   case MyY1 of
   1,6: result:=Vetv+2;
   2,7: result:=Vetv+4;
   3,8: result:=Vetv+6;
   4,9: result:=Vetv+8;
   5,10: result:=Vetv;
   end;

if result>10 then result:=result-10;
end;

//--------------------------------------------------------

function VetvyNo(ZadannajaData: TDateTime):integer;
begin
ZadannajaData:=ZadannajaData+13/24;

result:=StrToInt
(
FormatFloat('0',
abs(ZadannajaData-37552))
);

result:=result mod 12;
if result=0 then result:=12;

if ZadannajaData<37552 then
 begin
  result:=12-result;
  if result=0 then result:=12;
 end;
if ZadannajaData=37552 then result:=1;
end;

//--------------------------------------------------------

function Juang (My_index:integer):string;//должна стоять после определения числа лет
var
 index:integer;
begin
 index:=(My_index-1) mod 180;
 index:=index div 60;
 case index of
 0: result:='Верхний';//'Нижняя';
 1: result:='Средний';
 2: result:='Нижний';//'Верхняя';
 end;
end;

//--------------------------------------------------------

function Jung (My_index:integer):shortint;//должна стоять после определения числа лет
begin
 My_index:=(My_index-1) mod 180;
 My_index:=My_index div 20;
 result:=My_index+1

end;

//--------------------------------------------------------

function JungBig (My_index:integer):shortint;//должна стоять после определения числа лет
begin
 My_index:=(My_index-1) mod 540;
 My_index:=(My_index) div 60;
 result:=My_index+1;
 result:=result-3;
 if result<=0 then result:=9+result;

end;

//--------------------------------------------------------

function MoonStar (My_index, mes:integer):shortint;//должна стоять после определения параметров
begin
 case My_index of
 1,4,7,10:begin
           result:=11-mes;//звезда 8
           if mes=1 then result:=7;
           if mes=2 then result:=6;
           if result<1 then result:=result+9;
          end;
 3,6,9,12:begin
           result:=5-mes;//звезда 2
           if mes=1 then result:=1;
           if mes=2 then result:=9;
           if result<1 then result:=result+9;
           if result>9 then result:=1;
          end;
 2,5,8,11:begin
           result:=8-mes;//звезда 5
           if mes=1 then result:=4;
           if mes=2 then result:=3;
           if result<1 then result:=result+9;
          end;
 end;
{ case My_index of
 1,4,7:begin
           result:=9-mes;//звезда 8
           if result<1 then result:=result+9;
          end;
 2,5,8:begin
           result:=3-mes;//звезда 2
           if result<1 then result:=result+9;
           if result=0 then result:=9;
          end;
 3,6,9:begin
           result:=6-mes;//звезда 5
           if result<1 then result:=result+9;
          end;
 end;}
end;

//--------------------------------------------------------

function YearStar (My_index:integer):integer;//должна стоять после определения параметров
begin
 result:=(My_Index+7) mod 9;
 result:=9-result;
end;

//--------------------------------------------------------
function ChzhouLuj(My_index:integer):TInJan;//нет расчета на ранние даты
begin
 My_index:=((My_index)-1) div 180;
 My_index:=My_index mod 2;
 case My_index of
 1:result:=ij_Jan;
 0:result:=ij_In;
 end
end;

//--------------------------------------------------------

function ScriptJun (InJan:TInJan; My_index:shortint):string;
begin
 if InJan=ij_Jan then
 case My_index of
 1: result:='вода';
 2: result:='почва';
 3: result:='дерево';
 4: result:='дерево';
 5: result:='почва';
 6: result:='металл';
 7: result:='металл';
 8: result:='почва';
 9: result:='огонь';
 end
 else
 case My_index of
 1: result:='вода';
 2: result:='почва';
 3: result:='дерево';
 4: result:='дерево';
 5: result:='почва';
 6: result:='металл';
 7: result:='металл';
 8: result:='почва';
 9: result:='огонь';
 end;
end;

//--------------------------------------------------------

function ScriptStar (My_index:shortint):string;
begin
 case My_index of
 1: result:='белая';
 2: result:='черная';
 3: result:='бирюзовая';
 4: result:='зеленая';
 5: result:='желтая';
 6: result:='белая';
 7: result:='алая';
 8: result:='белая';
 9: result:='пурпурная';
 end;
end;

//--------------------------------------------------------

function JunInJan(InJan:TInJan; My_index:shortint):TInJan;
begin
 if InJan=ij_Jan then
 case My_index of
 1: result:=ij_Jan;
 2: result:=ij_In;
 3: result:=ij_Jan;
 4: result:=ij_In;
 5: result:=ij_Jan;
 6: result:=ij_In;
 7: result:=ij_Jan;
 8: result:=ij_In;
 9: result:=ij_Jan;
 end
 else
 case My_index of
 1: result:=ij_In;
 2: result:=ij_Jan;
 3: result:=ij_In;
 4: result:=ij_Jan;
 5: result:=ij_In;
 6: result:=ij_Jan;
 7: result:=ij_In;
 8: result:=ij_Jan;
 9: result:=ij_In;
 end;
end;

//--------------------------------------------------------

function CalcYear(MyDate:TDateTime):integer;
var
MySes22, MySes23:TDateTime;
index:integer;
begin
 index:=StrToInt(FormatDateTime('yyyy',MyDate));
 MySes22:=CalcSolarTerm(index, st_j1)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
 MySes23:=CalcSolarTerm(index, st_z1)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
 result:=ChineseDate(MyDate+(1/24)).epoch_years;
 

 if ChineseDate(MySes23+(1/24)).epoch_years>ChineseDate(MySes22+(1/24)).epoch_years then
   begin
    if ((MyDate>MySes22) and(ChineseDate(MySes22+(1/24)).epoch_years=result)) then
       result:=result+1;
   end
   else
     begin
       if ChineseDate(MySes22+(1/24)).epoch_years=result then
       if MyDate<MySes22 then  result:=result-1;
     end;

end; 

//--------------------------------------------------------
function StarChas(vetv_D, vetv_H:shortint; ses:string):shortint;
begin
case SesonToNo(ses)  of
//после зимнего солнцестояния:
1,2,3,4,5,6,7,8,9,22,23,24:case vetv_D of
                           1,4,7,10:case vetv_H of
                                    1:result:=1;
                                    2:result:=2;
                                    3:result:=3;
                                    4:result:=4;
                                    5:result:=5;
                                    6:result:=6;
                                    7:result:=7;
                                    8:result:=8;
                                    9:result:=9;
                                    10:result:=1;
                                    11:result:=2;
                                    12:result:=3;
                                    end;
                           3,6,9,12:case vetv_H of
                                    1:result:=7;
                                    2:result:=8;
                                    3:result:=9;
                                    4:result:=1;
                                    5:result:=2;
                                    6:result:=3;
                                    7:result:=4;
                                    8:result:=5;
                                    9:result:=6;
                                    10:result:=7;
                                    11:result:=8;
                                    12:result:=9;
                                    end;
                           2,5,8,11:case vetv_H of
                                    1:result:=4;
                                    2:result:=5;
                                    3:result:=6;
                                    4:result:=7;
                                    5:result:=8;
                                    6:result:=9;
                                    7:result:=1;
                                    8:result:=2;
                                    9:result:=3;
                                    10:result:=4;
                                    11:result:=5;
                                    12:result:=6;
                                    end;
                           end;
else //после летнего солнцестояния:
                           case vetv_D of
                           1,4,7,10:case vetv_H of
                                    1:result:=9;
                                    2:result:=8;
                                    3:result:=7;
                                    4:result:=6;
                                    5:result:=5;
                                    6:result:=4;
                                    7:result:=3;
                                    8:result:=2;
                                    9:result:=1;
                                    10:result:=9;
                                    11:result:=8;
                                    12:result:=7;
                                    end;
                           3,6,9,12:case vetv_H of
                                    1:result:=3;
                                    2:result:=2;
                                    3:result:=1;
                                    4:result:=9;
                                    5:result:=8;
                                    6:result:=7;
                                    7:result:=6;
                                    8:result:=5;
                                    9:result:=4;
                                    10:result:=3;
                                    11:result:=2;
                                    12:result:=1;
                                    end;
                           2,5,8,11:case vetv_H of
                                    1:result:=6;
                                    2:result:=5;
                                    3:result:=4;
                                    4:result:=3;
                                    5:result:=2;
                                    6:result:=1;
                                    7:result:=9;
                                    8:result:=8;
                                    9:result:=7;
                                    10:result:=6;
                                    11:result:=5;
                                    12:result:=4;
                                    end;
                           end;
end;
end;


function StarDay(stvol, vetv:shortint; ses:string):shortint;
var
No:shortint;
begin
No:=StrToInt(No60Gua (stvol, vetv));
case SesonToNo(ses)  of
1, 22,23,24:case No of
            1:result:=1;
            2:result:=2;
            3:result:=3;
            4:result:=4;
            5:result:=5;
            6:result:=6;
            7:result:=7;
            8:result:=8;
            9:result:=9;
            10:result:=1;
            11:result:=2;
            12:result:=3;
            13:result:=4;
            14:result:=5;
            15:result:=6;
            16:result:=7;
            17:result:=8;
            18:result:=9;
            19:result:=1;
            20:result:=2;
            21:result:=3;
            22:result:=4;
            23:result:=5;
            24:result:=6;
            25:result:=7;
            26:result:=8;
            27:result:=9;
            28:result:=1;
            29:result:=2;
            30:result:=3;
            31:result:=4;
            32:result:=5;
            33:result:=6;
            34:result:=7;
            35:result:=8;
            36:result:=9;
            37:result:=1;
            38:result:=2;
            39:result:=3;
            40:result:=4;
            41:result:=5;
            42:result:=6;
            43:result:=7;
            44:result:=8;
            45:result:=9;
            46:result:=1;
            47:result:=2;
            48:result:=3;
            49:result:=4;
            50:result:=5;
            51:result:=6;
            52:result:=7;
            53:result:=8;
            54:result:=9;
            55:result:=1;
            56:result:=2;
            57:result:=3;
            58:result:=4;
            59:result:=5;
            60:result:=6;
            end;
2,3,4,5:case No of
            1:result:=7;
            2:result:=8;
            3:result:=9;
            4:result:=1;
            5:result:=2;
            6:result:=3;
            7:result:=4;
            8:result:=5;
            9:result:=6;
            10:result:=7;
            11:result:=8;
            12:result:=9;
            13:result:=1;
            14:result:=2;
            15:result:=3;
            16:result:=4;
            17:result:=5;
            18:result:=6;
            19:result:=7;
            20:result:=8;
            21:result:=9;
            22:result:=1;
            23:result:=2;
            24:result:=3;
            25:result:=4;
            26:result:=5;
            27:result:=6;
            28:result:=7;
            29:result:=8;
            30:result:=9;
            31:result:=1;
            32:result:=2;
            33:result:=3;
            34:result:=4;
            35:result:=5;
            36:result:=6;
            37:result:=7;
            38:result:=8;
            39:result:=9;
            40:result:=1;
            41:result:=2;
            42:result:=3;
            43:result:=4;
            44:result:=5;
            45:result:=6;
            46:result:=7;
            47:result:=8;
            48:result:=9;
            49:result:=1;
            50:result:=2;
            51:result:=3;
            52:result:=4;
            53:result:=5;
            54:result:=6;
            55:result:=7;
            56:result:=8;
            57:result:=9;
            58:result:=1;
            59:result:=2;
            60:result:=3;
            end;
6,7,8,9:case No of
            1:result:=4;
            2:result:=5;
            3:result:=6;
            4:result:=7;
            5:result:=8;
            6:result:=9;
            7:result:=1;
            8:result:=2;
            9:result:=3;
            10:result:=4;
            11:result:=5;
            12:result:=6;
            13:result:=7;
            14:result:=8;
            15:result:=9;
            16:result:=1;
            17:result:=2;
            18:result:=3;
            19:result:=4;
            20:result:=5;
            21:result:=6;
            22:result:=7;
            23:result:=8;
            24:result:=9;
            25:result:=1;
            26:result:=2;
            27:result:=3;
            28:result:=4;
            29:result:=5;
            30:result:=6;
            31:result:=7;
            32:result:=8;
            33:result:=9;
            34:result:=1;
            35:result:=2;
            36:result:=3;
            37:result:=4;
            38:result:=5;
            39:result:=6;
            40:result:=7;
            41:result:=8;
            42:result:=9;
            43:result:=1;
            44:result:=2;
            45:result:=3;
            46:result:=4;
            47:result:=5;
            48:result:=6;
            49:result:=7;
            50:result:=8;
            51:result:=9;
            52:result:=1;
            53:result:=2;
            54:result:=3;
            55:result:=4;
            56:result:=5;
            57:result:=6;
            58:result:=7;
            59:result:=8;
            60:result:=9;
            end;
10,11,12,13:case No of
            1:result:=9;
            2:result:=8;
            3:result:=7;
            4:result:=6;
            5:result:=5;
            6:result:=4;
            7:result:=3;
            8:result:=2;
            9:result:=1;
            10:result:=9;
            11:result:=8;
            12:result:=7;
            13:result:=6;
            14:result:=5;
            15:result:=4;
            16:result:=3;
            17:result:=2;
            18:result:=1;
            19:result:=9;
            20:result:=8;
            21:result:=7;
            22:result:=6;
            23:result:=5;
            24:result:=4;
            25:result:=3;
            26:result:=2;
            27:result:=1;
            28:result:=9;
            29:result:=8;
            30:result:=7;
            31:result:=6;
            32:result:=5;
            33:result:=4;
            34:result:=3;
            35:result:=2;
            36:result:=1;
            37:result:=9;
            38:result:=8;
            39:result:=7;
            40:result:=6;
            41:result:=5;
            42:result:=4;
            43:result:=3;
            44:result:=2;
            45:result:=1;
            46:result:=9;
            47:result:=8;
            48:result:=7;
            49:result:=6;
            50:result:=5;
            51:result:=4;
            52:result:=3;
            53:result:=2;
            54:result:=1;
            55:result:=9;
            56:result:=8;
            57:result:=7;
            58:result:=6;
            59:result:=5;
            60:result:=4;
            end;
14,15,16,17:case No of
            1:result:=3;
            2:result:=2;
            3:result:=1;
            4:result:=9;
            5:result:=8;
            6:result:=7;
            7:result:=6;
            8:result:=5;
            9:result:=4;
            10:result:=3;
            11:result:=2;
            12:result:=1;
            13:result:=9;
            14:result:=8;
            15:result:=7;
            16:result:=6;
            17:result:=5;
            18:result:=4;
            19:result:=3;
            20:result:=2;
            21:result:=1;
            22:result:=9;
            23:result:=8;
            24:result:=7;
            25:result:=6;
            26:result:=5;
            27:result:=4;
            28:result:=3;
            29:result:=2;
            30:result:=1;
            31:result:=9;
            32:result:=8;
            33:result:=7;
            34:result:=6;
            35:result:=5;
            36:result:=4;
            37:result:=3;
            38:result:=2;
            39:result:=1;
            40:result:=9;
            41:result:=8;
            42:result:=7;
            43:result:=6;
            44:result:=5;
            45:result:=4;
            46:result:=3;
            47:result:=2;
            48:result:=1;
            49:result:=9;
            50:result:=8;
            51:result:=7;
            52:result:=6;
            53:result:=5;
            54:result:=4;
            55:result:=3;
            56:result:=2;
            57:result:=1;
            58:result:=9;
            59:result:=8;
            60:result:=7;
            end;
18,19,20,21:case No of
            1:result:=9;
            2:result:=5;
            3:result:=4;
            4:result:=3;
            5:result:=2;
            6:result:=1;
            7:result:=9;
            8:result:=8;
            9:result:=7;
            10:result:=6;
            11:result:=5;
            12:result:=4;
            13:result:=3;
            14:result:=2;
            15:result:=1;
            16:result:=9;
            17:result:=8;
            18:result:=7;
            19:result:=6;
            20:result:=5;
            21:result:=4;
            22:result:=3;
            23:result:=2;
            24:result:=1;
            25:result:=9;
            26:result:=8;
            27:result:=7;
            28:result:=6;
            29:result:=5;
            30:result:=4;
            31:result:=3;
            32:result:=2;
            33:result:=1;
            34:result:=9;
            35:result:=8;
            36:result:=7;
            37:result:=6;
            38:result:=5;
            39:result:=4;
            40:result:=3;
            41:result:=2;
            42:result:=1;
            43:result:=9;
            44:result:=8;
            45:result:=7;
            46:result:=6;
            47:result:=5;
            48:result:=4;
            49:result:=3;
            50:result:=2;
            51:result:=1;
            52:result:=9;
            53:result:=8;
            54:result:=7;
            55:result:=6;
            56:result:=5;
            57:result:=4;
            58:result:=3;
            59:result:=2;
            60:result:=1;
            end;
end;
{var
MySes7, MySes23:TDateTime;
index:integer;
begin
ZadannajaData:=ZadannajaData+13/24;

index:=StrToInt(FormatDateTime('yyyy',ZadannajaData));
MySes7:=CalcSolarTerm(index, st_z5)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);
MySes23:=CalcSolarTerm(index, st_z11)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24);

result:=StrToInt
(
FormatFloat('0',
abs(ZadannajaData-37549))
);

result:=result mod 9;
if result=0 then result:=9;

if ZadannajaData<37549 then
 begin
  result:=9-result;
  if result=0 then result:=9;
 end;
if ZadannajaData=37549 then result:=1;

if (ZadannajaData>MySes7) and (ZadannajaData<MySes23)then
result:=10-result; }
end;

//--------------------------------------------------------

function SesonToNo (seson:string):shortint;
begin
if seson='Становление весны' then result:=1;
if seson='Дождевая вода' then result:=2;
if seson='Пробуждение насекомых' then result:=3;
if seson='Весеннее равноденствие' then result:=4;
if seson='Чистота и ясность' then result:=5;
if seson='Хлебные дожди' then result:=6;
if seson='Становление лета' then result:=7;
if seson='Малое насыщение' then result:=8;
if seson='Колошение хлебов' then result:=9;
if seson='Летнее солнцестояние' then result:=10;
if seson='Малая жара' then result:=11;
if seson='Большая жара' then result:=12;
if seson='Становление осени' then result:=13;
if seson='Прекращение жары' then result:=14;
if seson='Белые росы' then result:=15;
if seson='Осеннее равноденствие' then result:=16;
if seson='Холодные росы' then result:=17;
if seson='Выпадение инея' then result:=18;
if seson='Становление зимы' then result:=19;
if seson='Малые снега' then result:=20;
if seson='Большие снега' then result:=21;
if seson='Зимнее солнцестояние' then result:=22;
if seson='Малые холода' then result:=23;
if seson='Большие холода' then result:=24;
end;

function ConstellNoRas(ZadannajaData: TDateTime):integer;
begin
ZadannajaData:=ZadannajaData+13/24;

result:=StrToInt
(
FormatFloat('0',
abs(ZadannajaData-37798))
);

result:=result mod 28;
if result=0 then result:=28;

if ZadannajaData<37798 then
 begin
  result:=28-result;
  if result=0 then result:=28;
 end;
if ZadannajaData=37798 then result:=1;

end;

end.
