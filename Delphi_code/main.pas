unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Menus, ExtCtrls, StdCtrls, Buttons,
  ProfDateTimePicker, MyType, Math, Registry, ShellApi;

type
  TFHGua=(g_Chan, g_Duy, d_Li, g_Chz, g_Sun, g_Rfn, g_Gen, g_Kun);
  TFormMainFSH = class(TForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    PanelDateTime: TPanel;
    Panel1: TPanel;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    Stvol1: TImage;
    Stvol2: TImage;
    Stvol3: TImage;
    Stvol4: TImage;
    Stvol5: TImage;
    Stvol6: TImage;
    Stvol7: TImage;
    Stvol8: TImage;
    Stvol9: TImage;
    Stvol10: TImage;
    Vetv1: TImage;
    Vetv2: TImage;
    Vetv3: TImage;
    Vetv4: TImage;
    Vetv5: TImage;
    Vetv6: TImage;
    Vetv7: TImage;
    Vetv8: TImage;
    Vetv9: TImage;
    Vetv10: TImage;
    Vetv11: TImage;
    Vetv12: TImage;
    CheckBoxRasch: TCheckBox;
    ToolButton7: TToolButton;
    Panel2: TPanel;
    Shape7: TShape;
    NowButton: TSpeedButton;
    ToolButton1: TToolButton;
    EditDayPlus: TEdit;
    MyTime: TProfDateTimePicker;
    Timer1: TTimer;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    N1: TMenuItem;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    N4: TMenuItem;
    N5: TMenuItem;
    ToolButton12: TToolButton;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    ImageList2: TImageList;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    N2: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    MyDate: TDateTimePicker;
    N26: TMenuItem;
    Panel3: TPanel;
    NLoShu: TMenuItem;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    N28: TMenuItem;
    N27: TMenuItem;
    ToolButton18: TToolButton;
    N29: TMenuItem;
    ToolButton19: TToolButton;
    N30: TMenuItem;
    ToolButton20: TToolButton;
    N31: TMenuItem;
    ToolButton21: TToolButton;
    ToolButton23: TToolButton;
    N9: TMenuItem;
    PanelMain: TPanel;
    Panel5: TPanel;
    ProgressFH: TProgressBar;
    ProgressBarMain: TProgressBar;
    N25: TMenuItem;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    StatusBarFH: TPanel;
    ToolButton24: TToolButton;
    N37: TMenuItem;
    ToolButton25: TToolButton;
    N38: TMenuItem;
    ToolButton28: TToolButton;
    N39: TMenuItem;
    ToolButton29: TToolButton;
    ToolButton15: TToolButton;
    ToolButton30: TToolButton;
    N40: TMenuItem;
    N41: TMenuItem;
    ToolButtonConstell: TToolButton;
    N281: TMenuItem;
    ToolButton31: TToolButton;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    ToolButton22: TToolButton;
    N32: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure NowButtonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBoxRaschClick(Sender: TObject);
    function CheckedGoroDraw:boolean;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure EditDayPlusChange(Sender: TObject);
    procedure EditDayPlusClick(Sender: TObject);
    procedure MyDateChange(Sender: TObject);
    procedure MyTimeChange(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure AllCalc (My_date:TDateTime);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    function GMT(MyString:ShortString):Single;
    function LetneeVremja(MyEdit:TEdit):Single;
    procedure J1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure NLoShuClick(Sender: TObject);
    procedure N27Table3Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
    procedure ToolButton30Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButtonConstellClick(Sender: TObject);
    procedure N281Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure EditDayPlusKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainFSH: TFormMainFSH;
  FirstYear:Smallint;
  FilePlace:string;
  ControlForm:boolean; //для определения, кто создал окно геомант. таб. или гороскоп

  Ses1,Ses2,Ses3,Ses4,Ses5,Ses6,
  Ses7,Ses8,Ses9,Ses10,Ses11,Ses12,Ses13,Ses14,Ses15,Ses16,
  Ses17,Ses18,Ses19,Ses20,Ses21,Ses22,Ses23,Ses24:TDateTime;

  CalendarTime:TDateTime;//время, на которое делается расчет в календаре
  InfoIndex:string;//Имя файла контента для Инфо-окна
  WindowIndex:integer;//Счетчик для окон
  //PositionIndex:integer;//полжение окна people
  PositionInfo:integer;//полжение окна Info
  PositionFHInfo:integer;//полжение окна Интерпретации фен-шуй
  //TableGo:boolean;//Флаг указывает произведен ли расчет фен-шуй таблицы

implementation
uses GoroCircle, SeasonList, godday, Circle, callform, FhUnit, people,
  CzPinSys, preference, about, TableCickl, TablePower, TablePeople, diagVV,
  table3, table2, table4, table5, table6, table7, line, table8, reg, text,
  registr, UnitBCShema, combo, graph, constell, gua, note;
{$R *.dfm}

procedure TFormMainFSH.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
 ControlForm:=true;

 MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   MyRegIniFile.WriteString('Main','Version','Версия 4.11');
   MyRegIniFile.WriteString('Main','No','No-4001');
  MyRegIniFile.Free;

  //Canvas.Pen.Style:=psDot;
  FilePlace:=ExtractFileDir(Application.ExeName);
  left:=0;
  Top:=0;
  Height:=Screen.Height;
  Width:=Screen.Width;
  WindowState:=wsMaximized;

  NowButton.Caption:=DateTimeToStr(now);
  MyDate.DateTime:=now;
  MyTime.Time:=Time;
  WindowIndex:=1;
  //PositionIndex:=0;
  PositionInfo:=0;

  //Русские буквы
  Caption:='FengShui 4.11';

  File1.Caption:='Файл';
  N33.Caption:='Новое окно программы';
  N11.Caption:='Персональный гороскоп';
  N12.Caption:='Внутренний знак жилища';
  N13.Caption:='Установки';
  N1.Caption:='Выход';

  N5.Caption:='Окна';
  N2.Caption:='Календарь';
  N15.Caption:='Круг эклиптики';
  N17.Caption:='Наступление сезонов солнечного календаря';
  N18.Caption:='12 установлений';
  N281.Caption:='28 созвездий';
  N19.Caption:='Стволы и ветви';
  N9.Caption:='Геомантическая линейка';
  N40.Caption:='Ба чжай';
  N41.Caption:='Комбинации звезд';
  N42.Caption:='Знаки гуа';
  N32.Caption:='Блокнот';

  N44.Caption:='Отображать в календаре';

  N38.Caption:='Описания для звезд';
  N39.Caption:='Сектора Ба чжай';
  N37.Caption:='Соотношение ян/инь звезд';
  NLoShu.Caption:='Диаграмма Ло Шу';
  N27.Caption:='Стволы и ветви';
  N29.Caption:='Диаграмма «Стволы и ветви»';
  N30.Caption:='Диаграмма «У син»';
  N31.Caption:='Аналогии у син';
  N25.Caption:='Органы и меридианы';
  //N32.Caption:='Магнитное склонение';

  N4.Caption:='Сервис';
  N6.Caption:='Вызов справки';
  N8.Caption:='On-line сервисы...';
  N26.Caption:='О программе...';

  N34.Caption:='Новое окно программы';
  N3.Caption:='Персональный гороскоп';
  N20.Caption:='Внутренний знак жилища';
  N22.Caption:='Установки...';
  N24.Caption:='Выход';

  Panel3.Caption:='шаг (дни):';
  CheckBoxRasch.Caption:='Отображать в календаре';

  NowButton.hint:='Установить текущие дату и время';
  ToolButton4.hint:='Прибавить дни';
  ToolButton5.hint:='Отнять дни';
  ToolButton27.hint:='Новое окно программы';
  ToolButton11.hint:='Персональный гороскоп';
  ToolButton10.hint:='Внутренний знак жилища';
  ToolButton9.hint:='Календарь';
  ToolButton8.hint:='Круг эклиптики';
  ToolButton3.hint:='Наступление сезонов';
  ToolButton2.hint:='12 установлений';
  ToolButtonConstell.hint:='28 созвездий';
  ToolButton12.hint:='Стволы и ветви';
  ToolButton23.hint:='Геомантическая линейка';
  ToolButton25.hint:='Описания для звезд';
  ToolButton24.hint:='Соотношение ян/инь звезд';
  ToolButton16.hint:='Диаграмма Ло Шу';
  ToolButton18.hint:='Стволы и ветви';
  ToolButton19.hint:='Диаграмма «Стволы и ветви»';
  ToolButton20.hint:='Диаграмма «У син»';
  ToolButton21.hint:='Аналогии у син';
  ToolButton28.hint:='Сектора Ба чжай';
  ToolButton29.hint:='Ба чжай';
  ToolButton30.hint:='Комбинации звезд для циклов';
  ToolButton31.hint:='Знаки гуа';
  ToolButton22.hint:='Блокнот';

end;

//--------------------------------------------------------

function TFormMainFSH.CheckedGoroDraw:boolean;
begin
  result:=false;
  if CheckBoxRasch.Checked then result:=true;
end;

//--------------------------------------------------------

procedure TFormMainFSH.NowButtonClick(Sender: TObject);
begin
 MyDate.DateTime:=now;
 MyTime.DateTime:=now;
 if CheckedGoroDraw then AllCalc(now);
end;

//--------------------------------------------------------

procedure TFormMainFSH.Timer1Timer(Sender: TObject);
begin
 NowButton.Caption:=FormatDateTime('ddddd'+' '+'tt',now);
end;


//--------------------------------------------------------


procedure TFormMainFSH.CheckBoxRaschClick(Sender: TObject);
begin
 if CheckBoxRasch.Checked then AllCalc(MyDate.DateTime);
end;


//--------------------------------------------------------


procedure TFormMainFSH.ToolButton4Click(Sender: TObject);
var
ControlTime:TDateTime;
begin
ControlTime:=FormMainFSH.MyDate.DateTime+StrToInt(EditDayPlus.text);
if ControlTime>2593224 then
   begin
    FormMainFSH.MyDate.DateTime:=2593224; //1 января 1753 года
    FormMainFSH.MyTime.DateTime:=2593224;
   end
   else FormMainFSH.MyDate.DateTime:=ControlTime;
if CheckedGoroDraw then AllCalc(FormMainFSH.MyDate.DateTime);
end;


//--------------------------------------------------------


procedure TFormMainFSH.ToolButton5Click(Sender: TObject);
var
ControlTime:TDateTime;
begin
ControlTime:=FormMainFSH.MyDate.DateTime-StrToInt(EditDayPlus.text);
if ControlTime<2 then
   begin
    FormMainFSH.MyDate.DateTime:=2; //1 января 1900 года
    FormMainFSH.MyTime.DateTime:=2;
   end
   else FormMainFSH.MyDate.DateTime:=ControlTime;
if CheckedGoroDraw then AllCalc(FormMainFSH.MyDate.DateTime);
end;


//--------------------------------------------------------


procedure TFormMainFSH.EditDayPlusChange(Sender: TObject);
begin
 try
   if StrToInt(EditDayPlus.Text)<0 then EditDayPlus.Text:='0';
   //EditDayPlus.Text:=EditDayPlus.Text;
 except
   EditDayPlus.Text:='1'
 end;
end;


//--------------------------------------------------------


procedure TFormMainFSH.EditDayPlusClick(Sender: TObject);
begin
  EditDayPlus.SelectAll;
end;

//--------------------------------------------------------

procedure TFormMainFSH.MyDateChange(Sender: TObject);
begin
  if CheckedGoroDraw then AllCalc(MyDate.DateTime);
end;

//--------------------------------------------------------

procedure TFormMainFSH.MyTimeChange(Sender: TObject);
begin
   MyDate.Time:=MyTime.Time;
   if CheckedGoroDraw then AllCalc(MyDate.DateTime);
end;

//--------------------------------------------------------

procedure TFormMainFSH.ToolButton3Click(Sender: TObject);
begin
 FormSeasoneList.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.AllCalc(My_date:TDateTime);
begin
  GoroDraw(My_Date);
  if FormSeasoneList.Showing then FormSeasoneList.LabelChange(My_Date);
  if FormGoodDay.Showing then FormGoodDay.RaschetGoodDay;
  if FormConstell.Showing then FormConstell.RaschetConstell;
  if FormNote.Showing then FormNote.RaschetNote;
end;

//--------------------------------------------------------

procedure TFormMainFSH.ToolButton2Click(Sender: TObject);
begin
  FormGooDday.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.ToolButton8Click(Sender: TObject);
begin
  FormCircle.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.ToolButton9Click(Sender: TObject);
begin
 FormCalendar.Show
end;

//--------------------------------------------------------

procedure TFormMainFSH.N1Click(Sender: TObject);
begin
  Close;
end;

//--------------------------------------------------------

procedure TFormMainFSH.ToolButton10Click(Sender: TObject);
begin
 FormFh.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.ToolButton11Click(Sender: TObject);
begin
 FormPeople.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.ToolButton12Click(Sender: TObject);
begin
FormCzPin.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N13Click(Sender: TObject);
begin
FormPref.ShowModal;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N11Click(Sender: TObject);
begin
// TFormPeople.Create(Self);
FormPeople.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N12Click(Sender: TObject);
begin
 FormFh.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N2Click(Sender: TObject);
begin
 FormCalendar.Show
end;

//--------------------------------------------------------

procedure TFormMainFSH.N15Click(Sender: TObject);
begin
  FormCircle.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N17Click(Sender: TObject);
begin
 FormSeasoneList.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N18Click(Sender: TObject);
begin
  FormGooDday.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N19Click(Sender: TObject);
begin
FormCzPin.Show;
end;

//--------------------------------------------------------

function TFormMainFSH.GMT(MyString:ShortString):Single;
begin
result:=0;
if MyString='(GMT -12:00)' then result:=-12;
if MyString='(GMT -11:00)' then result:=-11;
if MyString='(GMT -10:00)' then result:=-10;
if MyString='(GMT -09:00)' then result:=-9;
if MyString='(GMT -08:00)' then result:=-8;
if MyString='(GMT -07:00)' then result:=-7;
if MyString='(GMT -06:00)' then result:=-6;
if MyString='(GMT -05:00)' then result:=-5;
if MyString='(GMT -04:00)' then result:=-4;
if MyString='(GMT -03:30)' then result:=-3.5;
if MyString='(GMT -03:00)' then result:=-3;
if MyString='(GMT -02:00)' then result:=-2;
if MyString='(GMT -01:00)' then result:=-1;
if MyString='(GMT 00:00)' then result:=0;
if MyString='(GMT +01:00)' then result:=1;
if MyString='(GMT +02:00)' then result:=2;
if MyString='(GMT +03:00)' then result:=3;
if MyString='(GMT +03:30)' then result:=3.5;
if MyString='(GMT +04:00)' then result:=4;
if MyString='(GMT +04:30)' then result:=4.5;
if MyString='(GMT +05:00)' then result:=5;
if MyString='(GMT +05:45)' then result:=5.75;
if MyString='(GMT +06:00)' then result:=6;
if MyString='(GMT +06:30)' then result:=6.5;
if MyString='(GMT +07:00)' then result:=7;
if MyString='(GMT +08:00)' then result:=8;
if MyString='(GMT +09:00)' then result:=9;
if MyString='(GMT +09:30)' then result:=9.5;
if MyString='(GMT +10:00)' then result:=10;
if MyString='(GMT +11:00)' then result:=11;
if MyString='(GMT +12:00)' then result:=12;
if MyString='(GMT +13:00)' then result:=13;
end;

//--------------------------------------------------------

function TFormMainFSH.LetneeVremja(MyEdit:TEdit):Single;
begin
result:=StrToInt(MyEdit.text);
result:=result/24;
end;

//--------------------------------------------------------

procedure TFormMainFSH.J1Click(Sender: TObject);
begin
if FormPeople.SaveDialogPeople.Execute then
end;

//--------------------------------------------------------

procedure TFormMainFSH.N3Click(Sender: TObject);
begin
 TFormPeople.Create(Self);
end;

//--------------------------------------------------------

procedure TFormMainFSH.N20Click(Sender: TObject);
begin
 FormFh.Show;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N22Click(Sender: TObject);
begin
FormPref.ShowModal;
end;

//--------------------------------------------------------

procedure TFormMainFSH.N24Click(Sender: TObject);
begin
  Close;
end;

//--------------------------------------------------------

procedure TFormMainFSH.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FormPeople.FormCloseQuery(Sender,CanClose);
FormFH.FormCloseQuery(Sender,CanClose);
end;

//--------------------------------------------------------

procedure TFormMainFSH.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
MyRegIniFile:TRegIniFile;
begin
 MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   MyRegIniFile.WriteInteger('Calendar','Left',FormCalendar.Left);
   MyRegIniFile.WriteInteger('Calendar','Top',FormCalendar.Top);
   MyRegIniFile.WriteInteger('Calendar','Height',FormCalendar.Height);
   MyRegIniFile.WriteInteger('Calendar','Width',FormCalendar.Width);
   MyRegIniFile.WriteBool('Calendar','Visible',FormCalendar.Visible);

   MyRegIniFile.WriteInteger('Circle','Left',FormCircle.Left);
   MyRegIniFile.WriteInteger('Circle','Top',FormCircle.Top);
   MyRegIniFile.WriteInteger('Circle','Height',FormCircle.Height);
   MyRegIniFile.WriteInteger('Circle','Width',FormCircle.Width);
   MyRegIniFile.WriteBool('Circle','Visible',FormCircle.Visible);

   MyRegIniFile.WriteInteger('note','Left',FormNote.Left);
   MyRegIniFile.WriteInteger('note','Top',FormNote.Top);
   MyRegIniFile.WriteInteger('note','Height',FormNote.Height);
   MyRegIniFile.WriteInteger('note','Width',FormNote.Width);
   MyRegIniFile.WriteBool('note','Visible',FormNote.Visible);


   MyRegIniFile.WriteInteger('Seasone','Left',FormSeasoneList.Left);
   MyRegIniFile.WriteInteger('Seasone','Top',FormSeasoneList.Top);
   MyRegIniFile.WriteInteger('Seasone','Height',FormSeasoneList.Height);
   MyRegIniFile.WriteInteger('Seasone','Width',FormSeasoneList.Width);
   MyRegIniFile.WriteBool('Seasone','Visible',FormSeasoneList.Visible);

   MyRegIniFile.WriteInteger('FH','Left',FormFh.Left);
   MyRegIniFile.WriteInteger('FH','Top',FormFh.Top);
   MyRegIniFile.WriteBool('FH','Visible',FormFh.Visible); 

   MyRegIniFile.WriteInteger('People','Left',FormPeople.Left);
   MyRegIniFile.WriteInteger('People','Top',FormPeople.Top);
   MyRegIniFile.WriteBool('People','Visible',FormPeople.Visible);

   MyRegIniFile.WriteInteger('GoonDay','Left',FormGoodDay.Left);
   MyRegIniFile.WriteInteger('GoonDay','Top',FormGoodDay.Top);
   MyRegIniFile.WriteInteger('GoonDay','Height',FormGoodDay.Height);
   MyRegIniFile.WriteInteger('GoonDay','Width',FormGoodDay.Width);
   MyRegIniFile.WriteBool('GoonDay','Visible',FormGoodDay.Visible);

   MyRegIniFile.WriteInteger('Constell','Left',FormConstell.Left);
   MyRegIniFile.WriteInteger('Constell','Top',FormConstell.Top);
   MyRegIniFile.WriteInteger('Constell','Height',FormConstell.Height);
   MyRegIniFile.WriteInteger('Constell','Width',FormConstell.Width);
   MyRegIniFile.WriteBool('Constell','Visible',FormConstell.Visible);

   MyRegIniFile.WriteInteger('CzPin','Left',FormCzPin.Left);
   MyRegIniFile.WriteInteger('CzPin','Top',FormCzPin.Top);
   MyRegIniFile.WriteBool('CzPin','Visible',FormCzPin.Visible); 

   MyRegIniFile.WriteInteger('Power','Left',FormPower.Left);
   MyRegIniFile.WriteInteger('Power','Top',FormPower.Top);
   MyRegIniFile.WriteBool('Power','Visible',FormPower.Visible);

   MyRegIniFile.WriteInteger('Combo','Left',FormCombo.Left);
   MyRegIniFile.WriteInteger('Combo','Top',FormCombo.Top);
   MyRegIniFile.WriteBool('Combo','Visible',FormCombo.Visible);
   
   MyRegIniFile.WriteInteger('LoShu','Left',FormVV.Left);
   MyRegIniFile.WriteInteger('LoShu','Top',FormVV.Top);
   MyRegIniFile.WriteBool('LoShu','Visible',FormVV.Visible);

   MyRegIniFile.WriteInteger('BCShema','Left',FormBCShema.Left);
   MyRegIniFile.WriteInteger('BCShema','Top',FormBCShema.Top);
   MyRegIniFile.WriteBool('BCShema','Visible',FormBCShema.Visible);

   MyRegIniFile.WriteInteger('Gua','Left',FormGua.Left);
   MyRegIniFile.WriteInteger('Gua','Top',FormGua.Top);
   MyRegIniFile.WriteBool('Gua','Visible',FormGua.Visible);

   MyRegIniFile.WriteInteger('Table2','Left',FormTable2.Left);
   MyRegIniFile.WriteInteger('Table2','Top',FormTable2.Top);
   MyRegIniFile.WriteInteger('Table2','Width',FormTable2.Width);
   MyRegIniFile.WriteInteger('Table2','Height',FormTable2.Height);
   MyRegIniFile.WriteBool('Table2','Visible',FormTable2.Visible);

   MyRegIniFile.WriteInteger('Table4','Left',FormTable4.Left);
   MyRegIniFile.WriteInteger('Table4','Top',FormTable4.Top);
   MyRegIniFile.WriteBool('Table4','Visible',FormTable4.Visible);

   MyRegIniFile.WriteInteger('Table5','Left',FormTable5.Left);
   MyRegIniFile.WriteInteger('Table5','Top',FormTable5.Top);
   MyRegIniFile.WriteBool('Table5','Visible',FormTable5.Visible);

   MyRegIniFile.WriteInteger('Table6','Left',FormTable6.Left);
   MyRegIniFile.WriteInteger('Table6','Top',FormTable6.Top);
   MyRegIniFile.WriteInteger('Table6','Width',FormTable6.Width);
   MyRegIniFile.WriteInteger('Table6','Height',FormTable6.Height);
   MyRegIniFile.WriteBool('Table6','Visible',FormTable6.Visible);

   MyRegIniFile.WriteInteger('Table7','Left',FormTable7.Left);
   MyRegIniFile.WriteInteger('Table7','Top',FormTable7.Top);
   MyRegIniFile.WriteInteger('Table7','Width',FormTable7.Width);
   MyRegIniFile.WriteInteger('Table7','Height',FormTable7.Height);
   //MyRegIniFile.WriteBool('Table7','Visible',FormTable7.Visible); 

   MyRegIniFile.WriteInteger('Table9','Left',FormTable9.Left);
   MyRegIniFile.WriteInteger('Table9','Top',FormTable9.Top);
   MyRegIniFile.WriteInteger('Table9','Width',FormTable9.Width);
   MyRegIniFile.WriteInteger('Table9','Height',FormTable9.Height);
   MyRegIniFile.WriteBool('Table9','Visible',FormTable9.Visible);

   MyRegIniFile.WriteInteger('Table8','Left',FormLine.Left);
   MyRegIniFile.WriteInteger('Table8','Top',FormLine.Top);
   MyRegIniFile.WriteBool('Table8','Visible',FormLine.Visible);
  MyRegIniFile.Free;
end;

procedure TFormMainFSH.FormShow(Sender: TObject);
var
DolgotaMyStr:string;
begin
 //FormPref.IniVariable;
if FormPref.CheckBoxDolgota.Checked then DolgotaMyStr:='долгота '+FormPref.EditDolgota.text+' (гр.)' else
   DolgotaMyStr:='долгота не учтена';

 StatusBarFH.Caption:=' GMT: '+FormPref.ComboGMT.Text+' | '+'летнее время: '+
                            FormPref.EditLetnee.Text+' | '+DolgotaMyStr;


end;

procedure TFormMainFSH.N26Click(Sender: TObject);
begin
FormAbout.ShowModal;
end;

procedure TFormMainFSH.NLoShuClick(Sender: TObject);
begin
FormVV.Show;
end;

procedure TFormMainFSH.N27Table3Click(Sender: TObject);
begin
FormTable3.Show;
end;

procedure TFormMainFSH.N27Click(Sender: TObject);
begin
FormTable2.Show;
end;

procedure TFormMainFSH.N29Click(Sender: TObject);
begin
FormTable4.Show;
end;

procedure TFormMainFSH.N30Click(Sender: TObject);
begin
FormTable5.Show;
end;

procedure TFormMainFSH.N31Click(Sender: TObject);
begin
FormTable6.Show;
end;

procedure TFormMainFSH.N6Click(Sender: TObject);
begin
ShellExecute(FormMainFSH.Handle, nil,PAnsiChar(FilePlace+'\help\index.htm'),nil,nil, SW_SHOW);
end;

procedure TFormMainFSH.N9Click(Sender: TObject);
begin
FormLine.Show;
end;

procedure TFormMainFSH.N25Click(Sender: TObject);
begin
FormTable9.Show;
end;

procedure TFormMainFSH.N33Click(Sender: TObject);
begin
ShellExecute (FormMainFSH.Handle, nil, PChar (Application.ExeName), nil, nil, SW_SHOW);
end;

procedure TFormMainFSH.N8Click(Sender: TObject);
begin
FormAbout.ShowModal;
end;

procedure TFormMainFSH.N37Click(Sender: TObject);
begin
FormPower.Show;
end;

procedure TFormMainFSH.N38Click(Sender: TObject);
begin
 InfoIndex:='\other\stars.rtf';
 TFormText.Create(self);
end;

procedure TFormMainFSH.FormActivate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
pass:string;
begin
  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   pass:=MyRegIniFile.ReadString('Main','Serial3','none');
  MyRegIniFile.Free;

 if  //Новые ключи --------------
     (pass='4000-444-095') or
     (pass='4000-888-343') or
     (pass='4000-678-155') or
     (pass='4000-543-456') or
     (pass='4000-895-098') or
     (pass='4000-125-890') or
     (pass='4000-975-345') or
     (pass='4000-125-357') or
     (pass='4000-888-811') or
     (pass='4000-874-111') or
     (pass='4000-154-555') or
     (pass='4000-965-444') or
     (pass='4000-215-369') or
     (pass='4000-254-458') or
     (pass='4000-254-784') or
     (pass='4000-125-458') or
     (pass='4000-125-222') or
     (pass='4000-934-050') or
     (pass='4000-145-215') or
     (pass='4000-125-025') or
     (pass='4000-758-345') or
     (pass='4000-458-777') or
     (pass='4000-125-120') or
      //--------------------------

     (pass='4657-444-095') or
     (pass='7854-888-343') or
     (pass='5873-678-155') or
     (pass='5874-543-456') or
     (pass='1258-895-098') or
     (pass='8457-125-890') or
     (pass='9874-975-345') or
     (pass='9999-125-357') or
     (pass='2541-888-811') or
     (pass='1578-874-111') or
     (pass='4587-154-555') or
     (pass='1547-965-444') or
     (pass='5874-215-369') or
     (pass='3521-254-458') or
     (pass='9874-254-784') or
     (pass='2545-125-458') or
     (pass='0125-125-222') or
     (pass='2015-934-050') or
     (pass='7501-145-215') or
     (pass='9850-125-025') or
     (pass='1254-758-345') or
     (pass='8795-458-777') or
     (pass='4568-125-120') or
     (pass='0000-658-125') or
     (pass='0403-235-589') or //ключ для Irina Shumakova
     (pass='1254-587-000') or //Служебный
     (pass='3695-221-000') or //Служебный
     (pass='1478-777-000') or //Служебный
     (pass='3215-111-000') or //Служебный
     (pass='9874-150-000') or

     (pass='4582-456-254') or //Служебный
     (pass='4587-263-888') or //Служебный
     (pass='0111-111-369') or //Служебный
     (pass='0025-569-785') or //Служебный
     (pass='0125-594-036') or //Служебный
     (pass='1896-036-751') or //Служебный
     (pass='2200-584-263') or //Служебный
     (pass='2589-999-369') or //Служебный
     (pass='6958-999-356') or //Служебный
     (pass='1010-222-598') or   //Служебный   //Служебный для 2.0

     (pass='3345-655-254') or
     (pass='6455-645-888') or
     (pass='4535-45665-369') or//нет в списках
     (pass='7656-569-785') or
     (pass='5675-594-036') or
     (pass='6666-036-751') or
     (pass='7655-584-263') or //Служебный
     (pass='0988-999-369') or //Служебный
     (pass='0989-999-356') or //Служебный
     (pass='1000-222-598') or //Служебный
     (pass='Wei De Zhi')

     then
 begin
  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   MyRegIniFile.WriteString('Main','Serial3',pass);
  MyRegIniFile.Free;
 end else
 begin
   FormRegist.ShowModal;
 end;

end;

procedure TFormMainFSH.N39Click(Sender: TObject);
begin
InfoIndex:='\other\bc.rtf';
TFormText.Create(self);
end;

procedure TFormMainFSH.ToolButton29Click(Sender: TObject);
begin
FormBCShema.Show;
end;

procedure TFormMainFSH.ToolButton30Click(Sender: TObject);
begin
FormCombo.Show;
end;

procedure TFormMainFSH.N40Click(Sender: TObject);
begin
FormBCShema.Show;
end;

procedure TFormMainFSH.N41Click(Sender: TObject);
begin
FormCombo.Show;
end;

procedure TFormMainFSH.ToolButton31Click(Sender: TObject);
begin
FormGua.Show;
end;

procedure TFormMainFSH.ToolButtonConstellClick(Sender: TObject);
begin
FormConstell.Show;
end;

procedure TFormMainFSH.N281Click(Sender: TObject);
begin
FormConstell.Show;
end;

procedure TFormMainFSH.N42Click(Sender: TObject);
begin
FormGua.Show;
end;

procedure TFormMainFSH.N44Click(Sender: TObject);
begin
CheckBoxRasch.Checked:=true;
CheckBoxRaschClick(Sender);
end;

procedure TFormMainFSH.ToolButton22Click(Sender: TObject);
begin
FormNote.Show;
end;

procedure TFormMainFSH.N32Click(Sender: TObject);
begin
 FormNote.Show;
end;

procedure TFormMainFSH.EditDayPlusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_UP then ToolButton4Click(Sender);
if key=VK_DOWN then ToolButton5Click(Sender);
end;

end.


