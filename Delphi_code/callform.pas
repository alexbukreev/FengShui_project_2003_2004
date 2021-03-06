unit callform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Registry;

type
  TFormCalendar = class(TForm)
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
    BigSeason: TLabel;
    SmallSeason: TLabel;
    LabelNow: TLabel;
    LabelRasch: TLabel;
    epoch_years: TLabel;
    month: TLabel;
    day: TLabel;
    Week: TLabel;
    PSYear: TLabel;
    PSMon: TLabel;
    PSDay: TLabel;
    PSHour: TLabel;
    MoonDLabel: TLabel;
    MoonMLabel: TLabel;
    LabelStarLeap: TLabel;
    LabelYearBegin: TLabel;
    Juang: TLabel;
    LabelJuang: TLabel;
    Jung: TLabel;
    LabelJung: TLabel;
    LabelMoonStar: TLabel;
    MoonStar: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    YearStar: TLabel;
    LabelYearStar: TLabel;
    LabelJunName: TLabel;
    LabelYearS: TLabel;
    LabelMoonS: TLabel;
    Label1: TLabel;
    LabelJunBigName: TLabel;
    JungBig: TLabel;
    DayStar: TLabel;
    DayStarS: TLabel;
    LabelDayStar: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    LabelChasStar: TLabel;
    ChasStarS: TLabel;
    ChasStar: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalendar: TFormCalendar;

implementation

uses main, CzPinSys, calendar;

{$R *.dfm}

procedure TFormCalendar.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='���������';
  LabelRasch.Caption:='������ ���������� ��:';
  Label28.Caption:='(���� ����)';
  Label27.Caption:='(���� �������)';
  Label25.Caption:='(���� ���)';
  Label26.Caption:='(���� ����)';
  LabelYearBegin.Caption:='��� ���������� ���������:';
  LabelJuang.Caption:='���� (60 ���):';
  LabelJung.Caption:='������� ��� (60 ���):';
  Label1.Caption:='����� ��� (20 ���):';
  YearStar.Caption:='������ ����:';
  MoonStar.Caption:='������ ������:';
  LabelDayStar.Caption:='������ ���:';
  LabelChasStar.Caption:='������ ����:';
  MoonMLabel.Caption:='������ �����:';
  MoonDLabel.Caption:='������ ����:';
  LabelStarLeap.Caption:='(��������������)';

  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Calendar','Left',1);
   Top:=MyRegIniFile.ReadInteger('Calendar','Top',FormMainFSH.Height-FormMainFSH.ClientHeight+50);
   Height:=MyRegIniFile.ReadInteger('Calendar','Height',503);
   Width:=MyRegIniFile.ReadInteger('Calendar','Width',214);
   Visible:=MyRegIniFile.ReadBool('Calendar','Visible',true);
if FormMainFSH.ClientHeight-80<503 then FormCalendar.Height:=FormMainFSH.ClientHeight-80;

  MyRegIniFile.Free;
end;

//--------------------------------------------------------

procedure TFormCalendar.FormResize(Sender: TObject);
begin
//  Width:=214;
end;

//--------------------------------------------------------

procedure TFormCalendar.Label28Click(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=Y1-1;
FormCzPin.Vetv1.ItemIndex:=Ymain2-1;
FormCzPin.Svtol.OnChange (sender);
end;

procedure TFormCalendar.Label27Click(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=M1-1;
FormCzPin.Vetv1.ItemIndex:=Mmain2-1;
FormCzPin.Svtol.OnChange (sender);
end;

procedure TFormCalendar.Label25Click(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=D1-1;
FormCzPin.Vetv1.ItemIndex:=D2-1;
FormCzPin.Svtol.OnChange (sender);
end;

procedure TFormCalendar.Label26Click(Sender: TObject);
begin
FormCzPin.Show;
FormCzPin.Svtol.ItemIndex:=H1-1;
FormCzPin.Vetv1.ItemIndex:=H2-1;
FormCzPin.Svtol.OnChange (sender);
end;

end.
