unit MyType;        

interface
uses CziPin, Graphics;

type
  TStarsFaza=(sf_Van, sf_Shen, sf_Si, sf_Sha, sf_N);
  TSanJuan=(sj_Ren, sj_Tian, sj_Di);//три основы
  TInJan=(ij_In, ij_Jan);//Инь ян
  TGua=(gua_Qian, gua_Dui, gua_Li, gua_Zhen, gua_Xun, gua_Kan, gua_Kun, gua_Gen,  gua_Center);
  //TFHGua=(g_Qian, g_Dui_, g_Li, g_Zhen, g_Xun, g_Kan, g_Kun_, g_Gen_,  g_Center);//Гуа
  TUSin=(us_o,us_p,us_m,us_v,us_d);
  TDrawStyle=(ds_Num, ds_CNum, ds_Sin);//Стили отображения в таблице FH
  TDirect=(d_N,d_NE,d_E,d_SE,d_S,d_SW,d_W,d_NW, d_Center);// Направления света
function InJanToStr (InJan:TInJan):string;
function IntToUSin (index:shortint):TUSin;
function USinToStr (index:TUsin):ShortString;
function FHGuaToStr (index:TGua):ShortString;
function FHGuaToStrSort (index:TGua):ShortString;
function IntToFHGua (index:shortint):TGua;
function FHGuaToNo (index:TGua):shortint;
function IntStvolToStr (index:shortint):ShortString;
procedure IntToCziPin (Stvol, Vetv :shortint;var MyInJan:TMyInJan; var MyPinParam:TCziPinParam);
function OsnovaToUSin (s1,s2,s3,s4,v1,v2,v3,v4,stvl,vetv:shortint):shortint;
function ToCziPinToStr (index:TCziPinParam):shortstring;
function DolgotaToTime (index:integer):extended;
function No60Gua (stvol, vetv: shortint):shortstring;
function NextStarIn (star:shortint):shortint;
function FenTaiSui (cicl, vetv:shortint):TGua;
function Men_Osn(corner:integer):TGua;
function Men_Dop(corner:integer):TGua;
function StarsFazaMen (cicle, star:shortint):shortstring;
function StarsFazaNapr (cicle, star:shortint):shortstring;
function StarsFazaGora (cicle, star:shortint):shortstring;
function SatarsFazaAll (cicle, star:shortint):TStarsFaza;
function StarsFazaToStr (faza:TStarsFaza):shortstring;
function SanGua (M, C, F:shortint):boolean;
function IntToZhu (index:shortint):shortstring;
function DirectToGua (direct:integer):TGua;
function VetvToStr(vetv:shortint; antivetv:boolean):shortstring;
function StarToDom (center, star:shortint):TGua;
function ZameshenieColor (direct:integer):TColor;
function ZnakRasklada (direct:integer):boolean;
function InJanStarRe (index:shortint):shortint;
function Next_10 (index:shortint):shortint;
function Next_12 (index:shortint):shortint;
function IntToStrStvol (Index:integer):shortstring;
function IntToStrVetv (Index:integer):shortstring;

implementation


function IntToStrStvol (Index:integer):shortstring;
begin
 case Index of
 1:result:='Цзя (Дерево-ян)';
 2:result:='И (Дерево-инь)';
 3:result:='Бин (Огонь-ян)';
 4:result:='Дин (Огонь-инь)';
 5:result:='У (Почва-ян)';
 6:result:='Цзи (Почва-инь)';
 7:result:='Гэнь (Металл-ян)';
 8:result:='Синь (Металл-инь)';
 9:result:='Жэнь (Вода-ян)';
 10:result:='Гуй (Вода-инь)';
 end;
end;

//--------------------------------------------------------

function IntToStrVetv (Index:integer):shortstring;
begin
 case Index of
 1:result:='Цзы (Вода-ян)';
 2:result:='Чоу (Почва-инь)';
 3:result:='Инь (Дерево-ян)';
 4:result:='Мао (Дерево-инь)';
 5:result:='Чэнь (Почва-ян)';
 6:result:='Сы (Огонь-инь)';
 7:result:='У (Огонь-ян)';
 8:result:='Вэй (Почва-инь)';
 9:result:='Шэнь (Металл-ян)';
 10:result:='Ю (Металл-инь)';
 11:result:='Сюй (Почва-ян)';
 12:result:='Хай (Вода-инь)';
 end;
end;

function Next_10 (index:shortint):shortint;
begin
result:=index;
if result>10 then result:=result-10;
if result<1 then result:=result+10; 
end;

function Next_12 (index:shortint):shortint;
begin
result:=index;
if result>12 then result:=result-12;
if result<1 then result:=result+12;
end;

function InJanStarRe (index:shortint):shortint;
begin
case index of
1:result:=5;
2:result:=4;
3:result:=3;
4:result:=2;
5:result:=1;
6:result:=9;
7:result:=8;
8:result:=7;
9:result:=6;
end;
end;


function ZnakRasklada (direct:integer):boolean;
begin
case direct of
//zi
 0..3:begin
       result:=true;
      end;
 4..7:begin
       result:=false
      end;

 //gui
 8..12:begin
         result:=false
       end;
 13..18:begin
          result:=true;
         end;
 19..22:begin
         result:=false
        end;

 // chou
 23..26:begin
         result:=false
       end;
 27..33:begin
         result:=true;
       end;
 34..37:begin
         result:=false
       end;

//gen
 38..41:begin
         result:=false
       end;
 42..48:begin
         result:=true;
        end;
 49..52:begin
           result:=false
         end;

 //yin
 53..56:begin
         result:=false
       end;
 57..63:begin
         result:=true;
       end;
 64..67:begin
         result:=false
       end;


 //jia
 68..71:begin
         result:=false
       end;
 72..78:begin
         result:=true;
        end;
 79..82:begin
           result:=false
         end;

 //mao
 83..86:begin
         result:=false
       end;
 87..93:begin
         result:=true;
        end;
 94..97:begin
           result:=false
         end;


 //yi
 98..101:begin
         result:=false
       end;
 102..108:begin
         result:=true;
       end;
 109..112:begin
         result:=false
       end;

 //chen
 113..116:begin
         result:=false
       end;
 117..123:begin
         result:=true;
        end;
 124..127:begin
           result:=false
         end;


 //xun
 128..131:begin
         result:=false
       end;
 132..138:begin
         result:=true;
       end;
 139..142:begin
         result:=false
       end;

 //si
 143..146:begin
         result:=false
       end;
 147..153:begin
         result:=true;
        end;
 154..157:begin
           result:=false
         end;


 //bing
 158..161:begin
         result:=false
       end;
 162..168:begin
         result:=true;
       end;
 169..172:begin
         result:=false
       end;

 //wu
 173..176:begin
         result:=false
       end;
 177..183:begin
         result:=true;
        end;
 184..187:begin
           result:=false
         end;


  //ding
 188..191:begin
         result:=false
       end;
 192..198:begin
         result:=true;
       end;
 199..202:begin
         result:=false
       end;

 //wei
 203..206:begin
         result:=false
       end;
 207..213:begin
         result:=true;
        end;
 214..217:begin
           result:=false
         end;

 //kun
 218..221:begin
         result:=false
       end;
 222..228:begin
         result:=true;
       end;
 229..232:begin
         result:=false
       end;

 //shen
 233..236:begin
         result:=false
       end;
 237..243:begin
         result:=true;
        end;
 244..247:begin
           result:=false
         end;


 //geng
 248..251:begin
         result:=false
       end;
 252..258:begin
         result:=true;
       end;
 259..262:begin
         result:=false
       end;

 //you
 263..266:begin
         result:=false
       end;
 267..273:begin
         result:=true;
        end;
 274..277:begin
           result:=false
         end;

 //xin
 278..281:begin
         result:=false
       end;
 282..288:begin
         result:=true;
       end;
 289..292:begin
         result:=false
       end;

 //sun
 293..296:begin
         result:=false
       end;
 297..303:begin
         result:=true;
        end;
 304..307:begin
           result:=false
         end;

  //qian
 308..311:begin
         result:=false
       end;
 312..318:begin
         result:=true;
       end;
 319..322:begin
         result:=false
       end;

  //hai
 323..326:begin
         result:=false
       end;
 327..333:begin
         result:=true;
        end;
 334..337:begin
           result:=false
         end;

 //ren
 338..341:begin
           result:=false
          end;
 342..348:begin
           result:=true;
          end;
 349..352:begin
           result:=false
          end;

 //zi
 353..356:begin
           result:=false
          end;
 357..360:begin
           result:=true;
          end;
end;
end;

function ZameshenieColor (direct:integer):TColor;
begin
case direct of
//zi
 0..3:begin
       result:=clWindowText;
      end;
 4..7:begin
       result:=clRed;
      end;

 //gui
 8..12:begin
         result:=clRed;
       end;
 13..18:begin
          result:=clWindowText;
         end;
 19..22:begin
         result:=clRed;
        end;

 // chou
 23..26:begin
         result:=clRed;
       end;
 27..33:begin
         result:=clWindowText;
       end;
 34..37:begin
         result:=clRed;
       end;

//gen
 38..41:begin
         result:=clRed;
       end;
 42..48:begin
         result:=clWindowText;
        end;
 49..52:begin
           result:=clRed;
         end;

 //yin
 53..56:begin
         result:=clRed;
       end;
 57..63:begin
         result:=clWindowText;
       end;
 64..67:begin
         result:=clRed;
       end;


 //jia
 68..71:begin
         result:=clRed;
       end;
 72..78:begin
         result:=clWindowText;
        end;
 79..82:begin
           result:=clRed;
         end;

 //mao
 83..86:begin
         result:=clRed;
       end;
 87..93:begin
         result:=clWindowText;
        end;
 94..97:begin
           result:=clRed;
         end;


 //yi
 98..101:begin
         result:=clRed;
       end;
 102..108:begin
         result:=clWindowText;
       end;
 109..112:begin
         result:=clRed;
       end;

 //chen
 113..116:begin
         result:=clRed;
       end;
 117..123:begin
         result:=clWindowText;
        end;
 124..127:begin
           result:=clRed;
         end;


 //xun
 128..131:begin
         result:=clRed;
       end;
 132..138:begin
         result:=clWindowText;
       end;
 139..142:begin
         result:=clRed;
       end;

 //si
 143..146:begin
         result:=clRed;
       end;
 147..153:begin
         result:=clWindowText;
        end;
 154..157:begin
           result:=clRed;
         end;


 //bing
 158..161:begin
         result:=clRed;
       end;
 162..168:begin
         result:=clWindowText;
       end;
 169..172:begin
         result:=clRed;
       end;

 //wu
 173..176:begin
         result:=clRed;
       end;
 177..183:begin
         result:=clWindowText;
        end;
 184..187:begin
           result:=clRed;
         end;


  //ding
 188..191:begin
         result:=clRed;
       end;
 192..198:begin
         result:=clWindowText;
       end;
 199..202:begin
         result:=clRed;
       end;

 //wei
 203..206:begin
         result:=clRed;
       end;
 207..213:begin
         result:=clWindowText;
        end;
 214..217:begin
           result:=clRed;
         end;

 //kun
 218..221:begin
         result:=clRed;
       end;
 222..228:begin
         result:=clWindowText;
       end;
 229..232:begin
         result:=clRed;
       end;

 //shen
 233..236:begin
         result:=clRed;
       end;
 237..243:begin
         result:=clWindowText;
        end;
 244..247:begin
           result:=clRed;
         end;


 //geng
 248..251:begin
         result:=clRed;
       end;
 252..258:begin
         result:=clWindowText;
       end;
 259..262:begin
         result:=clRed;
       end;

 //you
 263..266:begin
         result:=clRed;
       end;
 267..273:begin
         result:=clWindowText;
        end;
 274..277:begin
           result:=clRed;
         end;

 //xin
 278..281:begin
         result:=clRed;
       end;
 282..288:begin
         result:=clWindowText;
       end;
 289..292:begin
         result:=clRed;
       end;

 //xu
 293..296:begin
         result:=clRed;
       end;
 297..303:begin
         result:=clWindowText;
        end;
 304..307:begin
           result:=clRed;
         end;

  //qian
 308..311:begin
         result:=clRed;
       end;
 312..318:begin
         result:=clWindowText;
       end;
 319..322:begin
         result:=clRed;
       end;

  //hai
 323..326:begin
         result:=clRed;
       end;
 327..333:begin
         result:=clWindowText;
        end;
 334..337:begin
           result:=clRed;
         end;

 //ren
 338..341:begin
           result:=clRed;
          end;
 342..348:begin
           result:=clWindowText;
          end;
 349..352:begin
           result:=clRed;
          end;

 //zi
 353..356:begin
           result:=clRed;
          end;
 357..360:begin
           result:=clWindowText;
          end;
end;
end;

function StarToDom (center, star:shortint):TGua;
begin
  case center of
  1: begin
      case star of
      1:result:=gua_Center;
      2:result:=gua_Qian;
      3:result:=gua_Dui;
      4:result:=gua_Gen;
      5:result:=gua_Li;
      6:result:=gua_Kan;
      7:result:=gua_Kun;
      8:result:=gua_Zhen;
      9:result:=gua_Xun;
      end;
     end;
  2:  begin
      case star of
      1:result:=gua_Xun;
      2:result:=gua_Center;
      3:result:=gua_Qian;
      4:result:=gua_Dui;
      5:result:=gua_Gen;
      6:result:=gua_Li;
      7:result:=gua_Kan;
      8:result:=gua_Kun;
      9:result:=gua_Zhen;
      end;
     end;
  3:  begin
      case star of
      1:result:=gua_Zhen;
      2:result:=gua_Xun;
      3:result:=gua_Center;
      4:result:=gua_Qian;
      5:result:=gua_Dui;
      6:result:=gua_Gen;
      7:result:=gua_Li;
      8:result:=gua_Kan;
      9:result:=gua_Kun;
      end;
     end;
  4:  begin
      case star of
      1:result:=gua_Kun;
      2:result:=gua_Zhen;
      3:result:=gua_Xun;
      4:result:=gua_Center;
      5:result:=gua_Qian;
      6:result:=gua_Dui;
      7:result:=gua_Gen;
      8:result:=gua_Li;
      9:result:=gua_Kan;
      end;
     end;
  5:  begin
      case star of
      1:result:=gua_Kan;
      2:result:=gua_Kun;
      3:result:=gua_Zhen;
      4:result:=gua_Xun;
      5:result:=gua_Center;
      6:result:=gua_Qian;
      7:result:=gua_Dui;
      8:result:=gua_Gen;
      9:result:=gua_Li;
      end;
     end;
  6:  begin
      case star of
      1:result:=gua_Li;
      2:result:=gua_Kan;
      3:result:=gua_Kun;
      4:result:=gua_Zhen;
      5:result:=gua_Xun;
      6:result:=gua_Center;
      7:result:=gua_Qian;
      8:result:=gua_Dui;
      9:result:=gua_Gen;
      end;
     end;
  7:  begin
      case star of
      1:result:=gua_Gen;
      2:result:=gua_Li;
      3:result:=gua_Kan;
      4:result:=gua_Kun;
      5:result:=gua_Zhen;
      6:result:=gua_Xun;
      7:result:=gua_Center;
      8:result:=gua_Qian;
      9:result:=gua_Dui;
      end;
     end;
  8:   begin
      case star of
      1:result:=gua_Dui;
      2:result:=gua_Gen;
      3:result:=gua_Li;
      4:result:=gua_Kan;
      5:result:=gua_Kun;
      6:result:=gua_Zhen;
      7:result:=gua_Xun;
      8:result:=gua_Center;
      9:result:=gua_Qian;
      end;
     end;
  9:  begin
      case star of   
      1:result:=gua_Qian;
      2:result:=gua_Dui;
      3:result:=gua_Gen;
      4:result:=gua_Li;
      5:result:=gua_Kan;
      6:result:=gua_Kun;
      7:result:=gua_Zhen;
      8:result:=gua_Xun;
      9:result:=gua_Center;
      end;
     end;
  end
end;

function VetvToStr(vetv:shortint; antivetv:boolean):shortstring;
begin
 if antivetv then
 case vetv of
 1:result:='Цзы';
 2:result:='Чоу';
 3:result:='Инь';
 4:result:='Мао';
 5:result:='Чэнь';
 6:result:='Сы';

 7:result:='У';
 8:result:='Вэй';
 9:result:='Шэнь';
 10:result:='Ю';
 11:result:='Сюй';
 12:result:='Хай';
 end
 else
 case vetv of
 1:result:='У';
 2:result:='Вэй';
 3:result:='Шэнь';
 4:result:='Ю';
 5:result:='Сюй';
 6:result:='Хай';
 7:result:='Цзы';
 8:result:='Чоу';
 9:result:='Инь';
 10:result:='Мао';
 11:result:='Чэнь';
 12:result:='Сы';
 end;
end;

function DirectToGua (direct:integer):TGua;
begin
if direct>360 then direct:=direct-360;
case direct of
 0..22: result:=gua_Kan;
 23..67: result:=gua_Gen;
 68..112: result:=gua_Zhen;
 113..157: result:=gua_Xun;
 158..202:result:=gua_Li;
 203..248: result:=gua_Kun;
 249..292: result:=gua_Dui;
 293..337: result:=gua_Qian;
 338..360: result:=gua_Kan;
end;
end;

function IntToZhu(index:shortint):shortstring;
begin
 case index of
 1:result:='Цзы (Дом Кань)';
 2:result:='Чоу (Дом Гэнь)';
 3:result:='Инь (Дом Гэнь)';
 4:result:='Мао (Дом Чжэнь)';
 5:result:='Чэнь (Дом Сюнь)';
 6:result:='Сы (Дом Сюнь)';
 7:result:='У (Дом Ли)';
 8:result:='Вэй (Дом Кунь)';
 9:result:='Шэнь (Дом Кунь)';
 10:result:='Ю (Дом Дуй)';
 11:result:='Сюй (Дом Цянь)';
 12:result:='Хай (Дом Цянь)';
 end;
end;

function SanGua (M, C, F:shortint):boolean;
begin
 result:=false;
 if (M=1) and (C=4) and (F=7) then result:=true;
 if (M=1) and (C=7) and (F=4) then result:=true;
 if (M=4) and (C=7) and (F=1) then result:=true;
 if (M=4) and (C=1) and (F=7) then result:=true;
 if (M=7) and (C=4) and (F=1) then result:=true;
 if (M=7) and (C=1) and (F=4) then result:=true;

 if (M=2) and (C=5) and (F=8) then result:=true;
 if (M=2) and (C=8) and (F=5) then result:=true;
 if (M=5) and (C=8) and (F=2) then result:=true;
 if (M=5) and (C=2) and (F=8) then result:=true;
 if (M=8) and (C=5) and (F=2) then result:=true;
 if (M=8) and (C=2) and (F=5) then result:=true;


 if (M=3) and (C=6) and (F=9) then result:=true;
 if (M=3) and (C=9) and (F=6) then result:=true;
 if (M=6) and (C=9) and (F=3) then result:=true;
 if (M=6) and (C=3) and (F=9) then result:=true;
 if (M=9) and (C=6) and (F=3) then result:=true;
 if (M=9) and (C=3) and (F=6) then result:=true;
end;

function StarsFazaToStr (faza:TStarsFaza):shortstring;
begin
case faza of
sf_Van:result:='Расцвет';
sf_Shen:result:='Порождение';
sf_N:result:='Отступление';
sf_Si:result:='Смерть';
sf_Sha:result:='Разрушение';
end;
end;

function SatarsFazaAll (cicle, star:shortint):TStarsFaza;
begin
case cicle of
 1:begin
    case star of
    1:result:=sf_Van;
    2,3: result:=sf_Shen;
    9:result:=sf_N;
    6,7,8:result:=sf_Si;
    else result:=sf_Sha;
    end;
    end;
 2:begin
    case star of
    2:result:=sf_Van;
    3,4: result:=sf_Shen;
    1:result:=sf_N;
    7,8,9:result:=sf_Si;
    else result:=sf_Sha;
    end;
   end;
 3:begin
    case star of
    3:result:=sf_Van;
    4,5: result:=sf_Shen;
    2:result:=sf_N;
    1,8,9:result:=sf_Si;
    else result:=sf_Sha;
    end;
   end; 
 4:begin
    case star of
    4:result:=sf_Van;
    5,6: result:=sf_Shen;
    3:result:=sf_N;
    1,2,9:result:=sf_Si;
    else result:=sf_Sha;
    end;
   end;
 5:begin
    case star of
    5:result:=sf_Van;
    6,7: result:=sf_Shen;
    4:result:=sf_N;
    1,2,3:result:=sf_Si;
    else result:=sf_Sha;
    end;
   end; 
 6:begin
    case star of
    6:result:=sf_Van;
    7,8: result:=sf_Shen;
    5:result:=sf_N;
    2,3,4:result:=sf_Si;
    else result:=sf_Sha;
    end;
   end;
 7:begin
    case star of
    7:result:=sf_Van;
    8,9: result:=sf_Shen;
    6:result:=sf_N;
    3,4,5:result:=sf_Si;
    else result:=sf_Sha;
    end;
   end; 
 8:begin
    case star of
    8:result:=sf_Van;
    1,9: result:=sf_Shen;
    7:result:=sf_N;
    4,5,6:result:=sf_Si;
    else result:=sf_Sha;
    end;
   end;
 9:begin
    case star of
    9:result:=sf_Van;
    1,2: result:=sf_Shen;
    8:result:=sf_N;
    5,6,7:result:=sf_Si;
    else result:=sf_Sha;
    end;
   end;
 end;
end;


function StarsFazaMen (cicle, star:shortint):shortstring;
begin
case SatarsFazaAll (cicle, star) of
sf_Van:result:='расцвета. Есть большая поддержка по богатству.';
sf_Shen:result:='порождения. Есть небольшая поддержка по богатству.';
sf_N:result:='отступления. Нет пользы от врат.';
sf_Si:result:='смерти. Нет пользы от врат.';
sf_Sha:result:='разрушения. Нет пользы от врат.';
end;
end;

function StarsFazaNapr (cicle, star:shortint):shortstring;
begin
case SatarsFazaAll (cicle, star) of
sf_Van:result:='расцвета. Расцвет по богатству.';
sf_Shen:result:='порождения. Есть небольшая поддержка по богатству.';
sf_N:result:='отступления. Нет пользы от звезды.';
sf_Si:result:='смерти. Предвещает разорение.';
sf_Sha:result:='разрушения. Предвещает разорение.';
end;
end;


function StarsFazaGora (cicle, star:shortint):shortstring;
begin
case SatarsFazaAll (cicle, star) of
sf_Van:result:='расцвета. Предвещает расцвет рода.';
sf_Shen:result:='порождения. Есть небольшая поддержка для рода.';
sf_N:result:='отступления. Нет пользы от звезды.';
sf_Si:result:='смерти. Предвещает разрушение рода.';
sf_Sha:result:='разрушения. Предвещает разрушение рода.';
end;
end;

function Men_Osn(corner:integer):TGua;
begin
case corner of
  0..22:begin
          result:=gua_Qian;
        end;
  23..67:begin
          result:=gua_Zhen;
        end;
  68..112:begin
          result:=gua_Gen;
        end;
  113..157:begin
            result:=gua_Li;
        end;
  158..202:begin
           result:=gua_Xun;
        end;
  203..248:begin
           result:=gua_Dui;
        end;
  249..292:begin
            result:=gua_Kun;
        end;
  293..337:begin
           result:=gua_Kan;
        end;
  338..360:begin
          result:=gua_Qian;
           end;
end;
end;

function Men_Dop(corner:integer):TGua;
begin
case corner of
  0..22:begin
          result:=gua_Gen;
        end;
  23..67:begin
          result:=gua_Kan;
        end;
  68..112:begin
          result:=gua_Xun;
        end;
  113..157:begin
            result:=gua_Zhen;
        end;
  158..202:begin
           result:=gua_Kun;
        end;
  203..248:begin
           result:=gua_Li;
        end;
  249..292:begin
            result:=gua_Qian;
        end;
  293..337:begin
           result:=gua_Dui;
        end;
  338..360:begin
          result:=gua_Gen;
           end;
end;
end;

function FenTaiSui (cicl, vetv:shortint):TGua;
begin
case vetv of
1: case cicl of
   1: result:=gua_Center;
   2: result:=gua_Xun;
   3:result:=gua_Zhen;
   4:result:=gua_Kun;
   5:result:=gua_Kan;
   6:result:=gua_Li;
   7:result:=gua_Gen;
   8:result:=gua_Dui;
   9:result:=gua_Qian;
   end;
2,3: case cicl of
   1: result:=gua_Zhen;
   2: result:=gua_Kun;
   3:result:=gua_Kan;
   4:result:=gua_Li;
   5:result:=gua_Gen;
   6:result:=gua_Li;
   7:result:=gua_Dui;
   8:result:=gua_Center;
   9:result:=gua_Xun;
   end;
4: case cicl of
   1: result:=gua_Dui;
   2: result:=gua_Qian;
   3:result:=gua_Center;
   4:result:=gua_Xun;
   5:result:=gua_Zhen;
   6:result:=gua_Kun;
   7:result:=gua_Kan;
   8:result:=gua_Li;
   9:result:=gua_Gen;
   end;
5,6: case cicl of
   1: result:=gua_Gen;
   2: result:=gua_Dui;
   3:result:=gua_Qian;
   4:result:=gua_Center;
   5:result:=gua_Xun;
   6:result:=gua_Zhen;
   7:result:=gua_Kun;
   8:result:=gua_Kan;
   9:result:=gua_Li;
   end;
7:case cicl of
   1: result:=gua_Xun;
   2:result:=gua_Zhen;
   3:result:=gua_Kun;
   4:result:=gua_Kan;
   5:result:=gua_Li;
   6:result:=gua_Gen;
   7:result:=gua_Dui;
   8:result:=gua_Qian;
   9: result:=gua_Center;
   end;
8,9:case cicl of
   1:result:=gua_Qian;
   2: result:=gua_Center;
   3: result:=gua_Xun;
   4:result:=gua_Zhen;
   5:result:=gua_Kun;
   6:result:=gua_Kan;
   7:result:=gua_Li;
   8:result:=gua_Gen;
   9:result:=gua_Dui;
   end;
10:case cicl of
   1:result:=gua_Kun;
   2:result:=gua_Kan;
   3:result:=gua_Li;
   4:result:=gua_Gen;
   5:result:=gua_Dui;
   6:result:=gua_Qian;
   7: result:=gua_Center;
   8: result:=gua_Xun;
   9:result:=gua_Zhen;
   end;
11,12:case cicl of
   1:result:=gua_Kan;
   2:result:=gua_Li;
   3:result:=gua_Gen;
   4:result:=gua_Dui;
   5:result:=gua_Qian;
   6: result:=gua_Center;
   7: result:=gua_Xun;
   8:result:=gua_Zhen;
   9:result:=gua_Kun;
   end;
end;
end;


function NextStarIn (star:shortint):shortint;
begin
if star=1 then result:=9 else
result:=star-1;
end;


function No60Gua (stvol, vetv: shortint):shortstring;
begin
case stvol of
1:case vetv of
   1:result:='1';
   3:result:='51';
   5:result:='41';
   7:result:='31';
   9:result:='21';
   11:result:='11';
   else result:='0';
  end;
2:case vetv of
   2:result:='2';
   4:result:='52';
   6:result:='42';
   8:result:='32';
   10:result:='22';
   12:result:='12';
   else result:='0';
  end;
3:case vetv of
   1:result:='13';
   3:result:='3';
   5:result:='53';
   7:result:='43';
   9:result:='33';
   11:result:='23';
   else result:='0';
  end;
4:case vetv of 
   2:result:='14';
   4:result:='4';
   6:result:='54';
   8:result:='44';
   10:result:='34';
   12:result:='24';
   else result:='0';
  end;
5:case vetv of
   1:result:='25';
   3:result:='15';
   5:result:='5';
   7:result:='55';
   9:result:='45';
   11:result:='35';
   else result:='0';
  end;
6:case vetv of   
   2:result:='26';
   4:result:='16';
   6:result:='6';
   8:result:='56';
   10:result:='46';
   12:result:='36';
   else result:='0';
  end;
7:case vetv of  
   1:result:='37';
   3:result:='27';
   5:result:='17';
   7:result:='7';
   9:result:='57';
   11:result:='47';
   else result:='0';
  end;
8:case vetv of  
   2:result:='38';
   4:result:='28';
   6:result:='18';
   8:result:='8';
   10:result:='58';
   12:result:='48';
   else result:='0';
  end;
9:case vetv of
   1:result:='49';
   3:result:='39';
   5:result:='29';
   7:result:='19';
   9:result:='9';
   11:result:='59';
   else result:='0';
  end;
10:case vetv of 
   2:result:='50';
   4:result:='40';
   6:result:='30';
   8:result:='20';
   10:result:='10';
   12:result:='60';
   else result:='0';
  end;
else result:='0';
end;
end;

function InJanToStr(InJan:TInJan):string;
begin
 case InJan of
 ij_Jan:result:='ян';
 ij_In:result:='инь';
 end;
end;

//--------------------------------------------------------

function IntToUSin (index:shortint):TUSin;
begin
case index of
1:result:=us_v;
2:result:=us_p;
3:result:=us_d;
4:result:=us_d;
5:result:=us_p;
6:result:=us_m;
7:result:=us_m;
8:result:=us_p;
9:result:=us_o;
end;
end;

//--------------------------------------------------------

function USinToStr (index:TUsin):ShortString;
begin
case index of
us_v:result:='Вода';
us_p:result:='Почва';
us_d:result:='Дерево';
us_m:result:='Металл';
us_o:result:='Огонь';
end;
end;

//--------------------------------------------------------

function FHGuaToStr (index:TGua):ShortString;
begin
case index of
gua_Qian:result:='Цянь гуа';
gua_Dui:result:='Дуй гуа';
gua_Li:result:='Ли гуа';
gua_Zhen:result:='Чжэнь гуа';
gua_Xun:result:='Сюнь гуа';
gua_Kan:result:='Кань гуа';
gua_Gen:result:='Гэнь гуа';
gua_Kun:result:='Кунь гуа';
end;
end;

function FHGuaToStrSort (index:TGua):ShortString;
begin
case index of
gua_Qian:result:='Цянь';
gua_Dui:result:='Дуй';
gua_Li:result:='Ли';
gua_Zhen:result:='Чжэнь';
gua_Xun:result:='Сюнь';
gua_Kan:result:='Кань';
gua_Gen:result:='Гэнь';
gua_Kun:result:='Кунь';
gua_Center:result:='Центр';
end;
end;

//--------------------------------------------------------

function IntToFHGua (index:shortint):TGua;
begin
begin
case index of
1:result:=gua_Kan;
2:result:=gua_Kun;
3:result:=gua_Zhen;
4:result:=gua_Xun;
6:result:=gua_Qian;
7:result:=gua_Dui;
8:result:=gua_Gen;
9:result:=gua_Li;
end;
end;
end;

//--------------------------------------------------------

function FHGuaToNo (index:TGua):shortint;
begin
case index of
gua_Qian:result:=1;
gua_Dui:result:=2;
gua_Li:result:=3;
gua_Zhen:result:=4;
gua_Xun:result:=5;
gua_Kan:result:=6;
gua_Gen:result:=7;
gua_Kun:result:=8;
end;
end;

//--------------------------------------------------------

function IntStvolToStr (index:shortint):ShortString;
begin
case index of
1:result:='Дерево-ян';
2:result:='Дерево-инь';
3:result:='Огонь-ян';
4:result:='Огонь-инь';
5:result:='Почва-ян';
6:result:='Почва-инь';
7:result:='Металл-ян';
8:result:='Металл-инь';
9:result:='Вода-ян';
10:result:='Вода-инь';
end;
end;

//--------------------------------------------------------

procedure IntToCziPin (Stvol, Vetv :shortint;var MyInJan:TMyInJan; var MyPinParam:TCziPinParam);
begin
 case Stvol of
 1:begin
    MyInJan:=cz_jan;
    case Vetv of
      1:MyPinParam:=cp_1;
      2:MyPinParam:=cp_2;
      3:MyPinParam:=cp_3;
      4:MyPinParam:=cp_4;
      5:MyPinParam:=cp_5;
      6:MyPinParam:=cp_6;
      7:MyPinParam:=cp_7;
      8:MyPinParam:=cp_8;
      9:MyPinParam:=cp_9;
      10:MyPinParam:=cp_10;
      11:MyPinParam:=cp_11;
      12:MyPinParam:=cp_12;
    end;
   end;
3,5:begin
    MyInJan:=cz_jan;
    case Vetv of
      1:MyPinParam:=cp_10;
      2:MyPinParam:=cp_11;
      3:MyPinParam:=cp_12;
      4:MyPinParam:=cp_1;
      5:MyPinParam:=cp_2;
      6:MyPinParam:=cp_3;
      7:MyPinParam:=cp_4;
      8:MyPinParam:=cp_5;
      9:MyPinParam:=cp_6;
      10:MyPinParam:=cp_7;
      11:MyPinParam:=cp_8;
      12:MyPinParam:=cp_9;
    end;
   end;
 7:begin
    MyInJan:=cz_jan;
    case Vetv of
      1:MyPinParam:=cp_7;
      2:MyPinParam:=cp_8;
      3:MyPinParam:=cp_9;
      4:MyPinParam:=cp_10;
      5:MyPinParam:=cp_11;
      6:MyPinParam:=cp_12;
      7:MyPinParam:=cp_1;
      8:MyPinParam:=cp_2;
      9:MyPinParam:=cp_3;
      10:MyPinParam:=cp_4;
      11:MyPinParam:=cp_5;
      12:MyPinParam:=cp_6;
    end;
   end;
 9:begin
    MyInJan:=cz_jan;
    case Vetv of
      1:MyPinParam:=cp_4;
      2:MyPinParam:=cp_5;
      3:MyPinParam:=cp_6;
      4:MyPinParam:=cp_7;
      5:MyPinParam:=cp_8;
      6:MyPinParam:=cp_9;
      7:MyPinParam:=cp_10;
      8:MyPinParam:=cp_11;
      9:MyPinParam:=cp_12;
      10:MyPinParam:=cp_1;
      11:MyPinParam:=cp_2;
      12:MyPinParam:=cp_3;
    end;
   end;
 2:begin 
    MyInJan:=cz_in;
    case Vetv of
      1:MyPinParam:=cp_6;
      2:MyPinParam:=cp_5;
      3:MyPinParam:=cp_4;
      4:MyPinParam:=cp_3;
      5:MyPinParam:=cp_2;
      6:MyPinParam:=cp_1;
      7:MyPinParam:=cp_12;
      8:MyPinParam:=cp_11;
      9:MyPinParam:=cp_10;
      10:MyPinParam:=cp_9;
      11:MyPinParam:=cp_8;
      12:MyPinParam:=cp_7;
    end;
   end;
4,6:begin
    MyInJan:=cz_in;
    case Vetv of
      1:MyPinParam:=cp_9;
      2:MyPinParam:=cp_8;
      3:MyPinParam:=cp_7;
      4:MyPinParam:=cp_6;
      5:MyPinParam:=cp_5;
      6:MyPinParam:=cp_4;
      7:MyPinParam:=cp_3;
      8:MyPinParam:=cp_2;
      9:MyPinParam:=cp_1;
      10:MyPinParam:=cp_12;
      11:MyPinParam:=cp_11;
      12:MyPinParam:=cp_10;
    end;
   end;
 8:begin 
    MyInJan:=cz_in;
    case Vetv of
      1:MyPinParam:=cp_12;
      2:MyPinParam:=cp_11;
      3:MyPinParam:=cp_10;
      4:MyPinParam:=cp_9;
      5:MyPinParam:=cp_8;
      6:MyPinParam:=cp_7;
      7:MyPinParam:=cp_6;
      8:MyPinParam:=cp_5;
      9:MyPinParam:=cp_4;
      10:MyPinParam:=cp_3;
      11:MyPinParam:=cp_2;
      12:MyPinParam:=cp_1;
    end;
   end;
 10:begin  
    MyInJan:=cz_in;
    case Vetv of
      1:MyPinParam:=cp_3;
      2:MyPinParam:=cp_2;
      3:MyPinParam:=cp_1;
      4:MyPinParam:=cp_12;
      5:MyPinParam:=cp_11;
      6:MyPinParam:=cp_10;
      7:MyPinParam:=cp_9;
      8:MyPinParam:=cp_8;
      9:MyPinParam:=cp_7;
      10:MyPinParam:=cp_6;
      11:MyPinParam:=cp_5;
      12:MyPinParam:=cp_4;
    end;
   end;
 end;
end;

//--------------------------------------------------------

function OsnovaToUSin (s1,s2,s3,s4,v1,v2,v3,v4,stvl,vetv:shortint):shortint;
var
index:shortint;
begin
 index:=0;
 if s1=stvl then index:=1+index;
 if s2=stvl then index:=1+index;
 if s3=stvl then index:=1+index;
 if s4=stvl then index:=1+index;

 if v1=vetv then index:=1+index;
 if v2=vetv then index:=1+index;
 if v3=vetv then index:=1+index;
 if v4=vetv then index:=1+index;
 result:=index;
end;

//--------------------------------------------------------

function ToCziPinToStr (index:TCziPinParam):shortstring;
begin
 case index of
 cp_1:result:='Купание';
 cp_2:result:='Воспитание';
 cp_3:result:='Вступление в контакт';
 cp_4:result:='Расцвет';
 cp_5:result:='Увядание';
 cp_6:result:='Болезнь';
 cp_7:result:='Смерть';
 cp_8:result:='Хранилище';
 cp_9:result:='Прерывание';
 cp_10:result:='Зачатие';
 cp_11:result:='Вскармливание';
 cp_12:result:='Рождение';
 end;
end;

function DolgotaToTime (index:integer):extended;
begin
result:=(index/15)/24;
end;


end.

