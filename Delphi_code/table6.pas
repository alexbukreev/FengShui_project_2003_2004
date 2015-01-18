unit table6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, Grids, StdCtrls, ExtCtrls;

type
  TFormTable6 = class(TForm)
    Shape7: TShape;
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
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable6: TFormTable6;

implementation
uses main;
{$R *.dfm}

procedure TFormTable6.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='Аналогии у син';
  Label1.caption:='У син';
  Label6.caption:='Дерево';
  Label3.caption:='Почва';
  Label4.caption:='Металл';
  Label5.caption:='Вода';
  Label2.caption:='Огонь';
  Label7.caption:='Ограны инь';
  Label12.caption:='Печень';
  Label9.caption:='Селезенка';
  Label10.caption:='Легкие';
  Label11.caption:='Почки';
  Label8.caption:='Сердце';
  Label13.caption:='Ограны ян';
  Label14.caption:='Желчный пузырь';
  Label16.caption:='Желудок';
  Label17.caption:='Толстая кишка';
  Label18.caption:='Мочевой пузырь';
  Label15.caption:='Тонкая кишка';
  Label19.caption:='Окна';
  Label24.caption:='Глаза';
  Label21.caption:='Рот';
  Label22.caption:='Нос';
  Label23.caption:='Уши';
  Label20.caption:='Язык';
  Label25.caption:='Эмоции';
  Label30.caption:='Гнев';
  Label27.caption:='Раздумье';
  Label28.caption:='Печаль';
  Label29.caption:='Страх';
  Label26.caption:='Радость';
  Label31.caption:='Природные явления';
  Label36.caption:='Ветер';
  Label33.caption:='Влажность';
  Label34.caption:='Сухость';
  Label35.caption:='Холод';
  Label32.caption:='Жара';
  Label37.caption:='Цвета';
  Label42.caption:='Лазурный';
  Label39.caption:='Желтый';
  Label40.caption:='Белый';
  Label41.caption:='Черный';
  Label38.caption:='Красный';
  Label43.caption:='Вкус';
  Label48.caption:='Кислый';
  Label45.caption:='Сладкий';
  Label46.caption:='Горький';
  Label47.caption:='Соленый';
  Label44.caption:='Горячий';

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table6','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table6','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Table6','Visible',false);
   Height:=MyRegIniFile.ReadInteger('Table6','Height',207);
   Width:=MyRegIniFile.ReadInteger('Table6','Width',459);
MyRegIniFile.Free;
end;

end.
