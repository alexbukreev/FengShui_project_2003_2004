unit UnitBCShema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ProfDateTimePicker, StdCtrls, ToolWin,
  ImgList, GuaSmol, Registry;

type
  TFormBCShema = class(TForm)
    ImageBC: TImage;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    ToolButton11: TToolButton;
    ComboBoxEx2: TComboBoxEx;
    ImageList1: TImageList;
    GuaSmol1: TGuaSmol;
    Panel2: TPanel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxEx2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    //procedure ShowBCShem (path:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBCShema: TFormBCShema;

implementation
uses FhUnit, main, text;

{$R *.dfm}

procedure TFormBCShema.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
 ComboBoxEx2.ItemIndex:=1;
 GuaSmol1.No:=6;
 ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\1.bmp');
 ToolButton1.Hint:='Описание для Дворца';
 Shape1.Hint:='Описание гуа';
 Caption:='Ба чжай';
 Panel1.Caption:='Гуа:';
 Panel2.Caption:=' Восточная судьба, Дворец Кань-гуа, Вода';

  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('BCShema','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('BCShema','Top',(screen.Height-height) div 2);
   Visible:=MyRegIniFile.ReadBool('BCShema','Visible',false);
  MyRegIniFile.Free;
end;


procedure TFormBCShema.ComboBoxEx2Change(Sender: TObject);
begin
 case ComboBoxEx2.ItemIndex of
 0:begin
    GuaSmol1.No:=1;
    Panel2.Caption:=' Западная судьба, Дворец Цянь-гуа, Металл';
    ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\6.bmp');
   end;
 1:begin
    GuaSmol1.No:=6;
    Panel2.Caption:=' Восточная судьба, Дворец Кань-гуа, Вода';
    ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\1.bmp');
   end;
 2:begin
    GuaSmol1.No:=7;
    Panel2.Caption:=' Западная судьба, Дворец Гэнь-гуа, Почва';
    ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\8.bmp');
   end;
 3:begin
    GuaSmol1.No:=4;
    Panel2.Caption:=' Восточная судьба, Дворец Чжэнь-гуа, Дерево';
    ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\3.bmp');
   end;
 4:begin
    GuaSmol1.No:=5;
    Panel2.Caption:=' Восточная судьба, Дворец Сюнь-гуа, Дерево';
    ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\4.bmp');
   end;
 5:begin
    GuaSmol1.No:=3;
    Panel2.Caption:=' Восточная судьба, Дворец Ли-гуа, Огонь';
    ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\9.bmp');
   end;
 6:begin
    GuaSmol1.No:=8;
    Panel2.Caption:=' Западная судьба, Дворец Кунь-гуа, Почва';
    ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\2.bmp');
   end;
 7:begin
    GuaSmol1.No:=2;
    Panel2.Caption:=' Западная судьба, Дворец Дуй-гуа, Металл';
    ImageBC.Picture.LoadFromFile(FilePlace+'\bmp\7.bmp');
   end;
end;
end;

procedure TFormBCShema.FormShow(Sender: TObject);
begin
  ComboBoxEx2.ItemsEx[0].Caption:='Цянь';
  ComboBoxEx2.ItemsEx[0].Caption:='Цянь';
  ComboBoxEx2.ItemsEx[1].Caption:='Кань';
  ComboBoxEx2.ItemsEx[2].Caption:='Гэнь';
  ComboBoxEx2.ItemsEx[3].Caption:='Чжэнь';
  ComboBoxEx2.ItemsEx[4].Caption:='Сюнь';
  ComboBoxEx2.ItemsEx[5].Caption:='Ли';
  ComboBoxEx2.ItemsEx[6].Caption:='Кунь';
  ComboBoxEx2.ItemsEx[7].Caption:='Дуй';
end;

procedure TFormBCShema.ToolButton1Click(Sender: TObject);
begin
 case ComboBoxEx2.ItemIndex of
 0:begin
    InfoIndex:='\other\baczi\bc6.rtf';
    TFormText.Create(self);
   end;
 1:begin
    InfoIndex:='\other\baczi\bc1.rtf';
    TFormText.Create(self);
   end;
 2:begin
    InfoIndex:='\other\baczi\bc8.rtf';
    TFormText.Create(self);
   end;
 3:begin
    InfoIndex:='\other\baczi\bc3.rtf';
    TFormText.Create(self);
   end;
 4:begin
    InfoIndex:='\other\baczi\bc4.rtf';
    TFormText.Create(self);
   end;
 5:begin
    InfoIndex:='\other\baczi\bc9.rtf';
    TFormText.Create(self);
   end;
 6:begin
    InfoIndex:='\other\baczi\bc2.rtf';
    TFormText.Create(self);
   end;
 7:begin
    InfoIndex:='\other\baczi\bc7.rtf';
    TFormText.Create(self);
   end;
end;
end;

procedure TFormBCShema.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 case ComboBoxEx2.ItemIndex of
 0:begin
    InfoIndex:='\other\gua\1.rtf';
    TFormText.Create(self);
   end;
 1:begin
    InfoIndex:='\other\gua\6.rtf';
    TFormText.Create(self);
   end;
 2:begin
    InfoIndex:='\other\gua\7.rtf';
    TFormText.Create(self);
   end;
 3:begin
    InfoIndex:='\other\gua\4.rtf';
    TFormText.Create(self);
   end;
 4:begin
    InfoIndex:='\other\gua\5.rtf';
    TFormText.Create(self);
   end;
 5:begin
    InfoIndex:='\other\gua\3.rtf';
    TFormText.Create(self);
   end;
 6:begin
    InfoIndex:='\other\gua\8.rtf';
    TFormText.Create(self);
   end;
 7:begin
    InfoIndex:='\other\gua\2.rtf';
    TFormText.Create(self);
   end;
end;
end;

end.
