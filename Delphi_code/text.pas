unit text;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Menus;

type
  TFormText = class(TForm)
    RichEdit1: TRichEdit;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel3: TPanel;
    SaveDialog1: TSaveDialog;
    N3: TMenuItem;
    Close1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormText: TFormText;

implementation

uses main;

{$R *.dfm}

procedure TFormText.FormCreate(Sender: TObject);
begin 
N1.Caption:='Файл';
N2.Caption:='Сохранить как...';
Close1.Caption:='Закрыть';

// Left:=(screen.Width-width)div 2;  //240;
// top:=(screen.Height-height) div 2;//220;
// if top<96 then top:=96;
 Left:=10;
 top:=106;
 top:=top+PositionInfo;
 left:=left+PositionInfo;
 PositionInfo:=PositionInfo+20;
 if top>screen.Height-height-50 then
  begin
   PositionInfo:=20;
   Left:=10;//(screen.Width-width)div 2;
   top:=106;//(screen.Height-height) div 2;
   //if top<96 then top:=96;
  end;
  Caption:='Инфо';
end;

//--------------------------------------------------------

procedure TFormText.FormShow(Sender: TObject);
begin
  RichEdit1.Lines.LoadFromFile(FilePlace+InfoIndex);
end;

//--------------------------------------------------------



//--------------------------------------------------------

procedure TFormText.N2Click(Sender: TObject);
begin
if SaveDialog1.Execute then
  RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TFormText.Close1Click(Sender: TObject);
begin
Close
end;

end.
