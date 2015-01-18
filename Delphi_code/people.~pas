unit people;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ProfDateTimePicker, ExtCtrls, ToolWin,
  GuaSmol, MyType, CziPin, Math, Menus,inifiles;

type
  TFormPeople = class(TForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    RadioButtonF: TRadioButton;
    RadioButtonM: TRadioButton;
    EditNamePeople: TEdit;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    Panel3: TPanel;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton12: TToolButton;
    ToolButtonRaschet: TToolButton;
    StvolDay: TImage;
    StvolChas: TImage;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    VetvChas: TImage;
    VetvDay: TImage;
    StvolYahr: TImage;
    VetvYahr: TImage;
    StvolMod: TImage;
    VetvGod: TImage;
    PSYear: TLabel;
    PSMon: TLabel;
    PSDay: TLabel;
    PSHour: TLabel;
    Sinxron: TCheckBox;
    YearStar: TLabel;
    LabelYearStar: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    LabelStvolSin: TLabel;
    LabeBaczi: TLabel;
    Panel7: TPanel;
    MyDate: TProfDateTimePicker;
    MyTime: TProfDateTimePicker;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    SaveDialogPeople: TSaveDialog;
    OpenDialogPeople: TOpenDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    N6: TMenuItem;
    NOpen: TMenuItem;
    NSave: TMenuItem;
    NSaveAs: TMenuItem;
    N8Close: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N8: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    SaveDialogRtf: TSaveDialog;
    ToolButton10: TToolButton;
    ToolButton13: TToolButton;
    N14: TMenuItem;
    CheckBoxDolgota: TCheckBox;
    EditDolgota: TEdit;
    UpDownDolgota: TUpDown;
    EditLetnee: TEdit;
    UpDown1: TUpDown;
    ComboGMT: TComboBox;
    ToolButton3: TToolButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    N17: TMenuItem;
    N11: TMenuItem;
    LabelRasch: TLabel;
    LabelNow: TLabel;
    PaneFHmain: TPanel;
    PaneFHscroll: TPanel;
    ProgressFH: TProgressBar;
    PaneFH: TPanel;
    LabelJung: TLabel;
    JungBig: TLabel;
    Jung: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    LabelMoonStar: TLabel;
    MoonStar: TLabel;
    Shape1: TShape;
    N16: TMenuItem;
    N161: TMenuItem;
    N162: TMenuItem;
    N163: TMenuItem;
    N164: TMenuItem;
    WeekRod: TLabel;
    N7: TMenuItem;
    N15: TMenuItem;
    LabelDayStar: TLabel;
    DayStar: TLabel;
    N18: TMenuItem;
    ChasStar: TLabel;
    LabelChasStar: TLabel;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    Print1: TMenuItem;
    PrintDialog1: TPrintDialog;
    Shape3: TShape;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    ImageS9: TImage;
    ImageV9: TImage;
    ImageV8: TImage;
    ImageS8: TImage;
    ImageV7: TImage;
    ImageS7: TImage;
    ImageV6: TImage;
    ImageS6: TImage;
    ImageV5: TImage;
    ImageS5: TImage;
    ImageV4: TImage;
    ImageS4: TImage;
    ImageV3: TImage;
    ImageS3: TImage;
    ImageV2: TImage;
    ImageS2: TImage;
    ImageV1: TImage;
    ImageS1: TImage;
    Label4: TLabel;
    LabelSt9: TLabel;
    LabelSt8: TLabel;
    LabelSt7: TLabel;
    LabelSt6: TLabel;
    LabelSt5: TLabel;
    LabelSt4: TLabel;
    LabelSt3: TLabel;
    LabelSt2: TLabel;
    LabelSt1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MyTimeChange(Sender: TObject);
    procedure AllDraw (My_Date:TDateTime);
    function WStar(index:shortint):shortint;
    function BaCza (BCIndex, StarIndex:shortint):shortstring;
   // procedure USinZapolnenie;
    function VetvControl (Vetv:integer):integer;
    function StvolControl (Stvol:integer):integer;
    procedure ToolButton5Click(Sender: TObject);
    procedure PeopleFalse;
    procedure PeopleTrue;
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SaveAsFile;
    procedure SaveFile(MyFile: TIniFile);
    procedure SaveClick(Sender: TObject);
    procedure NOpenClick(Sender: TObject);
    procedure NSaveAsClick(Sender: TObject);
    procedure OpenFile;
    procedure OpenFileTwo(MyFileName:string);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EditNamePeopleChange(Sender: TObject);
    procedure N8CloseClick(Sender: TObject);
    procedure N12RaschetClick(Sender: TObject);
    procedure Raschet;
   // procedure N13UsinClick(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure LabelYearStarClick(Sender: TObject);
    procedure N14PowerClick(Sender: TObject);
    procedure LabeBacziClick(Sender: TObject);
    procedure LabelStvolSinClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N15Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBoxDolgotaClick(Sender: TObject);
    procedure ReNewPeople;
    procedure ToolButton10Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure TextForStar(StarText:shortint);
    procedure TextForStarComb(StarTop, StarBtn:shortint);
    procedure N161Click(Sender: TObject);
    procedure N162Click(Sender: TObject);
    procedure N163Click(Sender: TObject);
    procedure N164Click(Sender: TObject);
    procedure N165Click(Sender: TObject);
    procedure N166Click(Sender: TObject);
    procedure N167Click(Sender: TObject);
    procedure N168Click(Sender: TObject);
    procedure N169Click(Sender: TObject);
    procedure N1610Click(Sender: TObject);
    procedure N1611Click(Sender: TObject);
    procedure N1612Click(Sender: TObject);
    procedure N1613Click(Sender: TObject);
    procedure N1614Click(Sender: TObject);
    procedure N1615Click(Sender: TObject);
    procedure N1616Click(Sender: TObject);
    procedure N1617Click(Sender: TObject);
    procedure N1618Click(Sender: TObject);
    procedure N1619Click(Sender: TObject);
    procedure N1620Click(Sender: TObject);
    procedure N1621Click(Sender: TObject);
    function ScriptStarRod (MyPol: TInJan; My_index:shortint):string;
    procedure N11Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPeople: TFormPeople;
  RozhdenieTime:TDateTime;
  RodY1, RodY2,
  RodM1, RodM2,
  RodD1, RodD2,
  RodH1, RodH2,
  RodYearStarV:integer;
  Pol:TInJan;
  FlagUSin, FileOpenP, FileChangeP:boolean;
  WorkFileP:string;
  MyRealStar:shortint;
  RodYear, RodJungVBig, RodJungV, RodMoonStar, RodDayStar, RodChasStar:integer;


implementation
uses main, calendar, season, my_moon, DrawFH, CzPinSys, FHunit, preference, text,
  table3, TablePower, Registry, UnitBCShema, combo, callform, FHinter;
{$R *.dfm}

procedure TFormPeople.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='Персональный гороскоп';
  N6.Caption:='Файл';
  N17.Caption:='Очистить';
  NOpen.Caption:='Открыть...';
  NSave.Caption:='Сохранить';
  NSaveAs.Caption:='Сохранить как...';
  N12.Caption:='Сохранить как текст...';
  N20.Caption:='Прогноз на текущий год';
  N21.Caption:='Прогноз на текущий год';
  N8Close.Caption:='Закрыть';
  Print1.Caption:='Печать...';

  N8.Caption:='Расчет';
  N11.Caption:='Расчет';

  N1.Caption:='Открыть...';
  N2.Caption:='Сохранить';
  N3.Caption:='Сохранить как...';
  N5.Caption:='Расчет';
  N10.Caption:='Закрыть';
  N16.Caption:='Звезды рождения';
  N161.Caption:='Большой юнь (60 лет)';
  N162.Caption:='Малый юнь (20 лет)';
  N163.Caption:='Звезда года';
  N164.Caption:='Звезда месяца';
  N18.Caption:='Звезда дня';
  N19.Caption:='Звезда часа';
  N15.Caption:='Комбинации звезд';
  Label4.Caption:='Столпы удачи:';

  ToolButton10.hint:='Очистить';
  ToolButton6.hint:='Открыть';
  ToolButton8.hint:='Сохранить';
  ToolButtonRaschet.hint:='Расчет';

  Panel3.caption:='Имя:';
  Panel7.caption:='Дата рождения:';
  Panel1.caption:='Пол:';
  RadioButtonF.caption:='ж.';
  RadioButtonM.caption:='м.';
  Panel2.caption:='л.в.:';
  CheckBoxDolgota.caption:='долгота:';
  Panel5.caption:='(гр.)';
  Sinxron.caption:='Отображать в календаре';
  LabelRasch.caption:='Расчет произведен на: ';
  Label28.caption:='(знак года)';
  Label27.caption:='(знак периода)';
  Label25.caption:='(знак дня)';
  Label2.caption:='Ствол дня рождения: ';
  Label26.caption:='(знак часа)';
  YearStar.caption:='Звезды рождения:';
  LabelJung.caption:='Большой юнь (60 лет):';
  Label1.caption:='Малый юнь (20 лет):';
  Label12.caption:='Звезда года:';
  MoonStar.caption:='Звезда месяца:';
  DayStar.caption:='Звезда дня:';
  ChasStar.caption:='Звезда часа:';
  LabeBaczi.Hint:='Сектора и направления системы Ба чжай';
  LabelStvolSin.Hint:='Сочетание стволов и ветвей';
  LabelYearStar.Hint:='Характеристика звезды'; 
  //JungBig.Hint:='Характеристика звезды';
  //Jung.Hint:='Характеристика звезды';
  //LabelMoonStar.Hint:='Характеристика звезды';

  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('People','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('People','Top',FormMainFSH.Height-FormMainFSH.ClientHeight+50);
   Visible:=MyRegIniFile.ReadBool('People','Visible',false);
  MyRegIniFile.Free;

 if  (ExtractFileExt(ParamStr(1))='.fsp') or (ExtractFileExt(ParamStr(1))='.FSP')
       or (ExtractFileExt(ParamStr(1))='.Fsp') then
       begin
        FormPeople.Show;
        OpenFileTwo(ParamStr(1));
       end;
end;

//--------------------------------------------------------

procedure TFormPeople.FormResize(Sender: TObject);
begin
width:=630;
height:=424;
end;

//--------------------------------------------------------

procedure TFormPeople.MyTimeChange(Sender: TObject);
begin
  MyDate.Time:=MyTime.Time;
end;

//--------------------------------------------------------

procedure TFormPeople.AllDraw (My_Date:TDateTime);
var
Big, Smol, StrPol, DolgotaMyStr:string;
//GuaStar:shortint;
//MyInJan:TMyInJan;
//MyPinParam:TCziPinParam;
DolgotaTime:TDateTime;
begin
//--------- время для точного расчета, учитывая долгот
if CheckBoxDolgota.Checked then
   DolgotaTime:=My_Date-(FormMainFSH.GMT(ComboGMT.Text)/24)+
   DolgotaToTime(UpDownDolgota.Position) else DolgotaTime:=My_Date;
//--------------------------------
ProgressFH.Position:=10;
LabelNow.Caption:=FormatDateTime('ddddd'+' '+'tt',My_Date);
WeekRod.Caption:=FormatDateTime('dddd',My_Date);
RodY1:=StvolyYahrNo(My_Date-FormMainFSH.LetneeVremja(EditLetnee)-(FormMainFSH.GMT(ComboGMT.Text)/24));
RodY2:=VetvyYahrNo(My_Date-FormMainFSH.LetneeVremja(EditLetnee)-(FormMainFSH.GMT(ComboGMT.Text)/24));

ProgressFH.Position:=20;

RodD1:=StvolyNo(DolgotaTime-FormMainFSH.LetneeVremja(EditLetnee));
RodD2:=VetvyNo(DolgotaTime-FormMainFSH.LetneeVremja(EditLetnee));

ProgressFH.Position:=30;

RodH2:=VetvyChasNo(DolgotaTime-FormMainFSH.LetneeVremja(EditLetnee));
RodH1:=StvolyChasNo(RodD1, RodH2);

ProgressFH.Position:=40;

RodYear:=CalcYear(My_Date);
RodYearStarV:=Calendar.YearStar(RodYear);

ProgressFH.Position:=50;

RodJungVBig:=Calendar.JungBig(RodYear);
RodJungV:=Calendar.Jung(RodYear);

ProgressFH.Position:=60;

Zapolnenie(StvolYahr,VetvYahr,RodY1,RodY2);
Zapolnenie(StvolChas,VetvChas,RodH1,RodH2);
Saesons(My_Date-(FormMainFSH.GMT(ComboGMT.Text)/24), RodM2, Big, Smol);
RodM1:=StvolyMonNo(RodM2, RodY1);
Zapolnenie(StvolMod,VetvGod,RodM1,RodM2);
Zapolnenie(StvolDay,VetvDay,RodD1,RodD2);

RodMoonStar:=Calendar.MoonStar(RodY2, RodM2);
RodDayStar:=Calendar.StarDay(RodD1, RodD2, Smol);
RodChasStar:=Calendar.StarChas(RodD2, RodH2, Smol);


ProgressFH.Position:=70;

if RadioButtonF.Checked then
   begin
    pol:=ij_In;
    StrPol:='женский';
   end else
   begin
    pol:=ij_Jan;
    StrPol:='мужской';
   end;

if pol=ij_In then
   begin
     RodYearStarV:=WStar(RodYearStarV);
     RodJungVBig:=WStar(RodJungVBig);
     RodJungV:=WStar(RodJungV);
     RodMoonStar:=WStar(RodMoonStar);
     RodDayStar:=WStar(RodDayStar);
     RodChasStar:=WStar(RodChasStar);
   end;

if EditNamePeople.Text<>'' then Caption:=EditNamePeople.Text;
if Sinxron.Checked then
   begin
    FormMainFSH.MyDate.DateTime:=MyDate.DateTime;
    FormMainFSH.MyTime.DateTime:=MyTime.DateTime;
    if FormMainFSH.CheckedGoroDraw then FormMainFSH.AllCalc(MyDate.DateTime);
   end;


PSYearVetv (PSYear, RodY2);
PSYearStvol (PSYear, RodY1);
PSYearVetv (PSMon, RodM2);
PSYearStvol (PSMon, RodM1);
PSYearVetv (PSDay, RodD2);
PSYearStvol (PSDay, RodD1);
PSYearVetv (PSHour, RodH2);
PSYearStvol (PSHour, RodH1);

Label28.Caption:='Знак года '+No60Gua(RodY1, RodY2)+' из 60';
Label27.Caption:='Знак периода '+No60Gua(RodM1, RodM2)+' из 60';
Label25.Caption:='Знак дня '+No60Gua(RodD1, RodD2)+' из 60';
Label26.Caption:='Знак часа '+No60Gua(RodH1, RodH2)+' из 60';


ProgressFH.Position:=80;



//Поправка на звезду 5
MyRealStar:=RodYearStarV;
if RodYearStarV=5 then
 begin
   if pol=ij_In then RodYearStarV:=8 else RodYearStarV:=2;
  // LabelYearStar.Caption:='5 желтый / '+IntToStr(RodYearStarV)+' '+ScriptStar(RodYearStarV);
 end;
 { else
   LabelYearStar.Caption:=IntToStr(RodYearStarV)+' '+ScriptStar(RodYearStarV);}

 //Пишем звезды рождения ----------------
   JungBig.Caption:=IntToStr(RodJungVBig)+' '+ScriptStarRod(Pol, RodJungVBig);
   Jung.Caption:=IntToStr(RodJungV)+' '+ScriptStarRod(Pol, RodJungV);
   LabelYearStar.Caption:=IntToStr(MyRealStar)+' '+ScriptStarRod(Pol, MyRealStar);
   LabelMoonStar.Caption:=IntToStr(RodMoonStar)+' '+ScriptStarRod(Pol, RodMoonStar);
   LabelDayStar.Caption:=IntToStr(RodDayStar)+' '+ScriptStarRod(Pol, RodDayStar);
   LabelChasStar.Caption:=IntToStr(RodChasStar)+' '+ScriptStarRod(Pol, RodChasStar);

LabelStvolSin.Caption:=IntStvolToStr(RodD1);


//GuaStar:=RodYearStarV;
 {if RodYearStarV=5 then
 begin
  if pol=ij_In then GuaStar:=8;
  if pol=ij_Jan then GuaStar:=2;
 end;}


case RodYearStarV of
1,3,4,9:LabeBaczi.Caption:=
'Восточная судьба, '+'Дворец '+FHGuaToStr(IntToFHGua(RodYearStarV))+', '+USinToStr(IntToUSin(RodYearStarV));
2,6,7,8:LabeBaczi.Caption:='Западная судьба, ' +'Дворец '+FHGuaToStr(IntToFHGua(RodYearStarV))+', '+USinToStr(IntToUSin(RodYearStarV));
end;

ProgressFH.Position:=90;

if Pol=ij_Jan then
begin
case RodY1 of
1,3,5,7,9:begin
           Zapolnenie(ImageS1,ImageV1,Next_10(RodM1+1),Next_12(RodM2+1));
           Zapolnenie(ImageS2,ImageV2,Next_10(RodM1+2),Next_12(RodM2+2));
           Zapolnenie(ImageS3,ImageV3,Next_10(RodM1+3),Next_12(RodM2+3));
           Zapolnenie(ImageS4,ImageV4,Next_10(RodM1+4),Next_12(RodM2+4));
           Zapolnenie(ImageS5,ImageV5,Next_10(RodM1+5),Next_12(RodM2+5));
           Zapolnenie(ImageS6,ImageV6,Next_10(RodM1+6),Next_12(RodM2+6));
           Zapolnenie(ImageS7,ImageV7,Next_10(RodM1+7),Next_12(RodM2+7));
           Zapolnenie(ImageS8,ImageV8,Next_10(RodM1+8),Next_12(RodM2+8));
           Zapolnenie(ImageS9,ImageV9,Next_10(RodM1+9),Next_12(RodM2+9));
           LabelSt1.Caption:=IntToStr(SesDay (DolgotaTime-FormMainFSH.LetneeVremja(EditLetnee), ij_Jan));
           ImageS1.Hint:=IntToStrStvol(Next_10(RodM1+1));
           ImageS2.Hint:=IntToStrStvol(Next_10(RodM1+2));
           ImageS3.Hint:=IntToStrStvol(Next_10(RodM1+3));
           ImageS4.Hint:=IntToStrStvol(Next_10(RodM1+4));
           ImageS5.Hint:=IntToStrStvol(Next_10(RodM1+5));
           ImageS6.Hint:=IntToStrStvol(Next_10(RodM1+6));
           ImageS7.Hint:=IntToStrStvol(Next_10(RodM1+7));
           ImageS8.Hint:=IntToStrStvol(Next_10(RodM1+8));
           ImageS9.Hint:=IntToStrStvol(Next_10(RodM1+9));

           ImageV1.Hint:=IntToStrVetv(Next_12(RodM2+1));
           ImageV2.Hint:=IntToStrVetv(Next_12(RodM2+2));
           ImageV3.Hint:=IntToStrVetv(Next_12(RodM2+3));
           ImageV4.Hint:=IntToStrVetv(Next_12(RodM2+4));
           ImageV5.Hint:=IntToStrVetv(Next_12(RodM2+5));
           ImageV6.Hint:=IntToStrVetv(Next_12(RodM2+6));
           ImageV7.Hint:=IntToStrVetv(Next_12(RodM2+7));
           ImageV8.Hint:=IntToStrVetv(Next_12(RodM2+8));
           ImageV9.Hint:=IntToStrVetv(Next_12(RodM2+9));
          end;
2,4,6,8,10:begin
           Zapolnenie(ImageS1,ImageV1,Next_10(RodM1-1),Next_12(RodM2-1));
           Zapolnenie(ImageS2,ImageV2,Next_10(RodM1-2),Next_12(RodM2-2));
           Zapolnenie(ImageS3,ImageV3,Next_10(RodM1-3),Next_12(RodM2-3));
           Zapolnenie(ImageS4,ImageV4,Next_10(RodM1-4),Next_12(RodM2-4));
           Zapolnenie(ImageS5,ImageV5,Next_10(RodM1-5),Next_12(RodM2-5));
           Zapolnenie(ImageS6,ImageV6,Next_10(RodM1-6),Next_12(RodM2-6));
           Zapolnenie(ImageS7,ImageV7,Next_10(RodM1-7),Next_12(RodM2-7));
           Zapolnenie(ImageS8,ImageV8,Next_10(RodM1-8),Next_12(RodM2-8));
           Zapolnenie(ImageS9,ImageV9,Next_10(RodM1-9),Next_12(RodM2-9));
           LabelSt1.Caption:=IntToStr(SesDay (DolgotaTime-FormMainFSH.LetneeVremja(EditLetnee), ij_In));
          
           ImageS1.Hint:=IntToStrStvol(Next_10(RodM1-1));
           ImageS2.Hint:=IntToStrStvol(Next_10(RodM1-2));
           ImageS3.Hint:=IntToStrStvol(Next_10(RodM1-3));
           ImageS4.Hint:=IntToStrStvol(Next_10(RodM1-4));
           ImageS5.Hint:=IntToStrStvol(Next_10(RodM1-5));
           ImageS6.Hint:=IntToStrStvol(Next_10(RodM1-6));
           ImageS7.Hint:=IntToStrStvol(Next_10(RodM1-7));
           ImageS8.Hint:=IntToStrStvol(Next_10(RodM1-8));
           ImageS9.Hint:=IntToStrStvol(Next_10(RodM1-9));

           ImageV1.Hint:=IntToStrVetv(Next_12(RodM2-1));
           ImageV2.Hint:=IntToStrVetv(Next_12(RodM2-2));
           ImageV3.Hint:=IntToStrVetv(Next_12(RodM2-3));
           ImageV4.Hint:=IntToStrVetv(Next_12(RodM2-4));
           ImageV5.Hint:=IntToStrVetv(Next_12(RodM2-5));
           ImageV6.Hint:=IntToStrVetv(Next_12(RodM2-6));
           ImageV7.Hint:=IntToStrVetv(Next_12(RodM2-7));
           ImageV8.Hint:=IntToStrVetv(Next_12(RodM2-8));
           ImageV9.Hint:=IntToStrVetv(Next_12(RodM2-9));

          end;
end;
end
else
case RodY1 of
1,3,5,7,9:begin
           Zapolnenie(ImageS1,ImageV1,Next_10(RodM1-1),Next_12(RodM2-1));
           Zapolnenie(ImageS2,ImageV2,Next_10(RodM1-2),Next_12(RodM2-2));
           Zapolnenie(ImageS3,ImageV3,Next_10(RodM1-3),Next_12(RodM2-3));
           Zapolnenie(ImageS4,ImageV4,Next_10(RodM1-4),Next_12(RodM2-4));
           Zapolnenie(ImageS5,ImageV5,Next_10(RodM1-5),Next_12(RodM2-5));
           Zapolnenie(ImageS6,ImageV6,Next_10(RodM1-6),Next_12(RodM2-6));
           Zapolnenie(ImageS7,ImageV7,Next_10(RodM1-7),Next_12(RodM2-7));
           Zapolnenie(ImageS8,ImageV8,Next_10(RodM1-8),Next_12(RodM2-8));
           Zapolnenie(ImageS9,ImageV9,Next_10(RodM1-9),Next_12(RodM2-9));
           LabelSt1.Caption:=IntToStr(SesDay (DolgotaTime-FormMainFSH.LetneeVremja(EditLetnee), ij_In));

           ImageS1.Hint:=IntToStrStvol(Next_10(RodM1-1));
           ImageS2.Hint:=IntToStrStvol(Next_10(RodM1-2));
           ImageS3.Hint:=IntToStrStvol(Next_10(RodM1-3));
           ImageS4.Hint:=IntToStrStvol(Next_10(RodM1-4));
           ImageS5.Hint:=IntToStrStvol(Next_10(RodM1-5));
           ImageS6.Hint:=IntToStrStvol(Next_10(RodM1-6));
           ImageS7.Hint:=IntToStrStvol(Next_10(RodM1-7));
           ImageS8.Hint:=IntToStrStvol(Next_10(RodM1-8));
           ImageS9.Hint:=IntToStrStvol(Next_10(RodM1-9));

           ImageV1.Hint:=IntToStrVetv(Next_12(RodM2-1));
           ImageV2.Hint:=IntToStrVetv(Next_12(RodM2-2));
           ImageV3.Hint:=IntToStrVetv(Next_12(RodM2-3));
           ImageV4.Hint:=IntToStrVetv(Next_12(RodM2-4));
           ImageV5.Hint:=IntToStrVetv(Next_12(RodM2-5));
           ImageV6.Hint:=IntToStrVetv(Next_12(RodM2-6));
           ImageV7.Hint:=IntToStrVetv(Next_12(RodM2-7));
           ImageV8.Hint:=IntToStrVetv(Next_12(RodM2-8));
           ImageV9.Hint:=IntToStrVetv(Next_12(RodM2-9));

          end;
2,4,6,8,10:begin
           Zapolnenie(ImageS1,ImageV1,Next_10(RodM1+1),Next_12(RodM2+1));
           Zapolnenie(ImageS2,ImageV2,Next_10(RodM1+2),Next_12(RodM2+2));
           Zapolnenie(ImageS3,ImageV3,Next_10(RodM1+3),Next_12(RodM2+3));
           Zapolnenie(ImageS4,ImageV4,Next_10(RodM1+4),Next_12(RodM2+4));
           Zapolnenie(ImageS5,ImageV5,Next_10(RodM1+5),Next_12(RodM2+5));
           Zapolnenie(ImageS6,ImageV6,Next_10(RodM1+6),Next_12(RodM2+6));
           Zapolnenie(ImageS7,ImageV7,Next_10(RodM1+7),Next_12(RodM2+7));
           Zapolnenie(ImageS8,ImageV8,Next_10(RodM1+8),Next_12(RodM2+8));
           Zapolnenie(ImageS9,ImageV9,Next_10(RodM1+9),Next_12(RodM2+9));
           LabelSt1.Caption:=IntToStr(SesDay (DolgotaTime-FormMainFSH.LetneeVremja(EditLetnee), ij_Jan));

           ImageS1.Hint:=IntToStrStvol(Next_10(RodM1+1));
           ImageS2.Hint:=IntToStrStvol(Next_10(RodM1+2));
           ImageS3.Hint:=IntToStrStvol(Next_10(RodM1+3));
           ImageS4.Hint:=IntToStrStvol(Next_10(RodM1+4));
           ImageS5.Hint:=IntToStrStvol(Next_10(RodM1+5));
           ImageS6.Hint:=IntToStrStvol(Next_10(RodM1+6));
           ImageS7.Hint:=IntToStrStvol(Next_10(RodM1+7));
           ImageS8.Hint:=IntToStrStvol(Next_10(RodM1+8));
           ImageS9.Hint:=IntToStrStvol(Next_10(RodM1+9));

           ImageV1.Hint:=IntToStrVetv(Next_12(RodM2+1));
           ImageV2.Hint:=IntToStrVetv(Next_12(RodM2+2));
           ImageV3.Hint:=IntToStrVetv(Next_12(RodM2+3));
           ImageV4.Hint:=IntToStrVetv(Next_12(RodM2+4));
           ImageV5.Hint:=IntToStrVetv(Next_12(RodM2+5));
           ImageV6.Hint:=IntToStrVetv(Next_12(RodM2+6));
           ImageV7.Hint:=IntToStrVetv(Next_12(RodM2+7));
           ImageV8.Hint:=IntToStrVetv(Next_12(RodM2+8));
           ImageV9.Hint:=IntToStrVetv(Next_12(RodM2+9));
          end;
end;

LabelSt2.Caption:=IntToStr(StrToInt(LabelSt1.Caption)+10);
LabelSt3.Caption:=IntToStr(StrToInt(LabelSt2.Caption)+10);
LabelSt4.Caption:=IntToStr(StrToInt(LabelSt3.Caption)+10);
LabelSt5.Caption:=IntToStr(StrToInt(LabelSt4.Caption)+10);
LabelSt6.Caption:=IntToStr(StrToInt(LabelSt5.Caption)+10);
LabelSt7.Caption:=IntToStr(StrToInt(LabelSt6.Caption)+10);
LabelSt8.Caption:=IntToStr(StrToInt(LabelSt7.Caption)+10);
LabelSt9.Caption:=IntToStr(StrToInt(LabelSt8.Caption)+10);
//USinZapolnenie;//заполнение у син диаграммы

PeopleTrue;//делаем все видимым

ProgressFH.Position:=100;

if CheckBoxDolgota.Checked then DolgotaMyStr:='долгота '+EditDolgota.text+' (гр.)' else
   DolgotaMyStr:='долгота не учтена';

PaneFH.Caption:='Расчет на: '+LabelNow.Caption+' | пол: '+StrPol+' | '+ComboGMT.Text+' | л.в.: '+
EditLetnee.Text+' | '+ DolgotaMyStr;




end;

//--------------------------------------------------------

function TFormPeople.WStar(index:shortint):shortint;
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

//--------------------------------------------------------

function TFormPeople.BaCza (BCIndex, StarIndex:shortint):shortstring;
begin
case BCIndex of
1:case StarIndex of
  1:result:='Сюнь-гуа, Дерево, юго-восток';
  2:result:='Гэнь-гуа, Почва, северо-восток';
  3:result:='Ли-гуа, Огонь, юг';
  4:result:='Кань-гуа, Вода, север';
  6:result:='Дуй-гуа, Металл, запад';
  7:result:='Цянь-гуа, Металл, северо-запад';
  8:result:='Кунь-гуа, Почва, юго-запад';
  9:result:='Чжэнь-гуа, Дерево, восток';
  end;
2:case StarIndex of
  1:result:='Чжэнь-гуа, Дерево, восток';
  2:result:='Дуй-гуа, Металл, запад';
  3:result:='Кань-гуа, Вода, север';
  4:result:='Ли-гуа, Огонь, юг';
  6:result:='Гэнь-гуа, Почва, северо-восток';
  7:result:='Кунь-гуа, Почва, юго-запад';
  8:result:='Цянь-гуа, Металл, северо-запад';
  9:result:='Сюнь-гуа, Дерево, юго-восток';
  end;
3:case StarIndex of
  1:result:='Ли-гуа, Огонь, юг';
  2:result:='Цянь-гуа, Металл, северо-запад';
  3:result:='Сюнь-гуа, Дерево, юго-восток';
  4:result:='Чжэнь-гуа, Дерево, восток';
  6:result:='Кунь-гуа, Почва, юго-запад';
  7:result:='Гэнь-гуа, Почва, северо-восток';
  8:result:='Дуй-гуа, Металл, запад';
  9:result:='Кань-гуа, Вода, север';
  end;
4:case StarIndex of
  1:result:='Кань-гуа, Вода, север';
  2:result:='Кунь-гуа, Почва, юго-запад';
  3:result:='Чжэнь-гуа, Дерево, восток';
  4:result:='Сюнь-гуа, Дерево, юго-восток';
  6:result:='Цянь-гуа, Металл, северо-запад';
  7:result:='Дуй-гуа, Металл, запад';
  8:result:='Гэнь-гуа, Почва, северо-восток';
  9:result:='Ли-гуа, Огонь, юг';
  end;
5:case StarIndex of
  1:result:='Кунь-гуа, Почва, юго-запад';
  2:result:='Кань-гуа, Вода, север';
  3:result:='Дуй-гуа, Металл, запад';
  4:result:='Гэнь-гуа, Почва, северо-восток';
  6:result:='Ли-гуа, Огонь, юг';
  7:result:='Чжэнь-гуа, Дерево, восток';
  8:result:='Сюнь-гуа, Дерево, юго-восток';
  9:result:='Цянь-гуа, Металл, северо-запад';
  end;
6:case StarIndex of
  1:result:='Гэнь-гуа, Почва, северо-восток';
  2:result:='Сюнь-гуа, Дерево, юго-восток';
  3:result:='Цянь-гуа, Металл, северо-запад';
  4:result:='Кунь-гуа, Почва, юго-запад';
  6:result:='Чжэнь-гуа, Дерево, восток';
  7:result:='Ли-гуа, Огонь, юг';
  8:result:='Кань-гуа, Вода, север';
  9:result:='Дуй-гуа, Металл, запад';
  end;
7:case StarIndex of
  1:result:='Цянь-гуа, Металл, северо-запад';
  2:result:='Ли-гуа, Огонь, юг';
  3:result:='Гэнь-гуа, Почва, северо-восток';
  4:result:='Дуй-гуа, Металл, запад';
  6:result:='Кань-гуа, Вода, север';
  7:result:='Сюнь-гуа, Дерево, юго-восток';
  8:result:='Чжэнь-гуа, Дерево, восток';
  9:result:='Кунь-гуа, Почва, юго-запад';
  end;
8:case StarIndex of
  1:result:='Дуй-гуа, Металл, запад';
  2:result:='Чжэнь-гуа, Дерево, восток';
  3:result:='Кунь-гуа, Почва, юго-запад';
  4:result:='Цянь-гуа, Металл, северо-запад';
  6:result:='Сюнь-гуа, Дерево, юго-восток';
  7:result:='Кань-гуа, Вода, север';
  8:result:='Ли-гуа, Огонь, юг';
  9:result:='Гэнь-гуа, Почва, северо-восток';
  end;
end;
end;
//--------------------------------------------------------

{procedure TFormPeople.USinZapolnenie;
var
InIndexO, JanIndexO,
InIndexP, JanIndexP,
InIndexM, JanIndexM,
InIndexV, JanIndexV,
InIndexD, JanIndexD:shortint;
begin
InIndexO:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,4,6);
JanIndexO:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,3,7);

InIndexP:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,6,2);
InIndexP:=InIndexP+OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,0,8);
JanIndexP:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,5,5);
JanIndexP:=JanIndexP+OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,0,11);

InIndexM:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,8,10);
JanIndexM:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,7,9);

InIndexV:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,10,12);
JanIndexV:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,9,1);

InIndexD:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,2,4);
JanIndexD:=OsnovaToUSin(RodY1,RodM1,RodD1,RodH1,RodY2,RodM2,RodD2,RodH2,1,3);


end;}

//--------------------------------------------------------

function TFormPeople.VetvControl (Vetv:integer):integer;
begin
result:=Vetv;
if Vetv>12 then
  result:=Vetv-12;
if Vetv<1 then
  result:=Vetv+12;
end;

//--------------------------------------------------------

function TFormPeople.StvolControl (Stvol:integer):integer;
begin
result:=stvol;
if Stvol>10 then
  result:=Stvol-10;
if Stvol<1 then
  result:=Stvol+10;
end;

//--------------------------------------------------------

procedure TFormPeople.ToolButton5Click(Sender: TObject);
begin
FormCzPin.Show;
end;

//--------------------------------------------------------

procedure TFormPeople.PeopleFalse;
begin
LabelNow.Visible:=false;
WeekRod.Visible:=false;
StvolYahr.Visible:=false;
VetvYahr.Visible:=false;
Label28.Visible:=false;
PSYear.Visible:=false;
StvolMod.Visible:=false;
VetvGod.Visible:=false;
Label27.Visible:=false;
PSMon.Visible:=false;
StvolDay.Visible:=false;
VetvDay.Visible:=false;
Label25.Visible:=false;
PSDay.Visible:=false;
LabelStvolSin.Visible:=false;
StvolChas.Visible:=false;
VetvChas.Visible:=false;
Label26.Visible:=false;
PSHour.Visible:=false;

LabelYearStar.Visible:=false;
LabelRasch.Visible:=false;
DayStar.Visible:=false;
LabelDayStar.Visible:=false;
ChasStar.Visible:=false;
LabelChasStar.Visible:=false;


Label2.Visible:=false;
Shape2.Visible:=false;

YearStar.Visible:=false;
//Shape4.Visible:=false;
LabeBaczi.Visible:=false;
PaneFh.Caption:='';

Shape1.Visible:=false;
LabelJung.Visible:=false;
Label1.Visible:=false;
Label12.Visible:=false;
MoonStar.Visible:=false;
JungBig.Visible:=false;
Jung.Visible:=false;
LabelMoonStar.Visible:=false;

Label3.Visible:=false;
Shape3.Visible:=false;
Label4.Visible:=false;
LabelSt1.Visible:=false;
LabelSt2.Visible:=false;
LabelSt3.Visible:=false;
LabelSt4.Visible:=false;
LabelSt5.Visible:=false;
LabelSt6.Visible:=false;
LabelSt7.Visible:=false;
LabelSt8.Visible:=false; 
LabelSt9.Visible:=false;
Shape13.Visible:=false;
Shape5.Visible:=false;
Shape6.Visible:=false;
Shape7.Visible:=false;
Shape8.Visible:=false;
Shape9.Visible:=false;
Shape10.Visible:=false;
Shape11.Visible:=false;
Shape12.Visible:=false;
ImageS1.Visible:=false;
ImageV1.Visible:=false;
ImageS2.Visible:=false;
ImageV2.Visible:=false;
ImageS3.Visible:=false;
ImageV3.Visible:=false;
ImageS4.Visible:=false;
ImageV4.Visible:=false;
ImageS5.Visible:=false;
ImageV5.Visible:=false;
ImageS6.Visible:=false;
ImageV6.Visible:=false;
ImageS7.Visible:=false;
ImageV7.Visible:=false;
ImageS8.Visible:=false;
ImageV8.Visible:=false;
ImageS9.Visible:=false;
ImageV9.Visible:=false;
end;

//--------------------------------------------------------

procedure TFormPeople.PeopleTrue;
begin
LabelNow.Visible:=true;
WeekRod.Visible:=true;
StvolYahr.Visible:=true;
VetvYahr.Visible:=true;
Label28.Visible:=true;
PSYear.Visible:=true;
StvolMod.Visible:=true;
VetvGod.Visible:=true;
Label27.Visible:=true;
PSMon.Visible:=true;
StvolDay.Visible:=true;
VetvDay.Visible:=true;
Label25.Visible:=true;
PSDay.Visible:=true;
LabelStvolSin.Visible:=true;
StvolChas.Visible:=true;
VetvChas.Visible:=true;
Label26.Visible:=true;
PSHour.Visible:=true;

LabelYearStar.Visible:=true;
LabelRasch.Visible:=true;
Label2.Visible:=true;
Shape2.Visible:=true;



YearStar.Visible:=true;
//Shape4.Visible:=true;

LabeBaczi.Visible:=true;
ChasStar.Visible:=true;
LabelChasStar.Visible:=true;

Shape1.Visible:=true;
LabelJung.Visible:=true;
Label1.Visible:=true;
Label12.Visible:=true;
MoonStar.Visible:=true;
JungBig.Visible:=true;
Jung.Visible:=true;
LabelMoonStar.Visible:=true;

DayStar.Visible:=true;;
LabelDayStar.Visible:=true;

Label3.Visible:=true;
Shape3.Visible:=true;
Label4.Visible:=true;
LabelSt1.Visible:=true;
LabelSt2.Visible:=true;
LabelSt3.Visible:=true;
LabelSt4.Visible:=true;
LabelSt5.Visible:=true;
LabelSt6.Visible:=true;
LabelSt7.Visible:=true;
LabelSt8.Visible:=true; 
LabelSt9.Visible:=true;
Shape13.Visible:=true;
Shape5.Visible:=true;
Shape6.Visible:=true;
Shape7.Visible:=true;
Shape8.Visible:=true;
Shape9.Visible:=true;
Shape10.Visible:=true;
Shape11.Visible:=true;
Shape12.Visible:=true;
ImageS1.Visible:=true;
ImageV1.Visible:=true;
ImageS2.Visible:=true;
ImageV2.Visible:=true;
ImageS3.Visible:=true;
ImageV3.Visible:=true;
ImageS4.Visible:=true;
ImageV4.Visible:=true;
ImageS5.Visible:=true;
ImageV5.Visible:=true;
ImageS6.Visible:=true;
ImageV6.Visible:=true;
ImageS7.Visible:=true;
ImageV7.Visible:=true;
ImageS8.Visible:=true;
ImageV8.Visible:=true;
ImageS9.Visible:=true;
ImageV9.Visible:=true;
end;

//--------------------------------------------------------

procedure TFormPeople.ToolButton6Click(Sender: TObject);
begin

end;

//--------------------------------------------------------

procedure TFormPeople.ToolButton8Click(Sender: TObject);
begin

end;

//--------------------------------------------------------

procedure TFormPeople.N1Click(Sender: TObject);
begin
ToolButton6Click(Sender);
end;

//--------------------------------------------------------

procedure TFormPeople.N2Click(Sender: TObject);
begin
ToolButton8Click(Sender);
end;

//--------------------------------------------------------

procedure TFormPeople.SaveAsFile;
var
MyFile: TIniFile;
begin
  begin
   SaveDialogPeople.FileName:=Caption;
         if SaveDialogPeople.Execute then
             begin
               MyFile:=TIniFile.Create(SaveDialogPeople.FileName);
                SaveFile (MyFile);
               MyFile.Free;
               WorkFileP:=SaveDialogPeople.FileName;
             end;
   end;
end;

//--------------------------------------------------------

procedure TFormPeople.SaveFile(MyFile: TIniFile);
var
StrPol:string;
begin
       MyFile.WriteString('TITLE', 'Title', 'fsp');
       MyFile.WriteString('Fild1', 'Name', EditNamePeople.Text);
       MyFile.WriteString('Fild1', 'Date', FloatToStr(MyDate.DateTime));

       if RadioButtonF.Checked then StrPol:='женский'
           else StrPol:='мужской';

       MyFile.WriteString('Fild1', 'Pol', StrPol);
       MyFile.WriteString('Fild1', 'GMT', IntToStr(ComboGMT.ItemIndex));
       MyFile.WriteString('Fild1', 'Letnee', IntToStr(UpDown1.Position));
       MyFile.WriteString('Fild1', 'Dolgota', IntToStr(UpDownDolgota.Position));

       if CheckBoxDolgota.Checked then
       MyFile.WriteString('Fild1', 'Check', '1') else
       MyFile.WriteString('Fild1', 'Check', '0');

       FileOpenP:=true;
       FileChangeP:=false;
       Caption:=ExtractFileName(MyFile.FileName);
end;

//--------------------------------------------------------

procedure TFormPeople.SaveClick(Sender: TObject);
var
  MyFile: TIniFile;
begin
 if FileOpenP then
     begin
       MyFile:=TIniFile.Create(WorkFileP);
         SaveFile (MyFile);
       MyFile.Free;
     end
     else
       begin
          SaveAsFile;
       end;
end;

//--------------------------------------------------------

procedure TFormPeople.NOpenClick(Sender: TObject);
begin
if FileChangeP then
  begin
   case MessageDlg('Сохранить изменения в файле ' + Caption+'?', mtWarning, mbYesNoCancel, 0) of
    mrYes:  begin
             SaveClick(Sender);
             OpenFile;
            end;
    mrNo:    OpenFile;
   end;
  end
  else OpenFile;
end;

//--------------------------------------------------------

procedure TFormPeople.NSaveAsClick(Sender: TObject);
begin
 SaveAsFile;
end;

//--------------------------------------------------------

procedure TFormPeople.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if FileChangeP then
begin
 case MessageDlg('Сохранить изменения в файле ' + FormPeople.Caption+'?', mtWarning, mbYesNoCancel, 0) of
  mrCancel:  CanClose:=False;
  mrYes:  begin
            SaveClick(Sender);
            if not(FileChangeP) then CanClose:=true
            else CanClose:=false;
          end;
  end;
end;
end;

//--------------------------------------------------------

procedure TFormPeople.OpenFile;
begin
if OpenDialogPeople.Execute then
   OpenFileTwo(OpenDialogPeople.FileName);
end;

//--------------------------------------------------------

procedure TFormPeople.OpenFileTwo(MyFileName:string);
var
MyFile:TIniFile;
begin
 MyFile:=TIniFile.Create(MyFileName);
 EditNamePeople.Text:=MyFile.ReadString('Fild1', 'Name', '');
 MyDate.DateTime:=StrToFloat(MyFile.ReadString('Fild1', 'Date', FloatToStr(Now)));

 MyTime.DateTime:=MyDate.DateTime;

 if MyFile.ReadString('Fild1', 'Pol', 'женский')= 'мужской' then RadioButtonM.Checked:=true
    else RadioButtonF.Checked:=true;

 UpDown1.Position:=StrToInt(MyFile.ReadString('Fild1', 'Letnee',IntToStr(FormPref.UpDown1.Position)));
 ComboGMT.ItemIndex:=StrToInt(MyFile.ReadString('Fild1', 'GMT', IntToStr(FormPref.ComboGMT.ItemIndex)));
 UpDownDolgota.Position:=StrToInt(MyFile.ReadString('Fild1', 'Dolgota',IntToStr(FormPref.UpDownDolgota.Position)));
 if MyFile.ReadString('Fild1', 'Check','0')='0' then
 CheckBoxDolgota.Checked:=false else CheckBoxDolgota.Checked:=true;

 FileOpenP:=true;
 FileChangeP:=false;
 Caption:=ExtractFileName(MyFile.FileName);
 WorkFileP:=MyFileName;
 MyFile.Free;
 Raschet;
end;

//--------------------------------------------------------

procedure TFormPeople.EditNamePeopleChange(Sender: TObject);
begin
FileChangeP:=true;
N12.Enabled:=false;
N20.Enabled:=false;
N21.Enabled:=false;
end;

//--------------------------------------------------------

procedure TFormPeople.N8CloseClick(Sender: TObject);
begin
close
end;

//--------------------------------------------------------

procedure TFormPeople.N12RaschetClick(Sender: TObject);
begin
Raschet
end;

//--------------------------------------------------------

procedure  TFormPeople.Raschet;
begin
RozhdenieTime:=MyDate.DateTime;
AllDraw(RozhdenieTime);
ProgressFH.Position:=0;
N12.Enabled:=true;
N20.Enabled:=true;
N21.Enabled:=true;
N16.Enabled:=true;
end;


//--------------------------------------------------------

procedure TFormPeople.N12Click(Sender: TObject);
var
MyStringList:TStringList;
begin
SaveDialogRtf.FileName:=Caption;
if SaveDialogRtf.Execute then
  begin
   MyStringList:=TStringList.Create;
    MyStringList.Clear;
     MyStringList.Add('Файл: '+Caption);
     MyStringList.Add('');
     MyStringList.Add('Имя: '+EditNamePeople.Text);
     MyStringList.Add('Дата и время рождения: '+LabelNow.Caption);
     if Pol=ij_In then
     MyStringList.Add('Женщина.') else
     MyStringList.Add('Мужчина.');
     MyStringList.Add('');
     MyStringList.Add('Восемь основ: ');
     MyStringList.Add(PSYear.Caption+' '+Label28.Caption);
     MyStringList.Add(PSMon.Caption+' '+Label27.Caption);
     MyStringList.Add(PSDay.Caption+' '+Label25.Caption);
     MyStringList.Add('Стихия по стволу дня рождения: '+LabelStvolSin.Caption);
     MyStringList.Add(PSHour.Caption+' '+Label26.Caption);
     MyStringList.Add('');
     MyStringList.Add('Звезды рождения');
     MyStringList.Add('Большой Юнь (60 лет): '+JungBig.Caption);
     MyStringList.Add('Малый Юнь (20 лет): '+Jung.Caption);
     MyStringList.Add('Звезда года рождения: '+LabelYearStar.Caption);
     MyStringList.Add('Звезда месяца рождения: '+LabelMoonStar.Caption);
     MyStringList.Add('Звезда дня рождения: '+LabelDayStar.Caption);
     MyStringList.Add('Звезда часа рождения: '+LabelChasStar.Caption);
     MyStringList.Add('');
     MyStringList.Add('');
     MyStringList.Add(LabeBaczi.Caption+':');

     MyStringList.Add('');
     MyStringList.Add('Временные поправки:');
     MyStringList.Add('GMT: '+ComboGMT.Text);
     MyStringList.Add('Летнее время: '+EditLetnee.Text);
     if CheckBoxDolgota.Checked then MyStringList.Add('Долгота места рождения '+EditDolgota.text+' (гр.)') else
     MyStringList.Add('Долгота места рождения не учтена');
    MyStringList.SaveToFile(SaveDialogRtf.FileName);
   MyStringList.Free;
  end;
end;

//--------------------------------------------------------

procedure TFormPeople.LabelYearStarClick(Sender: TObject);
begin
TextForStar(MyRealStar);
end;

procedure TFormPeople.N14PowerClick(Sender: TObject);
begin
FormPower.Show;
end;

procedure TFormPeople.LabeBacziClick(Sender: TObject);
begin
FormBCShema.Show;
case RodYearStarV of
1:FormBCShema.ComboBoxEx2.ItemIndex:=1;
2:FormBCShema.ComboBoxEx2.ItemIndex:=6;
3:FormBCShema.ComboBoxEx2.ItemIndex:=3;
4:FormBCShema.ComboBoxEx2.ItemIndex:=4;
6:FormBCShema.ComboBoxEx2.ItemIndex:=0;
7:FormBCShema.ComboBoxEx2.ItemIndex:=7;
8:FormBCShema.ComboBoxEx2.ItemIndex:=2;
9:FormBCShema.ComboBoxEx2.ItemIndex:=5;
end;
FormBCShema.ComboBoxEx2Change(Sender);
end;

procedure TFormPeople.LabelStvolSinClick(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=RodD1-1;
FormCzPin.Vetv1.ItemIndex:=Mmain2-1;
FormCzPin.Svtol.OnChange (sender);
end;

procedure TFormPeople.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FileOpenP:=false;
 FileChangeP:=false;
end;

procedure TFormPeople.N15Click(Sender: TObject);
begin
FormCombo.Show;
end;

procedure TFormPeople.ToolButton2Click(Sender: TObject);
begin
ShowModal;
end;

procedure TFormPeople.FormShow(Sender: TObject);
begin
ReNewPeople;
end;

procedure TFormPeople.CheckBoxDolgotaClick(Sender: TObject);
begin
if CheckBoxDolgota.Checked then EditDolgota.Enabled:=true
   else EditDolgota.Enabled:=false;

FileChangeP:=true;
N12.Enabled:=false;
N20.Enabled:=false;
N21.Enabled:=false;
end;

procedure TFormPeople.ReNewPeople;
begin
 FlagUSin:=true;
 MyDate.DateTime:=now;
 MyTime.DateTime:=now;
 RozhdenieTime:=MyDate.DateTime;
 EditNamePeople.Clear;
 PeopleFalse;
 RadioButtonF.Checked:=true;
 ComboGMT.ItemIndex:=FormPref.ComboGMT.ItemIndex;
 UpDown1.Position:=FormPref.UpDown1.Position;
 CheckBoxDolgota.Checked:=FormPref.CheckBoxDolgota.Checked;
 UpDownDolgota.Position:=FormPref.UpDownDolgota.Position;
 EditDolgota.Enabled:=FormPref.EditDolgota.Enabled;
 FileOpenP:=false;
 FileChangeP:=false;
 Caption:='Персональный гороскоп';
 N16.Enabled:=false;
 end;

procedure TFormPeople.ToolButton10Click(Sender: TObject);
begin
if FileChangeP then
begin
 case MessageDlg('Сохранить изменения в файле ' + FormPeople.Caption+'?', mtWarning, mbYesNoCancel, 0) of
  mrYes:  begin
            SaveClick(Sender);
            if not(FileChangeP) then
              begin
               FileOpenP:=false;
               FileChangeP:=false;
               ReNewPeople;
              end;
          end;
  mrNo:   begin
            FileOpenP:=false;
            FileChangeP:=false;
            ReNewPeople;
          end;
  end;
end else
 begin
   FileOpenP:=false;
   FileChangeP:=false;
   ReNewPeople;
 end;
end;

function TFormPeople.ScriptStarRod (MyPol: TInJan; My_index:shortint):string;
begin
case MyPol of
ij_Jan: case My_index of
         1: result:='белая (Вода-ян) / 5 желтая (Почва-инь)';
         2: result:='черная (Почва-ян) / 4 зеленая (Дерево-инь)';
         3: result:='бирюзовая (Дерево-ян) / 3 бирюзовая (Дерево-инь)';
         4: result:='зеленая (Дерево-ян) / 2 черная (Почва-инь)';
         5: result:='желтая (Почва-ян) / 1 белая (Вода-инь)';
         6: result:='белая (Металл-ян) / 9 пурпурная (Огонь-инь)';
         7: result:='алая (Металл-ян) / 8 белая (Почва-инь)';
         8: result:='белая (Почва-ян) / 7 алая (Металл-инь)';
         9: result:='пурпурная (Огонь-ян) / 6 белая (Металл-инь)';
        end;
ij_In: case My_index of
         1: result:='белая (Вода-инь) / 5 желтая (Почва-ян)';
         2: result:='черная (Почва-инь) / 4 зеленая (Дерево-ян)';
         3: result:='бирюзовая (Дерево-инь) / 3 бирюзовая (Дерево-ян)';
         4: result:='зеленая (Дерево-инь) / 2 черная (Почва-ян)';
         5: result:='желтая (Почва-инь) / 1 белая (Вода-ян)';
         6: result:='белая (Металл-инь) / 9 пурпурная (Огонь-ян)';
         7: result:='алая (Металл-инь) / 8 белая (Почва-ян)';
         8: result:='белая (Почва-инь) / 7 алая (Металл-ян)';
         9: result:='пурпурная (Огонь-инь) / 6 белая (Металл-ян)';
       end;
end;
end;

procedure TFormPeople.N17Click(Sender: TObject);
begin
ToolButton10Click(Sender)
end;

procedure TFormPeople.ToolButton1Click(Sender: TObject);
begin
 FormFh.Show;
end;

procedure TFormPeople.TextForStar(StarText:shortint);
begin
  InfoIndex:='\other\people\s'+IntToStr(StarText)+'.rtf';
  if (StarText=5) or (StarText=1) then
  begin
    if pol=ij_In then InfoIndex:='\other\people\s'+IntToStr(StarText)+'f.rtf'
    else  InfoIndex:='\other\people\s'+IntToStr(StarText)+'.rtf';
  end;
  TFormText.Create(self);
end;



procedure TFormPeople.TextForStarComb(StarTop, StarBtn:shortint);
begin
  InfoIndex:='\other\people\'+IntToStr(StarTop)+'-'+IntToStr(StarBtn)+'.rtf';
  TFormText.Create(self);
end;

procedure TFormPeople.N161Click(Sender: TObject);
begin
TextForStar(RodJungVBig)
end;

procedure TFormPeople.N162Click(Sender: TObject);
begin
TextForStar(RodJungV)
end;

procedure TFormPeople.N163Click(Sender: TObject);
begin
TextForStar(MyRealStar);
end;

procedure TFormPeople.N164Click(Sender: TObject);
begin
TextForStar(RodMoonStar);
end;

procedure TFormPeople.N165Click(Sender: TObject);
begin
TextForStarComb(RodJungVBig, RodJungV);
end;

procedure TFormPeople.N166Click(Sender: TObject);
begin
TextForStarComb(RodJungVBig, MyRealStar);
end;

procedure TFormPeople.N167Click(Sender: TObject);
begin
TextForStarComb(RodJungVBig, RodMoonStar);
end;

procedure TFormPeople.N168Click(Sender: TObject);
begin
TextForStarComb(RodJungV,MyRealStar);
end;

procedure TFormPeople.N169Click(Sender: TObject);
begin
TextForStarComb(RodJungV,RodMoonStar);
end;

procedure TFormPeople.N1610Click(Sender: TObject);
begin
TextForStarComb(MyRealStar,RodMoonStar);
end;

procedure TFormPeople.N1611Click(Sender: TObject);
begin
TextForStarComb(MoonStarV,RodMoonStar);
end;

procedure TFormPeople.N1612Click(Sender: TObject);
begin
TextForStarComb(YearStarV,RodMoonStar);
end;

procedure TFormPeople.N1613Click(Sender: TObject);
begin
TextForStarComb(JungV,RodMoonStar);
end;

procedure TFormPeople.N1614Click(Sender: TObject);
begin
TextForStarComb(JungVBig,RodMoonStar);
end;

procedure TFormPeople.N1615Click(Sender: TObject);
begin
TextForStarComb(YearStarV, MyRealStar);
end;

procedure TFormPeople.N1616Click(Sender: TObject);
begin
TextForStarComb(JungV, MyRealStar);
end;

procedure TFormPeople.N1617Click(Sender: TObject);
begin
TextForStarComb(JungVBig, MyRealStar);
end;

procedure TFormPeople.N1618Click(Sender: TObject);
begin
TextForStarComb(JungV, RodJungV);
end;

procedure TFormPeople.N1619Click(Sender: TObject);
begin
TextForStarComb(JungVBig, RodJungV);
end;

procedure TFormPeople.N1620Click(Sender: TObject);
begin
TextForStarComb(JungVBig, RodJungVBig);
end;

procedure TFormPeople.N1621Click(Sender: TObject);
begin
TextForStarComb(MoonStarV, MyRealStar);
end;

procedure TFormPeople.N11Click(Sender: TObject);
begin
Raschet
end;

procedure TFormPeople.N18Click(Sender: TObject);
begin
TextForStar(RodDayStar);
end;

procedure TFormPeople.N19Click(Sender: TObject);
begin
TextForStar(RodChasStar);
end;

procedure TFormPeople.N20Click(Sender: TObject);
begin
ControlForm:=false;
TFormFHInter.Create(self);
end;

procedure TFormPeople.N21Click(Sender: TObject);
begin
ControlForm:=false;
TFormFHInter.Create(self);
end;

procedure TFormPeople.Label28Click(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=RodY1-1;
FormCzPin.Vetv1.ItemIndex:=RodY2-1;
FormCzPin.Svtol.OnChange (sender);
end;

procedure TFormPeople.Label27Click(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=RodM1-1;
FormCzPin.Vetv1.ItemIndex:=RodM2-1;
FormCzPin.Svtol.OnChange (sender);
end;

procedure TFormPeople.Label25Click(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=RodD1-1;
FormCzPin.Vetv1.ItemIndex:=RodD2-1;
FormCzPin.Svtol.OnChange (sender);
end;

procedure TFormPeople.Label26Click(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=RodH1-1;
FormCzPin.Vetv1.ItemIndex:=RodH2-1;
FormCzPin.Svtol.OnChange (sender);
end;

procedure TFormPeople.Print1Click(Sender: TObject);
begin
if PrintDialog1.Execute then
   Print;
end;

procedure TFormPeople.Label3Click(Sender: TObject);
begin
ControlForm:=false;
TFormFHInter.Create(self);
end;

end.
