unit legenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFormLegenda = class(TForm)
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Shape2: TShape;
    Shape5: TShape;
    Shape1: TShape;
    Shape4: TShape;
    Shape3: TShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLegenda: TFormLegenda;

implementation
uses FhUnit;
{$R *.dfm}

procedure TFormLegenda.FormCreate(Sender: TObject);
begin
FormLegenda.Caption:='Легенда фаз';

Label1.Caption:='Расцвет (Ван)';
Label2.Caption:='Порождение (Шэн)';
Label3.Caption:='Отступление (Туй)';
Label4.Caption:='Разрушение (Ша)';
Label5.Caption:='Смерть (Сы)';

Shape1.Brush.Color:=ColorVan;
Shape2.Brush.Color:=ColorShen;
Shape3.Brush.Color:=ColorN;
Shape4.Brush.Color:=ColorSha;
Shape5.Brush.Color:=ColorSi;
end;

end.
