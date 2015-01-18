unit PrefPeop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TFormPrefPeop = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CheckBoxDolgota: TCheckBox;
    EditDolgota: TEdit;
    UpDownDolgota: TUpDown;
    BitBtn1: TBitBtn;
    ComboGMT: TComboBox;
    EditLetnee: TEdit;
    UpDown1: TUpDown;
    procedure EditDolgotaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrefPeop: TFormPrefPeop;

implementation
uses people;
{$R *.dfm}

procedure TFormPrefPeop.EditDolgotaChange(Sender: TObject);
begin
FileChangeP:=true;
end;

end.
