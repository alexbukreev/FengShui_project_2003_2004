unit about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry, ShellApi, ExtCtrls, Buttons, ComCtrls;

type
  TFormAbout = class(TForm)
    Version: TLabel;
    SN: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Image2: TImage;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    RichEdit1: TRichEdit;
    Shape2: TShape;
    Memo1: TMemo;
    Label5: TLabel;
    Image3: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label9Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation
uses main;
{$R *.dfm}

procedure TFormAbout.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
Label6.caption:='© Александр Букреев, 2004';
Label7.caption:='© Бронислав Виногродский, 2004';
Label2.Caption:='Серийный номер:';
Label5.Caption:='Учебные курсы по программе:';
Label8.Caption:='Страницы программы в Интернете:';
Label11.Caption:='Форум по программе в Интернете:';

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   SN.Caption:='SN-'+MyRegIniFile.ReadString('Main','Serial3','none');
   //Version.Caption:=MyRegIniFile.ReadString('Main','Version','4.0');
   MyRegIniFile.Free;

Image1.Picture.LoadFromFile(FilePlace+'\bmp\fspict.bmp');
end;

procedure TFormAbout.Label1Click(Sender: TObject);
begin
ShellExecute(0, nil,'http://www.east-club.ru/forumbb/viewforum.php?f=7',nil,nil,1);
end;

procedure TFormAbout.Label4Click(Sender: TObject);
begin
ShellExecute(0, nil,'http://www.soft.east-club.ru/consalt',nil,nil,1);
end;

procedure TFormAbout.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_escape then close;
end;

procedure TFormAbout.BitBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_escape then close;
end;

procedure TFormAbout.CheckBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_escape then close;
end;

procedure TFormAbout.Label9Click(Sender: TObject);
begin
ShellExecute(0, nil,'http://www.soft.east-club.ru',nil,nil,1);
end;

procedure TFormAbout.Label10Click(Sender: TObject);
begin
ShellExecute(0, nil,'http://www.soft.art-eco.ru',nil,nil,1);
end;

procedure TFormAbout.BitBtn1Click(Sender: TObject);
begin
close
end;

procedure TFormAbout.FormShow(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Version.Caption:=MyRegIniFile.ReadString('Main','Version','4.0');
MyRegIniFile.Free;
end;

end.
