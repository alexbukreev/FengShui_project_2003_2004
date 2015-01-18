unit first;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFormFirst = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFirst: TFormFirst;

implementation

uses main;

{$R *.dfm}

procedure TFormFirst.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled:=false; // заблокировать дальнейшее применение таймера
if FormMainFSH.Visible then Close; // если главное окно уже видно, то закрыть окно-заставку
end;

procedure TFormFirst.FormCreate(Sender: TObject);
begin
Timer1Timer(Sender)
end;

end.
