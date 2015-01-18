unit table8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, ExtCtrls;

type
  TFormTable9 = class(TForm)
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable9: TFormTable9;

implementation
uses main;
{$R *.dfm}

procedure TFormTable9.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='Органы и меридианы';
  Label1.caption:='Желчный пузырь';
  Label2.caption:='Печень';
  Label3.caption:='Тонкий кишечник';
  Label23.caption:='Тройной обогреватель';
  Label4.caption:='Сердце';
  Label5.caption:='Желудок';
  Label6.caption:='Селезенка';
  Label7.caption:='Толстый кишечник';
  Label8.caption:='Легкие';
  Label9.caption:='Мочевой пузырь';
  Label10.caption:='Почки';
  Label11.caption:='Меридиан желчного пузыря';
  Label24.caption:='Малый ян на ноге';
  Label12.caption:='Меридиан печени';
  Label25.caption:='Недостаточный инь на ноге';
  Label13.caption:='Меридиан легких';
  Label26.caption:='Сверхинь на руке';
  Label14.caption:='Меридиан толстого кишечника';
  Label27.caption:='Светлый ян на руке';
  Label15.caption:='Меридиан желудка';
  Label28.caption:='Светлый ян на ноге';
  Label16.caption:='Меридиан селезенки';
  Label29.caption:='Сверхинь на ноге';
  Label17.caption:='Меридиан сердца';
  Label30.caption:='Малый инь на руке';
  Label18.caption:='Меридиан тонкого кишечника';
  Label31.caption:='Сверх ян на руке';
  Label19.caption:='Меридиан мочевого пузыря';
  Label32.caption:='Сверхян на ноге';
  Label20.caption:='Меридиан почек';
  Label33.caption:='Малый инь на ноге';
  Label22.caption:='Меридиан перикарда';
  Label34.caption:='Недостаточный инь на руке';
  Label21.caption:='Меридиан тройного обогревателя';
  Label35.caption:='Малый ян на руке';

Image1.Picture.LoadFromFile(FilePlace+'\bmp\zhu.bmp');
Image2.Picture.LoadFromFile(FilePlace+'\bmp\gan.bmp');

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table9','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table9','Top',((screen.Height-height) div 2));
   Height:=MyRegIniFile.ReadInteger('Table9','Height',411);
   Width:=MyRegIniFile.ReadInteger('Table9','Width',451);
   Visible:=MyRegIniFile.ReadBool('Table9','Visible',false);
MyRegIniFile.Free;
end;

end.
