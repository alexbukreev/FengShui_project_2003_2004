unit registr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry;

type
  TFormRegist = class(TForm)
    EditReg: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegist: TFormRegist;

implementation

uses main, about;

{$R *.dfm}

procedure TFormRegist.FormCreate(Sender: TObject);
begin
Caption:='Регистрация программы';
Label1.Caption:='Введите пожалуйста ключ, полученный Вами при регистрации:';
Label2.Caption:='Ключ не верен, проверьте правильность ввода ключа';
end;

procedure TFormRegist.FormClose(Sender: TObject; var Action: TCloseAction);
var
MyRegIniFile:TRegIniFile;
begin
  if //Новые ключи --------------
     (EditReg.Text='4000-444-095') or
     (EditReg.Text='4000-888-343') or
     (EditReg.Text='4000-678-155') or
     (EditReg.Text='4000-543-456') or
     (EditReg.Text='4000-895-098') or
     (EditReg.Text='4000-125-890') or
     (EditReg.Text='4000-975-345') or
     (EditReg.Text='4000-125-357') or
     (EditReg.Text='4000-888-811') or
     (EditReg.Text='4000-874-111') or
     (EditReg.Text='4000-154-555') or
     (EditReg.Text='4000-965-444') or
     (EditReg.Text='4000-215-369') or
     (EditReg.Text='4000-254-458') or
     (EditReg.Text='4000-254-784') or
     (EditReg.Text='4000-125-458') or
     (EditReg.Text='4000-125-222') or
     (EditReg.Text='4000-934-050') or
     (EditReg.Text='4000-145-215') or
     (EditReg.Text='4000-125-025') or
     (EditReg.Text='4000-758-345') or
     (EditReg.Text='4000-458-777') or
     (EditReg.Text='4000-125-120') or
      //--------------------------

     (EditReg.Text='4657-444-095') or
     (EditReg.Text='7854-888-343') or
     (EditReg.Text='5873-678-155') or
     (EditReg.Text='5874-543-456') or
     (EditReg.Text='1258-895-098') or
     (EditReg.Text='8457-125-890') or
     (EditReg.Text='9874-975-345') or
     (EditReg.Text='9999-125-357') or
     (EditReg.Text='2541-888-811') or
     (EditReg.Text='1578-874-111') or
     (EditReg.Text='4587-154-555') or
     (EditReg.Text='1547-965-444') or
     (EditReg.Text='5874-215-369') or
     (EditReg.Text='3521-254-458') or
     (EditReg.Text='9874-254-784') or
     (EditReg.Text='2545-125-458') or
     (EditReg.Text='0125-125-222') or
     (EditReg.Text='2015-934-050') or
     (EditReg.Text='7501-145-215') or
     (EditReg.Text='9850-125-025') or
     (EditReg.Text='1254-758-345') or
     (EditReg.Text='8795-458-777') or
     (EditReg.Text='4568-125-120') or
     (EditReg.Text='0000-658-125') or
     (EditReg.Text='0403-235-589') or //ключ для Irina Shumakova
     (EditReg.Text='1254-587-000') or //Служебный
     (EditReg.Text='3695-221-000') or //Служебный
     (EditReg.Text='1478-777-000') or //Служебный
     (EditReg.Text='3215-111-000') or //Служебный
     (EditReg.Text='9874-150-000')or    //Служебный

     (EditReg.Text='4582-456-254') or //Служебный
     (EditReg.Text='4587-263-888') or //Служебный
     (EditReg.Text='0111-111-369') or //Служебный
     (EditReg.Text='0025-569-785') or //Служебный
     (EditReg.Text='0125-594-036') or //Служебный
     (EditReg.Text='1896-036-751') or //Служебный
     (EditReg.Text='2200-584-263') or //Служебный
     (EditReg.Text='2589-999-369') or //Служебный
     (EditReg.Text='6958-999-356') or //Служебный
     (EditReg.Text='1010-222-598') or  //Служебный

     (EditReg.Text='3345-655-254') or //Служебный
     (EditReg.Text='6455-645-888') or //Служебный
     (EditReg.Text='4535-45665-369') or //Служебный
     (EditReg.Text='7656-569-785') or //Служебный
     (EditReg.Text='5675-594-036') or //Служебный
     (EditReg.Text='6666-036-751') or //Служебный
     (EditReg.Text='7655-584-263') or //Служебный
     (EditReg.Text='0988-999-369') or //Служебный
     (EditReg.Text='0989-999-356') or //Служебный
     (EditReg.Text='1000-222-598')or
     (EditReg.Text='Wei De Zhi')
     then
  begin
    MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
     MyRegIniFile.WriteString('Main','Serial3',EditReg.Text);
     FormAbout.SN.Caption:='SN-'+EditReg.Text;
    MyRegIniFile.Free;
  end else FormMainFSH.Close;
end;

procedure TFormRegist.Button1Click(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  if //Новые ключи --------------
     (EditReg.Text='4000-444-095') or
     (EditReg.Text='4000-888-343') or
     (EditReg.Text='4000-678-155') or
     (EditReg.Text='4000-543-456') or
     (EditReg.Text='4000-895-098') or
     (EditReg.Text='4000-125-890') or
     (EditReg.Text='4000-975-345') or
     (EditReg.Text='4000-125-357') or
     (EditReg.Text='4000-888-811') or
     (EditReg.Text='4000-874-111') or
     (EditReg.Text='4000-154-555') or
     (EditReg.Text='4000-965-444') or
     (EditReg.Text='4000-215-369') or
     (EditReg.Text='4000-254-458') or
     (EditReg.Text='4000-254-784') or
     (EditReg.Text='4000-125-458') or
     (EditReg.Text='4000-125-222') or
     (EditReg.Text='4000-934-050') or
     (EditReg.Text='4000-145-215') or
     (EditReg.Text='4000-125-025') or
     (EditReg.Text='4000-758-345') or
     (EditReg.Text='4000-458-777') or
     (EditReg.Text='4000-125-120') or
      //--------------------------

     (EditReg.Text='4657-444-095') or
     (EditReg.Text='7854-888-343') or
     (EditReg.Text='5873-678-155') or
     (EditReg.Text='5874-543-456') or
     (EditReg.Text='1258-895-098') or
     (EditReg.Text='8457-125-890') or
     (EditReg.Text='9874-975-345') or
     (EditReg.Text='9999-125-357') or
     (EditReg.Text='2541-888-811') or
     (EditReg.Text='1578-874-111') or
     (EditReg.Text='4587-154-555') or
     (EditReg.Text='1547-965-444') or
     (EditReg.Text='5874-215-369') or
     (EditReg.Text='3521-254-458') or
     (EditReg.Text='9874-254-784') or
     (EditReg.Text='2545-125-458') or
     (EditReg.Text='0125-125-222') or
     (EditReg.Text='2015-934-050') or
     (EditReg.Text='7501-145-215') or
     (EditReg.Text='9850-125-025') or
     (EditReg.Text='1254-758-345') or
     (EditReg.Text='8795-458-777') or
     (EditReg.Text='4568-125-120') or
     (EditReg.Text='0000-658-125')  or
     (EditReg.Text='0403-235-589') or //ключ для Irina Shumakova
     (EditReg.Text='1254-587-000') or //Служебный
     (EditReg.Text='3695-221-000') or //Служебный
     (EditReg.Text='1478-777-000') or //Служебный
     (EditReg.Text='3215-111-000') or //Служебный
     (EditReg.Text='9874-150-000') or    //Служебный

     (EditReg.Text='4582-456-254') or //Служебный
     (EditReg.Text='4587-263-888') or //Служебный
     (EditReg.Text='0111-111-369') or //Служебный
     (EditReg.Text='0025-569-785') or //Служебный
     (EditReg.Text='0125-594-036') or //Служебный
     (EditReg.Text='1896-036-751') or //Служебный
     (EditReg.Text='2200-584-263') or //Служебный
     (EditReg.Text='2589-999-369') or //Служебный
     (EditReg.Text='6958-999-356') or //Служебный
     (EditReg.Text='1010-222-598') or  //Служебный

     (EditReg.Text='3345-655-254') or //Служебный
     (EditReg.Text='6455-645-888') or //Служебный
     (EditReg.Text='4535-45665-369') or //Служебный
     (EditReg.Text='7656-569-785') or //Служебный
     (EditReg.Text='5675-594-036') or //Служебный
     (EditReg.Text='6666-036-751') or //Служебный
     (EditReg.Text='7655-584-263') or //Служебный
     (EditReg.Text='0988-999-369') or //Служебный
     (EditReg.Text='0989-999-356') or //Служебный
     (EditReg.Text='1000-222-598') or
     (EditReg.Text='Wei De Zhi')
     then
  begin
   close;
  end else
   Label2.Visible:=true;
end;

end.
