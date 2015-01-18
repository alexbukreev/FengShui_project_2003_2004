unit EditDate;

interface
uses Windows, SysUtils, StdCtrls, Dialogs;




implementation
uses main, my_moon, GoroCircle;

procedure CheckFildEdit (day, year, hour, min, sec:TEdit; mon:TComboBox);
var
index, IndexYear:integer;
begin
 try
   if (Day.Text<>'') then index:=StrToInt(Day.Text);
 except
   Day.Text:=''
 end;
 if (Day.Text='00') then Day.Text:='';
//----------------
 try
   if Year.Text<>'' then
      begin
        if (StrToInt(Year.Text)>9998) then Year.Text:='9998';
           IndexYear:=StrToInt(Year.Text);
      end;
 except
   Year.Text:='';
 end;
 if (Year.Text='0000') or (Year.Text='0001') then Year.Text:='';
//----------------
 try
   case StrToInt(Hour.Text)of
     0..23:;
     else Hour.Text:='23';
   end;
 except
   Hour.Text:=''
 end;

 try
   case StrToInt(Min.Text)of
     0..59:;
     else Min.Text:='59';
   end;
 except
   Min.Text:=''
 end;

 try
   case StrToInt(Sec.Text)of
     0..59:;
     else Sec.Text:='59';
   end;
 except
   Sec.Text:=''
 end;


   case Mon.ItemIndex of
   3,5,8,10:if index>30 then Day.Text:='30';

   1:begin
        if (((IndexYear mod 4)<>0) or ((IndexYear mod 100)=0)) and
                 ((IndexYear mod 400)<>0) then
                 begin
                  if index>28 then Day.Text:='28';
                 end
                 else if index>29 then Day.Text:='29';
     end;
   else if index>31 then Day.Text:='31';
    end;
end;

//--------------------------------------------------------



//--------------------------------------------------------


//--------------------------------------------------------

end.
