unit line;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TFormLine = class(TForm)
    EditLine: TEdit;
    UpDown1: TUpDown;
    Label1: TLabel;
    Line: TImage;
    Riska: TShape;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure EditLineChange(Sender: TObject);
    function IntToCoord(index:integer):integer;
    function Interpritation (index:integer):string;
    procedure EditLineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLine: TFormLine;
implementation
uses main;
{$R *.dfm}

procedure TFormLine.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin 
Caption:='�������������� �������';
Label1.Caption:='��';
Line.Picture.LoadFromFile(FilePlace+'\bmp\line.bmp');
MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table8','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table8','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Table8','Visible',false);
MyRegIniFile.Free;

Riska.Left:=Line.Left;
end;

procedure TFormLine.EditLineChange(Sender: TObject);
var
index:integer;
begin
 try
   index:=StrToInt(EditLine.Text);
   if index<0 then EditLine.Text:='0';
   //EditDayPlus.Text:=EditDayPlus.Text;
 except
   EditLine.Text:='0';
   index:=0;
 end;
 index:=IntToCoord(index);
 Riska.Left:=Line.Left+index;
 Label2.Caption:=Interpritation (index);
end;

function TFormLine.IntToCoord(index:integer):integer;
begin
 while index>432 do
 index:=index-432;

 result:=index;
end;

function TFormLine.Interpritation (index:integer):string;
begin
  if index=0 then result:='';
  case index of
  1..13:result:='���������� �����';
  14..27:result:='�����, ����������� ����������';
  28..40:result:='��� ���� �����';
  41..54:result:='���������';

  55..68:result:='�������� ������';
  69..81:result:='����������� ��������';
  82..95:result:='�������, ������';
  96..108:result:='������ ������� ��� �������';

  109..122:result:='�������';
  123..135:result:='�������� ������';
  136..149:result:='������� � ���������������� ���������';
  150..162:result:='����� ��� ����������';

  163..175:result:='������� � ������';
  176..189:result:='����������� ���������� �����';
  190..202:result:='������� ������ � ����';
  203..215:result:='������� �������';

  216..229:result:='�������� ����� ���������';
  230..243:result:='����������� ��� ����������� �����';
  244..256:result:='���������� �����';
  257..270:result:='������� ��������� �����';

  271..284:result:='������ ��� ������';
  285..297:result:='������ ������������';
  298..311:result:='��������';
  312..324:result:='������������ ���������� ������';

  325..338:result:='���������';
  339..351:result:='������';
  352..365:result:='�������';
  366..378:result:='���������';

  379..392:result:='������ �����';
  393..405:result:='����� �� ���������';
  406..419:result:='�������� � ��������������';
  420..432:result:='������������';
  end;
end;

procedure TFormLine.EditLineClick(Sender: TObject);
begin
  EditLine.SelectAll;
end;

end.
