unit note;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Registry;

type
  TFormNote = class(TForm)
    RichEdit1: TRichEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ReadCalednar (StringLabel: string);
    procedure WriteCalednar (StringLabel: string);
    procedure FormShow(Sender: TObject);
    procedure RaschetNote;
    procedure RichEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNote: TFormNote;
  ATextFile: System.Text;
  NoteStrings:TStringList;

implementation
uses main;

{$R *.dfm}

procedure TFormNote.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('note','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('note','Top',((screen.Height-height) div 2));
   Height:=MyRegIniFile.ReadInteger('note','Height',222);
   Width:=MyRegIniFile.ReadInteger('note','Width',315);
   Visible:=MyRegIniFile.ReadBool('note','Visible',false);
  MyRegIniFile.Free;
end;

procedure TFormNote.ReadCalednar (StringLabel: string);
var text:string;
begin
  System.Assign(ATextFile,FilePlace+'\other\notes.txt');
  Reset(ATextFile);
  RichEdit1.Lines.Clear;
  //NoteStrings:=TStringList.Create;
  //NoteStrings.Clear;
  readln(ATextFile, text);
  while not eof(ATextFile)do
  begin
   if text=('¢Ü¨åç'+StringLabel+'¶¨òòö') then
    begin
     readln(ATextFile,text);
     while text<>'¢Ü¨åçend¶¨òòö' do
      begin
       //NoteStrings.Append(text);
       RichEdit1.Lines.Append(text);
       readln(ATextFile,text);
      end;
    end;
   readln(ATextFile,text);
  end;
  //NoteStrings.Free;
  System.Close(ATextFile);
end;

procedure TFormNote.WriteCalednar (StringLabel: string);
var text:string; i:integer;
begin
 //Memo2.Lines.LoadFromFile('notes.txt');
 NoteStrings:=TStringList.Create;
 NoteStrings.Clear;
 NoteStrings.LoadFromFile(FilePlace+'\other\notes.txt');
 i:=0;
 while i<NoteStrings.Count do
 begin
   if NoteStrings.Strings[i]=('¢Ü¨åç'+StringLabel+'¶¨òòö') then
   begin
     while NoteStrings.Strings[i]<>'¢Ü¨åçend¶¨òòö' do
       begin
         NoteStrings.delete(i)
       end;
     NoteStrings.delete(i);
     System.Assign(ATextFile,FilePlace+'\other\notes.txt');
     Rewrite(ATextFile);
     Writeln(ATextFile,NoteStrings.Text);
     System.Close(ATextFile);
    end;
   i:=i+1;
 end;
 if RichEdit1.Lines.Count <>0 then
 begin
 NoteStrings.delete(NoteStrings.Count-1);
 NoteStrings.Add('¢Ü¨åç'+StringLabel+'¶¨òòö');
 NoteStrings.AddStrings(RichEdit1.lines);
 NoteStrings.Add('¢Ü¨åçend¶¨òòö');

 System.Assign(ATextFile,FilePlace+'\other\notes.txt');
 Rewrite(ATextFile);
 Writeln(ATextFile,NoteStrings.Text);
 System.Close(ATextFile);
 end;
NoteStrings.Free;
end;

procedure TFormNote.FormShow(Sender: TObject);
begin
RaschetNote;
end;

procedure TFormNote.RaschetNote;
begin
Caption:=(FormatDateTime('ddddd',CalendarTime));
ReadCalednar(FormatDateTime('dddddd',CalendarTime));
end;

procedure TFormNote.RichEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
WriteCalednar(FormatDateTime('dddddd',CalendarTime));
end;

end.
