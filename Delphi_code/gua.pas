unit gua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GuaSmol, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Registry;

type
  TFormGua = class(TForm)
    GuaSmol1: TGuaSmol;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ComboBoxEx2: TComboBoxEx;
    ToolButton11: TToolButton;
    ToolButton1: TToolButton;
    Bevel1: TBevel;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxEx2Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGua: TFormGua;

implementation
uses UnitBCShema, text, main;
{$R *.dfm}

procedure TFormGua.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
Caption:='Знаки гуа';
ComboBoxEx2.ItemIndex:=1;
GuaSmol1.No:=6;
ToolButton1.Hint:='Описание гуа';
Shape1.Hint:='Описание гуа';

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
  Left:=MyRegIniFile.ReadInteger('Gua','Left',(screen.Width-width)div 2);
  Top:=MyRegIniFile.ReadInteger('Gua','Top',(screen.Height-height) div 2);
  Visible:=MyRegIniFile.ReadBool('Gua','Visible',false);
MyRegIniFile.Free;
end;

procedure TFormGua.ComboBoxEx2Change(Sender: TObject);
begin
 case ComboBoxEx2.ItemIndex of
 0:begin
    GuaSmol1.No:=1;
   end;
 1:begin
    GuaSmol1.No:=6;
   end;
 2:begin
    GuaSmol1.No:=7;
   end;
 3:begin
    GuaSmol1.No:=4;
   end;
 4:begin
    GuaSmol1.No:=5;
   end;
 5:begin
    GuaSmol1.No:=3;
   end;
 6:begin
    GuaSmol1.No:=8;
   end;
 7:begin
    GuaSmol1.No:=2;
   end;
end;
end;

procedure TFormGua.ToolButton1Click(Sender: TObject);
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

procedure TFormGua.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ToolButton1Click(Sender)
end;

procedure TFormGua.FormShow(Sender: TObject);
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

end.
