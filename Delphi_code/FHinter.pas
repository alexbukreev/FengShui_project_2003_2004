unit FHinter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ExtCtrls, FH, MyType;

type
  TFormFHInter = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SaveDialog1: TSaveDialog;
    RichEdit1: TRichEdit;
    OpenDialog1: TOpenDialog;
    N5: TMenuItem;
    StatusBar1: TStatusBar;
    N3: TMenuItem;
    Close1: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure CalcRich;
    procedure CalcGoro;
    procedure FormShow(Sender: TObject);
    procedure StyleTitl;
    procedure StyleTitl2;
    procedure StyleText;
    procedure StyleRed;
    procedure FormCreate(Sender: TObject);
    procedure Obshee;
    function SpecialCombes: string;
    function LicoDir (lico:Single):TDirect;
    function StarInMen_1 (dir:TGua) : shortint;
    function StarInMen_2 (dir:TGua) : shortint;
    function ChecSpecial_10 (F_Lico, M_Lico, F_Gora, M_Gora, Lico_20, Gora_20:shortint):string;
    procedure Close1Click(Sender: TObject);
    function ChecSpecial_3_1 (F_Lico, M_Lico, F_Gora, M_Gora:shortint):string;
    function ChecSpecial_3_2 (F_Lico, M_Lico:shortint):string;
    function ShaYString (vetv:shortint; direct:integer):string;
    function ShaMString (vetv:shortint; direct:integer):string;
    function TaiSuiString (F_Lico, FH_JungV,vetv:shortint; direct:integer):string;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFHInter: TFormFHInter;
  MyStrings:TStringList;
  MyDirect:integer;
  z1:shortint;

implementation
uses FhCalc, FhUnit, preference, callform, people, calendar, my_moon, main;
{$R *.dfm}

function TFormFHInter.TaiSuiString (F_Lico, FH_JungV,vetv:shortint; direct:integer):string;
begin
result:='Тай Суй в знаке '+IntToZhu(vetv)+'. Усиливат влияние Дома. ';
if F_Lico=FH_JungV then
case DirectToGua(direct) of
 gua_Kan: if vetv=1 then result:=result+'В этом году эта звезда приходит на Напрвление --  благоприятно строить, делать ремонт или переезжать в жилище с данным раскладом, так как летящая звезда Направления в расцвете.';
 gua_Gen: if (vetv=2) or (vetv=3) then result:=result+'В этом году эта звезда приходит на Напрвление -- благоприятно строить, делать ремонт или переезжать в жилище с данным раскладом, так как летящая звезда Направления в расцвете.';
 gua_Zhen: if vetv=4 then result:=result+'В этом году эта звезда приходит на Напрвление -- благоприятно строить, делать ремонт или переезжать в жилище с данным раскладом, так как летящая звезда Направления в расцвете.';
 gua_Xun: if (vetv=5) or (vetv=6) then  result:=result+'В этом году эта звезда приходит на Напрвление -- благоприятно строить, делать ремонт или переезжать в жилище с данным раскладом, так как летящая звезда Направления в расцвете.';
 gua_Li: if vetv=7 then result:=result+'В этом году эта звезда приходит на Напрвление -- благоприятно строить, делать ремонт или переезжать в жилище с данным раскладом, так как летящая звезда Направления в расцвете.';
 gua_Kun: if (vetv=8) or (vetv=9) then result:=result+'В этом году эта звезда приходит на Напрвление -- благоприятно строить, делать ремонт или переезжать в жилище с данным раскладом, так как летящая звезда Направления в расцвете.';
 gua_Dui: if vetv=10 then result:=result+'В этом году эта звезда приходит на Напрвление -- благоприятно строить, делать ремонт или переезжать в жилище с данным раскладом, так как летящая звезда Направления в расцвете.';
 gua_Qian: if (vetv=11) or (vetv=12)then result:=result+'В этом году эта звезда приходит на Напрвление -- благоприятно строить, делать ремонт или переезжать в жилище с данным раскладом, так как летящая звезда Направления в расцвете.';
end else
case DirectToGua(direct) of
 gua_Kan: if vetv=1 then result:=result+'В этом году эта звезда приходит на Напрвление -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом, особенно для людей с Земной ветвью '+VetvToStr(vetv,false)+' по году рождения. ';
 gua_Gen: if (vetv=2) or (vetv=3) then result:=result+'В этом году эта звезда приходит на Напрвление -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом, особенно для людей с Земной ветвью '+VetvToStr(vetv,false)+' по году рождения. ';
 gua_Zhen: if vetv=4 then result:=result+'В этом году эта звезда приходит на Напрвление -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом, особенно для людей с Земной ветвью '+VetvToStr(vetv,false)+' по году рождения. ';
 gua_Xun: if (vetv=5) or (vetv=6) then  result:=result+'В этом году эта звезда приходит на Напрвление -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом, особенно для людей с Земной ветвью '+VetvToStr(vetv,false)+' по году рождения. ';
 gua_Li: if vetv=7 then result:=result+'В этом году эта звезда приходит на Напрвление -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом, особенно для людей с Земной ветвью '+VetvToStr(vetv,false)+' по году рождения. ';
 gua_Kun: if (vetv=8) or (vetv=9) then result:=result+'В этом году эта звезда приходит на Напрвление -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом, особенно для людей с Земной ветвью '+VetvToStr(vetv,false)+' по году рождения. ';
 gua_Dui: if vetv=10 then result:=result+'В этом году эта звезда приходит на Напрвление -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом, особенно для людей с Земной ветвью '+VetvToStr(vetv,false)+' по году рождения. ';
 gua_Qian: if (vetv=11) or (vetv=12)then result:=result+'В этом году эта звезда приходит на Напрвление -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом, особенно для людей с Земной ветвью '+VetvToStr(vetv,false)+' по году рождения. ';
end;
end;

function TFormFHInter.ShaYString (vetv:shortint; direct:integer):string;
begin
 case vetv of
 1,5,9: begin
         result:='Три разрушителя по году на юге. ';
         if direct<46 then
            result:=result+'В этом году Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
         if direct>315 then
            result:=result+'В этом году Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
        end;
 2,6,10:begin
         result:='Три разрушителя по году на востоке. ';
         if direct>225 then if direct<316 then
            result:=result+'В этом году Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
        end;
 3,7,11:begin
         result:='Три разрушителя по году на севере. ';
         if direct>135 then if direct<226 then
            result:=result+'В этом году Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
        end;
 4,8,12:begin
         result:='Три разрушителя по году на западе. ';
         if direct>45 then if direct<136 then
            result:=result+'В этом году Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
        end;
 end;
end;

function TFormFHInter.ShaMString (vetv:shortint; direct:integer):string;
begin
 case vetv of
 1,5,9: begin
         result:='Три разрушителя по сезону на юге. ';
          if direct<46 then
           result:=result+'В этом сезоне Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
          if direct>326 then
           result:=result+'В этом сезоне Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
        end;
 2,6,10:begin
         result:='Три разрушителя по сезону на востоке. ';
         if direct>225 then if direct<316 then
            result:=result+'В этом сезоне Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
        end;
 3,7,11:begin
         result:='Три разрушителя по сезону на севере. ';
         if direct>135 then if direct<226 then
            result:=result+'В этом сезоне Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
        end;
 4,8,12:begin
         result:='Три разрушителя по сезону на западе. ';
         if direct>45 then if direct<136 then
            result:=result+'В этом сезоне Три разрушителя приходят на Гору -- нельзя строить, делать ремонт или переезжать в жилище с данным раскладом.';
        end;
 end
end;

function TFormFHInter.ChecSpecial_3_2 (F_Lico, M_Lico:shortint):string;
begin
result:='Трехсоставной знак родителей -- НЕТ.';

if  F_Lico=M_Lico then
begin
 if (LicoDir(MyFHDirect)=d_S) or (LicoDir(MyFHDirect)=d_E) or (LicoDir(MyFHDirect)=d_NW) then
 begin
  if (SanGua (StrToInt(FormFH.LabelLiG.Caption), StrToInt(FormFH.LabelZhenG.Caption), StrToInt(FormFH.LabelQianG.Caption)))
      and
     (SanGua (StrToInt(FormFH.LabelLiN.Caption), StrToInt(FormFH.LabelZhenN.Caption), StrToInt(FormFH.LabelQianN.Caption)))
  then result:='Трехсоставной знак родителей Дома Ли.';
 end;

 if (LicoDir(MyFHDirect)=d_N) or (LicoDir(MyFHDirect)=d_W) or (LicoDir(MyFHDirect)=d_SE) then
 begin
  if (SanGua (StrToInt(FormFH.LabelKanG.Caption), StrToInt(FormFH.LabelXunG.Caption), StrToInt(FormFH.LabelDuiG.Caption)))
      and
     (SanGua (StrToInt(FormFH.LabelKanN.Caption), StrToInt(FormFH.LabelXunN.Caption), StrToInt(FormFH.LabelDuiN.Caption)))
  then result:='Трехсоставной знак родителей Дома Кань.';
 end;
end;

if (SanGua (StrToInt(FormFH.LabelGenG.Caption), StrToInt(FormFH.LabelGenN.Caption), StrToInt(FormFH.LabelGen20.Caption)))
      and
   (SanGua (StrToInt(FormFH.LabelCentrG.Caption), StrToInt(FormFH.LabelCentrN.Caption), StrToInt(FormFH.LabelCentr20.Caption)))
      and
   (SanGua (StrToInt(FormFH.LabelKunG.Caption), StrToInt(FormFH.LabelKunN.Caption), StrToInt(FormFH.LabelKun20.Caption)))
  then result:='Сложный трехсоставной знак родителей. Расцвет во всех циклах.';

end;

function TFormFHInter.ChecSpecial_3_1(F_Lico, M_Lico, F_Gora, M_Gora:shortint):string;
begin
result:='Трехсоставной знак соединенных чисел -- НЕТ.';

if F_Lico=M_lico then
begin
  if ((F_Lico=1) and (M_Gora=2) and(F_Gora=3)) or
     ((F_Lico=1) and (F_Gora=2) and(M_Gora=3)) or
     ((F_Lico=1) and (M_Gora=2) and(F_Gora=9)) or
     ((F_Lico=1) and (F_Gora=2) and(M_Gora=9)) or
     ((F_Lico=1) and (M_Gora=9) and(F_Gora=8)) or
     ((F_Lico=1) and (F_Gora=9) and(M_Gora=8)) or

     ((F_Lico=2) and (M_Gora=3) and(F_Gora=4)) or
     ((F_Lico=2) and (F_Gora=3) and(M_Gora=4)) or
     ((F_Lico=2) and (M_Gora=3) and(F_Gora=1)) or
     ((F_Lico=2) and (F_Gora=3) and(M_Gora=1)) or
     ((F_Lico=2) and (M_Gora=1) and(F_Gora=9)) or
     ((F_Lico=2) and (F_Gora=1) and(M_Gora=9)) or

     ((F_Lico=3) and (M_Gora=4) and(F_Gora=5)) or
     ((F_Lico=3) and (F_Gora=4) and(M_Gora=5)) or
     ((F_Lico=3) and (M_Gora=4) and(F_Gora=2)) or
     ((F_Lico=3) and (F_Gora=4) and(M_Gora=2)) or
     ((F_Lico=3) and (M_Gora=2) and(F_Gora=1)) or
     ((F_Lico=3) and (F_Gora=2) and(M_Gora=1)) or

     ((F_Lico=4) and (M_Gora=5) and(F_Gora=6)) or
     ((F_Lico=4) and (F_Gora=5) and(M_Gora=6)) or
     ((F_Lico=4) and (M_Gora=5) and(F_Gora=3)) or
     ((F_Lico=4) and (F_Gora=5) and(M_Gora=3)) or
     ((F_Lico=4) and (M_Gora=3) and(F_Gora=2)) or
     ((F_Lico=4) and (F_Gora=3) and(M_Gora=2)) or

     ((F_Lico=5) and (M_Gora=6) and(F_Gora=7)) or
     ((F_Lico=5) and (F_Gora=6) and(M_Gora=7)) or
     ((F_Lico=5) and (M_Gora=6) and(F_Gora=4)) or
     ((F_Lico=5) and (F_Gora=6) and(M_Gora=4)) or
     ((F_Lico=5) and (M_Gora=4) and(F_Gora=3)) or
     ((F_Lico=5) and (F_Gora=4) and(M_Gora=3)) or

     ((F_Lico=6) and (M_Gora=7) and(F_Gora=8)) or
     ((F_Lico=6) and (F_Gora=7) and(M_Gora=8)) or
     ((F_Lico=6) and (M_Gora=7) and(F_Gora=5)) or
     ((F_Lico=6) and (F_Gora=7) and(M_Gora=5)) or
     ((F_Lico=6) and (M_Gora=5) and(F_Gora=4)) or
     ((F_Lico=6) and (F_Gora=5) and(M_Gora=4)) or

     ((F_Lico=7) and (M_Gora=8) and(F_Gora=9)) or
     ((F_Lico=7) and (F_Gora=8) and(M_Gora=9)) or
     ((F_Lico=7) and (M_Gora=8) and(F_Gora=6)) or
     ((F_Lico=7) and (F_Gora=8) and(M_Gora=6)) or
     ((F_Lico=7) and (M_Gora=6) and(F_Gora=5)) or
     ((F_Lico=7) and (F_Gora=6) and(M_Gora=5)) or

     ((F_Lico=8) and (M_Gora=9) and(F_Gora=1)) or
     ((F_Lico=8) and (F_Gora=9) and(M_Gora=1)) or
     ((F_Lico=8) and (M_Gora=9) and(F_Gora=7)) or
     ((F_Lico=8) and (F_Gora=9) and(M_Gora=7)) or
     ((F_Lico=8) and (M_Gora=7) and(F_Gora=6)) or
     ((F_Lico=8) and (F_Gora=7) and(M_Gora=6)) or

     ((F_Lico=9) and (M_Gora=1) and(F_Gora=2)) or
     ((F_Lico=9) and (F_Gora=1) and(M_Gora=2)) or
     ((F_Lico=9) and (M_Gora=1) and(F_Gora=8)) or
     ((F_Lico=9) and (F_Gora=1) and(M_Gora=8)) or
     ((F_Lico=9) and (M_Gora=8) and(F_Gora=7)) or
     ((F_Lico=9) and (F_Gora=8) and(M_Gora=7))

    then
     result:='Трехсоставной знак соединенных чисел. Расцвет дома, на протяжении '
         +IntToStr(F_Lico)+'-го, '+IntToStr(F_Gora)+'-го и '+IntToStr(M_Gora)+'-го циклов.';
end;

if F_Gora=M_Gora then
begin
  if ((F_Gora=1) and (M_Lico=2) and(F_Lico=3)) or
     ((F_Gora=1) and (F_Lico=2) and(M_Lico=3)) or
     ((F_Gora=1) and (M_Lico=2) and(F_Lico=9)) or
     ((F_Gora=1) and (F_Lico=2) and(M_Lico=9)) or
     ((F_Gora=1) and (M_Lico=9) and(F_Lico=8)) or
     ((F_Gora=1) and (F_Lico=9) and(M_Lico=8)) or

     ((F_Gora=2) and (M_Lico=3) and(F_Lico=4)) or
     ((F_Gora=2) and (F_Lico=3) and(M_Lico=4)) or
     ((F_Gora=2) and (M_Lico=3) and(F_Lico=1)) or
     ((F_Gora=2) and (F_Lico=3) and(M_Lico=1)) or
     ((F_Gora=2) and (M_Lico=1) and(F_Lico=9)) or
     ((F_Gora=2) and (F_Lico=1) and(M_Lico=9)) or

     ((F_Gora=3) and (M_Lico=4) and(F_Lico=5)) or
     ((F_Gora=3) and (F_Lico=4) and(M_Lico=5)) or
     ((F_Gora=3) and (M_Lico=4) and(F_Lico=2)) or
     ((F_Gora=3) and (F_Lico=4) and(M_Lico=2)) or
     ((F_Gora=3) and (M_Lico=2) and(F_Lico=1)) or
     ((F_Gora=3) and (F_Lico=2) and(M_Lico=1)) or

     ((F_Gora=4) and (M_Lico=5) and(F_Lico=6)) or
     ((F_Gora=4) and (F_Lico=5) and(M_Lico=6)) or
     ((F_Gora=4) and (M_Lico=5) and(F_Lico=3)) or
     ((F_Gora=4) and (F_Lico=5) and(M_Lico=3)) or
     ((F_Gora=4) and (M_Lico=3) and(F_Lico=2)) or
     ((F_Gora=4) and (F_Lico=3) and(M_Lico=2)) or

     ((F_Gora=5) and (M_Lico=6) and(F_Lico=7)) or
     ((F_Gora=5) and (F_Lico=6) and(M_Lico=7)) or
     ((F_Gora=5) and (M_Lico=6) and(F_Lico=4)) or
     ((F_Gora=5) and (F_Lico=6) and(M_Lico=4)) or
     ((F_Gora=5) and (M_Lico=4) and(F_Lico=3)) or
     ((F_Gora=5) and (F_Lico=4) and(M_Lico=3)) or

     ((F_Gora=6) and (M_Lico=7) and(F_Lico=8)) or
     ((F_Gora=6) and (F_Lico=7) and(M_Lico=8)) or
     ((F_Gora=6) and (M_Lico=7) and(F_Lico=5)) or
     ((F_Gora=6) and (F_Lico=7) and(M_Lico=5)) or
     ((F_Gora=6) and (M_Lico=5) and(F_Lico=4)) or
     ((F_Gora=6) and (F_Lico=5) and(M_Lico=4)) or

     ((F_Gora=7) and (M_Lico=8) and(F_Lico=9)) or
     ((F_Gora=7) and (F_Lico=8) and(M_Lico=9)) or
     ((F_Gora=7) and (M_Lico=8) and(F_Lico=6)) or
     ((F_Gora=7) and (F_Lico=8) and(M_Lico=6)) or
     ((F_Gora=7) and (M_Lico=6) and(F_Lico=5)) or
     ((F_Gora=7) and (F_Lico=6) and(M_Lico=5)) or

     ((F_Gora=8) and (M_Lico=9) and(F_Lico=1)) or
     ((F_Gora=8) and (F_Lico=9) and(M_Lico=1)) or
     ((F_Gora=8) and (M_Lico=9) and(F_Lico=7)) or
     ((F_Gora=8) and (F_Lico=9) and(M_Lico=7)) or
     ((F_Gora=8) and (M_Lico=7) and(F_Lico=6)) or
     ((F_Gora=8) and (F_Lico=7) and(M_Lico=6)) or

     ((F_Gora=9) and (M_Lico=1) and(F_Lico=2)) or
     ((F_Gora=9) and (F_Lico=1) and(M_Lico=2)) or
     ((F_Gora=9) and (M_Lico=1) and(F_Lico=8)) or
     ((F_Gora=9) and (F_Lico=1) and(M_Lico=8)) or
     ((F_Gora=9) and (M_Lico=8) and(F_Lico=7)) or
     ((F_Gora=9) and (F_Lico=8) and(M_Lico=7))

    then
     result:='Трехсоставной знак соединенных чисел. Расцвет дома, на протяжении '
         +IntToStr(F_Gora)+'-го, '+IntToStr(M_Lico)+'-го и '+IntToStr(F_Lico)+'-го циклов.';
end;
end;


function TFormFHInter.ChecSpecial_10(F_Lico, M_Lico, F_Gora, M_Gora, Lico_20, Gora_20:shortint):string;
var
flag:boolean;
begin
   result:='Соединение в Десяти -- НЕТ.';

if (StrToInt(FormFh.LabelXunG.Caption)+StrToInt(FormFh.LabelXun20.Caption)=10) and
   (StrToInt(FormFh.LabelLiG.Caption)+StrToInt(FormFh.LabelLi20.Caption)=10) and
   (StrToInt(FormFh.LabelZhenG.Caption)+StrToInt(FormFh.LabelZhen20.Caption)=10) then
   begin
    result:='Соединение в Десяти. Благоприятный расклад. Сильная Гора, сильное Направление.';
    flag:=true;
   end;

if (StrToInt(FormFh.LabelXunG.Caption)+StrToInt(FormFh.LabelXunN.Caption)=10) and
   (StrToInt(FormFh.LabelLiG.Caption)+StrToInt(FormFh.LabelLiN.Caption)=10) and
   (StrToInt(FormFh.LabelZhenG.Caption)+StrToInt(FormFh.LabelZhenN.Caption)=10) then
   begin
    result:='Соединение в Десяти. Благоприятный расклад. Сильная Гора, сильное Направление.';
    flag:=true;
   end;


if (StrToInt(FormFh.LabelXun20.Caption)+StrToInt(FormFh.LabelXunN.Caption)=10) and
   (StrToInt(FormFh.LabelLi20.Caption)+StrToInt(FormFh.LabelLiN.Caption)=10) and
   (StrToInt(FormFh.LabelZhen20.Caption)+StrToInt(FormFh.LabelZhenN.Caption)=10) then
   begin
    result:='Соединение в Десяти. Благоприятный расклад. Сильная Гора, сильное Направление.';
    flag:=true;
   end;

  if NOT(flag) then
  begin
   if ((F_Lico+M_Lico=10) or  (Lico_20+M_Lico=10) or (Lico_20+F_Lico=10))
   and
   ((F_Gora+M_Gora=10) or  (Gora_20+M_Gora=10) or (Gora_20+F_Gora=10)) then
   begin
    result:='Соединение в Десяти в двух Дворцах Горы и Направления. Благоприятный расклад. Сильная Гора, сильное Направление.';
    flag:=true;
   end;
  end;

end;


function TFormFHInter.StarInMen_1 (dir:TGua) : shortint;
begin
case dir of
gua_Qian:result:=StrToInt(FormFH.LabelQianMen_1.Caption);
gua_Kan:result:=StrToInt(FormFH.LabelKanMen_1.Caption);
gua_Gen:result:=StrToInt(FormFH.LabelGenMen_1.Caption);
gua_Zhen:result:=StrToInt(FormFH.LabelZhenMen_1.Caption);
gua_Xun:result:=StrToInt(FormFH.LabelXunMen_1.Caption);
gua_Li:result:=StrToInt(FormFH.LabelLiMen_1.Caption);
gua_Kun:result:=StrToInt(FormFH.LabelKunMen_1.Caption);
gua_Dui:result:=StrToInt(FormFH.LabelDuiMen_1.Caption);
end;
end;


function TFormFHInter.StarInMen_2 (dir:TGua) : shortint;
begin
case dir of
gua_Qian:result:=StrToInt(FormFH.LabelQianMen_2.Caption);
gua_Kan:result:=StrToInt(FormFH.LabelKanMen_2.Caption);
gua_Gen:result:=StrToInt(FormFH.LabelGenMen_2.Caption);
gua_Zhen:result:=StrToInt(FormFH.LabelZhenMen_2.Caption);
gua_Xun:result:=StrToInt(FormFH.LabelXunMen_2.Caption);
gua_Li:result:=StrToInt(FormFH.LabelLiMen_2.Caption);
gua_Kun:result:=StrToInt(FormFH.LabelKunMen_2.Caption);
gua_Dui:result:=StrToInt(FormFH.LabelDuiMen_2.Caption);
end;
end;

procedure TFormFHInter.N2Click(Sender: TObject);
begin
if SaveDialog1.Execute then
  begin
   RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
  end;
end;


//--------------------------------------------------------

procedure TFormFHInter.N5Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

//--------------------------------------------------------

procedure TFormFHInter.CalcRich;
begin
MyStrings:=TStringList.Create;

RichEdit1.Visible:=false;
RichEdit1.Lines.Clear;
RichEdit1.Paragraph.FirstIndent:=6;
RichEdit1.Paragraph.LeftIndent:=0;
RichEdit1.Paragraph.RightIndent:=3;

StyleTitl;
RichEdit1.Lines.Add('ИНТЕРПРЕТАЦИЯ ЗНАКА');
if ZnakRasklada (MyFHDirect) then
RichEdit1.Lines.Add('Основной знак.')
else
 begin
   StyleRed;
   RichEdit1.Lines.Add('Замещающий знак.');
   StyleTitl;
 end;
RichEdit1.Lines.Add('');
RichEdit1.Lines.Add(FormFH.LabelCentr20.Caption+'-й цикл, Гора '+ Gora +', Направление '+Voda);

Obshee;
RichEdit1.Lines.Add('');

RichEdit1.Lines.Insert(0,'');
RichEdit1.Visible:=true;
MyStrings.Free;
end;

//--------------------------------------------------------

procedure TFormFHInter.Obshee;
var
F_Lico,M_Lico,F_Gora, M_Gora, Lico_20, Gora_20:shortint;
index:shortint;
begin

F_Lico:=LabelDirectN(LicoDir(MyFHDirect));
M_Lico:= LabelDirectG(LicoDir(MyFHDirect));
F_Gora:= LabelDirectN(LicoDir(MyFHDirect+180));
M_Gora:= LabelDirectG(LicoDir(MyFHDirect+180));
Lico_20:=LabelDirect20(LicoDir(MyFHDirect));
Gora_20:=LabelDirect20(LicoDir(MyFHDirect+180));


   StyleTitl;
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('Изначальные характеристики знака');
   RichEdit1.Lines.Add(' ');

   if NOT(ZnakRasklada (MyFHDirect)) then
   begin
    StyleTitl2;
    RichEdit1.Lines.Add('Комментарий к Замещающему знаку.');
    StyleText;
    RichEdit1.Lines.Add(Comments);
    RichEdit1.Lines.Add(' ');
   end;


if (M_Gora=z1) and (F_Lico=z1)  then
  begin
   StyleTitl2;
   RichEdit1.Lines.Add('Сильная Гора, сильное Направление');
   StyleText;
   RichEdit1.Lines.Add('Сильная Гора, предвещает расцвет мужской части рода.');
   RichEdit1.Lines.Add('Сильное Направление предвещает рост благосостояния семьи.');
  end;

if (M_Gora=z1) and (F_Lico<>z1) then
  begin
   StyleTitl2;
   RichEdit1.Lines.Add('Cильная Гора Гора, слабое Направление');
   StyleText;
   RichEdit1.Lines.Add('Сильная Гора, предвещает расцвет рода.');
   RichEdit1.Lines.Add('Слабое Направление предвещает потери денег и разрушение благосостояния семьи.');
  end; 

if (M_Gora<>z1) and (F_Lico=z1) then
  begin 
   StyleTitl2;
   RichEdit1.Lines.Add('Слабая Гора, сильное Направление');
   StyleText;
   RichEdit1.Lines.Add('Слабая Гора, предвещает разрушения для рода.');
   RichEdit1.Lines.Add('Сильное Направление предвещает рост благосостояния семьи.');
  end;

if (M_Gora<>z1) and (F_Lico<>z1) then
  begin
   StyleTitl2;
   RichEdit1.Lines.Add('Слабая Гора, слабое Направление');
   StyleText;
   RichEdit1.Lines.Add('Слабая Гора, предвещает разрушения для рода.');
   RichEdit1.Lines.Add('Слабое Направление предвещает потери денег и разрушение благосостояния семьи.');
  end;

   RichEdit1.Lines.Add(' ');
   StyleTitl2;
   RichEdit1.Lines.Add('Особые комбинации');
   StyleText;
   RichEdit1.Lines.Add( ChecSpecial_10 (F_Lico, M_Lico, F_Gora, M_Gora, Lico_20, Gora_20));
   RichEdit1.Lines.Add( ChecSpecial_3_1(F_Lico, M_Lico, F_Gora, M_Gora));
   RichEdit1.Lines.Add( ChecSpecial_3_2 (F_Lico, M_Lico));
   
RichEdit1.Lines.Add('');
StyleTitl2;
RichEdit1.Lines.Add('Дом Направления');
StyleText;
case F_Lico of
 1: case M_Lico of
    1:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
    2,5,8:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
    3,4:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
    6,7:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
    9:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
    end;
 2,5,8: case M_Lico of
    1:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
    2,5,8:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
    3,4:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
    6,7:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
    9:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
    end;
 3,4:case M_Lico of
     1:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
     2,5,8:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
     3,4:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
     6,7:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
     9:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
     end;
 6,7:case M_Lico of
     1:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
     2,5,8:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
     3,4:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
     6,7:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
     9:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
     end;
 9:case M_Lico of
     1:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
     2,5,8:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
     3,4:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
     6,7:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
     9:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
   end;
end;

RichEdit1.Lines.Add('');
StyleTitl2;
RichEdit1.Lines.Add('Дом Горы');
StyleText;
case M_Gora of
 1: case F_Gora of
    1:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
    2,5,8:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
    3,4:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
    6,7:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
    9:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
    end;
 2,5,8: case F_Gora of
    1:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
    2,5,8:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
    3,4:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
    6,7:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
    9:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
    end;
 3,4:case F_Gora of
     1:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
     2,5,8:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
     3,4:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
     6,7:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
     9:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
     end;
 6,7:case F_Gora of
     1:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
     2,5,8:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
     3,4:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
     6,7:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
     9:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
     end;
 9:case F_Gora of
     1:RichEdit1.Lines.Add('Преодоление на входе. Cчастье');
     2,5,8:RichEdit1.Lines.Add('Порождение на выходе. Несчастье');
     3,4:RichEdit1.Lines.Add('Порождение на входе. Cчастье');
     6,7:RichEdit1.Lines.Add('Преодоление на выходе. Несчастье');
     9:RichEdit1.Lines.Add('Гармоническое согласие. Счастье');
   end;
end;

     RichEdit1.Lines.Add(' ');
  if (F_Lico<>z1) or (z1<>5) then
    begin
     StyleTitl2;
     if StrToInt(FormFh.LabelCentr20.Caption)>Lico_20 then
     RichEdit1.Lines.Add('Земной цикл: '+
     IntToStr(abs(StrToInt(FormFh.LabelCentr20.Caption)-(Lico_20+9))*20)+' лет')
     else
     RichEdit1.Lines.Add('Земной цикл: '+
     IntToStr(abs(StrToInt(FormFh.LabelCentr20.Caption)-Lico_20)*20)+' лет');

     StyleText;
     RichEdit1.Lines.Add('Когда наступит '+IntToStr(Lico_20)+'-й цикл, Земная энергия дома войдет в фазу отключения.');
     RichEdit1.Lines.Add(' ');
   end;

   if (F_Lico=z1) and (F_Lico=M_Lico) then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Земной цикл по горной звезде в Доме Горы');
     StyleText;
     RichEdit1.Lines.Add('Когда наступит '+IntToStr(F_Gora)+'-й цикл, Земная энергия дома войдет в фазу отключения.');
     RichEdit1.Lines.Add(' ');
   end;

     StyleTitl2;
     RichEdit1.Lines.Add('Специальные комбинации для летящих звезд Направления и Горы');
     StyleText;
     RichEdit1.Lines.Add('Дом знака Чжэнь -- '+FormFH.SpecCombes(gua_Zhen));
     RichEdit1.Lines.Add('Дом знака Сюнь -- '+FormFH.SpecCombes(gua_Xun));
     RichEdit1.Lines.Add('Дом знака Ли -- '+FormFH.SpecCombes(gua_Li));
     RichEdit1.Lines.Add('Дом знака Кунь -- '+FormFH.SpecCombes(gua_Kun));
     RichEdit1.Lines.Add('Дом знака Дуй -- '+FormFH.SpecCombes(gua_Dui));
     RichEdit1.Lines.Add('Дом знака Цянь -- '+FormFH.SpecCombes(gua_Qian));
     RichEdit1.Lines.Add('Дом знака Кань -- '+FormFH.SpecCombes(gua_Kan));
     RichEdit1.Lines.Add('Дом знака Гэнь -- '+FormFH.SpecCombes(gua_Gen));
     RichEdit1.Lines.Add('Центрльный Дом -- '+FormFH.SpecCombes(gua_Center));
     RichEdit1.Lines.Add(' ');


 //-----------------------------------------


   StyleTitl;
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('Характеристики знака на '+IntToStr(FH_JungV)+'-й цикл');
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   StyleText;

   if (F_Lico<>z1) or (z1<>5) then
   begin
   if Lico_20=FH_JungV then
    begin
     RichEdit1.Lines.Add('В этом цикле энергия дома вошла в фазу отключения. Необходим капитальный ремон или перестройка дома. Дом выйдет из фазы упадка в следующем цикле.');
     RichEdit1.Lines.Add(' ');
    end;
   end;

   if (F_Lico=z1) and (F_Lico=M_Lico) then
    begin
     if F_Gora=FH_JungV then
     begin
     RichEdit1.Lines.Add('В этом цикле энергия дома вошла в фазу отключения по горной звезде в Доме Горы. Необходим капитальный ремон или перестройка дома. Дом выйдет из фазы упадка в следующем цикле.');
     RichEdit1.Lines.Add(' ');
     end;
   end;
   
   StyleTitl2;
   RichEdit1.Lines.Add('Звезда Направления в Доме Направления');
   StyleText;
   RichEdit1.Lines.Add('Летящая звезда Направления '+IntToStr(F_Lico)+' '+ScriptStar(F_Lico)+' в фазе '+ StarsFazaNapr(FH_JungV, F_Lico));
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   RichEdit1.Lines.Add('Горная звезда в Доме Горы');
   StyleText;
   RichEdit1.Lines.Add('Летящая горная звезда '+IntToStr(M_Gora)+' '+ScriptStar(M_Gora)+' в фазе '+ StarsFazaGora(FH_JungV, M_Gora));
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   RichEdit1.Lines.Add('Основные городские врата в знаке '+FHGuaToStrSort(Men_Osn(StrToInt(FormFH.EditAz.Text))));
   StyleText;

   index:=StarInMen_1 (Men_Osn(StrToInt(FormFH.EditAz.Text)));
   RichEdit1.Lines.Add('Во вратах звезда '+IntToStr(index)+' '+ScriptStar(Index)+' в фазе '
   + StarsFazaMen(FH_JungV, index));
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   RichEdit1.Lines.Add('Дополнительные городские врата в знаке '+FHGuaToStrSort(Men_Dop(StrToInt(FormFH.EditAz.Text))));
   StyleText;

   index:=StarInMen_2 (Men_Dop(StrToInt(FormFH.EditAz.Text)));
   RichEdit1.Lines.Add('Во вратах звезда '+IntToStr(index)+' '+ScriptStar(Index)+' в фазе '
   + StarsFazaMen(FH_JungV, index));
   RichEdit1.Lines.Add(' ');

   //------------------------

   StyleTitl;
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('Характеристики знака на '+FH_Date);
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   RichEdit1.Lines.Add('Позиция Тай Суя');
   RichEdit1.Lines.Add(' ');
   StyleText;
   RichEdit1.Lines.Add(TaiSuiString (F_Lico, FH_JungV,FH_Ymain2, MyFHDirect));
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('Летящий Тай Суй по году приходит в '+FHGuaToStrSort(FenTaiSui (FH_YearStarV, FH_Ymain2))+'. Усиливает влияние Дома.');

   RichEdit1.Lines.Add(' ');
   StyleTitl2;
   RichEdit1.Lines.Add('Большое разрушение Пятерки желтой');
   StyleText;
   RichEdit1.Lines.Add(' ');
   if FH_YearStarV =5 then
   RichEdit1.Lines.Add('Пятерка желтая по году приходит в Центр. Не оказывает негативного влияния в этом году.')
   else
    begin
     RichEdit1.Lines.Add('Пятерка желтая по году приходит на знак '+FHGuaToStrSort(StarToDom (FH_YearStarV, 5))+'. Это Большое разрушение Пятерки желтой. Крайне несчастливое направление в этом году.');
     if StarToDom (FH_YearStarV, 5)=DirectToGua(MyFHDirect) then
     RichEdit1.Lines.Add('Пятерка желтая по году попадает на Направление. Не благоприятно в этом году строить, переезжать или делать ремонт в жилище с таким раскладом.');
     if StarToDom (FH_YearStarV, 5)=DirectToGua(MyFHDirect+180) then
     RichEdit1.Lines.Add('Пятерка желтая по году попадает на Гору. Не благоприятно в этом году строить, переезжать или делать ремонт в жилище с таким раскладом.');
     RichEdit1.Lines.Add(FormFH.WuShaCombes(StarToDom (FH_YearStarV, 5)));
   end;

   RichEdit1.Lines.Add(' ');
   if FH_MoonStarV =5 then
   RichEdit1.Lines.Add('Пятерка желтая по сезону приходит в Центр. Не оказывает негативного влияния в этом сезоне.')
   else
   begin
     RichEdit1.Lines.Add('Пятерка желтая по сезону приходит на знак '+FHGuaToStrSort(StarToDom (FH_MoonStarV, 5))+'. Это Большое разрушение Птерки желтой. Крайне несчастливое направление в этом сезоне.');
     if StarToDom (FH_MoonStarV, 5)=DirectToGua(MyFHDirect) then
     RichEdit1.Lines.Add('Пятерка желтая по сезону попадает на Направление. Не благоприятно в этом сезоне строить, переезжать или делать ремонт в жилище с таким раскладом.');
     if StarToDom (FH_MoonStarV, 5)=DirectToGua(MyFHDirect+180) then
     RichEdit1.Lines.Add('Пятерка желтая по сезону попадает на Гору. Не благоприятно в этом сезоне строить, переезжать или делать ремонт в жилище с таким раскладом.');
     RichEdit1.Lines.Add(FormFH.WuShaCombes(StarToDom (FH_MoonStarV, 5)));
   end;
   
   RichEdit1.Lines.Add(' ');
   StyleTitl2;
   RichEdit1.Lines.Add('Прочие силы разрушающего дыхания ша');
   StyleText;
   RichEdit1.Lines.Add(' ');

   RichEdit1.Lines.Add(ShaYString (FH_Ymain2, MyFHDirect));
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add(ShaMString (FH_Mmain2, MyFHDirect));
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('Летящий Тай Суй по сезону приходит в '+FHGuaToStrSort(FenTaiSui (FH_MoonStarV, FH_Ymain2))+'. Это темное установление. В этом направлении не благоприятно совершать ремонт, перестановку, любые движения в этом месяце.');

   RichEdit1.Lines.Add(' ');
   if FH_YearStarV =2 then
   RichEdit1.Lines.Add('Двойка черная по году приходит в Центр. Не оказывает негативного влияния в этом году.')
   else RichEdit1.Lines.Add('Двойка черная по году приходит на знак '+FHGuaToStrSort(StarToDom (FH_YearStarV, 2))+'. Предвещает болезни.');

   RichEdit1.Lines.Add(' ');
   if FH_MoonStarV =2 then
   RichEdit1.Lines.Add('Двойка черная по сезону приходит в Центр. Не оказывает негативного влияния в этом сезоне.')
   else RichEdit1.Lines.Add('Двойка черная по сезону приходит на знак '+FHGuaToStrSort(StarToDom (FH_MoonStarV, 2))+'. Предвещает болезни.');

RichEdit1.Lines.Add('');
end;



//--------------------------------------------------------

procedure TFormFHInter.FormShow(Sender: TObject);
begin
if ControlForm then
 begin
  Caption:='Интерпретация: '+FormFh.Caption;
  StatusBar1.Panels[0].Text:=FormFh.StatusBarFH.Caption;
  CalcRich
 end
else
 begin
  Caption:='Прогноз на '+FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime)+' год';
  CalcGoro;
 end;
end;

//--------------------------------------------------------

procedure TFormFHInter.StyleTitl;
begin
RichEdit1.SelAttributes.Color:=clGreen;
RichEdit1.SelAttributes.Size:=12;
RichEdit1.SelAttributes.Style:=[fsBold];
end;

//--------------------------------------------------------

procedure TFormFHInter.StyleText;
begin
RichEdit1.SelAttributes.Color:=clBlack;
//RichEdit1.SelAttributes.Size:=10;
RichEdit1.SelAttributes.Style:=[];
end;

//--------------------------------------------------------

procedure TFormFHInter.StyleTitl2;
begin
RichEdit1.SelAttributes.Color:=clBlack;
RichEdit1.SelAttributes.Size:=10;
RichEdit1.SelAttributes.Style:=[fsBold];
end;

//--------------------------------------------------------

procedure TFormFHInter.StyleRed;
begin
RichEdit1.SelAttributes.Color:=clMaroon;
RichEdit1.SelAttributes.Size:=12;
RichEdit1.SelAttributes.Style:=[fsBold];
end;

procedure TFormFHInter.FormCreate(Sender: TObject);
begin
 N1.Caption:='Файл';
 N5.Caption:='Открыть';
 N2.Caption:='Сохранить как...';
 Close1.Caption:='Закрыть';


 Left:=17;//(screen.Width-width)div 2;  //240;
 top:=113;//(screen.Height-height) div 2;//220;
 top:=top+PositionFHInfo;
 left:=left+PositionFHInfo;
 PositionFHInfo:=PositionFHInfo+20;
 if top>screen.Height-height-50 then
  begin
   PositionFHInfo:=20;
   Left:=17;//(screen.Width-width)div 2;
   top:=113;//(screen.Height-height) div 2;
  end;
  z1:=StrToInt(FormFh.LabelCentr20.caption);
end;   

//--------------------------------------------------------

function TFormFHInter.LicoDir (lico:Single):TDirect;
begin
 if lico>360 then lico:=lico-360;
 if (lico>337.5) and (lico<361) then result:=d_N;
 if lico>=0 then result:=d_N;
 if (lico>0) and (lico<22.5)then result:=d_N;
 if (lico>22.5) and (lico<67.5)then result:=d_NE;
 if (lico>67.5) and (lico<112.5)then result:=d_E;
 if (lico>112.5) and (lico<157.5)then result:=d_SE;
 if (lico>157.5) and (lico<202.5)then result:=d_S;
 if (lico>202.5) and (lico<247.5)then result:=d_SW;
 if (lico>247.5) and (lico<292.5)then result:=d_W;
 if (lico>292.5) and (lico<337.5)then result:=d_NW;
end;

//--------------------------------------------------------


function  TFormFHInter.SpecialCombes: string;
begin

end;

//-------------------------


procedure TFormFHInter.CalcGoro;
var NextStar, MyYarStar, MyNextStar:shortint;
begin
MyYarStar:=YearStarV;
if Pol=ij_In then
   MyYarStar:= InJanStarRe(MyYarStar);

MyNextStar:=NextStar;
if Pol=ij_In then
   MyNextStar:= InJanStarRe(MyNextStar);



MyStrings:=TStringList.Create;
MyStrings.Clear;

RichEdit1.Visible:=false;
RichEdit1.Lines.Clear;
RichEdit1.Paragraph.FirstIndent:=6;
RichEdit1.Paragraph.LeftIndent:=0;
RichEdit1.Paragraph.RightIndent:=3;

     StyleTitl;
     RichEdit1.Lines.Add('Прогноз на '+FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime)+
                         ' год (с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses22)+' по '+
                         FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+(CalcSolarTerm(StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime))+1, st_j1)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24)))+')');

     StyleTitl2;
     RichEdit1.Lines.Add(FormCalendar.YearStar.Caption+' '+
                         IntToStr(YearStarV)+' '+FormPeople.ScriptStarRod(ij_Jan, YearStarV));

     RichEdit1.Lines.Add('');
     StyleTitl2;
     RichEdit1.Lines.Add('Имя: '+FormPeople.EditNamePeople.Text);
     StyleText;
     if Pol=ij_In then
     RichEdit1.Lines.Add('Женщина.') else
     RichEdit1.Lines.Add('Мужчина.');
     RichEdit1.Lines.Add('Дата и время рождения: '+FormPeople.LabelNow.Caption);
     RichEdit1.Lines.Add('');
     StyleTitl2;
     RichEdit1.Lines.Add('Звезды рождения:');
     StyleText;
     RichEdit1.Lines.Add('Большой Цикл (60 лет): '+FormPeople.JungBig.Caption);
     RichEdit1.Lines.Add('Малый Цикл (20 лет): '+FormPeople.Jung.Caption);
     RichEdit1.Lines.Add('Звезда года рождения: '+FormPeople.LabelYearStar.Caption);
     RichEdit1.Lines.Add('Звезда месяца рождения: '+FormPeople.LabelMoonStar.Caption);
     RichEdit1.Lines.Add('Звезда дня рождения: '+FormPeople.LabelDayStar.Caption);
     RichEdit1.Lines.Add('Звезда часа рождения: '+FormPeople.LabelChasStar.Caption);
     RichEdit1.Lines.Add('');
     StyleTitl2;
     RichEdit1.Lines.Add('Временные поправки:');
     StyleText;
     RichEdit1.Lines.Add('GMT: '+FormPeople.ComboGMT.Text);
     RichEdit1.Lines.Add('Летнее время: '+FormPeople.EditLetnee.Text);
     if FormPeople.CheckBoxDolgota.Checked then RichEdit1.Lines.Add('Долгота места рождения '+FormPeople.EditDolgota.text+' (гр.)') else
     RichEdit1.Lines.Add('Долгота места рождения не учтена');
     RichEdit1.Lines.Add('');
     StyleTitl2;

  //if MyRealStar<>RodMoonStar then
  begin
     RichEdit1.Lines.Add('Общая характеристика личности по звезде года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\s'+IntToStr(MyRealStar)+'.txt');
     if (MyRealStar=1) or (MyRealStar=5)then
      begin
       if Pol=ij_In then
       MyStrings.LoadFromFile(FilePlace+'\other\goro\s'+IntToStr(MyRealStar)+'f.txt');
      end;
     RichEdit1.Lines.AddStrings(MyStrings);

  end;

  RichEdit1.Lines.Add('');

  //if MyRealStar<>RodMoonStar then
  begin
     StyleTitl2;
     RichEdit1.Lines.Add('Общие тенденции для расчетного года (по звезде года рождения):');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyYarStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
     RichEdit1.Lines.Add('');
  end;
     RichEdit1.Lines.Add('');
     StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses22)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses24));
     NextStar:=Calendar.MoonStar(Ymain2, 3);

     MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);

     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

     StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses24)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses2));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

     StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses2)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses4));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses4)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses6));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses6)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses8));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses8)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses10));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses10)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses12));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses12)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses14));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses14)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses16));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses16)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses18));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses18)+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+(CalcSolarTerm(StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime))+1, st_j12)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24))));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');
     StyleRed;
     RichEdit1.Lines.Add('Характеристики для периода с '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+(CalcSolarTerm(StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime))+1, st_j12)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24)))+' по '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+(CalcSolarTerm(StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime))+1, st_j1)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24))));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt'); 
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('Звезда месяца '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' и звезда года рождения и месяца рождения:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
RichEdit1.Lines.Insert(0,'');
RichEdit1.Visible:=true;
MyStrings.Free;
end;

procedure TFormFHInter.Close1Click(Sender: TObject);
begin
Close;
end;

end.
