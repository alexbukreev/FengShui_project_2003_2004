unit SeasonList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Registry;

type
  TFormSeasoneList = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
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
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Titl: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Shape5: TShape;
    Shape1: TShape;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    procedure LabelSeasone (My_date:integer);
    procedure LabelChange(My_date:TDateTime);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label39Click(Sender: TObject);
    procedure Label40Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure Label41Click(Sender: TObject);
    procedure Label42Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Label44Click(Sender: TObject);
    procedure Label43Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Label45Click(Sender: TObject);
    procedure Label46Click(Sender: TObject);
    procedure Label32Click(Sender: TObject);
    procedure Label47Click(Sender: TObject);
    procedure Label48Click(Sender: TObject);
    procedure Label33Click(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure Label50Click(Sender: TObject);
    procedure Label34Click(Sender: TObject);
    procedure Label51Click(Sender: TObject);
    procedure Label52Click(Sender: TObject);
    procedure Label35Click(Sender: TObject);
    procedure Label60Click(Sender: TObject);
    procedure Label59Click(Sender: TObject);
    procedure Label36Click(Sender: TObject);
    procedure Label58Click(Sender: TObject);
    procedure Label57Click(Sender: TObject);
    procedure Label37Click(Sender: TObject);
    procedure Label56Click(Sender: TObject);
    procedure Label55Click(Sender: TObject);
    procedure Label38Click(Sender: TObject);
    procedure Label53Click(Sender: TObject);
    procedure Label54Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSeasoneList: TFormSeasoneList;

implementation

uses main, my_moon, text, GoroCircle, preference;



{$R *.dfm}
procedure TFormSeasoneList.LabelSeasone (My_date:integer);

begin
  Titl.Caption:='На '+IntToStr(My_date)+' год';
  Label22.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses22);
  Label23.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses23);
  Label24.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses24);
  Label1.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses1);
  Label2.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses2);
  Label3.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses3);
  Label4.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses4);
  Label5.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses5);
  Label6.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses6);
  Label7.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses7);
  Label8.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses8);
  Label9.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses9);
  Label10.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses10);
  Label11.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses11);
  Label12.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses12);
  Label13.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses13);
  Label14.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses14);
  Label15.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses15);
  Label16.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses16);
  Label17.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses17);
  Label18.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses18);
  Label19.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses19);
  Label20.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses20);
  Label21.Caption:=FormatDateTime('ddddd'+' '+'t',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses21);
end;

//--------------------------------------------------------

procedure TFormSeasoneList.LabelChange(My_date:TDateTime);
var
index:integer;
begin
 index:=StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime));
 //if index <>FirstYear then
  LabelSeasone(index);
end;

//--------------------------------------------------------

procedure TFormSeasoneList.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='Наступление сезонов солнечного календаря';

  Label25.caption:='Наступление весны';
  Label26.caption:='Становление весны';
  Label27.caption:='Дождевая вода';
  Label28.caption:='Середина весны';
  Label39.caption:='Пробуждение насекомых';
  Label40.caption:='Весеннее равноденствие';
  Label29.caption:='Конец весны';
  Label41.caption:='Чистота и ясность';
  Label42.caption:='Хлебные дожди';
  Label30.caption:='Начало лета';
  Label44.caption:='Становление лета';
  Label43.caption:='Малое насыщение';
  Label31.caption:='Середина лета';
  Label45.caption:='Колошение хлебов';
  Label46.caption:='Летнее солнцестояние';
  Label32.caption:='Конец лета';
  Label47.caption:='Малая жара';
  Label48.caption:='Большая жара';
  Label33.caption:='Начало осени';
  Label49.caption:='Становление осени';
  Label50.caption:='Прекращение жары';
  Label34.caption:='Середина осени';
  Label51.caption:='Белые росы';
  Label52.caption:='Осеннее равноденствие';
  Label35.caption:='Конец осени';
  Label60.caption:='Холодные росы';
  Label59.caption:='Выпадение инея';
  Label36.caption:='Начало зимы';
  Label58.caption:='Становление зимы';
  Label57.caption:='Малые снега';
  Label37.caption:='Середина зимы';
  Label56.caption:='Большие снега';
  Label55.caption:='Зимнее солнцестояние';
  Label38.caption:='Конец зимы';
  Label53.caption:='Малые холода';
  Label54.caption:='Большие холода';

  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Seasone','Left',Screen.Width-width-2);
   Top:=MyRegIniFile.ReadInteger('Seasone','Top',FormMainFSH.Height-FormMainFSH.ClientHeight+50);
   Height:=MyRegIniFile.ReadInteger('Seasone','Height',FormMainFSH.ClientHeight-80);
   Width:=MyRegIniFile.ReadInteger('Seasone','Width',290);
   Visible:=MyRegIniFile.ReadBool('Seasone','Visible',false);
  MyRegIniFile.Free;

  LabelSeasone(StrToInt(FormatDateTime('yyyy',now)));
end;

//--------------------------------------------------------

procedure TFormSeasoneList.FormShow(Sender: TObject);
begin
 LabelSeasone(FirstYear);
end;

//--------------------------------------------------------

procedure TFormSeasoneList.Label25Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s1.rtf';
 TFormText.Create(self);
end;

//--------------------------------------------------------

procedure TFormSeasoneList.FormResize(Sender: TObject);
begin
  Shape5.Width:=width-35;
  Shape1.Width:=width-35;
  Width:=290;
end;

procedure TFormSeasoneList.Label26Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s2.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label27Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s3.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label28Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s4.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label39Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s5.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label40Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s6.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label29Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s7.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label41Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s8.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label42Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s9.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label30Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s10.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label44Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s11.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label43Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s12.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label31Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s13.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label45Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s14.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label46Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s15.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label32Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s16.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label47Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s17.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label48Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s18.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label33Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s19.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label49Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s20.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label50Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s21.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label34Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s22.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label51Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s23.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label52Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s24.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label35Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s25.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label60Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s26.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label59Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s27.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label36Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s28.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label58Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s29.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label57Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s30.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label37Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s31.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label56Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s32.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label55Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s33.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label38Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s34.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label53Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s35.rtf';
 TFormText.Create(self);
end;

procedure TFormSeasoneList.Label54Click(Sender: TObject);
begin
 InfoIndex:='\other\ses\s36.rtf';
 TFormText.Create(self);
end;

end.
