unit FhUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, ProfDateTimePicker,
  ImgList, Menus,inifiles, Registry, GuaSmol, MyType;

type
  TFormFh = class(TForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    EditAz: TEdit;
    UpDown1: TUpDown;
    Panel1: TPanel;
    Panel2: TPanel;
    FhDate: TProfDateTimePicker;
    ToolButton5: TToolButton;
    ComboBoxEx1: TComboBoxEx;
    ImageList1: TImageList;
    ToolButton4: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    Panel3: TPanel;
    StatusBarFH: TPanel;
    OpenDialogTable: TOpenDialog;
    SaveDialogTable: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    MainMenu1: TMainMenu;
    N6: TMenuItem;
    NOpen: TMenuItem;
    Save: TMenuItem;
    NSaveAs: TMenuItem;
    N11: TMenuItem;
    N8Close: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    N14: TMenuItem;
    N9: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    ToolButton1: TToolButton;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    LabelMen_1: TLabel;
    ShapeXunMen_1: TShape;
    ShapeLiMen_1: TShape;
    ShapeKunMen_1: TShape;
    ShapeZhenMen_1: TShape;
    ShapeCenterMen_1: TShape;
    ShapeDuiMen_1: TShape;
    ShapeGenMen_1: TShape;
    ShapeKanMen_1: TShape;
    ShapeQianMen_1: TShape;
    ShapeXunMen_2: TShape;
    ShapeLiMen_2: TShape;
    ShapeKunMen_2: TShape;
    ShapeZhenMen_2: TShape;
    ShapeCenterMen_2: TShape;
    ShapeDuiMen_2: TShape;
    ShapeGenMen_2: TShape;
    ShapeKanMen_2: TShape;
    ShapeQianMen_2: TShape;
    LabelCentrMen_1: TLabel;
    LabelZhenMen_1: TLabel;
    LabelDuiMen_1: TLabel;
    LabelGenMen_1: TLabel;
    LabelKanMen_1: TLabel;
    LabelQianMen_1: TLabel;
    LabelXunMen_1: TLabel;
    LabelLiMen_1: TLabel;
    LabelKunMen_1: TLabel;
    LabelXunMen_2: TLabel;
    LabelLiMen_2: TLabel;
    LabelKunMen_2: TLabel;
    LabelZhenMen_2: TLabel;
    LabelCentrMen_2: TLabel;
    LabelDuiMen_2: TLabel;
    LabelGenMen_2: TLabel;
    LabelKanMen_2: TLabel;
    LabelQianMen_2: TLabel;
    LabelMen_2: TLabel;
    ToolButtonInter: TToolButton;
    Panel5: TPanel;
    ShapeShaE: TShape;
    ShapeShaE_m: TShape;
    ShapeChen: TShape;
    ShapeShaW: TShape;
    ShapeShaW_m: TShape;
    ShapeShaN: TShape;
    ShapeShaN_m: TShape;
    ShapeShaS: TShape;
    ShapeShaS_m: TShape;
    Shape20: TShape;
    Shape19: TShape;
    Shape18: TShape;
    Shape9: TShape;
    Shape8: TShape;
    Shape7: TShape;
    Shape6: TShape;
    Shape5: TShape;
    ShapeXun: TShape;
    ShapeLi: TShape;
    ShapeKun: TShape;
    Shape1: TShape;
    ShapeZhen: TShape;
    ShapeDui: TShape;
    ShapeKan: TShape;
    ShapeGen: TShape;
    ShapeQian: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape16: TShape;
    Shape17: TShape;
    LabelCentr20: TLabel;
    LabelCentrG: TLabel;
    LabelCentrN: TLabel;
    LabelCentrY: TLabel;
    LabelCentrM: TLabel;
    LabelCentrD: TLabel;
    LabelDuiG: TLabel;
    LabelDuiN: TLabel;
    LabelDui20: TLabel;
    LabelDuiY: TLabel;
    LabelDuiM: TLabel;
    LabelDuiD: TLabel;
    LabelZhenG: TLabel;
    LabelZhenN: TLabel;
    LabelZhen20: TLabel;
    LabelZhenY: TLabel;
    LabelZhenM: TLabel;
    LabelZhenD: TLabel;
    LabelGenG: TLabel;
    LabelGenN: TLabel;
    LabelGen20: TLabel;
    LabelGenY: TLabel;
    LabelGenM: TLabel;
    LabelGenD: TLabel;
    LabelKanG: TLabel;
    LabelKanN: TLabel;
    LabelKan20: TLabel;
    LabelKanY: TLabel;
    LabelKanM: TLabel;
    LabelKanD: TLabel;
    LabelQianG: TLabel;
    LabelQianN: TLabel;
    LabelQian20: TLabel;
    LabelQianY: TLabel;
    LabelQianM: TLabel;
    LabelQianD: TLabel;
    LabelXunG: TLabel;
    LabelXunN: TLabel;
    LabelXun20: TLabel;
    LabelXunY: TLabel;
    LabelXunM: TLabel;
    LabelXunD: TLabel;
    LabelLiG: TLabel;
    LabelLiN: TLabel;
    LabelLi20: TLabel;
    LabelLiY: TLabel;
    LabelLiM: TLabel;
    LabelLiD: TLabel;
    LabelKunG: TLabel;
    LabelKunN: TLabel;
    LabelKun20: TLabel;
    LabelKunY: TLabel;
    LabelKunM: TLabel;
    LabelKunD: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ShapeWu: TShape;
    ShapeWei: TShape;
    ShapeSi: TShape;
    ShapeChou: TShape;
    ShapeZi: TShape;
    ShapeHai: TShape;
    ShapeMao: TShape;
    ShapeYin: TShape;
    ShapeShen: TShape;
    ShapeYou: TShape;
    ShapeXu: TShape;
    Shape15: TShape;
    Shape3: TShape;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image14: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image13: TImage;
    ImageXunTaiSuiY: TImage;
    ImageXunTaiSuiM: TImage;
    ImageLiTaiSuiY: TImage;
    ImageLiTaiSuiM: TImage;
    ImageKunTaiSuiY: TImage;
    ImageKunTaiSuiM: TImage;
    ImageZhenTaiSuiY: TImage;
    ImageZhenTaiSuiM: TImage;
    ImageCenterTaiSuiY: TImage;
    ImageCenterTaiSuiM: TImage;
    ImageDuiTaiSuiY: TImage;
    ImageDuiTaiSuiM: TImage;
    ImageGenTaiSuiY: TImage;
    ImageGenTaiSuiM: TImage;
    ImageKanTaiSuiY: TImage;
    ImageKanTaiSuiM: TImage;
    ImageQianTaiSuiY: TImage;
    ImageQianTaiSuiM: TImage;
    ToolBarXun: TToolBar;
    ToolBarLi: TToolBar;
    ToolButtonLi: TToolButton;
    ToolBarKun: TToolBar;
    ToolBarZhen: TToolBar;
    ToolButtonZhen: TToolButton;
    ToolBarCenter: TToolBar;
    ToolButtonCenter: TToolButton;
    ToolBarDui: TToolBar;
    ToolButtonDui: TToolButton;
    ToolBarGen: TToolBar;
    ToolButtonGen: TToolButton;
    ToolBarKan: TToolBar;
    ToolButtonKan: TToolButton;
    ToolBarQian: TToolBar;
    ToolButtonQian: TToolButton;
    ToolButtonXun: TToolButton;
    ToolButtonKun: TToolButton;
    ComboBoxEx2: TComboBoxEx;
    Panel4: TPanel;
    Panel6: TPanel;
    Combes1: TMenuItem;
    Co1: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N18: TMenuItem;
    Print1: TMenuItem;
    PrintDialog1: TPrintDialog;
    ToolButton6: TToolButton;
    N19: TMenuItem;
    Legenda: TMenuItem;
    Lopan1: TMenuItem;
    procedure EditAzClick(Sender: TObject);
    procedure EditAzChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GoFh (style:TDrawStyle);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ComboBoxEx1Change(Sender: TObject);
    procedure ToolButtonInterClick(Sender: TObject);
    procedure N8CloseClick(Sender: TObject);
    procedure SaveAsFile;
    procedure SaveFile(MyFile: TIniFile);
    procedure OpenFile;
    procedure OpenFileTwo(MyFileName:string);
    procedure Raschet;
    procedure NOpenClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure NSaveAsClick(Sender: TObject);
    procedure FhDateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N7Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    function GoraToGua (index: shortint):shortint;
    procedure Zapolnenie_216 (Cicl, Gora, Napr:shortint; Gora_ij, Napr_ij:TInJan);
    procedure Final_Zapolnenie_216 (corner, cicl:integer);
    procedure UnColorRegt;
    procedure TaiSui;
    procedure Stars_Zapolnenie; 
    procedure Raszvet_Upadok (cicl:shortint);
    procedure Colors_Label(Label_star:TLabel; cicl: shortint);
    procedure Wu_Sha;
    procedure VisibleFalse;
    procedure VisibleTrue;
    procedure Zapolnenie_Star (corner, Cicl:integer; var LabelCenter, LabelQian, LabelDui, LabelGen, LabelLi, LabelKan, LabelKun, LabelZhen, LabelXun:TLabel);
    function SanJuanRaschet (corner:integer):TSanJuan;
    procedure Men_Draw(corner:integer);
    procedure ShaY (Vetv:shortint); 
    procedure ShaM (Vetv:shortint);
    procedure FeiTaiSuiDrawY (cicl, vetv:shortint);
    procedure FeiTaiSuiDrawM (cicl, vetv:shortint);
    procedure ComboBoxEx2Change(Sender: TObject);
    procedure HintForStars;
    function WuShaCombes (dom:TGua): string;
    procedure DomCombes(dom:TGua; var N,G,C:shortint);
    function SpecCombes(dom:TGua):string;
    procedure Co1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure ToolButtonCenterClick(Sender: TObject);
    procedure ToolButtonXunClick(Sender: TObject);
    procedure ToolButtonLiClick(Sender: TObject);
    procedure ToolButtonKunClick(Sender: TObject);
    procedure ToolButtonDuiClick(Sender: TObject);
    procedure ToolButtonQianClick(Sender: TObject);
    procedure ToolButtonGenClick(Sender: TObject);
    procedure ToolButtonZhenClick(Sender: TObject);
    procedure ToolButtonKanClick(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure LegendaClick(Sender: TObject);
    procedure Lopan1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFh: TFormFh;
  FlagUSin, FileOpenFH, FileChangeFH:boolean;
  WorkFileFH:string;
  MyFHDirect:integer;

  FH_JungV,
  FH_MoonStarV,
  FH_DayStarV,
  FH_Ymain2,
  FH_Mmain2,
  FH_YearStarV,
  FH_D2:shortint;
  Gora, Voda:shortstring;
  FH_Date, Comments:string;
  
const
  ColorVan:TColor=$00FF8000;
  ColorShen:TColor=clGreen;
  ColorN:TColor=clGray;
  ColorSi:TColor=$000000D2;
  ColorSha:TColor=clPurple;

implementation
uses main, calendar, my_moon, FHinter,text,preference,
  TableCickl, TablePower, TablePeople, UnitBCShema, table7, GoroCircle,
  legenda;

{$R *.dfm}



//--------------------------------------------------------
function TFormFh.SpecCombes(dom:TGua):string;
var
N,G,C:shortint;
begin
 result:='НЕТ.';
 DomCombes(dom,N,G,C);
 if (N=1) and (G=6) then result:='1-6 благоприятная комбинация.';
 if (N=6) and (G=1) then result:='6-1 благоприятная комбинация.';
 if (N=1) and (G=4) then result:='1-4 благоприятная комбинация.';
 if (N=4) and (G=1) then result:='4-1 благоприятная комбинация.';
 if (N=8) and (G=6) then result:='8-6 благоприятная комбинация.';
 if (N=6) and (G=8) then result:='6-8 благоприятная комбинация.';

 if (N=3) and (G=2) then result:='3-2 это "ша бьющихся быков", предвещает соперничество в доме, ссоры между мужем и женой, постоянные бои и отсутствие мира.';
 if (N=2) and (G=3) then result:='2-3 это "ша бьющихся быков", предвещает соперничество в доме, ссоры между мужем и женой, постоянные бои и отсутствие мира.';
 if (N=3) and (G=8) then result:='3-8 это "ша бьющихся быков", предвещает соперничество в доме, ссоры между мужем и женой, постоянные бои и отсутствие мира.';
 if (N=8) and (G=3) then result:='8-3 это "ша бьющихся быков", предвещает соперничество в доме, ссоры между мужем и женой, постоянные бои и отсутствие мира.';

 if (N=3) and (G=7) then result:='3-7 это "ша пробивающее сердце", предвещает получение ножевых ранений от грабителей или разбойников. Муж и жена будут ругаться между собой, будут официальные разбирательства и возможны также кражи из этого дама. Дети могут стать бандитами.';
 if (N=7) and (G=3) then result:='7-3 это "ша пробивающее сердце", предвещает получение ножевых ранений от грабителей или разбойников. Муж и жена будут ругаться между собой, будут официальные разбирательства и возможны также кражи из этого дама. Дети могут стать бандитами.';

 if (N=7) and (G=6) then result:='7-6 это "ша скрещенных мечей", Когда эти две звезды сталкиваются в паре, тогда обнажается меч и сверкает нож. Это предвещает конфликт между сильным мужчиной и сильной женщиной, борьбу за власть, ссоры, столкновения интересов и пр.';
 if (N=6) and (G=7) then result:='6-7 это "ша скрещенных мечей", Когда эти две звезды сталкиваются в паре, тогда обнажается меч и сверкает нож. Это предвещает конфликт между сильным мужчиной и сильной женщиной, борьбу за власть, ссоры, столкновения интересов и пр.';

 if (N=2) and (G=5) and (C=5) then result:='2-5-5 предвещает смерь от болезни и появление бесов.';
 if (N=5) and (G=5) and (C=2) then result:='2-5-5 предвещает смерь от болезни и появление бесов.';
 if (N=5) and (G=2) and (C=5) then result:='2-5-5 предвещает смерь от болезни и появление бесов.';

 if (N=7) and (G=9) and (C=5) then result:='5-7-9 предвещает кровопролитие и большую беду.';
 if (N=7) and (G=5) and (C=9) then result:='5-7-9 предвещает кровопролитие и большую беду.';
 if (N=5) and (G=9) and (C=7) then result:='5-7-9 предвещает кровопролитие и большую беду.';
 if (N=5) and (G=7) and (C=9) then result:='5-7-9 предвещает кровопролитие и большую беду.';
 if (N=9) and (G=5) and (C=7) then result:='5-7-9 предвещает кровопролитие и большую беду.';
 if (N=9) and (G=7) and (C=5) then result:='5-7-9 предвещает кровопролитие и большую беду.';

end;

function TFormFh.WuShaCombes (dom:TGua): string;
var
N,G,C:shortint;
begin
 result:='Специальные комбинации для летящей Пятерки -- НЕТ.';
 DomCombes(dom,N,G,C);

 if (N=3) and (G=7) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-3-7. Это злая сила ша, пробивающая сердце. Предвещает войны, появления разбойников, травмы четырех конечностей и прочие неприятности.';
 if (N=7) and (G=3) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-3-7. Это злая сила ша, пробивающая сердце. Предвещает войны, появления разбойников, травмы четырех конечностей и прочие неприятности.';
 if (C=3) and (G=7) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-3-7. Это злая сила ша, пробивающая сердце. Предвещает войны, появления разбойников, травмы четырех конечностей и прочие неприятности.';
 if (N=3) and (C=7) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-3-7. Это злая сила ша, пробивающая сердце. Предвещает войны, появления разбойников, травмы четырех конечностей и прочие неприятности.';

 if (N=3) and (G=2) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-3-2. Предвещает ссоры или драки в семье. Есть опасность тяжелой смерти матери.';
 if (G=3) and (N=2) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-3-2. Предвещает ссоры или драки в семье. Есть опасность тяжелой смерти матери.';
 if (C=3) and (G=2) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-3-2. Предвещает ссоры или драки в семье. Есть опасность тяжелой смерти матери.';
 if (N=3) and (C=2) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-3-2. Предвещает ссоры или драки в семье. Есть опасность тяжелой смерти матери.';

 if (N=6) and (G=7) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-6-7. Предвещает борьбу за власть и выгоду, возможно подача в суд на человека, живущего в таком доме.';
 if (G=6) and (N=7) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-6-7. Предвещает борьбу за власть и выгоду, возможно подача в суд на человека, живущего в таком доме.';
 if (C=6) and (G=7) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-6-7. Предвещает борьбу за власть и выгоду, возможно подача в суд на человека, живущего в таком доме.';
 if (N=6) and (C=7) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-6-7. Предвещает борьбу за власть и выгоду, возможно подача в суд на человека, живущего в таком доме.';

 if (N=2) and (G=5) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-2-5. Предвещает смерь от болезни и появление бесов.';
 if (G=2) and (N=5) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-2-5. Предвещает смерь от болезни и появление бесов.';
 if (C=2) and (G=5) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-2-5. Предвещает смерь от болезни и появление бесов.';
 if (N=2) and (C=5) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-2-5. Предвещает смерь от болезни и появление бесов.';
 
 if (N=7) and (G=9) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-7-9. Предвещает кровопролитие и большую беду.';
 if (G=7) and (N=9) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-7-9. Предвещает кровопролитие и большую беду.';
 if (C=7) and (G=9) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-7-9. Предвещает кровопролитие и большую беду.';
 if (N=7) and (C=9) then result:='В '+FHGuaToStrSort (dom)+' летящая звезда года Пятерка желтая соединяется в комбинации 5-7-9. Предвещает кровопролитие и большую беду.';

 end;

procedure TFormFh.DomCombes(dom:TGua; var N,G,C:shortint);
begin
case dom of
gua_Qian:begin
          N:=StrToInt(LabelQianN.Caption);
          G:=StrToInt(LabelQianG.Caption);
          C:=StrToInt(LabelQian20.Caption);
         end;
gua_Dui:begin
          N:=StrToInt(LabelDuiN.Caption);
          G:=StrToInt(LabelDuiG.Caption);
          C:=StrToInt(LabelDui20.Caption);
         end;
gua_Li:begin 
          N:=StrToInt(LabelLiN.Caption);
          G:=StrToInt(LabelLiG.Caption);
          C:=StrToInt(LabelLi20.Caption);
       end;
gua_Zhen:begin
          N:=StrToInt(LabelZhenN.Caption);
          G:=StrToInt(LabelZhenG.Caption);
          C:=StrToInt(LabelZhen20.Caption);
         end;
gua_Xun:begin
          N:=StrToInt(LabelXunN.Caption);
          G:=StrToInt(LabelXunG.Caption);
          C:=StrToInt(LabelXun20.Caption);
         end;
gua_Kan:begin
          N:=StrToInt(LabelKanN.Caption);
          G:=StrToInt(LabelKanG.Caption);
          C:=StrToInt(LabelKan20.Caption);
         end;
gua_Gen:begin
          N:=StrToInt(LabelGenN.Caption);
          G:=StrToInt(LabelGenG.Caption);
          C:=StrToInt(LabelGen20.Caption);
         end;
gua_Kun:begin
          N:=StrToInt(LabelKunN.Caption);
          G:=StrToInt(LabelKunG.Caption);
          C:=StrToInt(LabelKun20.Caption);
         end;
gua_Center:begin
          N:=StrToInt(LabelCentrN.Caption);
          G:=StrToInt(LabelCentrG.Caption);
          C:=StrToInt(LabelCentr20.Caption);
         end;
end;
end;


procedure TFormFh.HintForStars;
begin
 LabelCentrG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelCentrG.caption)));
 LabelCentrN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelCentrN.caption)));
 LabelCentr20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelCentr20.caption)));
 LabelLiG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelLiG.caption)));
 LabelLiN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelLiN.caption)));
 LabelLi20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelLi20.caption)));
 LabelKunG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelKunG.caption)));
 LabelKunN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelKunN.caption)));
 LabelKun20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelKun20.caption)));
 LabelDuiG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelDuiG.caption)));
 LabelDuiN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelDuiN.caption)));
 LabelDui20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelDui20.caption)));
 LabelQianG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelQianG.caption)));
 LabelQianN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelQianN.caption)));
 LabelQian20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelQian20.caption)));
 LabelKanG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelKanG.caption)));
 LabelKanN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelKanN.caption)));
 LabelKan20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelKan20.caption)));
 LabelGenG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelGenG.caption)));
 LabelGenN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelGenN.caption)));
 LabelGen20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelGen20.caption)));
 LabelZhenG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelZhenG.caption)));
 LabelZhenN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelZhenN.caption)));
 LabelZhen20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelZhen20.caption)));
 LabelXunG.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelXunG.caption)));
 LabelXunN.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelXunN.caption)));
 LabelXun20.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(LabelXun20.caption)));

 labelXunMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelXunMen_1.caption)));
 labelLiMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelLiMen_1.caption)));
 labelKunMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelKunMen_1.caption)));
 labelDuiMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelDuiMen_1.caption)));
 labelQianMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelQianMen_1.caption)));
 labelKanMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelKanMen_1.caption)));
 labelGenMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelGenMen_1.caption)));
 labelZhenMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelZhenMen_1.caption)));
 labelCentrMen_1.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelCentrMen_1.caption)));


 labelXunMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelXunMen_2.caption)));
 labelLiMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelLiMen_2.caption)));
 labelKunMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelKunMen_2.caption)));
 labelDuiMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelDuiMen_2.caption)));
 labelQianMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelQianMen_2.caption)));
 labelKanMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelKanMen_2.caption)));
 labelGenMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelGenMen_2.caption)));
 labelZhenMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelZhenMen_2.caption)));
 labelCentrMen_2.Hint:=StarsFazaToStr(SatarsFazaAll (JungV, StrToInt(labelCentrMen_2.caption)));
end;


procedure TFormFh.FeiTaiSuiDrawY (cicl, vetv:shortint);
begin
 ImageXunTaiSuiY.Visible:=false;
 ImageLiTaiSuiY.Visible:=false;
 ImageKunTaiSuiY.Visible:=false;
 ImageDuiTaiSuiY.Visible:=false;
 ImageQianTaiSuiY.Visible:=false;
 ImageKanTaiSuiY.Visible:=false;
 ImageGenTaiSuiY.Visible:=false;
 ImageZhenTaiSuiY.Visible:=false;
 ImageXunTaiSuiY.Visible:=false;
 ImageCenterTaiSuiY.Visible:=false;

 case FenTaiSui (cicl, vetv) of
   gua_Qian: ImageQianTaiSuiY.Visible:=true;
   gua_Dui : ImageDuiTaiSuiY.Visible:=true;
   gua_Li: ImageLiTaiSuiY.Visible:=true;
   gua_Zhen:ImageZhenTaiSuiY.Visible:=true;
   gua_Xun:ImageXunTaiSuiY.Visible:=true;
   gua_Kan: ImageKanTaiSuiY.Visible:=true;
   gua_Kun: ImageKunTaiSuiY.Visible:=true;
   gua_Gen: ImageGenTaiSuiY.Visible:=true;
   gua_Center:ImageGenTaiSuiY.Visible:=true;
 end;
end;

procedure TFormFh.FeiTaiSuiDrawM (cicl, vetv:shortint);
begin
 ImageXunTaiSuiM.Visible:=false;
 ImageLiTaiSuiM.Visible:=false;
 ImageKunTaiSuiM.Visible:=false;
 ImageDuiTaiSuiM.Visible:=false;
 ImageQianTaiSuiM.Visible:=false;
 ImageKanTaiSuiM.Visible:=false;
 ImageGenTaiSuiM.Visible:=false;
 ImageZhenTaiSuiM.Visible:=false;
 ImageXunTaiSuiM.Visible:=false;
 ImageCenterTaiSuiM.Visible:=false;

 case FenTaiSui (cicl, vetv) of
   gua_Qian: ImageQianTaiSuiM.Visible:=true;
   gua_Dui : ImageDuiTaiSuiM.Visible:=true;
   gua_Li: ImageLiTaiSuiM.Visible:=true;
   gua_Zhen:ImageZhenTaiSuiM.Visible:=true;
   gua_Xun:ImageXunTaiSuiM.Visible:=true;
   gua_Kan: ImageKanTaiSuiM.Visible:=true;
   gua_Kun: ImageKunTaiSuiM.Visible:=true;
   gua_Gen: ImageGenTaiSuiM.Visible:=true;
   gua_Center:ImageCenterTaiSuiM.Visible:=true;
 end;
end;

procedure TFormFh.ShaY(vetv:shortint);
begin
 ShapeShaW.Visible:=false;
 ShapeShaN.Visible:=false;
 ShapeShaS.Visible:=false;
 ShapeShaE.Visible:=false;

 case veTv of
 1,5,9: ShapeShaS.Visible:=true;
 2,6,10:ShapeShaE.Visible:=true;
 3,7,11:ShapeShaN.Visible:=true;
 4,8,12:ShapeShaW.Visible:=true;
 end;
end;

procedure TFormFh.ShaM(vetv:shortint);
begin
 ShapeShaW_m.Visible:=false;
 ShapeShaN_m.Visible:=false;
 ShapeShaS_m.Visible:=false;
 ShapeShaE_m.Visible:=false;

 case vetv of
 1,5,9: ShapeShaS_m.Visible:=true;
 2,6,10:ShapeShaE_m.Visible:=true;
 3,7,11:ShapeShaN_m.Visible:=true;
 4,8,12:ShapeShaW_m.Visible:=true;
 end;
end;



procedure TFormFh.Men_Draw(corner:integer);
begin
case corner of
  0..22:begin
          ShapeGenMen_2.Pen.Color:=ColorVan;
          ShapeQianMen_1.Pen.Color:=ColorVan;
          ShapeGenMen_2.Pen.Width:=2;
          ShapeQianMen_1.Pen.Width:=2;
          Zapolnenie_Star (corner, StrToInt(LabelQian20.Caption),
          LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
          Zapolnenie_Star (corner, StrToInt(LabelGen20.Caption),
          LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
  23..67:begin
          ShapeZhenMen_1.Pen.Color:=ColorVan;
          ShapeKanMen_2.Pen.Color:=ColorVan;
          ShapeZhenMen_1.Pen.Width:=2;
          ShapeKanMen_2.Pen.Width:=2;
          Zapolnenie_Star (corner, StrToInt(LabelZhen20.Caption),
          LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
          Zapolnenie_Star (corner, StrToInt(LabelKan20.Caption),
          LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
  68..112:begin
          ShapeXunMen_2.Pen.Color:=ColorVan;
          ShapeGenMen_1.Pen.Color:=ColorVan;
          ShapeGenMen_1.Pen.Width:=2;
          ShapeXunMen_2.Pen.Width:=2;
          Zapolnenie_Star (corner, StrToInt(LabelGen20.Caption),
          LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
          Zapolnenie_Star (corner, StrToInt(LabelXun20.Caption),
          LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
  113..157:begin
            ShapeLiMen_1.Pen.Color:=ColorVan;
            ShapeZhenMen_2.Pen.Color:=ColorVan;
            ShapeLiMen_1.Pen.Width:=2;
            ShapeZhenMen_2.Pen.Width:=2;
            Zapolnenie_Star (corner, StrToInt(LabelLi20.Caption),
            LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
            Zapolnenie_Star (corner, StrToInt(LabelZhen20.Caption),
            LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
  158..202:begin
            ShapeKunMen_2.Pen.Color:=ColorVan;
            ShapeXunMen_1.Pen.Color:=ColorVan;
            ShapeKunMen_2.Pen.Width:=2;
            ShapeXunMen_1.Pen.Width:=2;
            Zapolnenie_Star (corner, StrToInt(LabelXun20.Caption),
            LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
            Zapolnenie_Star (corner, StrToInt(LabelKun20.Caption),
            LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
  203..248:begin
            ShapeDuiMen_1.Pen.Color:=ColorVan;
            ShapeLiMen_2.Pen.Color:=ColorVan;
            ShapeDuiMen_1.Pen.Width:=2;
            ShapeLiMen_2.Pen.Width:=2;
            Zapolnenie_Star (corner, StrToInt(LabelDui20.Caption),
            LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
            Zapolnenie_Star (corner, StrToInt(LabelLi20.Caption),
            LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
  249..292:begin
            ShapeQianMen_2.Pen.Color:=ColorVan;
            ShapeKunMen_1.Pen.Color:=ColorVan; 
            ShapeQianMen_2.Pen.Width:=2;
            ShapeKunMen_1.Pen.Width:=2;
            Zapolnenie_Star (corner, StrToInt(LabelKun20.Caption),
            LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
            Zapolnenie_Star (corner, StrToInt(LabelQian20.Caption),
            LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
  293..337:begin
            ShapeKanMen_1.Pen.Color:=ColorVan;
            ShapeDuiMen_2.Pen.Color:=ColorVan; 
            ShapeKanMen_1.Pen.Width:=2;
            ShapeDuiMen_2.Pen.Width:=2;
            Zapolnenie_Star (corner, StrToInt(LabelKan20.Caption),
            LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
            Zapolnenie_Star (corner, StrToInt(LabelDui20.Caption),
            LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
  338..360:begin
          ShapeGenMen_2.Pen.Color:=ColorVan;
          ShapeQianMen_1.Pen.Color:=ColorVan;
          ShapeGenMen_2.Pen.Width:=2;
          ShapeQianMen_1.Pen.Width:=2;
          Zapolnenie_Star (corner, StrToInt(LabelQian20.Caption),
          LabelCentrMen_1, LabelQianMen_1, LabelDuiMen_1, LabelGenMen_1, LabelLiMen_1, LabelKanMen_1, LabelKunMen_1, LabelZhenMen_1, LabelXunMen_1);
          Zapolnenie_Star (corner, StrToInt(LabelGen20.Caption),
          LabelCentrMen_2, LabelQianMen_2, LabelDuiMen_2, LabelGenMen_2, LabelLiMen_2, LabelKanMen_2, LabelKunMen_2, LabelZhenMen_2, LabelXunMen_2);
        end;
end;
end;

function TFormFh.SanJuanRaschet (corner:integer):TSanJuan;
begin
 case corner of
 0..7:begin
        result:=sj_Tian;
      end;
 8..22:begin
        result:=sj_Ren;
       end;
 23..37:begin
        result:=sj_Di;
        end;
 38..52:begin
        result:=sj_Tian;
       end;
 53..67:begin
         result:=sj_Ren;
       end;
 68..82:begin
         result:=sj_Di;
       end;
 83..97:begin
         result:=sj_Tian;
       end;
 98..112:begin
         result:=sj_Ren;
        end;
 113..127:begin
           result:=sj_Di;
         end;
 128..142:begin
           result:=sj_Tian;
         end;
 143..157:begin
           result:=sj_Ren;
         end;
 158..172:begin
           result:=sj_Di;
         end;
 173..187:begin
           result:=sj_Tian;
         end;
 188..202:begin
           result:=sj_Ren;
         end;
 203..217:begin
           result:=sj_Di;
         end;
 218..232:begin
           result:=sj_Tian;
         end;
 233..247:begin
            result:=sj_Ren;
         end;
 248..262:begin
           result:=sj_Di;
         end;
 263..277:begin
           result:=sj_Tian;
         end;
 278..292:begin
           result:=sj_Ren;
         end;
 293..307:begin
           result:=sj_Di;
          end;
 308..322:begin
           result:=sj_Tian;
         end;
 323..337:begin
           result:=sj_Ren;
         end;
 338..352:begin
           result:=sj_Di;
         end;
 353..360:begin
           result:=sj_Tian;
         end;
 end;
end;


procedure TFormFh.Zapolnenie_Star (Corner, Cicl:integer; var LabelCenter, LabelQian, LabelDui, LabelGen, LabelLi, LabelKan, LabelKun, LabelZhen, LabelXun:TLabel);
var
SanIndex:TSanJuan;
begin
labelCenter.Caption:=IntToStr(Cicl);
SanIndex:=SanJuanRaschet(corner);
if cicl=5 then
 begin
  case corner of
  0..22:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end
      else
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end;
   end;
  23..67:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end
      else
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end;
   end;
  68..112:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end
      else
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end;
   end;
  113..157:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end
      else
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end;
   end;
  158..202:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end
      else
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end;
   end;
  203..248:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end
      else
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end;
   end;
  249..292:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end
      else
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end;
   end;
  293..337:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end
      else
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end;
   end;
  338..360:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='7';
       LabelGen.Caption:='8';
       LabelLi.Caption:='9';
       LabelKan.Caption:='1';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='4';
      end
      else
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='3';
       LabelGen.Caption:='2';
       LabelLi.Caption:='1';
       LabelKan.Caption:='9';
       LabelKun.Caption:='8';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='6';
      end;
   end;
 end;
 end;

 case cicl of
 1:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='2';
       LabelDui.Caption:='3';
       LabelGen.Caption:='4';
       LabelLi.Caption:='5';
       LabelKan.Caption:='6';
       LabelKun.Caption:='7';
       LabelZhen.Caption:='8';
       LabelXun.Caption:='9';
      end
      else
      begin
       LabelQian.Caption:='9';
       LabelDui.Caption:='8';
       LabelGen.Caption:='7';
       LabelLi.Caption:='6';
       LabelKan.Caption:='5';
       LabelKun.Caption:='4';
       LabelZhen.Caption:='3';
       LabelXun.Caption:='2';
      end;
   end;
 2:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='1';
       LabelDui.Caption:='9';
       LabelGen.Caption:='8';
       LabelLi.Caption:='7';
       LabelKan.Caption:='6';
       LabelKun.Caption:='5';
       LabelZhen.Caption:='4';
       LabelXun.Caption:='3';
      end
      else
      begin
       LabelQian.Caption:='2';
       LabelDui.Caption:='3';
       LabelGen.Caption:='4';
       LabelLi.Caption:='5';
       LabelKan.Caption:='6';
       LabelKun.Caption:='7';
       LabelZhen.Caption:='8';
       LabelXun.Caption:='9';
      end;
   end;
 3:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='4';
       LabelDui.Caption:='5';
       LabelGen.Caption:='6';
       LabelLi.Caption:='7';
       LabelKan.Caption:='8';
       LabelKun.Caption:='9';
       LabelZhen.Caption:='1';
       LabelXun.Caption:='2';
      end
      else
      begin
       LabelQian.Caption:='2';
       LabelDui.Caption:='1';
       LabelGen.Caption:='9';
       LabelLi.Caption:='8';
       LabelKan.Caption:='7';
       LabelKun.Caption:='6';
       LabelZhen.Caption:='5';
       LabelXun.Caption:='4';
      end;
   end;
 4:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='3';
       LabelDui.Caption:='2';
       LabelGen.Caption:='1';
       LabelLi.Caption:='9';
       LabelKan.Caption:='8';
       LabelKun.Caption:='7';
       LabelZhen.Caption:='6';
       LabelXun.Caption:='5';
      end
      else
      begin
       LabelQian.Caption:='5';
       LabelDui.Caption:='6';
       LabelGen.Caption:='7';
       LabelLi.Caption:='8';
       LabelKan.Caption:='9';
       LabelKun.Caption:='1';
       LabelZhen.Caption:='2';
       LabelXun.Caption:='3';
      end;
   end;
 6:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='5';
       LabelDui.Caption:='4';
       LabelGen.Caption:='3';
       LabelLi.Caption:='2';
       LabelKan.Caption:='1';
       LabelKun.Caption:='9';
       LabelZhen.Caption:='8';
       LabelXun.Caption:='7';
      end
      else
      begin
       LabelQian.Caption:='7';
       LabelDui.Caption:='8';
       LabelGen.Caption:='9';
       LabelLi.Caption:='1';
       LabelKan.Caption:='2';
       LabelKun.Caption:='3';
       LabelZhen.Caption:='4';
       LabelXun.Caption:='5';
      end;
   end;
 7:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='8';
       LabelDui.Caption:='9';
       LabelGen.Caption:='1';
       LabelLi.Caption:='2';
       LabelKan.Caption:='3';
       LabelKun.Caption:='4';
       LabelZhen.Caption:='5';
       LabelXun.Caption:='6';
      end
      else
      begin
       LabelQian.Caption:='6';
       LabelDui.Caption:='5';
       LabelGen.Caption:='4';
       LabelLi.Caption:='3';
       LabelKan.Caption:='2';
       LabelKun.Caption:='1';
       LabelZhen.Caption:='9';
       LabelXun.Caption:='8';
      end;
   end;
 8:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='7';
       LabelDui.Caption:='6';
       LabelGen.Caption:='5';
       LabelLi.Caption:='4';
       LabelKan.Caption:='3';
       LabelKun.Caption:='2';
       LabelZhen.Caption:='1';
       LabelXun.Caption:='9';
      end
      else
      begin
       LabelQian.Caption:='9';
       LabelDui.Caption:='1';
       LabelGen.Caption:='2';
       LabelLi.Caption:='3';
       LabelKan.Caption:='4';
       LabelKun.Caption:='5';
       LabelZhen.Caption:='6';
       LabelXun.Caption:='7';
      end;
   end;
 9:begin
     if SanIndex=sj_Di then
      begin
       LabelQian.Caption:='1';
       LabelDui.Caption:='2';
       LabelGen.Caption:='3';
       LabelLi.Caption:='4';
       LabelKan.Caption:='5';
       LabelKun.Caption:='6';
       LabelZhen.Caption:='7';
       LabelXun.Caption:='8';
      end
      else
      begin
       LabelQian.Caption:='8';
       LabelDui.Caption:='7';
       LabelGen.Caption:='6';
       LabelLi.Caption:='5';
       LabelKan.Caption:='4';
       LabelKun.Caption:='3';
       LabelZhen.Caption:='2';
       LabelXun.Caption:='1';
      end;
   end;
 end

end;

procedure TFormFh.Wu_Sha;
begin
 labelXunY.Font.Color:=clBlack;
 labelLiY.Font.Color:=clBlack;
 labelKunY.Font.Color:=clBlack;
 labelDuiY.Font.Color:=clBlack;
 labelQianY.Font.Color:=clBlack;
 labelKanY.Font.Color:=clBlack;
 labelGenY.Font.Color:=clBlack;
 labelZhenY.Font.Color:=clBlack;
 labelXunY.Font.Color:=clBlack;

 labelXunM.Font.Color:=clBlack;
 labelLiM.Font.Color:=clBlack;
 labelKunM.Font.Color:=clBlack;
 labelDuiM.Font.Color:=clBlack;
 labelQianM.Font.Color:=clBlack;
 labelKanM.Font.Color:=clBlack;
 labelGenM.Font.Color:=clBlack;
 labelZhenM.Font.Color:=clBlack;
 labelXunM.Font.Color:=clBlack;

 labelXunD.Font.Color:=clBlack;
 labelLiD.Font.Color:=clBlack;
 labelKunD.Font.Color:=clBlack;
 labelDuiD.Font.Color:=clBlack;
 labelQianD.Font.Color:=clBlack;
 labelKanD.Font.Color:=clBlack;
 labelGenD.Font.Color:=clBlack;
 labelZhenD.Font.Color:=clBlack;
 labelXunD.Font.Color:=clBlack;


 if (labelXunY.caption='5') or (labelXunY.caption='2')
 then labelXunY.Font.Color:=clRed;
 if (labelLiY.caption='5') or (labelLiY.caption='2')
 then labelLiY.Font.Color:=clRed;
 if (labelKunY.caption='5') or (labelKunY.caption='2')
 then labelKunY.Font.Color:=clRed;
 if (labelDuiY.caption='5') or (labelDuiY.caption='2')
 then labelDuiY.Font.Color:=clRed;
 if (labelQianY.caption='5') or (labelQianY.caption='2')
 then labelQianY.Font.Color:=clRed;
 if (labelKanY.caption='5') or (labelKanY.caption='2')
 then labelKanY.Font.Color:=clRed;
 if (labelGenY.caption='5') or (labelGenY.caption='2')
 then labelGenY.Font.Color:=clRed;
 if (labelZhenY.caption='5') or (labelZhenY.caption='2')
 then labelZhenY.Font.Color:=clRed;


 if (labelXunM.caption='5') or (labelXunM.caption='2')
 then labelXunM.Font.Color:=clRed;
 if (labelLiM.caption='5') or (labelLiM.caption='2')
 then labelLiM.Font.Color:=clRed;
 if (labelKunM.caption='5') or (labelKunM.caption='2')
 then labelKunM.Font.Color:=clRed;
 if (labelDuiM.caption='5') or (labelDuiM.caption='2')
 then labelDuiM.Font.Color:=clRed;
 if (labelQianM.caption='5') or (labelQianM.caption='2')
 then labelQianM.Font.Color:=clRed;
 if (labelKanM.caption='5') or (labelKanM.caption='2')
 then labelKanM.Font.Color:=clRed;
 if (labelGenM.caption='5') or (labelGenM.caption='2')
 then labelGenM.Font.Color:=clRed;
 if (labelZhenM.caption='5') or (labelZhenM.caption='2')
 then labelZhenM.Font.Color:=clRed;


 if (labelXunD.caption='5') or (labelXunD.caption='2')
 then labelXunD.Font.Color:=clRed;
 if (labelLiD.caption='5') or (labelLiD.caption='2')
 then labelLiD.Font.Color:=clRed;
 if (labelKunD.caption='5') or (labelKunD.caption='2')
 then labelKunD.Font.Color:=clRed;
 if (labelDuiD.caption='5') or (labelDuiD.caption='2')
 then labelDuiD.Font.Color:=clRed;
 if (labelQianD.caption='5') or (labelQianD.caption='2')
 then labelQianD.Font.Color:=clRed;
 if (labelKanD.caption='5') or (labelKanD.caption='2')
 then labelKanD.Font.Color:=clRed;
 if (labelGenD.caption='5') or (labelGenD.caption='2')
 then labelGenD.Font.Color:=clRed;
 if (labelZhenD.caption='5') or (labelZhenD.caption='2')
 then labelZhenD.Font.Color:=clRed;
end;

procedure TFormFh.Colors_Label(Label_star:TLabel; cicl: shortint);
var
index:shortint;
begin
 index:=StrToInt(Label_star.Caption);
 case SatarsFazaAll (cicl, index) of
  sf_Van:Label_Star.Font.Color:=ColorVan;
  sf_Shen:Label_Star.Font.Color:=ColorShen;
  sf_N:Label_Star.Font.Color:=ColorN;
  sf_Si:Label_Star.Font.Color:=ColorSi;
  sf_Sha:Label_Star.Font.Color:=ColorSha;
end;
end;


procedure TFormFh.Raszvet_Upadok (cicl:shortint);
begin
 LabelCentrG.Font.Color:=clBlack;
 LabelCentrN.Font.Color:=clBlack;
 LabelLiG.Font.Color:=clBlack;
 LabelLiN.Font.Color:=clBlack;
 LabelKunG.Font.Color:=clBlack;
 LabelKunN.Font.Color:=clBlack;
 LabelDuiG.Font.Color:=clBlack;
 LabelDuiN.Font.Color:=clBlack;
 LabelQianG.Font.Color:=clBlack;
 LabelQianN.Font.Color:=clBlack;
 LabelKanG.Font.Color:=clBlack;
 LabelKanN.Font.Color:=clBlack;
 LabelGenG.Font.Color:=clBlack;
 LabelGenN.Font.Color:=clBlack;
 LabelZhenG.Font.Color:=clBlack;
 LabelZhenN.Font.Color:=clBlack;
 LabelXunG.Font.Color:=clBlack;
 LabelXunN.Font.Color:=clBlack;

 LabelCentrMen_1.Font.Color:=clBlack;
 LabelLiMen_1.Font.Color:=clBlack;
 LabelKunMen_1.Font.Color:=clBlack;
 LabelDuiMen_1.Font.Color:=clBlack;
 LabelQianMen_1.Font.Color:=clBlack;
 LabelKanMen_1.Font.Color:=clBlack;
 LabelGenMen_1.Font.Color:=clBlack;
 LabelZhenMen_1.Font.Color:=clBlack;
 LabelXunMen_1.Font.Color:=clBlack;

 LabelCentrMen_2.Font.Color:=clBlack;
 LabelLiMen_2.Font.Color:=clBlack;
 LabelKunMen_2.Font.Color:=clBlack;
 LabelDuiMen_2.Font.Color:=clBlack;
 LabelQianMen_2.Font.Color:=clBlack;
 LabelKanMen_2.Font.Color:=clBlack;
 LabelGenMen_2.Font.Color:=clBlack;
 LabelZhenMen_2.Font.Color:=clBlack;
 LabelXunMen_2.Font.Color:=clBlack;

 LabelCentr20.Font.Color:=clBlack;
 LabelLi20.Font.Color:=clBlack;
 LabelKun20.Font.Color:=clBlack;
 LabelDui20.Font.Color:=clBlack;
 LabelQian20.Font.Color:=clBlack;
 LabelKan20.Font.Color:=clBlack;
 LabelGen20.Font.Color:=clBlack;
 LabelZhen20.Font.Color:=clBlack;
 LabelXun20.Font.Color:=clBlack;

 Colors_Label(LabelCentrG, cicl);
 Colors_Label(LabelCentrN, cicl);
 Colors_Label(LabelLiG, cicl);
 Colors_Label(LabelLiN, cicl);
 Colors_Label(LabelKunG, cicl);
 Colors_Label(LabelKunN, cicl);
 Colors_Label(LabelDuiG, cicl);
 Colors_Label(LabelDuiN, cicl);
 Colors_Label(LabelQianG, cicl);
 Colors_Label(LabelQianN, cicl);
 Colors_Label(LabelKanG, cicl);
 Colors_Label(LabelKanN, cicl);
 Colors_Label(LabelGenG, cicl);
 Colors_Label(LabelGenN, cicl);
 Colors_Label(LabelZhenG, cicl);
 Colors_Label(LabelZhenN, cicl);
 Colors_Label(LabelXunG, cicl);
 Colors_Label(LabelXunN, cicl);

 Colors_Label(LabelCentr20, cicl);
 Colors_Label(LabelLi20, cicl);
 Colors_Label(LabelKun20, cicl);
 Colors_Label(LabelDui20, cicl);
 Colors_Label(LabelQian20, cicl);
 Colors_Label(LabelKan20, cicl);
 Colors_Label(LabelGen20, cicl);
 Colors_Label(LabelZhen20, cicl);
 Colors_Label(LabelXun20, cicl);

 Colors_Label(LabelCentrMen_1, cicl);
 Colors_Label(LabelCentrMen_2, cicl);
 Colors_Label(LabelLiMen_1, cicl);
 Colors_Label(LabelLiMen_2, cicl);
 Colors_Label(LabelKunMen_1, cicl);
 Colors_Label(LabelKunMen_2, cicl);
 Colors_Label(LabelDuiMen_1, cicl);
 Colors_Label(LabelDuiMen_2, cicl);
 Colors_Label(LabelQianMen_1, cicl);
 Colors_Label(LabelQianMen_2, cicl);
 Colors_Label(LabelKanMen_1, cicl);
 Colors_Label(LabelKanMen_2, cicl);
 Colors_Label(LabelGenMen_1, cicl);
 Colors_Label(LabelGenMen_2, cicl);
 Colors_Label(LabelZhenMen_1, cicl);
 Colors_Label(LabelZhenMen_2, cicl);
 Colors_Label(LabelXunMen_1, cicl);
 Colors_Label(LabelXunMen_2, cicl);

end;


procedure TFormFh.Stars_Zapolnenie;
begin
case FH_YearStarV of
1: begin
    LabelCentrY.Caption:='1';
    LabelQianY.Caption:='2';
    LabelDuiY.Caption:='3';
    LabelGenY.Caption:='4';
    LabelLiY.Caption:='5';
    LabelKanY.Caption:='6';
    LabelKunY.Caption:='7';
    LabelZhenY.Caption:='8';
    LabelXunY.Caption:='9';
   end;
2: begin
    LabelCentrY.Caption:='2';
    LabelQianY.Caption:='3';
    LabelDuiY.Caption:='4';
    LabelGenY.Caption:='5';
    LabelLiY.Caption:='6';
    LabelKanY.Caption:='7';
    LabelKunY.Caption:='8';
    LabelZhenY.Caption:='9';
    LabelXunY.Caption:='1';
   end;
3: begin
    LabelCentrY.Caption:='3';
    LabelQianY.Caption:='4';
    LabelDuiY.Caption:='5';
    LabelGenY.Caption:='6';
    LabelLiY.Caption:='7';
    LabelKanY.Caption:='8';
    LabelKunY.Caption:='9';
    LabelZhenY.Caption:='1';
    LabelXunY.Caption:='2';
   end;
4: begin
    LabelCentrY.Caption:='4';
    LabelQianY.Caption:='5';
    LabelDuiY.Caption:='6';
    LabelGenY.Caption:='7';
    LabelLiY.Caption:='8';
    LabelKanY.Caption:='9';
    LabelKunY.Caption:='1';
    LabelZhenY.Caption:='2';
    LabelXunY.Caption:='3';
   end;
5: begin
    LabelCentrY.Caption:='5';
    LabelQianY.Caption:='6';
    LabelDuiY.Caption:='7';
    LabelGenY.Caption:='8';
    LabelLiY.Caption:='9';
    LabelKanY.Caption:='1';
    LabelKunY.Caption:='2';
    LabelZhenY.Caption:='3';
    LabelXunY.Caption:='4';
   end;
6: begin
    LabelCentrY.Caption:='6';
    LabelQianY.Caption:='7';
    LabelDuiY.Caption:='8';
    LabelGenY.Caption:='9';
    LabelLiY.Caption:='1';
    LabelKanY.Caption:='2';
    LabelKunY.Caption:='3';
    LabelZhenY.Caption:='4';
    LabelXunY.Caption:='5';
   end;
7: begin
    LabelCentrY.Caption:='7';
    LabelQianY.Caption:='8';
    LabelDuiY.Caption:='9';
    LabelGenY.Caption:='1';
    LabelLiY.Caption:='2';
    LabelKanY.Caption:='3';
    LabelKunY.Caption:='4';
    LabelZhenY.Caption:='5';
    LabelXunY.Caption:='6';
   end;
8: begin
    LabelCentrY.Caption:='8';
    LabelQianY.Caption:='9';
    LabelDuiY.Caption:='1';
    LabelGenY.Caption:='2';
    LabelLiY.Caption:='3';
    LabelKanY.Caption:='4';
    LabelKunY.Caption:='5';
    LabelZhenY.Caption:='6';
    LabelXunY.Caption:='7';
   end;
9: begin
    LabelCentrY.Caption:='9';
    LabelQianY.Caption:='1';
    LabelDuiY.Caption:='2';
    LabelGenY.Caption:='3';
    LabelLiY.Caption:='4';
    LabelKanY.Caption:='5';
    LabelKunY.Caption:='6';
    LabelZhenY.Caption:='7';
    LabelXunY.Caption:='8';
   end;
end;

case FH_MoonStarV of
1: begin
    LabelCentrM.Caption:='1';
    LabelQianM.Caption:='2';
    LabelDuiM.Caption:='3';
    LabelGenM.Caption:='4';
    LabelLiM.Caption:='5';
    LabelKanM.Caption:='6';
    LabelKunM.Caption:='7';
    LabelZhenM.Caption:='8';
    LabelXunM.Caption:='9';
   end;
2: begin
    LabelCentrM.Caption:='2';
    LabelQianM.Caption:='3';
    LabelDuiM.Caption:='4';
    LabelGenM.Caption:='5';
    LabelLiM.Caption:='6';
    LabelKanM.Caption:='7';
    LabelKunM.Caption:='8';
    LabelZhenM.Caption:='9';
    LabelXunM.Caption:='1';
   end;
3: begin
    LabelCentrM.Caption:='3';
    LabelQianM.Caption:='4';
    LabelDuiM.Caption:='5';
    LabelGenM.Caption:='6';
    LabelLiM.Caption:='7';
    LabelKanM.Caption:='8';
    LabelKunM.Caption:='9';
    LabelZhenM.Caption:='1';
    LabelXunM.Caption:='2';
   end;
4: begin
    LabelCentrM.Caption:='4';
    LabelQianM.Caption:='5';
    LabelDuiM.Caption:='6';
    LabelGenM.Caption:='7';
    LabelLiM.Caption:='8';
    LabelKanM.Caption:='9';
    LabelKunM.Caption:='1';
    LabelZhenM.Caption:='2';
    LabelXunM.Caption:='3';
   end;
5: begin
    LabelCentrM.Caption:='5';
    LabelQianM.Caption:='6';
    LabelDuiM.Caption:='7';
    LabelGenM.Caption:='8';
    LabelLiM.Caption:='9';
    LabelKanM.Caption:='1';
    LabelKunM.Caption:='2';
    LabelZhenM.Caption:='3';
    LabelXunM.Caption:='4';
   end;
6: begin
    LabelCentrM.Caption:='6';
    LabelQianM.Caption:='7';
    LabelDuiM.Caption:='8';
    LabelGenM.Caption:='9';
    LabelLiM.Caption:='1';
    LabelKanM.Caption:='2';
    LabelKunM.Caption:='3';
    LabelZhenM.Caption:='4';
    LabelXunM.Caption:='5';
   end;
7: begin
    LabelCentrM.Caption:='7';
    LabelQianM.Caption:='8';
    LabelDuiM.Caption:='9';
    LabelGenM.Caption:='1';
    LabelLiM.Caption:='2';
    LabelKanM.Caption:='3';
    LabelKunM.Caption:='4';
    LabelZhenM.Caption:='5';
    LabelXunM.Caption:='6';
   end;
8: begin
    LabelCentrM.Caption:='8';
    LabelQianM.Caption:='9';
    LabelDuiM.Caption:='1';
    LabelGenM.Caption:='2';
    LabelLiM.Caption:='3';
    LabelKanM.Caption:='4';
    LabelKunM.Caption:='5';
    LabelZhenM.Caption:='6';
    LabelXunM.Caption:='7';
   end;
9: begin
    LabelCentrM.Caption:='9';
    LabelQianM.Caption:='1';
    LabelDuiM.Caption:='2';
    LabelGenM.Caption:='3';
    LabelLiM.Caption:='4';
    LabelKanM.Caption:='5';
    LabelKunM.Caption:='6';
    LabelZhenM.Caption:='7';
    LabelXunM.Caption:='8';
   end;
end;

case FH_DayStarV of
1: begin
    LabelCentrD.Caption:='1';
    LabelQianD.Caption:='2';
    LabelDuiD.Caption:='3';
    LabelGenD.Caption:='4';
    LabelLiD.Caption:='5';
    LabelKanD.Caption:='6';
    LabelKunD.Caption:='7';
    LabelZhenD.Caption:='8';
    LabelXunD.Caption:='9';
   end;
2: begin
    LabelCentrD.Caption:='2';
    LabelQianD.Caption:='3';
    LabelDuiD.Caption:='4';
    LabelGenD.Caption:='5';
    LabelLiD.Caption:='6';
    LabelKanD.Caption:='7';
    LabelKunD.Caption:='8';
    LabelZhenD.Caption:='9';
    LabelXunD.Caption:='1';
   end;
3: begin
    LabelCentrD.Caption:='3';
    LabelQianD.Caption:='4';
    LabelDuiD.Caption:='5';
    LabelGenD.Caption:='6';
    LabelLiD.Caption:='7';
    LabelKanD.Caption:='8';
    LabelKunD.Caption:='9';
    LabelZhenD.Caption:='1';
    LabelXunD.Caption:='2';
   end;
4: begin
    LabelCentrD.Caption:='4';
    LabelQianD.Caption:='5';
    LabelDuiD.Caption:='6';
    LabelGenD.Caption:='7';
    LabelLiD.Caption:='8';
    LabelKanD.Caption:='9';
    LabelKunD.Caption:='1';
    LabelZhenD.Caption:='2';
    LabelXunD.Caption:='3';
   end;
5: begin
    LabelCentrD.Caption:='5';
    LabelQianD.Caption:='6';
    LabelDuiD.Caption:='7';
    LabelGenD.Caption:='8';
    LabelLiD.Caption:='9';
    LabelKanD.Caption:='1';
    LabelKunD.Caption:='2';
    LabelZhenD.Caption:='3';
    LabelXunD.Caption:='4';
   end;
6: begin
    LabelCentrD.Caption:='6';
    LabelQianD.Caption:='7';
    LabelDuiD.Caption:='8';
    LabelGenD.Caption:='9';
    LabelLiD.Caption:='1';
    LabelKanD.Caption:='2';
    LabelKunD.Caption:='3';
    LabelZhenD.Caption:='4';
    LabelXunD.Caption:='5';
   end;
7: begin
    LabelCentrD.Caption:='7';
    LabelQianD.Caption:='8';
    LabelDuiD.Caption:='9';
    LabelGenD.Caption:='1';
    LabelLiD.Caption:='2';
    LabelKanD.Caption:='3';
    LabelKunD.Caption:='4';
    LabelZhenD.Caption:='5';
    LabelXunD.Caption:='6';
   end;
8: begin
    LabelCentrD.Caption:='8';
    LabelQianD.Caption:='9';
    LabelDuiD.Caption:='1';
    LabelGenD.Caption:='2';
    LabelLiD.Caption:='3';
    LabelKanD.Caption:='4';
    LabelKunD.Caption:='5';
    LabelZhenD.Caption:='6';
    LabelXunD.Caption:='7';
   end;
9: begin
    LabelCentrD.Caption:='9';
    LabelQianD.Caption:='1';
    LabelDuiD.Caption:='2';
    LabelGenD.Caption:='3';
    LabelLiD.Caption:='4';
    LabelKanD.Caption:='5';
    LabelKunD.Caption:='6';
    LabelZhenD.Caption:='7';
    LabelXunD.Caption:='8';
   end;
end;
end;


procedure TFormFh.TaiSui;
begin
 ShapeZi.Visible:=false;
 ShapeChou.Visible:=false;
 ShapeYin.Visible:=false;
 ShapeMao.Visible:=false;
 ShapeChen.Visible:=false;
 ShapeSi.Visible:=false;
 ShapeWu.Visible:=false;
 ShapeWei.Visible:=false;
 ShapeShen.Visible:=false;
 ShapeYou.Visible:=false;
 ShapeXu.Visible:=false;
 ShapeHai.Visible:=false;
 case FH_Ymain2 of
 1: ShapeZi.Visible:=true;
 2: ShapeChou.Visible:=true;
 3: ShapeYin.Visible:=true;
 4: ShapeMao.Visible:=true;
 5: ShapeChen.Visible:=true;
 6: ShapeSi.Visible:=true;
 7: ShapeWu.Visible:=true;
 8: ShapeWei.Visible:=true;
 9: ShapeShen.Visible:=true;
 10: ShapeYou.Visible:=true;
 11: ShapeXu.Visible:=true;
 12: ShapeHai.Visible:=true;
end;
end;

procedure TFormFh.UnColorRegt;
begin
  ShapeKan.Pen.Width:=1;
  ShapeDui.Pen.Width:=1;
  ShapeQian.Pen.Width:=1;
  ShapeLi.Pen.Width:=1;
  ShapeGen.Pen.Width:=1;
  ShapeZhen.Pen.Width:=1;
  ShapeXun.Pen.Width:=1;
  ShapeKun.Pen.Width:=1;

  ShapeKan.Pen.Color:=clBlack;
  ShapeDui.Pen.Color:=clBlack;
  ShapeQian.Pen.Color:=clBlack;
  ShapeLi.Pen.Color:=clBlack;
  ShapeGen.Pen.Color:=clBlack;
  ShapeZhen.Pen.Color:=clBlack;
  ShapeXun.Pen.Color:=clBlack;
  ShapeKun.Pen.Color:=clBlack;

  ShapeKanMen_1.Pen.Color:=clBlack;
  ShapeDuiMen_1.Pen.Color:=clBlack;
  ShapeQianMen_1.Pen.Color:=clBlack;
  ShapeLiMen_1.Pen.Color:=clBlack;
  ShapeGenMen_1.Pen.Color:=clBlack;
  ShapeZhenMen_1.Pen.Color:=clBlack;
  ShapeXunMen_1.Pen.Color:=clBlack;
  ShapeKunMen_1.Pen.Color:=clBlack;

  ShapeKanMen_1.Pen.Width:=1;
  ShapeDuiMen_1.Pen.Width:=1;
  ShapeQianMen_1.Pen.Width:=1;
  ShapeLiMen_1.Pen.Width:=1;
  ShapeGenMen_1.Pen.Width:=1;
  ShapeZhenMen_1.Pen.Width:=1;
  ShapeXunMen_1.Pen.Width:=1;
  ShapeKunMen_1.Pen.Width:=1;


  ShapeKanMen_2.Pen.Color:=clBlack;
  ShapeDuiMen_2.Pen.Color:=clBlack;
  ShapeQianMen_2.Pen.Color:=clBlack;
  ShapeLiMen_2.Pen.Color:=clBlack;
  ShapeGenMen_2.Pen.Color:=clBlack;
  ShapeZhenMen_2.Pen.Color:=clBlack;
  ShapeXunMen_2.Pen.Color:=clBlack;
  ShapeKunMen_2.Pen.Color:=clBlack;


  ShapeKanMen_2.Pen.Width:=1;
  ShapeDuiMen_2.Pen.Width:=1;
  ShapeQianMen_2.Pen.Width:=1;
  ShapeLiMen_2.Pen.Width:=1;
  ShapeGenMen_2.Pen.Width:=1;
  ShapeZhenMen_2.Pen.Width:=1;
  ShapeXunMen_2.Pen.Width:=1;
  ShapeKunMen_2.Pen.Width:=1;
end;

procedure TFormFh.Final_Zapolnenie_216 (corner, cicl:integer);
begin
 Comments:='НЕТ.';
 case corner of

//Zi

0..3:begin
        ShapeKan.Pen.Color:=ColorVan;
        ShapeKan.Pen.Width:=3;
        ShapeLi.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 7, 8, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 8, 9, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 1, 2, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 3, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 3, 4, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 4, 5, ij_Jan, ij_In);
          end;
        end;
      end;
  4..7:begin
        ShapeKan.Pen.Color:=ColorVan;
        ShapeKan.Pen.Width:=3;
        ShapeLi.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 7, 7, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 9, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        6:begin
            Zapolnenie_216 (6, 1, 2, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 2, 2, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 6, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 5, ij_Jan, ij_In);
          end;
        end;
      end;

//gui
8..12:begin
        ShapeKan.Pen.Color:=ColorVan;
        ShapeKan.Pen.Width:=3;
        ShapeLi.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 7, 9, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 9, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        6:begin
            Zapolnenie_216 (6, 1, 1, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 2, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 6, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 5, ij_Jan, ij_In);
          end;
        end;
       end;

 13..18:begin
        ShapeKan.Pen.Color:=ColorVan;
        ShapeKan.Pen.Width:=3;
        ShapeLi.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 7, 8, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 8, 9, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_In, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 1, 2, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 3, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 3, 4, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 4, 5, ij_Jan, ij_In);
          end;
        end;
       end;

 19..22:begin
        ShapeKan.Pen.Color:=ColorVan;
        ShapeKan.Pen.Width:=3;
        ShapeLi.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 7, 9, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 9, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        6:begin
            Zapolnenie_216 (6, 1, 1, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 2, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 6, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 5, ij_Jan, ij_In);
          end;
        end;
       end;

//chou       
 23..26:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3; 
        ShapeKun.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 6, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 7, 5, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 7, 6, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 9, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 1, 7, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 2, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 2, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 6, 1, ij_In, ij_Jan);
          end;
        end;
       end;

 27..33:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3;
        ShapeKun.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 4, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 8, 5, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 6, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 1, 7, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 8, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 3, 9, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 4, 1, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 2, ij_In, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 3, ij_In, ij_Jan);
          end;
        end;
       end;

 34..37:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3; 
        ShapeKun.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 6, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 7, 5, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 7, 6, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 9, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 1, 7, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 2, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 2, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 6, 1, ij_In, ij_Jan);
          end;
        end;
       end;


 //gen
 38..41:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3;
        ShapeKun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 6,ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 7, 5, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 6,ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 1, 7,ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 9, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 1,ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 2, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 6, 2,ij_Jan, ij_In);
          end;
        end;
       end;

 42..48:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3;
        ShapeKun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 4,ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 8, 5, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 6,ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 1, 7,ij_In, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 8, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 3, 9, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 4, 1,ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 2, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 3,ij_Jan, ij_In);
          end;
        end;
       end;


 49..52:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3;
        ShapeKun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 6,ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 7, 5, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 6,ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 1, 7,ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 9, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 1,ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 2, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 6, 2,ij_Jan, ij_In);
          end;
        end;
       end;
 //yin
 53..56:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3;
        ShapeKun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 6,ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 5, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 6,ij_In, ij_Jan);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        4:begin
            Zapolnenie_216 (4, 1, 7,ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 9, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 1,ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 1, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 2,ij_Jan, ij_In);
          end;
        end;
       end;

 57..63:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3;
        ShapeKun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 4,ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 8, 5, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 6,ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 1, 7,ij_In, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 8, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 3, 9, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 4, 1,ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 2, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 3,ij_Jan, ij_In);
          end;
        end;
       end;

 64..67:begin
        ShapeGen.Pen.Color:=ColorVan;
        ShapeGen.Pen.Width:=3;
        ShapeKun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 6,ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 5, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 6,ij_In, ij_Jan);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        4:begin
            Zapolnenie_216 (4, 1, 7,ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 9, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 1,ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 5, 1, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 2,ij_Jan, ij_In);
          end;
        end;
       end;

 //jia
 68..71:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3; 
        ShapeDui.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 1, 7, ij_Jan, ij_In);
            Comments:='В этом раскладе звезда рода входит в отключение. Летящие звезды Горного кольца и звезда цикла, соединяясь вместе в каждом Доме, образуют пары Восьмерка и Восьмерка, Двойка и Двойка и т.д.';
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 2, ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 6, 2, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_Jan, ij_Jan);
            Comments:='В этом раскладе во всех Домах, кроме Центрального, звезды образуют пары чисел порождения и завершения Прежнего Неба.';
          end;
        6:begin
            Zapolnenie_216 (6, 7, 6, ij_In, ij_In);
            Comments:='В данном раскладе звезда рода входит в отключение. Четверка Дома Горы и летящая звезда Четверка Дома Направления, объединяясь в паре, образую эту ситуацию отключения.';
          end;
        7:begin
            Zapolnenie_216 (7, 7, 5, ij_Jan, ij_Jan);
            Comments:='В этом раскладе звезда Направления входит в отключение. На всем кольце летящие звезды Направления и звезды цикла соединяются в парах: Пятерка с Пятеркой, Семерка с Семеркой, Девятка с Девяткой  и т.д., образуя ситуацию отключения.';
          end;
        8:begin
            Zapolnenie_216 (8, 2, 6, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 9, ij_In, ij_Jan);
            Comments:='В данном раскладе в отключение входит звезда рода. На всем кольце летящие звезды Горы и звезды цикла соединяются в парах: Семерка и Семерка, Девятка и Девятка и т.д., рождая такую ситуацию.';
          end;
        end;
       end;

 72..78:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3; 
        ShapeDui.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 3, 8, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 4, 9, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 1, ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 6, 2, ij_In, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 7, 3, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 8, 4, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 9, 5, ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 7, ij_In, ij_Jan);
          end;
        end;
       end;

 79..82:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3; 
        ShapeDui.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 1, 7, ij_Jan, ij_In);
            Comments:='В этом раскладе звезда рода входит в отключение. Летящие звезды Горного кольца и звезда цикла, соединяясь вместе в каждом Доме, образуют пары Восьмерка и Восьмерка, Двойка и Двойка и т.д.';
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 2, ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 6, 2, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_Jan, ij_Jan);
            Comments:='В этом раскладе во всех Домах, кроме Центрального, звезды образуют пары чисел порождения и завершения Прежнего Неба.';
          end;
        6:begin
            Zapolnenie_216 (6, 7, 6, ij_In, ij_In);
            Comments:='В данном раскладе звезда рода входит в отключение. Четверка Дома Горы и летящая звезда Четверка Дома Направления, объединяясь в паре, образую эту ситуацию отключения.';
          end;
        7:begin
            Zapolnenie_216 (7, 7, 5, ij_Jan, ij_Jan);
            Comments:='В этом раскладе звезда Направления входит в отключение. На всем кольце летящие звезды Направления и звезды цикла соединяются в парах: Пятерка с Пятеркой, Семерка с Семеркой, Девятка с Девяткой  и т.д., образуя ситуацию отключения.';
          end;
        8:begin
            Zapolnenie_216 (8, 2, 6, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 9, ij_In, ij_Jan);
            Comments:='В данном раскладе в отключение входит звезда рода. На всем кольце летящие звезды Горы и звезды цикла соединяются в парах: Семерка и Семерка, Девятка и Девятка и т.д., рождая такую ситуацию.';
          end;
        end;
       end;

//mao
 83..86:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3;
        ShapeDui.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 7, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 9, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 1,ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        4:begin
            Zapolnenie_216 (4, 6, 2, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        5:begin
            Zapolnenie_216 (5, 7, 2, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 7, 6, ij_Jan, ij_Jan);
            Comments:='В этом раскладе звезды Направления входят в фазу отключения: Четверка с Четверкой, Шестерка с Шестеркой и так далее. На всем кольце летящие звезды Направления, соединяясь со звездами цикла, и создается такой расклад.';
          end;
        7:begin
            Zapolnenie_216 (7, 9, 5, ij_In, ij_In);
            Comments:='Этот расклад не используется для замещения, а используется Основной знак. Так как Замещающий знак гуа нарушает принципы присоединения по инь-ян, и считается, что расположение звезд Замещающего знака не отражает реальной обстановки.';
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 2, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        end;
       end;

 87..93:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3;
        ShapeDui.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 3, 8, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 4, 9, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 1,ij_In, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 6, 2, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 7, 3, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 8, 4, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 9, 5, ij_In, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 7, ij_Jan, ij_In);
          end;
        end;
       end;

 94..97:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3;
        ShapeDui.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 7, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 9, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 1,ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        4:begin
            Zapolnenie_216 (4, 6, 2, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        5:begin
            Zapolnenie_216 (5, 7, 2, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 7, 6, ij_Jan, ij_Jan);
            Comments:='В этом раскладе звезды Направления входят в фазу отключения: Четверка с Четверкой, Шестерка с Шестеркой и так далее. На всем кольце летящие звезды Направления, соединяясь со звездами цикла, и создается такой расклад.';
          end;
        7:begin
            Zapolnenie_216 (7, 9, 5, ij_In, ij_In);
            Comments:='Этот расклад не используется для замещения, а используется Основной знак. Так как Замещающий знак гуа нарушает принципы присоединения по инь-ян, и считается, что расположение звезд Замещающего знака не отражает реальной обстановки.';
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 2, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        end;
       end;

 //yi
 98..101:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3;
        ShapeDui.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 9, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 9, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 1,ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        4:begin
            Zapolnenie_216 (4, 6, 1, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 7, 2, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 6, ij_Jan, ij_Jan);
            Comments:='В данном раскладе звезды Направления входят в фазу отключения. Во всех Домах есть соединение в парах звезд Направления и цикла, которое и создают такую ситуацию.';
          end;
        7:begin
            Zapolnenie_216 (7, 9, 5, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 1, 7, ij_Jan, ij_In);
          end;
        end;
        end;

 102..108:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3;
        ShapeDui.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 3, 8, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 4, 9, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 1,ij_In, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 6, 2, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 7, 3, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 8, 4, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 9, 5, ij_In, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 7, ij_Jan, ij_In);
          end;
        end;
        end;

 109..112:begin
        ShapeZhen.Pen.Color:=ColorVan;
        ShapeZhen.Pen.Width:=3;
        ShapeDui.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 9, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 9, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 5, 1,ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        4:begin
            Zapolnenie_216 (4, 6, 1, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 7, 2, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 6, ij_Jan, ij_Jan);
            Comments:='В данном раскладе звезды Направления входят в фазу отключения. Во всех Домах есть соединение в парах звезд Направления и цикла, которое и создают такую ситуацию.';
          end;
        7:begin
            Zapolnenie_216 (7, 9, 5, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 1, 7, ij_Jan, ij_In);
          end;
        end;
        end;

 // chen
 113..116:begin
           ShapeXun.Pen.Color:=ColorVan;
           ShapeXun.Pen.Width:=3; 
           ShapeQian.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 7, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 1, 2, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 6, 2, ij_In, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 1, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6, ij_In, ij_In);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 9, 5, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 7, 6, ij_In, ij_In);
            Comments:='Здесь звезда рода входит в фазу отключения. Восьмерка Горы и летящая звезда в Доме Направления , соединяясь в паре Восьмерка и Восьмерка, создают такую ситуацию.';
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 7, ij_Jan, ij_In);
          end;
        end;
         end;

 117..123:begin
           ShapeXun.Pen.Color:=ColorVan;
           ShapeXun.Pen.Width:=3; 
           ShapeQian.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 9, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 3, 1, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 4, 2, ij_In, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 3, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 4, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 7, 5, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 8, 6, ij_In, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 1, 8, ij_Jan, ij_In);
          end;
        end;
         end;

 124..127:begin
           ShapeXun.Pen.Color:=ColorVan;
           ShapeXun.Pen.Width:=3; 
           ShapeQian.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 7, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 1, 2, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 6, 2, ij_In, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 1, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6, ij_In, ij_In);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 9, 5, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 7, 6, ij_In, ij_In);
            Comments:='Здесь звезда рода входит в фазу отключения. Восьмерка Горы и летящая звезда в Доме Направления , соединяясь в паре Восьмерка и Восьмерка, создают такую ситуацию.';
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 7, ij_Jan, ij_In);
          end;
        end;
         end;

 //xun
 128..131:begin
           ShapeXun.Pen.Color:=ColorVan; 
           ShapeXun.Pen.Width:=3; 
           ShapeQian.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 9,ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 2, 1, ij_In, ij_In);
            Comments:='В этом раскладе звезда Тройка в Доме Горы и летящая Горная звезда в Доме Направления вместе соединяясь, образуют сочетание Тройки и Тройки. Это значит, что звезда рода входит в отключение и это предвещает его прерывание.';
          end;
        3:begin
            Zapolnenie_216 (3, 6, 2,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 2,ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6,ij_Jan, ij_Jan);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 7, 5, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 7, 6,ij_Jan, ij_Jan);
            Comments:='В этом раскладе Горные звезды образуют пары во всех домах: Семерка с Семеркой, Шестерка с Шестеркой и так далее, полностью входят в фазу отключение, что предвещает прерывание рода.';
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        9:begin
            Zapolnenie_216 (9, 1, 7, ij_In, ij_Jan);
          end;
        end;
         end;

 132..138:begin
           ShapeXun.Pen.Color:=ColorVan; 
           ShapeXun.Pen.Width:=3; 
           ShapeQian.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 9,ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 3, 1, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 4, 2,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 3,ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 4,ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 7, 5, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 8, 6,ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_In, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 1, 8, ij_In, ij_Jan);
          end;
        end;
         end;

 139..142:begin
           ShapeXun.Pen.Color:=ColorVan; 
           ShapeXun.Pen.Width:=3; 
           ShapeQian.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 9,ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 2, 1, ij_In, ij_In);
            Comments:='В этом раскладе звезда Тройка в Доме Горы и летящая Горная звезда в Доме Направления вместе соединяясь, образуют сочетание Тройки и Тройки. Это значит, что звезда рода входит в отключение и это предвещает его прерывание.';
          end;
        3:begin
            Zapolnenie_216 (3, 6, 2,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 2,ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6,ij_Jan, ij_Jan);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 7, 5, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 7, 6,ij_Jan, ij_Jan);
            Comments:='В этом раскладе Горные звезды образуют пары во всех домах: Семерка с Семеркой, Шестерка с Шестеркой и так далее, полностью входят в фазу отключение, что предвещает прерывание рода.';
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        9:begin
            Zapolnenie_216 (9, 1, 7, ij_In, ij_Jan);
          end;
        end;
         end;

 //si
 143..146:begin
           ShapeXun.Pen.Color:=ColorVan; 
           ShapeXun.Pen.Width:=3;
           ShapeQian.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 1, 9,ij_Jan, ij_In);
            Comments:='В этом раскладе звезда рода входит в фазу отключения. На всем кольце горные звезды и звезды цикла соединяются в парах: Двойка и Двойка, Единица и Единица и т.д., что создает эту ситуацию.';
          end;
        2:begin
            Zapolnenie_216 (2, 2, 1, ij_In, ij_In);
            Comments:='В данном раскладе звезда рода входит в отключение. Звезда в Доме Горы Тройка и летящая Горная звезда в стороне Направления соединяются в паре Тройка и Тройка, что и создает такую ситуацию.';
          end;
        3:begin
            Zapolnenie_216 (3, 6, 1,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 2,ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6,ij_Jan, ij_Jan);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии cкрытого резонанса. Это знак большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 7, 5, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 9, 6,ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        9:begin
            Zapolnenie_216 (9, 1, 9, ij_In, ij_Jan);
            Comments:='В данном раскладе звезды Направления входят в отключение. На всем кольце звезды Направления и звезды цикла соединяются в парах: Восемь и Восемь, Девять и Девять и т.д., образуя такую ситуацию.';
          end;
        end;
         end;

 147..153:begin
           ShapeXun.Pen.Color:=ColorVan; 
           ShapeXun.Pen.Width:=3;
           ShapeQian.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 2, 9,ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 3, 1, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 4, 2,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 3,ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 4,ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 7, 5, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 8, 6,ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_In, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 1, 8, ij_In, ij_Jan);
          end;
        end;
         end;


 154..157:begin
           ShapeXun.Pen.Color:=ColorVan;
           ShapeXun.Pen.Width:=3;
           ShapeQian.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 1, 9,ij_Jan, ij_In);
            Comments:='В этом раскладе звезда рода входит в фазу отключения. На всем кольце горные звезды и звезды цикла соединяются в парах: Двойка и Двойка, Единица и Единица и т.д., что создает эту ситуацию.';
          end;
        2:begin
            Zapolnenie_216 (2, 2, 1, ij_In, ij_In);
            Comments:='В данном раскладе звезда рода входит в отключение. Звезда в Доме Горы Тройка и летящая Горная звезда в стороне Направления соединяются в паре Тройка и Тройка, что и создает такую ситуацию.';
          end;
        3:begin
            Zapolnenie_216 (3, 6, 1,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 5, 2,ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6,ij_Jan, ij_Jan);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии cкрытого резонанса. Это знак большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 7, 5, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 9, 6,ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        9:begin
            Zapolnenie_216 (9, 1, 9, ij_In, ij_Jan);
            Comments:='В данном раскладе звезды Направления входят в отключение. На всем кольце звезды Направления и звезды цикла соединяются в парах: Восемь и Восемь, Девять и Девять и т.д., образуя такую ситуацию.';
          end;
        end;
         end;

//bing

 158..161:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;  
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 9, 6, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 8, 9, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 7, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 2, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 2, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 6, ij_Jan, ij_In);
          end;
        end;
         end;

 162..168:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;  
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 8, 7, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 8, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 1, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 3, 2, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 4, 3, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 4, ij_Jan, ij_In);
          end;
        end;
         end;

 169..172:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;  
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 9, 6, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 8, 9, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 7, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 2, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 2, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 6, ij_Jan, ij_In);
          end;
        end;
         end;

 //wu
 173..176:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 7, 7, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 7, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        6:begin
            Zapolnenie_216 (6, 2, 1, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 2, 2, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 2, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 6, ij_In, ij_Jan);
          end;
        end;
         end;


 177..183:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 8, 7, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 8, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 1, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 3, 2, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 4, 3, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 4, ij_In, ij_Jan);
          end;
        end;
         end;


 184..187:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 7, 7, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 7, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        6:begin
            Zapolnenie_216 (6, 2, 1, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 2, 2, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 2, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 6, ij_In, ij_Jan);
          end;
        end;
         end;

 //ding
 188..191:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 9, 7, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 9, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        6:begin
            Zapolnenie_216 (6, 1, 1, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 1, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 2, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 6, ij_In, ij_Jan);
          end;
        end;
         end;

 192..198:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 8, 7, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 8, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 1, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 3, 2, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 4, 3, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 4, ij_In, ij_Jan);
          end;
        end;
         end;

 199..202:begin
           ShapeLi.Pen.Color:=ColorVan;
           ShapeLi.Pen.Width:=3;
           ShapeKan.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 5, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 9, 7, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 9, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        6:begin
            Zapolnenie_216 (6, 1, 1, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 1, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 2, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 5, 6, ij_In, ij_Jan);
          end;
        end;
         end;

 //wei
 203..206:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 9, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 7, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 7, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 2, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 7, 2, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 7, 1, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 6, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 5, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 1, 6, ij_Jan, ij_In);
          end;
        end;
         end;

 207..213:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 4, 7, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 8, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 9, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 1, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 8, 2, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 3, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 4, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 5, ij_In, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 3, 6, ij_Jan, ij_In);
          end;
        end;
         end;

 214..217:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 9, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 7, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 7, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 9, 2, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 7, 2, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 7, 1, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 6, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 5, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 1, 6, ij_Jan, ij_In);
          end;
        end;
         end;

 //kun
 218..221:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 7,ij_Jan,ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 7, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 9,ij_Jan,ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        4:begin
            Zapolnenie_216 (4, 7, 1,ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        5:begin
            Zapolnenie_216 (5, 7, 2, ij_In, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 2, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 6,ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 5, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 2, 6,ij_In, ij_Jan);
          end;
        end;
         end;

222..228:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 4, 7,ij_Jan,ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 8, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 9,ij_Jan,ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 1,ij_In, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 8, 2, ij_In, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 3, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 4,ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 5, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 3, 6,ij_In, ij_Jan);
          end;
        end;
         end;

 229..232:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 7,ij_Jan,ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 7, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 9,ij_Jan,ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        4:begin
            Zapolnenie_216 (4, 7, 1,ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        5:begin
            Zapolnenie_216 (5, 7, 2, ij_In, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 2, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 6,ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 5, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 2, 6,ij_In, ij_Jan);
          end;
        end;
         end;

 //shen
 233..236:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 7,ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 9, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 9,ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        4:begin
            Zapolnenie_216 (4, 7, 1,ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 2, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 6,ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 1, 5, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 6,ij_In, ij_Jan);
          end;
        end;
         end;

 237..243:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 4, 7,ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 8, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 9,ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 1,ij_In, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 8, 2, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 3, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 4,ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 5, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 3, 6,ij_In, ij_Jan);
          end;
        end;
         end;

 244..247:begin
           ShapeKun.Pen.Color:=ColorVan;
           ShapeKun.Pen.Width:=3;
           ShapeGen.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 6, 7,ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 5, 9, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 6, 9,ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        4:begin
            Zapolnenie_216 (4, 7, 1,ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 9, 2, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 1, 6,ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 1, 5, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 2, 6,ij_In, ij_Jan);
          end;
        end;
         end;

 //gen
 248..251:begin
           ShapeDui.Pen.Color:=ColorVan;
           ShapeDui.Pen.Width:=3;
           ShapeZhen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 1, ij_In, ij_Jan);
            Comments:='В этом раскладе звезда Направления входит в отключение. На всем лопане летящие звезды Направления и звезды цикла соединяются в парах: Восьмерка и Восьмерка, Единица и Единица, Тройка и Тройка и т.д.';
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 2, 5, ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 6, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_Jan, ij_Jan);
            Comments:='В этом раскладе на всем кольце находятся числа порождения и завершения Прежних Небес.';
          end;
        6:begin
            Zapolnenie_216 (6, 6, 7, ij_In, ij_In);
            Comments:='В данном раскладе звезда рода входит в отключение. Четверка Дома Горы и летящая звезда Четверка Дома Направления, объединяясь в паре, образую эту ситуацию отключения.';
          end;
        7:begin
            Zapolnenie_216 (7, 5, 7, ij_Jan, ij_Jan);
            Comments:='В этом раскладе звезда Направления входит в отключение. На всем кольце летящие звезды Направления и звезды цикла соединяются в парах: Пятерка с Пятеркой, Семерка с Семеркой, Девятка с Девяткой  и т.д., образуя ситуацию отключения.';
          end;
        8:begin
            Zapolnenie_216 (8, 6, 2, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 9, 2, ij_Jan, ij_In);
            Comments:='В данном раскладе в отключение входит звезда рода. На всем кольце летящие звезды Горы и звезды цикла соединяются в парах: Семерка и Семерка, Девятка и Девятка и т.д., рождая такую ситуацию.';
          end;
        end;
         end;

 252..258:begin
           ShapeDui.Pen.Color:=ColorVan;
           ShapeDui.Pen.Width:=3; 
           ShapeZhen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 8, 3, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 4, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 1, 5, ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 6, ij_In, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 3, 7, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 4, 8, ij_In, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 5, 9, ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 7, 2, ij_Jan, ij_In);
          end;
        end;
         end;

 259..262:begin
           ShapeDui.Pen.Color:=ColorVan;
           ShapeDui.Pen.Width:=3;
           ShapeZhen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 1, ij_In, ij_Jan);
            Comments:='В этом раскладе звезда Направления входит в отключение. На всем лопане летящие звезды Направления и звезды цикла соединяются в парах: Восьмерка и Восьмерка, Единица и Единица, Тройка и Тройка и т.д.';
          end;
        2:begin
            Zapolnenie_216 (2, 7, 6, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 2, 5, ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 6, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        5:begin
            Zapolnenie_216 (5, 1, 9, ij_Jan, ij_Jan);
            Comments:='В этом раскладе на всем кольце находятся числа порождения и завершения Прежних Небес.';
          end;
        6:begin
            Zapolnenie_216 (6, 6, 7, ij_In, ij_In);
            Comments:='В данном раскладе звезда рода входит в отключение. Четверка Дома Горы и летящая звезда Четверка Дома Направления, объединяясь в паре, образую эту ситуацию отключения.';
          end;
        7:begin
            Zapolnenie_216 (7, 5, 7, ij_Jan, ij_Jan);
            Comments:='В этом раскладе звезда Направления входит в отключение. На всем кольце летящие звезды Направления и звезды цикла соединяются в парах: Пятерка с Пятеркой, Семерка с Семеркой, Девятка с Девяткой  и т.д., образуя ситуацию отключения.';
          end;
        8:begin
            Zapolnenie_216 (8, 6, 2, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 9, 2, ij_Jan, ij_In);
            Comments:='В данном раскладе в отключение входит звезда рода. На всем кольце летящие звезды Горы и звезды цикла соединяются в парах: Семерка и Семерка, Девятка и Девятка и т.д., рождая такую ситуацию.';
          end;
        end;
         end;

 //you
 263..266:begin
           ShapeDui.Pen.Color:=ColorVan;
           ShapeDui.Pen.Width:=3;
           ShapeZhen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 2, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 6, ij_In, ij_Jan);
            Comments:='В этом раскладе звезда в Доме Направления Четверка зеленая входит в фазу отключения. Звезда Направления Четверка и летящая звезда Направления в Доме Горы Четверка смыкаются друг с другом, создавая такой расклад.';
          end;
        3:begin
            Zapolnenie_216 (3, 1, 5, ij_Jan, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        4:begin
            Zapolnenie_216 (4, 2, 6, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 6, 7, ij_Jan, ij_Jan);
            Comments:='В этом раскладе смыкаются звезды цикла с Горными звездами, образуя ситуацию отключения для звезды рода.';
          end;
        7:begin
            Zapolnenie_216 (7, 5, 9, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 7, 2, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        end;
    end;

 267..273:begin
           ShapeDui.Pen.Color:=ColorVan;
           ShapeDui.Pen.Width:=3;
           ShapeZhen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 8, 3, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 4, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 1, 5, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 6, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 3, 7, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 4, 8, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 5, 9, ij_In, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 7, 2, ij_In, ij_Jan);
          end;
        end;
         end;

 274..277:begin
           ShapeDui.Pen.Color:=ColorVan;
           ShapeDui.Pen.Width:=3;
           ShapeZhen.Pen.Width:=3;
           case cicl of
       1:begin
            Zapolnenie_216 (1, 7, 2, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 6, ij_In, ij_Jan);
            Comments:='В этом раскладе звезда в Доме Направления Четверка зеленая входит в фазу отключения. Звезда Направления Четверка и летящая звезда Направления в Доме Горы Четверка смыкаются друг с другом, создавая такой расклад.';
          end;
        3:begin
            Zapolnenie_216 (3, 1, 5, ij_Jan, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        4:begin
            Zapolnenie_216 (4, 2, 6, ij_Jan, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 6, 7, ij_Jan, ij_Jan);
            Comments:='В этом раскладе смыкаются звезды цикла с Горными звездами, образуя ситуацию отключения для звезды рода.';
          end;
        7:begin
            Zapolnenie_216 (7, 5, 9, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 7, 2, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        end;
 end;

 //xin
 278..281:begin
           ShapeDui.Pen.Color:=ColorVan;
           ShapeDui.Pen.Width:=3;
           ShapeZhen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 2, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 6, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 1, 5, ij_Jan, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        4:begin
            Zapolnenie_216 (4, 1, 6, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 6, 9, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 5, 9, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 7, 1, ij_In, ij_Jan);
          end;
        end;
         end;

 282..288:begin
           ShapeDui.Pen.Color:=ColorVan; 
           ShapeDui.Pen.Width:=3;
           ShapeZhen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 8, 3, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 4, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 1, 5, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 6, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 3, 7, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 4, 8, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 5, 9, ij_In, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 7, 2, ij_In, ij_Jan);
          end;
        end;
         end;

 289..292:begin
           ShapeDui.Pen.Color:=ColorVan;
           ShapeDui.Pen.Width:=3;
           ShapeZhen.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 2, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 9, 6, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 1, 5, ij_Jan, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        4:begin
            Zapolnenie_216 (4, 1, 6, ij_Jan, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 2, 7, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 6, 9, ij_Jan, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 5, 9, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        8:begin
            Zapolnenie_216 (8, 6, 1, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        9:begin
            Zapolnenie_216 (9, 7, 1, ij_In, ij_Jan);
          end;
        end;
         end;

 //xu
 293..296:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 2, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 2, 1, ij_Jan, ij_Jan);
            Comments:='В данном раскладе звезда рода входит в фазу отключения. На всем кольце Горные звезды и звезды цикла соединяются в парах: Единица и Единица, Два и Два и т.д. Это создают такую ситуацию.';
          end;
        3:begin
            Zapolnenie_216 (3, 2, 6, ij_In, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 1, 5, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6, ij_In, ij_In);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 5, 9, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 7, ij_In, ij_In);
            Comments:='В этом раскладе звезда Направления входит в фазу отключения. Восьмерка в Доме Направления и летящая звезда Направления в Доме Горы, соединяясь в паре Восьмерка и Восьмерка, создают такую ситуацию.';
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 7, 2, ij_In, ij_Jan);
          end;
        end;
          end;

 297..303:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 2, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 1, 3, ij_Jan, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 2, 4, ij_In, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 3, 5, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 4, 6, ij_In, ij_In);
          end;
        6:begin
            Zapolnenie_216 (6, 5, 7, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 8, ij_In, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 8, 1, ij_In, ij_Jan);
          end;
        end;
          end;

 304..307:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 7, 2, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 2, 1, ij_Jan, ij_Jan);
            Comments:='В данном раскладе звезда рода входит в фазу отключения. На всем кольце Горные звезды и звезды цикла соединяются в парах: Единица и Единица, Два и Два и т.д. Это создают такую ситуацию.';
          end;
        3:begin
            Zapolnenie_216 (3, 2, 6, ij_In, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 1, 5, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6, ij_In, ij_In);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 5, 9, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 7, ij_In, ij_In);
            Comments:='В этом раскладе звезда Направления входит в фазу отключения. Восьмерка в Доме Направления и летящая звезда Направления в Доме Горы, соединяясь в паре Восьмерка и Восьмерка, создают такую ситуацию.';
          end;
        8:begin
            Zapolnenie_216 (8, 9, 7, ij_Jan, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 7, 2, ij_In, ij_Jan);
          end;
        end;
          end;

 //qian
 308..311:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 2,ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 1, 2, ij_In, ij_In);
            Comments:='В данном раскладе Звезда в Доме Направления входит в отключение. Звезда в Доме Горы Единица и летящая звезда Направления в Доме Направления Единица, соединяются в паре. Это и есть отключение.';
          end;
        3:begin
            Zapolnenie_216 (3, 2, 6,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 5,ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6, ij_Jan,ij_Jan);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 5, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 6, 7,ij_Jan, ij_Jan);
            Comments:='В данном раскладе звезды Направления входят в отключение. На всем лопане звезды Направления и цикла накладываются друг на друга: Шестерка на Шестерку, Семерка на Семерку, Восьмерка на Восьмерку и т.д.';
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        9:begin
            Zapolnenie_216 (9, 7, 1, ij_Jan,ij_In);
          end;
        end;
         end;

 312..318:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 2,ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 1, 3, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 2, 4,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 3, 5,ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 4, 6, ij_Jan,ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 5, 7, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 8,ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_In, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 8, 1, ij_Jan,ij_In);
          end;
        end;
         end;

319..322:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 2,ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 1, 2, ij_In, ij_In);
            Comments:='В данном раскладе Звезда в Доме Направления входит в отключение. Звезда в Доме Горы Единица и летящая звезда Направления в Доме Направления Единица, соединяются в паре. Это и есть отключение.';
          end;
        3:begin
            Zapolnenie_216 (3, 2, 6,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 5,ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6, ij_Jan,ij_Jan);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 5, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 6, 7,ij_Jan, ij_Jan);
            Comments:='В данном раскладе звезды Направления входят в отключение. На всем лопане звезды Направления и цикла накладываются друг на друга: Шестерка на Шестерку, Семерка на Семерку, Восьмерка на Восьмерку и т.д.';
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        9:begin
            Zapolnenie_216 (9, 7, 1, ij_Jan,ij_In);
          end;
        end;
         end;

 //hai
 323..326:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 1,ij_In, ij_Jan);
            Comments:='В данном раскладе звезды Направления входят в фазу отключения. На всем кольце звезды Цикла и Направления соединяются в парах: Двойка с Двойкой, Тройка с Тройкой и т.д., образуя такую ситуацию.';
          end;
        2:begin
            Zapolnenie_216 (2, 1, 2, ij_In, ij_In);
            Comments:='В данном раскладе звезда Направления входит в фазу отключения. Звезда в Доме Направления Тройка с летящей звездой Направления в Горном Дворце, соединяясь, образуют пару Тройка и Тройка, что и создает такую ситуацию.';
          end;
        3:begin
            Zapolnenie_216 (3, 1, 6,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 5,ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6, ij_Jan,ij_Jan);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 5, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 6, 9,ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        9:begin
            Zapolnenie_216 (9, 9, 1, ij_Jan,ij_In);
            Comments:='В данном раскладе звезды рода входят в отключение. Но всем кольце Горные звезды и звезды цикла соединяются в парах: Восемь и Восемь, Девять и Девять и т.д., образуя подобный расклад.';
          end;
        end;
         end;

 327..333:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 2,ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 1, 3, ij_In, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 2, 4,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 3, 5,ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 4, 6, ij_Jan,ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 5, 7, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 6, 8,ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_In, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 8, 1, ij_Jan,ij_In);
          end;
        end;
         end;

 334..337:begin
           ShapeQian.Pen.Color:=ColorVan;
           ShapeQian.Pen.Width:=3;
           ShapeXun.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 9, 1,ij_In, ij_Jan);
            Comments:='В данном раскладе звезды Направления входят в фазу отключения. На всем кольце звезды Цикла и Направления соединяются в парах: Двойка с Двойкой, Тройка с Тройкой и т.д., образуя такую ситуацию.';
          end;
        2:begin
            Zapolnenie_216 (2, 1, 2, ij_In, ij_In);
            Comments:='В данном раскладе звезда Направления входит в фазу отключения. Звезда в Доме Направления Тройка с летящей звездой Направления в Горном Дворце, соединяясь, образуют пару Тройка и Тройка, что и создает такую ситуацию.';
          end;
        3:begin
            Zapolnenie_216 (3, 1, 6,ij_Jan, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 2, 5,ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 6, 6, ij_Jan,ij_Jan);
            Comments:='Во всех Домах этого расклада Летящие звезды Горы и Направления находятся в состоянии Скрытого отклика. Это гуа большого несчастья, нельзя использовать метод Замещения.';
          end;
        6:begin
            Zapolnenie_216 (6, 5, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 6, 9,ij_Jan, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 7, 9, ij_In, ij_In);
            Comments:='Данный расклад не является ситуацией Горы в расцвете и Направления в расцвете, так как при его построении нарушается принцип присоединения по инь-ян. Поэтому, нужно использовать только Основной знак.';
          end;
        9:begin
            Zapolnenie_216 (9, 9, 1, ij_Jan,ij_In);
            Comments:='В данном раскладе звезды рода входят в отключение. Но всем кольце Горные звезды и звезды цикла соединяются в парах: Восемь и Восемь, Девять и Девять и т.д., образуя подобный расклад.';
          end;
        end;
         end;

 //ren
 338..341:begin
           ShapeKan.Pen.Color:=ColorVan;
           ShapeKan.Pen.Width:=3;
           ShapeLi.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 6, 9, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 7, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 7, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 2, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 2, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 1, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 5, ij_In, ij_Jan);
          end;
        end;
         end;

 342..348:begin
           ShapeKan.Pen.Color:=ColorVan;
           ShapeKan.Pen.Width:=3;
           ShapeLi.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_Jan, ij_In);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 7, 8, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 8, 9, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 1, 2, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 3, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 3, 4, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 4, 5, ij_In, ij_Jan);
          end;
        end;
         end;

 349..352:begin
           ShapeKan.Pen.Color:=ColorVan;
           ShapeKan.Pen.Width:=3;
           ShapeLi.Pen.Width:=3;
           case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        2:begin
            Zapolnenie_216 (2, 6, 9, ij_In, ij_Jan);
          end;
        3:begin
            Zapolnenie_216 (3, 9, 7, ij_Jan, ij_In);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 7, ij_In, ij_Jan);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 2, ij_Jan, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 2, 2, ij_Jan, ij_In);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 1, ij_In, ij_Jan);
          end;
        8:begin
            Zapolnenie_216 (8, 1, 6, ij_Jan, ij_In);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 5, ij_In, ij_Jan);
          end;
        end;
         end;

 //zi
353..356:begin
        ShapeKan.Pen.Color:=ColorVan;
        ShapeKan.Pen.Width:=3;
        ShapeLi.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_Jan, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        3:begin
            Zapolnenie_216 (3, 7, 7, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 7, 9, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_In, ij_In);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        6:begin
            Zapolnenie_216 (6, 1, 2, ij_In, ij_Jan);
            Comments:='В данном раскладе лучше не использовать Замещающую схему, так как она аналогична схеме Основного направления.';
          end;
        7:begin
            Zapolnenie_216 (7, 2, 2, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 2, 6, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 6, 5, ij_Jan, ij_In);
          end;
        end;
      end;

 357..360:begin
           ShapeKan.Pen.Color:=ColorVan;
           ShapeKan.Pen.Width:=3;
           ShapeLi.Pen.Width:=3;
        case cicl of
        1:begin
            Zapolnenie_216 (1, 5, 6, ij_In, ij_Jan);
          end;
        2:begin
            Zapolnenie_216 (2, 6, 7, ij_Jan, ij_In);
          end;
        3:begin
            Zapolnenie_216 (3, 7, 8, ij_In, ij_Jan);
          end;
        4:begin
            Zapolnenie_216 (4, 8, 9, ij_Jan, ij_In);
          end;
        5:begin
            Zapolnenie_216 (5, 9, 1, ij_In, ij_Jan);
          end;
        6:begin
            Zapolnenie_216 (6, 1, 2, ij_In, ij_Jan);
          end;
        7:begin
            Zapolnenie_216 (7, 2, 3, ij_Jan, ij_In);
          end;
        8:begin
            Zapolnenie_216 (8, 3, 4, ij_In, ij_Jan);
          end;
        9:begin
            Zapolnenie_216 (9, 4, 5, ij_Jan, ij_In);
          end;
        end;
         end;

 end;
end;

procedure TFormFh.Zapolnenie_216 (Cicl, Gora, Napr:shortint; Gora_ij, Napr_ij:TInJan);
begin
case Cicl of
1: begin
    LabelCentr20.Caption:='1';
    LabelQian20.Caption:='2';
    LabelDui20.Caption:='3';
    LabelGen20.Caption:='4';
    LabelLi20.Caption:='5';
    LabelKan20.Caption:='6';
    LabelKun20.Caption:='7';
    LabelZhen20.Caption:='8';
    LabelXun20.Caption:='9';
   end;
2: begin
    LabelCentr20.Caption:='2';
    LabelQian20.Caption:='3';
    LabelDui20.Caption:='4';
    LabelGen20.Caption:='5';
    LabelLi20.Caption:='6';
    LabelKan20.Caption:='7';
    LabelKun20.Caption:='8';
    LabelZhen20.Caption:='9';
    LabelXun20.Caption:='1';
   end;
3: begin
    LabelCentr20.Caption:='3';
    LabelQian20.Caption:='4';
    LabelDui20.Caption:='5';
    LabelGen20.Caption:='6';
    LabelLi20.Caption:='7';
    LabelKan20.Caption:='8';
    LabelKun20.Caption:='9';
    LabelZhen20.Caption:='1';
    LabelXun20.Caption:='2';
   end;
4: begin
    LabelCentr20.Caption:='4';
    LabelQian20.Caption:='5';
    LabelDui20.Caption:='6';
    LabelGen20.Caption:='7';
    LabelLi20.Caption:='8';
    LabelKan20.Caption:='9';
    LabelKun20.Caption:='1';
    LabelZhen20.Caption:='2';
    LabelXun20.Caption:='3';
   end;
5: begin
    LabelCentr20.Caption:='5';
    LabelQian20.Caption:='6';
    LabelDui20.Caption:='7';
    LabelGen20.Caption:='8';
    LabelLi20.Caption:='9';
    LabelKan20.Caption:='1';
    LabelKun20.Caption:='2';
    LabelZhen20.Caption:='3';
    LabelXun20.Caption:='4';
   end;
6: begin
    LabelCentr20.Caption:='6';
    LabelQian20.Caption:='7';
    LabelDui20.Caption:='8';
    LabelGen20.Caption:='9';
    LabelLi20.Caption:='1';
    LabelKan20.Caption:='2';
    LabelKun20.Caption:='3';
    LabelZhen20.Caption:='4';
    LabelXun20.Caption:='5';
   end;
7: begin
    LabelCentr20.Caption:='7';
    LabelQian20.Caption:='8';
    LabelDui20.Caption:='9';
    LabelGen20.Caption:='1';
    LabelLi20.Caption:='2';
    LabelKan20.Caption:='3';
    LabelKun20.Caption:='4';
    LabelZhen20.Caption:='5';
    LabelXun20.Caption:='6';
   end;
8: begin
    LabelCentr20.Caption:='8';
    LabelQian20.Caption:='9';
    LabelDui20.Caption:='1';
    LabelGen20.Caption:='2';
    LabelLi20.Caption:='3';
    LabelKan20.Caption:='4';
    LabelKun20.Caption:='5';
    LabelZhen20.Caption:='6';
    LabelXun20.Caption:='7';
   end;
9: begin
    LabelCentr20.Caption:='9';
    LabelQian20.Caption:='1';
    LabelDui20.Caption:='2';
    LabelGen20.Caption:='3';
    LabelLi20.Caption:='4';
    LabelKan20.Caption:='5';
    LabelKun20.Caption:='6';
    LabelZhen20.Caption:='7';
    LabelXun20.Caption:='8';
   end;
end;

if Gora_ij=ij_Jan then
begin
case Gora of
1: begin
    LabelCentrG.Caption:='1';
    LabelQianG.Caption:='2';
    LabelDuiG.Caption:='3';
    LabelGenG.Caption:='4';
    LabelLiG.Caption:='5';
    LabelKanG.Caption:='6';
    LabelKunG.Caption:='7';
    LabelZhenG.Caption:='8';
    LabelXunG.Caption:='9';
   end;
2: begin
    LabelCentrG.Caption:='2';
    LabelQianG.Caption:='3';
    LabelDuiG.Caption:='4';
    LabelGenG.Caption:='5';
    LabelLiG.Caption:='6';
    LabelKanG.Caption:='7';
    LabelKunG.Caption:='8';
    LabelZhenG.Caption:='9';
    LabelXunG.Caption:='1';
   end;
3: begin
    LabelCentrG.Caption:='3';
    LabelQianG.Caption:='4';
    LabelDuiG.Caption:='5';
    LabelGenG.Caption:='6';
    LabelLiG.Caption:='7';
    LabelKanG.Caption:='8';
    LabelKunG.Caption:='9';
    LabelZhenG.Caption:='1';
    LabelXunG.Caption:='2';
   end;
4: begin
    LabelCentrG.Caption:='4';
    LabelQianG.Caption:='5';
    LabelDuiG.Caption:='6';
    LabelGenG.Caption:='7';
    LabelLiG.Caption:='8';
    LabelKanG.Caption:='9';
    LabelKunG.Caption:='1';
    LabelZhenG.Caption:='2';
    LabelXunG.Caption:='3';
   end;
5: begin
    LabelCentrG.Caption:='5';
    LabelQianG.Caption:='6';
    LabelDuiG.Caption:='7';
    LabelGenG.Caption:='8';
    LabelLiG.Caption:='9';
    LabelKanG.Caption:='1';
    LabelKunG.Caption:='2';
    LabelZhenG.Caption:='3';
    LabelXunG.Caption:='4';
   end;
6: begin
    LabelCentrG.Caption:='6';
    LabelQianG.Caption:='7';
    LabelDuiG.Caption:='8';
    LabelGenG.Caption:='9';
    LabelLiG.Caption:='1';
    LabelKanG.Caption:='2';
    LabelKunG.Caption:='3';
    LabelZhenG.Caption:='4';
    LabelXunG.Caption:='5';
   end;
7: begin
    LabelCentrG.Caption:='7';
    LabelQianG.Caption:='8';
    LabelDuiG.Caption:='9';
    LabelGenG.Caption:='1';
    LabelLiG.Caption:='2';
    LabelKanG.Caption:='3';
    LabelKunG.Caption:='4';
    LabelZhenG.Caption:='5';
    LabelXunG.Caption:='6';
   end;
8: begin
    LabelCentrG.Caption:='8';
    LabelQianG.Caption:='9';
    LabelDuiG.Caption:='1';
    LabelGenG.Caption:='2';
    LabelLiG.Caption:='3';
    LabelKanG.Caption:='4';
    LabelKunG.Caption:='5';
    LabelZhenG.Caption:='6';
    LabelXunG.Caption:='7';
   end;
9: begin
    LabelCentrG.Caption:='9';
    LabelQianG.Caption:='1';
    LabelDuiG.Caption:='2';
    LabelGenG.Caption:='3';
    LabelLiG.Caption:='4';
    LabelKanG.Caption:='5';
    LabelKunG.Caption:='6';
    LabelZhenG.Caption:='7';
    LabelXunG.Caption:='8';
   end;
end;
end
else
begin
case Gora of
1: begin
    LabelCentrG.Caption:='1';
    LabelQianG.Caption:='9';
    LabelDuiG.Caption:='8';
    LabelGenG.Caption:='7';
    LabelLiG.Caption:='6';
    LabelKanG.Caption:='5';
    LabelKunG.Caption:='4';
    LabelZhenG.Caption:='3';
    LabelXunG.Caption:='2';
   end;
2: begin
    LabelCentrG.Caption:='2';
    LabelQianG.Caption:='1';
    LabelDuiG.Caption:='9';
    LabelGenG.Caption:='8';
    LabelLiG.Caption:='7';
    LabelKanG.Caption:='6';
    LabelKunG.Caption:='5';
    LabelZhenG.Caption:='4';
    LabelXunG.Caption:='3';
   end;
3: begin
    LabelCentrG.Caption:='3';
    LabelQianG.Caption:='2';
    LabelDuiG.Caption:='1';
    LabelGenG.Caption:='9';
    LabelLiG.Caption:='8';
    LabelKanG.Caption:='7';
    LabelKunG.Caption:='6';
    LabelZhenG.Caption:='5';
    LabelXunG.Caption:='4';
   end;
4: begin
    LabelCentrG.Caption:='4';
    LabelQianG.Caption:='3';
    LabelDuiG.Caption:='2';
    LabelGenG.Caption:='1';
    LabelLiG.Caption:='9';
    LabelKanG.Caption:='8';
    LabelKunG.Caption:='7';
    LabelZhenG.Caption:='6';
    LabelXunG.Caption:='5';
   end;
5: begin
    LabelCentrG.Caption:='5';
    LabelQianG.Caption:='4';
    LabelDuiG.Caption:='3';
    LabelGenG.Caption:='2';
    LabelLiG.Caption:='1';
    LabelKanG.Caption:='9';
    LabelKunG.Caption:='8';
    LabelZhenG.Caption:='7';
    LabelXunG.Caption:='6';
   end;
6: begin
    LabelCentrG.Caption:='6';
    LabelQianG.Caption:='5';
    LabelDuiG.Caption:='4';
    LabelGenG.Caption:='3';
    LabelLiG.Caption:='2';
    LabelKanG.Caption:='1';
    LabelKunG.Caption:='9';
    LabelZhenG.Caption:='8';
    LabelXunG.Caption:='7';
   end;
7: begin
    LabelCentrG.Caption:='7';
    LabelQianG.Caption:='6';
    LabelDuiG.Caption:='5';
    LabelGenG.Caption:='4';
    LabelLiG.Caption:='3';
    LabelKanG.Caption:='2';
    LabelKunG.Caption:='1';
    LabelZhenG.Caption:='9';
    LabelXunG.Caption:='8';
   end;
8: begin
    LabelCentrG.Caption:='8';
    LabelQianG.Caption:='7';
    LabelDuiG.Caption:='6';
    LabelGenG.Caption:='5';
    LabelLiG.Caption:='4';
    LabelKanG.Caption:='3';
    LabelKunG.Caption:='2';
    LabelZhenG.Caption:='1';
    LabelXunG.Caption:='9';
   end;
9: begin
    LabelCentrG.Caption:='9';
    LabelQianG.Caption:='8';
    LabelDuiG.Caption:='7';
    LabelGenG.Caption:='6';
    LabelLiG.Caption:='5';
    LabelKanG.Caption:='4';
    LabelKunG.Caption:='3';
    LabelZhenG.Caption:='2';
    LabelXunG.Caption:='1';
   end;
end;
end;


if Napr_ij=ij_Jan then
begin
case Napr of
1: begin
    LabelCentrN.Caption:='1';
    LabelQianN.Caption:='2';
    LabelDuiN.Caption:='3';
    LabelGenN.Caption:='4';
    LabelLiN.Caption:='5';
    LabelKanN.Caption:='6';
    LabelKunN.Caption:='7';
    LabelZhenN.Caption:='8';
    LabelXunN.Caption:='9';
   end;
2: begin
    LabelCentrN.Caption:='2';
    LabelQianN.Caption:='3';
    LabelDuiN.Caption:='4';
    LabelGenN.Caption:='5';
    LabelLiN.Caption:='6';
    LabelKanN.Caption:='7';
    LabelKunN.Caption:='8';
    LabelZhenN.Caption:='9';
    LabelXunN.Caption:='1';
   end;
3: begin
    LabelCentrN.Caption:='3';
    LabelQianN.Caption:='4';
    LabelDuiN.Caption:='5';
    LabelGenN.Caption:='6';
    LabelLiN.Caption:='7';
    LabelKanN.Caption:='8';
    LabelKunN.Caption:='9';
    LabelZhenN.Caption:='1';
    LabelXunN.Caption:='2';
   end;
4: begin
    LabelCentrN.Caption:='4';
    LabelQianN.Caption:='5';
    LabelDuiN.Caption:='6';
    LabelGenN.Caption:='7';
    LabelLiN.Caption:='8';
    LabelKanN.Caption:='9';
    LabelKunN.Caption:='1';
    LabelZhenN.Caption:='2';
    LabelXunN.Caption:='3';
   end;
5: begin
    LabelCentrN.Caption:='5';
    LabelQianN.Caption:='6';
    LabelDuiN.Caption:='7';
    LabelGenN.Caption:='8';
    LabelLiN.Caption:='9';
    LabelKanN.Caption:='1';
    LabelKunN.Caption:='2';
    LabelZhenN.Caption:='3';
    LabelXunN.Caption:='4';
   end;
6: begin
    LabelCentrN.Caption:='6';
    LabelQianN.Caption:='7';
    LabelDuiN.Caption:='8';
    LabelGenN.Caption:='9';
    LabelLiN.Caption:='1';
    LabelKanN.Caption:='2';
    LabelKunN.Caption:='3';
    LabelZhenN.Caption:='4';
    LabelXunN.Caption:='5';
   end;
7: begin
    LabelCentrN.Caption:='7';
    LabelQianN.Caption:='8';
    LabelDuiN.Caption:='9';
    LabelGenN.Caption:='1';
    LabelLiN.Caption:='2';
    LabelKanN.Caption:='3';
    LabelKunN.Caption:='4';
    LabelZhenN.Caption:='5';
    LabelXunN.Caption:='6';
   end;
8: begin
    LabelCentrN.Caption:='8';
    LabelQianN.Caption:='9';
    LabelDuiN.Caption:='1';
    LabelGenN.Caption:='2';
    LabelLiN.Caption:='3';
    LabelKanN.Caption:='4';
    LabelKunN.Caption:='5';
    LabelZhenN.Caption:='6';
    LabelXunN.Caption:='7';
   end;
9: begin
    LabelCentrN.Caption:='9';
    LabelQianN.Caption:='1';
    LabelDuiN.Caption:='2';
    LabelGenN.Caption:='3';
    LabelLiN.Caption:='4';
    LabelKanN.Caption:='5';
    LabelKunN.Caption:='6';
    LabelZhenN.Caption:='7';
    LabelXunN.Caption:='8';
   end;
end;
end
else
begin
case Napr of
1: begin
    LabelCentrN.Caption:='1';
    LabelQianN.Caption:='9';
    LabelDuiN.Caption:='8';
    LabelGenN.Caption:='7';
    LabelLiN.Caption:='6';
    LabelKanN.Caption:='5';
    LabelKunN.Caption:='4';
    LabelZhenN.Caption:='3';
    LabelXunN.Caption:='2';
   end;
2: begin
    LabelCentrN.Caption:='2';
    LabelQianN.Caption:='1';
    LabelDuiN.Caption:='9';
    LabelGenN.Caption:='8';
    LabelLiN.Caption:='7';
    LabelKanN.Caption:='6';
    LabelKunN.Caption:='5';
    LabelZhenN.Caption:='4';
    LabelXunN.Caption:='3';
   end;
3: begin
    LabelCentrN.Caption:='3';
    LabelQianN.Caption:='2';
    LabelDuiN.Caption:='1';
    LabelGenN.Caption:='9';
    LabelLiN.Caption:='8';
    LabelKanN.Caption:='7';
    LabelKunN.Caption:='6';
    LabelZhenN.Caption:='5';
    LabelXunN.Caption:='4';
   end;
4: begin
    LabelCentrN.Caption:='4';
    LabelQianN.Caption:='3';
    LabelDuiN.Caption:='2';
    LabelGenN.Caption:='1';
    LabelLiN.Caption:='9';
    LabelKanN.Caption:='8';
    LabelKunN.Caption:='7';
    LabelZhenN.Caption:='6';
    LabelXunN.Caption:='5';
   end;
5: begin
    LabelCentrN.Caption:='5';
    LabelQianN.Caption:='4';
    LabelDuiN.Caption:='3';
    LabelGenN.Caption:='2';
    LabelLiN.Caption:='1';
    LabelKanN.Caption:='9';
    LabelKunN.Caption:='8';
    LabelZhenN.Caption:='7';
    LabelXunN.Caption:='6';
   end;
6: begin
    LabelCentrN.Caption:='6';
    LabelQianN.Caption:='5';
    LabelDuiN.Caption:='4';
    LabelGenN.Caption:='3';
    LabelLiN.Caption:='2';
    LabelKanN.Caption:='1';
    LabelKunN.Caption:='9';
    LabelZhenN.Caption:='8';
    LabelXunN.Caption:='7';
   end;
7: begin
    LabelCentrN.Caption:='7';
    LabelQianN.Caption:='6';
    LabelDuiN.Caption:='5';
    LabelGenN.Caption:='4';
    LabelLiN.Caption:='3';
    LabelKanN.Caption:='2';
    LabelKunN.Caption:='1';
    LabelZhenN.Caption:='9';
    LabelXunN.Caption:='8';
   end;
8: begin
    LabelCentrN.Caption:='8';
    LabelQianN.Caption:='7';
    LabelDuiN.Caption:='6';
    LabelGenN.Caption:='5';
    LabelLiN.Caption:='4';
    LabelKanN.Caption:='3';
    LabelKunN.Caption:='2';
    LabelZhenN.Caption:='1';
    LabelXunN.Caption:='9';
   end;
9: begin
    LabelCentrN.Caption:='9';
    LabelQianN.Caption:='8';
    LabelDuiN.Caption:='7';
    LabelGenN.Caption:='6';
    LabelLiN.Caption:='5';
    LabelKanN.Caption:='4';
    LabelKunN.Caption:='3';
    LabelZhenN.Caption:='2';
    LabelXunN.Caption:='1';
   end;
end;
end;

end;

procedure TFormFh.EditAzClick(Sender: TObject);
begin
  EditAz.SelectAll;
end;

//--------------------------------------------------------

procedure TFormFh.EditAzChange(Sender: TObject);
var
azimut:integer;
begin
 try
   azimut:=StrToInt(EditAz.Text);
   if azimut<0 then EditAz.Text:='0';
   if azimut>360 then EditAz.Text:='360';
 except
   EditAz.Text:='0'
 end;

 EditAz.Font.Color:=ZameshenieColor(azimut);

 case azimut of
 0..7:begin
       ComboBoxEx1.ItemIndex:=1;
       ComboBoxEx2.ItemIndex:=13;
      end;
 8..22:begin
        ComboBoxEx1.ItemIndex:=2;
        ComboBoxEx2.ItemIndex:=14;
       end;
 23..37:begin
         ComboBoxEx1.ItemIndex:=3;
         ComboBoxEx2.ItemIndex:=15;
         end;
 38..52:begin
         ComboBoxEx1.ItemIndex:=4;
         ComboBoxEx2.ItemIndex:=16;
        end;
 53..67:begin
         ComboBoxEx1.ItemIndex:=5;
         ComboBoxEx2.ItemIndex:=17;
         end;
 68..82:begin
         ComboBoxEx1.ItemIndex:=6;
         ComboBoxEx2.ItemIndex:=18;
         end;
 83..97:begin
         ComboBoxEx1.ItemIndex:=7;
         ComboBoxEx2.ItemIndex:=19;
         end;
 98..112:begin
         ComboBoxEx1.ItemIndex:=8;
         ComboBoxEx2.ItemIndex:=20;
         end;
 113..127:begin
          ComboBoxEx1.ItemIndex:=9;
         ComboBoxEx2.ItemIndex:=21;
         end;
 128..142:begin
          ComboBoxEx1.ItemIndex:=10;
         ComboBoxEx2.ItemIndex:=22;
         end;
 143..157:begin
          ComboBoxEx1.ItemIndex:=11;
         ComboBoxEx2.ItemIndex:=23;
         end;
 158..172:begin
          ComboBoxEx1.ItemIndex:=12;
         ComboBoxEx2.ItemIndex:=0;
         end;
 173..187:begin
          ComboBoxEx1.ItemIndex:=13;
         ComboBoxEx2.ItemIndex:=1;
         end;
 188..202:begin
          ComboBoxEx1.ItemIndex:=14;
         ComboBoxEx2.ItemIndex:=2;
         end;
 203..217:begin
          ComboBoxEx1.ItemIndex:=15;
         ComboBoxEx2.ItemIndex:=3;
         end;
 218..232:begin
          ComboBoxEx1.ItemIndex:=16;
         ComboBoxEx2.ItemIndex:=4;
         end;
 233..247:begin
          ComboBoxEx1.ItemIndex:=17;
         ComboBoxEx2.ItemIndex:=5;
         end;
 248..262:begin
          ComboBoxEx1.ItemIndex:=18;
         ComboBoxEx2.ItemIndex:=6;
         end;
 263..277:begin
          ComboBoxEx1.ItemIndex:=19;
         ComboBoxEx2.ItemIndex:=7;
         end;
 278..292:begin
          ComboBoxEx1.ItemIndex:=20;
         ComboBoxEx2.ItemIndex:=8;
         end;
 293..307:begin
          ComboBoxEx1.ItemIndex:=21;
         ComboBoxEx2.ItemIndex:=9;
         end;
 308..322:begin
          ComboBoxEx1.ItemIndex:=22;
         ComboBoxEx2.ItemIndex:=10;
         end;
 323..337:begin
          ComboBoxEx1.ItemIndex:=23;
         ComboBoxEx2.ItemIndex:=11;
         end;
 338..352:begin
          ComboBoxEx1.ItemIndex:=0;
         ComboBoxEx2.ItemIndex:=12;
         end;
 353..360:begin
          ComboBoxEx1.ItemIndex:=1;
         ComboBoxEx2.ItemIndex:=13;
         end;
 end;

 FileChangeFH:=true;
end;

//--------------------------------------------------------

procedure TFormFh.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='Внутренний знак жилища';
  N6.Caption:='Файл';
  NOpen.Caption:='Открыть...';
  Save.Caption:='Сохранить';
  NSaveAs.Caption:='Сохранить как...';
  N8Close.Caption:='Закрыть окно';
  Print1.Caption:='Печатать схему...';

  Combes1.Caption:='Описание звезд';
  Co1.Caption:='Единица белая';
  N21.Caption:='Двойка черная';
  N31.Caption:='Тройка бирюзовая';
  N41.Caption:='Четверка зеленая';
  N51.Caption:='Пятерка желтая';
  N61.Caption:='Шестерка белая';
  N71.Caption:='Семерк алая';
  N81.Caption:='Восьмерка белая';
  N91.Caption:='Девятка пурпурная';
  Legenda.Caption:='Легенда для звездных фаз';
  Lopan1.Caption:='Лопань. Ориентация ГОРЫ.';

  N4.Caption:='Расчет';
  N14.Caption:='Внутренний знак';

  N1.Caption:='Открыть...';
  N2.Caption:='Сохранить';
  N3.Caption:='Сохранить как...';
  N7.Caption:='Внутренний знак';
  N10.Caption:='Закрыть окно';
  N12.Caption:='Интерпретировать';
  N13.Caption:='Интерпретировать';
  N16.Caption:='Ба чжай по Направлению';
  N17.Caption:='Ба чжай по Горе';

  Panel2.Caption:='Азимут:';
  Panel1.Caption:='Дата:';
  Panel4.Caption:='Гора:';
  Panel6.Caption:='Вода:';
  
  ToolButton8.Hint:='Открыть';
  ToolButton9.Hint:='Сохранить';
  ToolButton5.Hint:='Внутренний знак';
  //ToolButton2.Hint:='Ба чжай по Направлению';
  //ToolButton3.Hint:='Ба чжай по Горе';
  ToolButtonInter.Hint:='Интерпретировать';
  ToolButton6.Hint:='Лопань. Ориентация ГОРЫ.';

  ToolButtonKan.Hint:='Комментарий';
  ToolButtonGen.Hint:='Комментарий';
  ToolButtonZhen.Hint:='Комментарий';
  ToolButtonXun.Hint:='Комментарий';
  ToolButtonLi.Hint:='Комментарий';
  ToolButtonKun.Hint:='Комментарий';
  ToolButtonDui.Hint:='Комментарий';
  ToolButtonQian.Hint:='Комментарий';
  ToolButtonCenter.Hint:='Комментарий';

 ImageXunTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageLiTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageKunTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageDuiTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageQianTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageKanTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageGenTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageZhenTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageXunTaiSuiY.hint:='Летящий Тай Суй по году';
 ImageCenterTaiSuiY.hint:='Летящий Тай Суй по году';

 ImageXunTaiSuiM.hint:='Темное установление';
 ImageLiTaiSuiM.hint:='Темное установление';
 ImageKunTaiSuiM.hint:='Темное установление';
 ImageDuiTaiSuiM.hint:='Темное установление';
 ImageQianTaiSuiM.hint:='Темное установление';
 ImageKanTaiSuiM.hint:='Темное установление';
 ImageGenTaiSuiM.hint:='Темное установление';
 ImageZhenTaiSuiM.hint:='Темное установление';
 ImageXunTaiSuiM.hint:='Темное установление';
 ImageCenterTaiSuiM.hint:='Темное установление';

 ShapeShaW.hint:='Ша года на западе';
 ShapeShaN.hint:='Ша года на севере';
 ShapeShaS.hint:='Ша года на юге';
 ShapeShaE.hint:='Ша года на востоке';


 ShapeShaW_m.hint:='Ша сезона на западе';
 ShapeShaN_m.hint:='Ша сезона на севере';
 ShapeShaS_m.hint:='Ша сезона на юге';
 ShapeShaE_m.hint:='Ша сезона на востоке';


 ShapeChen.hint:='Чэнь';
 ShapeSi.hint:='Сы';
 ShapeWu.hint:='У';
 ShapeWei.hint:='Вэй';
 ShapeShen.hint:='Шэнь';
 ShapeYou.hint:='Ю';
 ShapeXu.hint:='Сюнь';
 ShapeHai.hint:='Хай';
 ShapeZi.hint:='Цзы';
 ShapeChou.hint:='Чоу';
 ShapeYin.hint:='Инь';
 ShapeMao.hint:='Мао';


  LabelMen_1.Caption:='Основные врата:';
  LabelMen_2.Caption:='Дополнительные врата:';

  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('FH','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('FH','Top',FormMainFSH.Height-FormMainFSH.ClientHeight+50);
   Visible:=MyRegIniFile.ReadBool('FH','Visible',false);
  MyRegIniFile.Free;

 if  (ExtractFileExt(ParamStr(1))='.fst') or (ExtractFileExt(ParamStr(1))='.FST')
       or (ExtractFileExt(ParamStr(1))='.Fst') then
       begin
        FormFh.Show;
        OpenFileTwo(ParamStr(1));
       end;


end;

//--------------------------------------------------------

procedure TFormFh.GoFh (style:TDrawStyle);
var
BStars:boolean;
begin
   MyFHDirect:=StrToInt(FormFh.EditAz.Text);

  StatusBarFh.caption:=
  'Азимут: '+EditAz.Text+' | Дата строительства или переезда: '+FormatDateTime('ddddd',FhDate.DateTime)+
  ' | Расчет на: '+FormatDateTime('ddddd',CalendarTime);

end;

//--------------------------------------------------------

procedure TFormFh.ToolButton5Click(Sender: TObject);
begin
 Raschet
end;

//--------------------------------------------------------

procedure TFormFh.ToolButton7Click(Sender: TObject);
begin
 GoFh (ds_Sin);
 N12.Enabled:=true;
 N13.Enabled:=true;
 ToolButtonInter.Enabled:=true;
end;

//--------------------------------------------------------

procedure TFormFh.ComboBoxEx1Change(Sender: TObject);
var
index:shortint;
begin
  case ComboBoxEx1.ItemIndex of
  0:EditAz.Text:='345';
  1:EditAz.Text:='0';
  2:EditAz.Text:='15';
  3:EditAz.Text:='30';
  4:EditAz.Text:='45';
  5:EditAz.Text:='60';
  6:EditAz.Text:='75';
  7:EditAz.Text:='90';
  8:EditAz.Text:='105';
  9:EditAz.Text:='120';
  10:EditAz.Text:='135';
  11:EditAz.Text:='150';
  12:EditAz.Text:='165';
  13:EditAz.Text:='180';
  14:EditAz.Text:='195';
  15:EditAz.Text:='210';
  16:EditAz.Text:='225';
  17:EditAz.Text:='240';
  18:EditAz.Text:='255';
  19:EditAz.Text:='270';
  20:EditAz.Text:='285';
  21:EditAz.Text:='300';
  22:EditAz.Text:='315';
  23:EditAz.Text:='330';
  end;
  {index:=ComboBoxEx1.ItemIndex+12;
  if index>23 then index:=index-24;
  ComboBoxEx2.ItemIndex:=index; }

  FileChangeFH:=true;
end;

//--------------------------------------------------------

procedure TFormFh.ToolButtonInterClick(Sender: TObject);
begin
ControlForm:=true;
TFormFHInter.Create(self);
end;

//--------------------------------------------------------



//--------------------------------------------------------

procedure TFormFh.N8CloseClick(Sender: TObject);
begin
close
end;

//--------------------------------------------------------

procedure TFormFh.SaveAsFile;
var
MyFile: TIniFile;
begin
  begin
   SaveDialogTable.FileName:=Caption;
         if SaveDialogTable.Execute then
             begin
               MyFile:=TIniFile.Create(SaveDialogTable.FileName);
                SaveFile (MyFile);
               MyFile.Free;
               WorkFileFH:=SaveDialogTable.FileName;
             end;
   end;
end;

//--------------------------------------------------------

procedure TFormFh.SaveFile(MyFile: TIniFile);
begin
       MyFile.WriteString('TITLE', 'Title', 'fst');
       MyFile.WriteString('Fild1', 'Date', FloatToStr(FhDate.DateTime));
       MyFile.WriteString('Fild1', 'Azimut', IntToStr(UpDown1.Position));

       FileOpenFH:=true;
       FileChangeFH:=false;
       Caption:=ExtractFileName(MyFile.FileName);
end;

//--------------------------------------------------------

procedure TFormFh.OpenFile;
begin
if OpenDialogTable.Execute then
   OpenFileTwo(OpenDialogTable.FileName);
end;

//--------------------------------------------------------

procedure TFormFh.OpenFileTwo(MyFileName:string);
var
MyFile:TIniFile;
begin
 MyFile:=TIniFile.Create(MyFileName);
 UpDown1.Position:=0;
 FhDate.DateTime:=StrToFloat(MyFile.ReadString('Fild1', 'Date', FloatToStr(Now)));
 UpDown1.Position:=StrToInt(MyFile.ReadString('Fild1', 'Azimut',IntToStr(FormPref.UpDown1.Position)));


 FileOpenFH:=true;
 FileChangeFH:=false;
 Caption:=ExtractFileName(MyFile.FileName);
 WorkFileFH:=MyFileName;
 MyFile.Free;
 Raschet;
end;

//--------------------------------------------------------

procedure  TFormFh.Raschet;
var
LopanDirect:integer;
begin
  FH_JungV:=JungV;
  FH_YearStarV:=YearStarV;
  FH_MoonStarV:=MoonStarV;        
  FH_DayStarV:=DayStarV;
  FH_Ymain2:=Ymain2;
  FH_Mmain2:=Mmain2;
  FH_D2:=D2;
  Gora:=ComboBoxEx2.ItemsEx[FormFH.comboBoxEx2.ItemIndex].Caption;
  Voda:=ComboBoxEx1.ItemsEx[FormFH.comboBoxEx1.ItemIndex].Caption;
  FH_Date:=FormatDateTime('dddddd',CalendarTime);

  GoFh (ds_Num);
  N12.Enabled:=true;
  N13.Enabled:=true;
  ToolButtonInter.Enabled:=true;

 UnColorRegt;

 TaiSui;
 Final_Zapolnenie_216 (StrToInt(EditAz.Text), Jung(CalcYear(FhDate.DateTime)));
 Stars_Zapolnenie;
 Wu_Sha;
 Men_Draw(StrToInt(EditAz.Text)); //помещать после Final_Zapolnenie_216
 Raszvet_Upadok (FH_JungV);

 FeiTaiSuiDrawY(FH_YearStarV, FH_Ymain2);
 FeiTaiSuiDrawM(FH_MoonStarV,FH_Ymain2);

 HintForStars;
 VisibleTrue;

 ShaY(FH_Ymain2);
 ShaM(FH_Mmain2);

 ClearImage(FormTable7.Image2);
 LopanDirect:=StrToInt(EditAz.Text)+90;
 if LopanDirect>360 then LopanDirect:=LopanDirect-360;
 DrawOnRoundSun (LopanDirect, FormTable7.Image2);

end;

//--------------------------------------------------------

procedure TFormFh.NOpenClick(Sender: TObject);
begin
if FileChangeFH then
  begin
   case MessageDlg('Сохранить изменения в файле ' + Caption+'?', mtWarning, mbYesNoCancel, 0) of
    mrYes:  begin
             SaveClick(Sender);
             OpenFile;
            end;
    mrNo:    OpenFile;
   end;
  end
  else OpenFile;
end;

//--------------------------------------------------------

procedure TFormFh.SaveClick(Sender: TObject);
var
  MyFile: TIniFile;
begin
 if FileOpenFH then
     begin
       MyFile:=TIniFile.Create(WorkFileFH);
         SaveFile (MyFile);
       MyFile.Free;
     end
     else
       begin
          SaveAsFile;
       end;
end;

//--------------------------------------------------------

procedure TFormFh.NSaveAsClick(Sender: TObject);
begin
 SaveAsFile;
end;

//--------------------------------------------------------

procedure TFormFh.FhDateChange(Sender: TObject);
begin
FileChangeFH:=true;
end;

//--------------------------------------------------------

procedure TFormFh.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if FileChangeFH then
begin
 case MessageDlg('Сохранить изменения в файле ' + Caption+'?', mtWarning, mbYesNoCancel, 0) of
  mrCancel:  CanClose:=False;
  mrYes:  begin
            SaveClick(Sender);
            if not(FileChangeFH) then CanClose:=true
            else CanClose:=false;
          end;
  end;
end;
end;

//--------------------------------------------------------

procedure TFormFh.FormShow(Sender: TObject);
begin
 //ComboBoxEx1.ItemIndex:=0;
 //ComboBoxEx2.ItemIndex:=12;
 EditAz.Text:='0';
 FhDate.DateTime:=now;

 ComboBoxEx1.ItemIndex:=1;
 ComboBoxEx2.ItemIndex:=13;
 StatusBarFH.Caption:='';
 FileChangeFH:=false;
 FileOpenFH:=false;

  ComboBoxEx1.ItemsEx[0].Caption:='Жэнь';
  ComboBoxEx1.ItemsEx[0].Caption:='Жэнь';
  ComboBoxEx1.ItemsEx[1].Caption:='Цзы';
  ComboBoxEx1.ItemsEx[2].Caption:='Гуй';
  ComboBoxEx1.ItemsEx[3].Caption:='Чоу';
  ComboBoxEx1.ItemsEx[4].Caption:='Гэнь';
  ComboBoxEx1.ItemsEx[5].Caption:='Инь';
  ComboBoxEx1.ItemsEx[6].Caption:='Цзя';
  ComboBoxEx1.ItemsEx[7].Caption:='Мао';
  ComboBoxEx1.ItemsEx[8].Caption:='И';
  ComboBoxEx1.ItemsEx[9].Caption:='Чэнь';
  ComboBoxEx1.ItemsEx[10].Caption:='Сюнь';
  ComboBoxEx1.ItemsEx[11].Caption:='Сы';
  ComboBoxEx1.ItemsEx[12].Caption:='Бин';
  ComboBoxEx1.ItemsEx[13].Caption:='У';
  ComboBoxEx1.ItemsEx[14].Caption:='Дин';
  ComboBoxEx1.ItemsEx[15].Caption:='Вэй';
  ComboBoxEx1.ItemsEx[16].Caption:='Кунь';
  ComboBoxEx1.ItemsEx[17].Caption:='Шэнь';
  ComboBoxEx1.ItemsEx[18].Caption:='Гэн';
  ComboBoxEx1.ItemsEx[19].Caption:='Ю';
  ComboBoxEx1.ItemsEx[20].Caption:='Синь';
  ComboBoxEx1.ItemsEx[21].Caption:='Сюй';
  ComboBoxEx1.ItemsEx[22].Caption:='Цянь';
  ComboBoxEx1.ItemsEx[23].Caption:='Хай';

  ComboBoxEx2.ItemsEx[0].Caption:='Жэнь';
  ComboBoxEx2.ItemsEx[0].Caption:='Жэнь';
  ComboBoxEx2.ItemsEx[1].Caption:='Цзы';
  ComboBoxEx2.ItemsEx[2].Caption:='Гуй';
  ComboBoxEx2.ItemsEx[3].Caption:='Чоу';
  ComboBoxEx2.ItemsEx[4].Caption:='Гэнь';
  ComboBoxEx2.ItemsEx[5].Caption:='Инь';
  ComboBoxEx2.ItemsEx[6].Caption:='Цзя';
  ComboBoxEx2.ItemsEx[7].Caption:='Мао';
  ComboBoxEx2.ItemsEx[8].Caption:='И';
  ComboBoxEx2.ItemsEx[9].Caption:='Чэнь';
  ComboBoxEx2.ItemsEx[10].Caption:='Сюнь';
  ComboBoxEx2.ItemsEx[11].Caption:='Сы';
  ComboBoxEx2.ItemsEx[12].Caption:='Бин';
  ComboBoxEx2.ItemsEx[13].Caption:='У';
  ComboBoxEx2.ItemsEx[14].Caption:='Дин';
  ComboBoxEx2.ItemsEx[15].Caption:='Вэй';
  ComboBoxEx2.ItemsEx[16].Caption:='Кунь';
  ComboBoxEx2.ItemsEx[17].Caption:='Шэнь';
  ComboBoxEx2.ItemsEx[18].Caption:='Гэн';
  ComboBoxEx2.ItemsEx[19].Caption:='Ю';
  ComboBoxEx2.ItemsEx[20].Caption:='Синь';
  ComboBoxEx2.ItemsEx[21].Caption:='Сюй';
  ComboBoxEx2.ItemsEx[22].Caption:='Цянь';
  ComboBoxEx2.ItemsEx[23].Caption:='Хай';
end;

procedure TFormFh.N16Click(Sender: TObject);
begin
FormBCShema.ComboBoxEx2.ItemIndex:=GoraToGua(ComboBoxEx1.ItemIndex);
FormBCShema.ComboBoxEx2Change(Sender);
FormBCShema.Show;
end;

procedure TFormFh.ToolButton14Click(Sender: TObject);
begin
FormPower.Show;
end;

procedure TFormFh.N15Click(Sender: TObject);
begin
FormTabPeop.Show;
end;

procedure TFormFh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FileOpenFH:=false;
 FileChangeFH:=false;
 FormFh.Caption:='Девять дворцов';
 N12.Enabled:=false;
 N13.Enabled:=false;
 ToolButtonInter.Enabled:=false;
 VisibleFalse;
 UnColorRegt;
end;

procedure TFormFh.N7Click(Sender: TObject);
begin
 Raschet
end;

procedure TFormFh.N14Click(Sender: TObject);
begin
Raschet
end;

procedure TFormFh.N12Click(Sender: TObject);
begin
ControlForm:=true;
TFormFHInter.Create(self);
end;

procedure TFormFh.N13Click(Sender: TObject);
begin
ControlForm:=true;
TFormFHInter.Create(self);
end;

procedure TFormFh.ToolButton2Click(Sender: TObject);
begin
FormBCShema.ComboBoxEx2.ItemIndex:=GoraToGua(ComboBoxEx1.ItemIndex);
FormBCShema.ComboBoxEx2Change(Sender);
FormBCShema.Show;
end;

procedure TFormFh.ToolButton3Click(Sender: TObject);
var
index:shortint;
begin
index:=ComboBoxEx1.ItemIndex;
index:=ComboBoxEx1.ItemIndex+12;
if index>23 then index:=index-24;
FormBCShema.ComboBoxEx2.ItemIndex:=GoraToGua(index);
FormBCShema.ComboBoxEx2Change(Sender);
FormBCShema.Show;
end;

procedure TFormFh.N17Click(Sender: TObject);
var
index:shortint;
begin
index:=ComboBoxEx1.ItemIndex;
index:=ComboBoxEx1.ItemIndex+12;
if index>23 then index:=index-24;
FormBCShema.ComboBoxEx2.ItemIndex:=GoraToGua(index);
FormBCShema.ComboBoxEx2Change(Sender);
FormBCShema.Show;
end;


function TFormFh.GoraToGua (index:shortint):shortint;
begin
case index of
0:result:=1;
1:result:=1;
2:result:=1;
3:result:=2;
4:result:=2;
5:result:=2;
6:result:=3;
7:result:=3;
8:result:=3;
9:result:=4;
10:result:=4;
11:result:=4;
12:result:=5;
13:result:=5;
14:result:=5;
15:result:=6;
16:result:=6;
17:result:=6;
18:result:=7;
19:result:=7;
20:result:=7;
21:result:=0;
22:result:=0;
23:result:=0;
end;
end;

procedure TFormFh.VisibleFalse;
begin
labelXunY.Visible:=false;
 labelLiY.Visible:=false;
 labelKunY.Visible:=false;
 labelDuiY.Visible:=false;
 labelQianY.Visible:=false;
 labelKanY.Visible:=false;
 labelGenY.Visible:=false;
 labelZhenY.Visible:=false;
 labelXunY.Visible:=false;
 labelCentrY.Visible:=false;

 labelXunM.Visible:=false;
 labelLiM.Visible:=false;
 labelKunM.Visible:=false;
 labelDuiM.Visible:=false;
 labelQianM.Visible:=false;
 labelKanM.Visible:=false;
 labelGenM.Visible:=false;
 labelZhenM.Visible:=false;
 labelXunM.Visible:=false;
 labelCentrM.Visible:=false;

 labelXunD.Visible:=false;
 labelLiD.Visible:=false;
 labelKunD.Visible:=false;
 labelDuiD.Visible:=false;
 labelQianD.Visible:=false;
 labelKanD.Visible:=false;
 labelGenD.Visible:=false;
 labelZhenD.Visible:=false;
 labelXunD.Visible:=false;
 labelCentrD.Visible:=false;

 LabelCentrG.Visible:=false;
 LabelCentrN.Visible:=false;
 LabelCentr20.Visible:=false;
 LabelLiG.Visible:=false;
 LabelLiN.Visible:=false;
 LabelLi20.Visible:=false;
 LabelKunG.Visible:=false;
 LabelKunN.Visible:=false;
 LabelKun20.Visible:=false;
 LabelDuiG.Visible:=false;
 LabelDuiN.Visible:=false;
 LabelDui20.Visible:=false;
 LabelQianG.Visible:=false;
 LabelQianN.Visible:=false;
 LabelQian20.Visible:=false;
 LabelKanG.Visible:=false;
 LabelKanN.Visible:=false; 
 LabelKan20.Visible:=false;
 LabelGenG.Visible:=false;
 LabelGenN.Visible:=false;
 LabelGen20.Visible:=false;
 LabelZhenG.Visible:=false;
 LabelZhenN.Visible:=false;
 LabelZhen20.Visible:=false;
 LabelXunG.Visible:=false;
 LabelXunN.Visible:=false;
 LabelXun20.Visible:=false;

 labelXunMen_1.Visible:=false;
 labelLiMen_1.Visible:=false;
 labelKunMen_1.Visible:=false;
 labelDuiMen_1.Visible:=false;
 labelQianMen_1.Visible:=false;
 labelKanMen_1.Visible:=false;
 labelGenMen_1.Visible:=false;
 labelZhenMen_1.Visible:=false;
 labelXunMen_1.Visible:=false;
 labelCentrMen_1.Visible:=false;

 labelXunMen_2.Visible:=false;
 labelLiMen_2.Visible:=false;
 labelKunMen_2.Visible:=false;
 labelDuiMen_2.Visible:=false;
 labelQianMen_2.Visible:=false;
 labelKanMen_2.Visible:=false;
 labelGenMen_2.Visible:=false;
 labelZhenMen_2.Visible:=false;
 labelXunMen_2.Visible:=false;
 labelCentrMen_2.Visible:=false;

 ShapeShaW.Visible:=false;
 ShapeShaN.Visible:=false;
 ShapeShaS.Visible:=false;
 ShapeShaE.Visible:=false;


 ShapeShaW_m.Visible:=false;
 ShapeShaN_m.Visible:=false;
 ShapeShaS_m.Visible:=false;
 ShapeShaE_m.Visible:=false;

 ImageXunTaiSuiY.Visible:=false;
 ImageLiTaiSuiY.Visible:=false;
 ImageKunTaiSuiY.Visible:=false;
 ImageDuiTaiSuiY.Visible:=false;
 ImageQianTaiSuiY.Visible:=false;
 ImageKanTaiSuiY.Visible:=false;
 ImageGenTaiSuiY.Visible:=false;
 ImageZhenTaiSuiY.Visible:=false;
 ImageXunTaiSuiY.Visible:=false;
 ImageCenterTaiSuiY.Visible:=false;

 ImageXunTaiSuiM.Visible:=false;
 ImageLiTaiSuiM.Visible:=false;
 ImageKunTaiSuiM.Visible:=false;
 ImageDuiTaiSuiM.Visible:=false;
 ImageQianTaiSuiM.Visible:=false;
 ImageKanTaiSuiM.Visible:=false;
 ImageGenTaiSuiM.Visible:=false;
 ImageZhenTaiSuiM.Visible:=false;
 ImageXunTaiSuiM.Visible:=false;
 ImageCenterTaiSuiM.Visible:=false;

 ShapeChen.Visible:=false;
 ShapeSi.Visible:=false;
 ShapeWu.Visible:=false;
 ShapeWei.Visible:=false;
 ShapeShen.Visible:=false;
 ShapeYou.Visible:=false;
 ShapeXu.Visible:=false;
 ShapeHai.Visible:=false;
 ShapeZi.Visible:=false;
 ShapeChou.Visible:=false;
 ShapeYin.Visible:=false;
 ShapeMao.Visible:=false;

 ToolBarXun.Visible:=false;
 ToolBarLi.Visible:=false;
 ToolBarKun.Visible:=false;
 ToolBarDui.Visible:=false;
 ToolBarQian.Visible:=false;
 ToolBarKan.Visible:=false;
 ToolBarGen.Visible:=false;
 ToolBarZhen.Visible:=false;
 ToolBarCenter.Visible:=false;

 ToolButtonXun.Visible:=false;
 ToolButtonLi.Visible:=false;
 ToolButtonKun.Visible:=false;
 ToolButtonDui.Visible:=false;
 ToolButtonQian.Visible:=false;
 ToolButtonKan.Visible:=false;
 ToolButtonGen.Visible:=false;
 ToolButtonZhen.Visible:=false;
 ToolButtonCenter.Visible:=false;
end;


procedure TFormFh.VisibleTrue;
begin
 labelXunY.Visible:=true;
 labelLiY.Visible:=true;
 labelKunY.Visible:=true;
 labelDuiY.Visible:=true;
 labelQianY.Visible:=true;
 labelKanY.Visible:=true;
 labelGenY.Visible:=true;
 labelZhenY.Visible:=true;
 labelXunY.Visible:=true;
 labelCentrY.Visible:=true;

 labelXunM.Visible:=true;
 labelLiM.Visible:=true;
 labelKunM.Visible:=true;
 labelDuiM.Visible:=true;
 labelQianM.Visible:=true;
 labelKanM.Visible:=true;
 labelGenM.Visible:=true;
 labelZhenM.Visible:=true;
 labelXunM.Visible:=true;
 labelCentrM.Visible:=true;

 labelXunD.Visible:=true;
 labelLiD.Visible:=true;
 labelKunD.Visible:=true;
 labelDuiD.Visible:=true;
 labelQianD.Visible:=true;
 labelKanD.Visible:=true;
 labelGenD.Visible:=true;
 labelZhenD.Visible:=true;
 labelXunD.Visible:=true;
 labelCentrD.Visible:=true;

 LabelCentrG.Visible:=true;
 LabelCentrN.Visible:=true;
 LabelCentr20.Visible:=true;
 LabelLiG.Visible:=true;
 LabelLiN.Visible:=true;
 LabelLi20.Visible:=true;
 LabelKunG.Visible:=true;
 LabelKunN.Visible:=true;
 LabelKun20.Visible:=true;
 LabelDuiG.Visible:=true;
 LabelDuiN.Visible:=true;
 LabelDui20.Visible:=true;
 LabelQianG.Visible:=true;
 LabelQianN.Visible:=true;
 LabelQian20.Visible:=true;
 LabelKanG.Visible:=true;
 LabelKanN.Visible:=true; 
 LabelKan20.Visible:=true;
 LabelGenG.Visible:=true;
 LabelGenN.Visible:=true;
 LabelGen20.Visible:=true;
 LabelZhenG.Visible:=true;
 LabelZhenN.Visible:=true;
 LabelZhen20.Visible:=true;
 LabelXunG.Visible:=true;
 LabelXunN.Visible:=true; 
 LabelXun20.Visible:=true;

 labelXunMen_1.Visible:=true;
 labelLiMen_1.Visible:=true;
 labelKunMen_1.Visible:=true;
 labelDuiMen_1.Visible:=true;
 labelQianMen_1.Visible:=true;
 labelKanMen_1.Visible:=true;
 labelGenMen_1.Visible:=true;
 labelZhenMen_1.Visible:=true;
 labelCentrMen_1.Visible:=true;


 labelXunMen_2.Visible:=true;
 labelLiMen_2.Visible:=true;
 labelKunMen_2.Visible:=true;
 labelDuiMen_2.Visible:=true;
 labelQianMen_2.Visible:=true;
 labelKanMen_2.Visible:=true;
 labelGenMen_2.Visible:=true;
 labelZhenMen_2.Visible:=true;
 labelCentrMen_2.Visible:=true;

 ToolBarXun.Visible:=true;
 ToolBarLi.Visible:=true;
 ToolBarKun.Visible:=true;
 ToolBarDui.Visible:=true;
 ToolBarQian.Visible:=true;
 ToolBarKan.Visible:=true;
 ToolBarGen.Visible:=true;
 ToolBarZhen.Visible:=true;
 ToolBarCenter.Visible:=true;

 ToolButtonXun.Visible:=true;
 ToolButtonLi.Visible:=true;
 ToolButtonKun.Visible:=true;
 ToolButtonDui.Visible:=true;
 ToolButtonQian.Visible:=true;
 ToolButtonKan.Visible:=true;
 ToolButtonGen.Visible:=true;
 ToolButtonZhen.Visible:=true;
 ToolButtonCenter.Visible:=true;

end;

procedure TFormFh.ComboBoxEx2Change(Sender: TObject);
var index: shortint;
begin
index:=ComboBoxEx2.ItemIndex+12;
if index>23 then index:=index-24;
ComboBoxEx1.ItemIndex:=index;
ComboBoxEx1Change(Sender);
end;

procedure TFormFh.Co1Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\1_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.N21Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\2_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.N31Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\3_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.N41Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\4_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.N51Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\5_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.N61Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\6_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.N71Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\7_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.N81Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\8_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.N91Click(Sender: TObject);
begin
 InfoIndex:='\other\combstars\9_0.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonCenterClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelCentrN.Caption+'_'+LabelCentrg.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonXunClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelXunN.Caption+'_'+LabelXunG.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonLiClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelLiN.Caption+'_'+LabelLiG.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonKunClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelKunN.Caption+'_'+LabelKunG.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonDuiClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelDuiN.Caption+'_'+LabelDuiG.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonQianClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelQianN.Caption+'_'+LabelQianG.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonGenClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelGenN.Caption+'_'+LabelGenG.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonZhenClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelZhenN.Caption+'_'+LabelZhenG.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.ToolButtonKanClick(Sender: TObject);
begin
 InfoIndex:='\other\combstars\'+LabelKanN.Caption+'_'+LabelKanG.Caption+'.rtf';
 TFormText.Create(self);
end;

procedure TFormFh.Print1Click(Sender: TObject);
begin
if PrintDialog1.Execute then
   FormFH.Print;
end;

procedure TFormFh.ToolButton6Click(Sender: TObject);
begin
FormTable7.Show;
end;

procedure TFormFh.LegendaClick(Sender: TObject);
begin
FormLegenda.Show;
end;

procedure TFormFh.Lopan1Click(Sender: TObject);
begin
FormTable7.Show;
end;

end.
