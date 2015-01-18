unit table2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Registry, StdCtrls;

type
  TFormTable2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Shape2: TShape;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape12: TShape;
    Shape15: TShape;
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
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable2: TFormTable2;

implementation
uses main;
{$R *.dfm}

procedure TFormTable2.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin 
  Caption:='Стволы и ветви';
  Label1.caption:='Цзя (Дерево-ян)';
  Label2.caption:='И (Дерево-инь)';
  Label3.caption:='Бин (Огонь-ян)';
  Label4.caption:='Дин (Огонь-инь)';
  Label5.caption:='У (Почва-ян)';
  Label6.caption:='Цзи (Почва-инь)';
  Label7.caption:='Гэн (Металл-ян)';
  Label8.caption:='Синь (Металл-инь)';
  Label9.caption:='Жэнь (Вода-ян)';
  Label10.caption:='Гуй (Вода-инь)';
  Label11.caption:='Цзы (крыса, 23-1, Вода-ян)';
  Label12.caption:='Чоу (бык, 1-3, Почва-инь)';
  Label13.caption:='Инь (тигр, 3-5, Дерево-ян)';
  Label14.caption:='Мао (кролик, 5-7, Дерево-инь)';
  Label15.caption:='Чэнь (дракон, 7-9, Почва-ян)';
  Label16.caption:='Сы (змея, 9-11, Огонь-инь)';
  Label17.caption:='У (лошадь, 11-13, Огонь-ян)';
  Label18.caption:='Вэй (овца, 13-15, Земля-инь)';
  Label19.caption:='Шэнь (обезьяна, 15-17, Металл-ян)';
  Label20.caption:='Ю (петух, 17-19, Металл-инь)';
  Label22.caption:='Сюй (собака, 19-21, Земля-ян)';
  Label21.caption:='Хай (свинья, 21-23, Вода-инь)';

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table2','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table2','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Table2','Visible',false);
   Height:=MyRegIniFile.ReadInteger('Table2','Height',411);
   Width:=MyRegIniFile.ReadInteger('Table2','Width',439);
MyRegIniFile.Free;

Image1.Picture.LoadFromFile(FilePlace+'\bmp\zhu.bmp');
Image2.Picture.LoadFromFile(FilePlace+'\bmp\gan.bmp');
end;

end.
