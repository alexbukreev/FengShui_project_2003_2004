unit CzPinSys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CziPin, StdCtrls, ImgList, ComCtrls, ExtCtrls, mytype, Registry;

type
  TFormCzPin = class(TForm)
    Label22: TLabel;
    CziPinYear: TCziPin;
    Label1: TLabel;
    Vetv1: TComboBoxEx;
    ImageList2: TImageList;
    ImageList1: TImageList;
    Svtol: TComboBoxEx;
    Label2: TLabel;
    Vetv2: TComboBoxEx;
    Vetv3: TComboBoxEx;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure StvolVetv;
    function NajIng:string;
    procedure VetvVetv;
    procedure SvtolChange(Sender: TObject);
    procedure Vetv2Change(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCzPin: TFormCzPin;

implementation
uses godday, main;
{$R *.dfm}

function TFormCzPin.NajIng:string;
begin
case Svtol.ItemIndex of
0:case Vetv1.ItemIndex of
   0:result:='Металл в море (1)';
   2:result:='Вода большого ручья (51)';
   4:result:='Огонь перевёрнутой лампы (41)';
   6:result:='Металл в песке (31)';
   8:result:='Вода колодца и источника (21)';
   10:result:='Огонь на вершине горы (11)';
   else result:='Парная комбинация отсутствует';
  end;
1:case Vetv1.ItemIndex of
   1:result:='Металл в море (2)';
   3:result:='Вода большого ручья (52)';
   5:result:='Огонь перевёрнутой лампы (42)';
   7:result:='Металл в песке (32)';
   9:result:='Вода колодца и источника (22)';
   11:result:='Огонь на вершине горы (12)';
   else result:='Парная комбинация отсутствует';
  end;
2:case Vetv1.ItemIndex of
   0:result:='Вода нижней части русла (13)';
   2:result:='Огонь в печи (3)';
   4:result:='Почва внутри песка (53)';
   6:result:='Вода из Небесной реки (43)';
   8:result:='Огонь, спускающийся с горы (33)';
   10:result:='Почва на крыше дома (23)';
   else result:='Парная комбинация отсутствует';
  end;
3:case Vetv1.ItemIndex of
   1:result:='Вода нижней части русла (14)';
   3:result:='Огонь в печи (4)';
   5:result:='Почва внутри песка (54)';
   7:result:='Вода из Небесной реки (44)';
   9:result:='Огонь, спускающийся с горы (34)';
   11:result:='Почва на крыше дома (24)'; 
   else result:='Парная комбинация отсутствует';
  end;
4:case Vetv1.ItemIndex of
   0:result:='Огонь грома и молнии (25)';
   2:result:='Почва на городской стене (15)';
   4:result:='Дерево большого леса (5)';
   6:result:='Огонь, поднимающийся на Небо (55)';
   8:result:='Почва с большой станции (45)';
   10:result:='Дерево ровной земли (35)';
   else result:='Парная комбинация отсутствует';
  end;
5:case Vetv1.ItemIndex of
   1:result:='Огонь грома и молнии (26)';
   3:result:='Почва на городской стене (16)';
   5:result:='Дерево большого леса (6)';
   7:result:='Огонь, поднимающийся на Небо (56)';
   9:result:='Почва с большой станции (46)';
   11:result:='Дерево ровной земли (36)';
   else result:='Парная комбинация отсутствует';
  end;
6:case Vetv1.ItemIndex of
   0:result:='Почва поверх стены (37)';
   2:result:='Дерево сосны и кипариса (27)';
   4:result:='Белый восковой Металл (17)';
   6:result:='Почва около дороги (7)';
   8:result:='Дерево граната (57)';
   10:result:='Металл шпилек и браслетов (47)';
   else result:='Парная комбинация отсутствует';
  end;
7:case Vetv1.ItemIndex of
   1:result:='Почва поверх стены (38)';
   3:result:='Дерево сосны и кипариса (28)';
   5:result:='Белый восковой Металл (18)';
   7:result:='Почва около дороги (8)';
   9:result:='Дерево граната (58)';
   11:result:='Металл шпилек и браслетов (48)'; 
   else result:='Парная комбинация отсутствует';
  end;
8:case Vetv1.ItemIndex of
   0:result:='Тутовое дерево';
   2:result:='Металл металлической фольги (39)';
   4:result:='Вода из длинного потока (29)';
   6:result:='Дерево ивы (19)';
   8:result:='Металла на острие Меча (9)';
   10:result:='Вода большого моря (59)';
   else result:='Парная комбинация отсутствует';
  end;
9:case Vetv1.ItemIndex of
   1:result:='Тутовое дерево (50)';
   3:result:='Металл металлической фольги (40)';
   5:result:='Вода из длинного потока (30)';
   7:result:='Дерево ивы (20)';
   9:result:='Металла на острие Меча (10)';
   11:result:='Вода большого моря (60)';
   else result:='Парная комбинация отсутствует';
  end;
end;
end;

procedure TFormCzPin.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
Caption:='Стволы и ветви';
Label22.Caption:='Стволы и ветви';
Label8.Caption:='Ствол:';
Label9.Caption:='Ветвь:';
Label2.Caption:='Сочетаемость ветвей';
Label4.Caption:='Базовая ветвь:';
Label10.Caption:='Дополнительная ветвь:';
Label5.Caption:='Цзянь:';
Label6.Caption:='Сочетаемость ветвей:';
Label11.Caption:='Най инь:';

Svtol.ItemIndex:=0;
Vetv1.ItemIndex:=0;
Vetv2.ItemIndex:=0;
Vetv3.ItemIndex:=0;
StvolVetv;
VetvVetv;


MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('CzPin','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('CzPin','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('CzPin','Visible',false);
MyRegIniFile.Free;
end;

//--------------------------------------------------------

procedure TFormCzPin.StvolVetv;
var
MyInJan:TMyInJan;
MyPinParam:TCziPinParam;
begin
IntToCziPin (Svtol.ItemIndex+1,Vetv1.ItemIndex+1, MyInJan, MyPinParam);
CziPinYear.InJan:=MyInJan;
CziPinYear.CPScrol:=MyPinParam;
Label1.Caption:=ToCziPinToStr(CziPinYear.CPScrol);
Label12.Caption:=NajIng;
end;

//--------------------------------------------------------

procedure TFormCzPin.SvtolChange(Sender: TObject);
begin
StvolVetv;
end;

//--------------------------------------------------------

procedure TFormCzPin.VetvVetv;
begin
case FormGoodDay.Chzang(Vetv2.ItemIndex+1, Vetv3.ItemIndex+1) of
1:Label3.Caption:='Цзянь. Установление (1)';
2:Label3.Caption:='Чу. Искоренение (2)';
3:Label3.Caption:='Мань. Насыщение (3)';
4:Label3.Caption:='Пин. Выравнивание (4)';
5:Label3.Caption:='Дин . Определение (5)';
6:Label3.Caption:='Чжи. Удержание (6)';
7:Label3.Caption:='По. Пробой (7)';
8:Label3.Caption:='Вэй. Опасность (8)';
9:Label3.Caption:='Чэн. Завершение (9)';
10:Label3.Caption:='Шоу. Собирание (10)';
11:Label3.Caption:='Кай. Раскрытие (11)';
12:Label3.Caption:='Би. Ограничение (12)';
end;

Label7.caption:='';
if (Vetv2.ItemIndex=0) and (Vetv3.ItemIndex=1) then  Label7.caption:='сочетаются';
if (Vetv3.ItemIndex=0) and (Vetv2.ItemIndex=1) then  Label7.caption:='сочетаются';
if (Vetv2.ItemIndex=2) and (Vetv3.ItemIndex=11) then  Label7.caption:='сочетаются';
if (Vetv3.ItemIndex=2) and (Vetv2.ItemIndex=11) then  Label7.caption:='сочетаются';
if (Vetv2.ItemIndex=3) and (Vetv3.ItemIndex=10) then  Label7.caption:='сочетаются';
if (Vetv3.ItemIndex=3) and (Vetv2.ItemIndex=10) then  Label7.caption:='сочетаются';
if (Vetv2.ItemIndex=4) and (Vetv3.ItemIndex=9) then  Label7.caption:='сочетаются';
if (Vetv3.ItemIndex=4) and (Vetv2.ItemIndex=9) then  Label7.caption:='сочетаются';
if (Vetv2.ItemIndex=5) and (Vetv3.ItemIndex=8) then  Label7.caption:='сочетаются';
if (Vetv3.ItemIndex=5) and (Vetv2.ItemIndex=8) then  Label7.caption:='сочетаются';
if (Vetv2.ItemIndex=6) and (Vetv3.ItemIndex=7) then  Label7.caption:='сочетаются';
if (Vetv3.ItemIndex=6) and (Vetv2.ItemIndex=7) then  Label7.caption:='сочетаются';

if (Vetv2.ItemIndex=0) and (Vetv3.ItemIndex=6) then  Label7.caption:='НЕ сочетаются';
if (Vetv3.ItemIndex=0) and (Vetv2.ItemIndex=6) then  Label7.caption:='НЕ сочетаются';
if (Vetv2.ItemIndex=1) and (Vetv3.ItemIndex=5) then  Label7.caption:='НЕ сочетаются';
if (Vetv3.ItemIndex=1) and (Vetv2.ItemIndex=5) then  Label7.caption:='НЕ сочетаются';
if (Vetv2.ItemIndex=2) and (Vetv3.ItemIndex=8) then  Label7.caption:='НЕ сочетаются';
if (Vetv3.ItemIndex=2) and (Vetv2.ItemIndex=8) then  Label7.caption:='НЕ сочетаются';
if (Vetv2.ItemIndex=3) and (Vetv3.ItemIndex=9) then  Label7.caption:='НЕ сочетаются';
if (Vetv3.ItemIndex=3) and (Vetv2.ItemIndex=9) then  Label7.caption:='НЕ сочетаются';
if (Vetv2.ItemIndex=4) and (Vetv3.ItemIndex=10) then  Label7.caption:='НЕ сочетаются';
if (Vetv3.ItemIndex=4) and (Vetv2.ItemIndex=10) then  Label7.caption:='НЕ сочетаются';
if (Vetv2.ItemIndex=5) and (Vetv3.ItemIndex=11) then  Label7.caption:='НЕ сочетаются';
if (Vetv3.ItemIndex=5) and (Vetv2.ItemIndex=11) then  Label7.caption:='НЕ сочетаются';
end;

//--------------------------------------------------------

procedure TFormCzPin.Vetv2Change(Sender: TObject);
begin
VetvVetv;
end;

//--------------------------------------------------------

procedure TFormCzPin.Label3Click(Sender: TObject);
begin
FormGoodDay.Show;
FormGoodDay.Caption:='Цзянь дня, из таблицы «Сочетаемость стволов и ветвей»';
FormGoodDay.RichEdit1.Lines.LoadFromFile(FilePlace+'\other\czang\c'+
IntToStr(FormGoodDay.Chzang(Vetv2.ItemIndex+1,Vetv3.ItemIndex+1))+'.rtf');
end;

procedure TFormCzPin.FormShow(Sender: TObject);
begin

 Svtol.ItemsEx[0].Caption:='Цзя (Дерево-ян)';
Svtol.ItemsEx[0].Caption:='Цзя (Дерево-ян)';
Svtol.ItemsEx[1].Caption:='И (Дерево-инь)';
Svtol.ItemsEx[2].Caption:='Бин (Огонь-ян)';
Svtol.ItemsEx[3].Caption:='Дин (Огонь-инь)';
Svtol.ItemsEx[4].Caption:='У (Почва-ян)';
Svtol.ItemsEx[5].Caption:='Цзи (Почва-инь)';
Svtol.ItemsEx[6].Caption:='Гэн (Металл-ян)';
Svtol.ItemsEx[7].Caption:='Синь (Металл-инь)';
Svtol.ItemsEx[8].Caption:='Жэнь (вода-ян)';
Svtol.ItemsEx[9].Caption:='Гуй (вода-инь)';

Vetv1.ItemsEx[0].Caption:='Цзы (вода-ян)';
Vetv1.ItemsEx[0].Caption:='Цзы (вода-ян)';
Vetv1.ItemsEx[1].Caption:='Чоу (Почва-инь)';
Vetv1.ItemsEx[2].Caption:='Инь (Дерево-ян)';
Vetv1.ItemsEx[3].Caption:='Мао (Дерево-инь)';
Vetv1.ItemsEx[4].Caption:='Чэнь (Почва-ян)';
Vetv1.ItemsEx[5].Caption:='Сы (Огонь-инь)';
Vetv1.ItemsEx[6].Caption:='У (Огонь-ян)';
Vetv1.ItemsEx[7].Caption:='Вэй (Почва-инь)';
Vetv1.ItemsEx[8].Caption:='Шэнь (Металл-ян)';
Vetv1.ItemsEx[9].Caption:='Ю (Металл-инь)';
Vetv1.ItemsEx[10].Caption:='Сюй (Почва-ян)';
Vetv1.ItemsEx[11].Caption:='Хай (вода-инь)';

Vetv2.ItemsEx[0].Caption:='Цзы (Вода-ян)';
Vetv2.ItemsEx[0].Caption:='Цзы (Вода-ян)';
Vetv2.ItemsEx[1].Caption:='Чоу (Почва-инь)';
Vetv2.ItemsEx[2].Caption:='Инь (Дерево-ян)';
Vetv2.ItemsEx[3].Caption:='Мао (Дерево-инь)';
Vetv2.ItemsEx[4].Caption:='Чэнь (Почва-ян)';
Vetv2.ItemsEx[5].Caption:='Сы (Огонь-инь)';
Vetv2.ItemsEx[6].Caption:='У (Огонь-ян)';
Vetv2.ItemsEx[7].Caption:='Вэй (Почва-инь)';
Vetv2.ItemsEx[8].Caption:='Шэнь (Металл-ян)';
Vetv2.ItemsEx[9].Caption:='Ю (Металл-инь)';
Vetv2.ItemsEx[10].Caption:='Сюй (Почва-ян)';
Vetv2.ItemsEx[11].Caption:='Хай (Вода-инь)';

Vetv3.ItemsEx[0].Caption:='Цзы (Вода-ян)';
Vetv3.ItemsEx[0].Caption:='Цзы (Вода-ян)';
Vetv3.ItemsEx[1].Caption:='Чоу (Почва-инь)';
Vetv3.ItemsEx[2].Caption:='Инь (Дерево-ян)';
Vetv3.ItemsEx[3].Caption:='Мао (Дерево-инь)';
Vetv3.ItemsEx[4].Caption:='Чэнь (Почва-ян)';
Vetv3.ItemsEx[5].Caption:='Сы (Огонь-инь)';
Vetv3.ItemsEx[6].Caption:='У (Огонь-ян)';
Vetv3.ItemsEx[7].Caption:='Вэй (Почва-инь)';
Vetv3.ItemsEx[8].Caption:='Шэнь (Металл-ян)';
Vetv3.ItemsEx[9].Caption:='Ю (Металл-инь)';
Vetv3.ItemsEx[10].Caption:='Сюй (Почва-ян)';
Vetv3.ItemsEx[11].Caption:='Хай (Вода-инь)';
end;

end.
