unit FHCalc;

interface
uses Classes, calendar, SysUtils, MyType, FHInter;

function LabelDirectN (index: TDirect):shortint;
function LabelDirectG (index: TDirect):shortint;
function LabelDirect20 (index: TDirect):shortint;

implementation
uses DrawFH, FhUnit;


//--------------------------------------------------------
function LabelDirectN (index: TDirect):shortint;
begin
case index of
d_SE:begin result:=StrToInt(FormFh.LabelXunN.Caption) end;
d_S:begin result:=StrToInt(FormFh.LabelLiN.Caption)  end;
d_SW:begin result:=StrToInt(FormFh.LabelKunN.Caption) end;
d_E:begin result:=StrToInt(FormFh.LabelZhenN.Caption)  end;
d_NE:begin result:=StrToInt(FormFh.LabelGenN.Caption)  end;
d_W:begin result:=StrToInt(FormFh.LabelDuiN.Caption)  end;
d_N:begin result:=StrToInt(FormFh.LabelKanN.Caption) end;
d_NW:begin result:=StrToInt(FormFh.LabelQianN.Caption)  end;
end;
end;

function LabelDirectG (index: TDirect):shortint;
begin
case index of
d_SE:begin result:=StrToInt(FormFh.LabelXunG.Caption) end;
d_S:begin result:=StrToInt(FormFh.LabelLiG.Caption)  end;
d_SW:begin result:=StrToInt(FormFh.LabelKunG.Caption) end;
d_E:begin result:=StrToInt(FormFh.LabelZhenG.Caption)  end;
d_NE:begin result:=StrToInt(FormFh.LabelGenG.Caption)  end;
d_W:begin result:=StrToInt(FormFh.LabelDuiG.Caption)  end;
d_N:begin result:=StrToInt(FormFh.LabelKanG.Caption) end;
d_NW:begin result:=StrToInt(FormFh.LabelQianG.Caption)  end;
end;
end;  

function LabelDirect20 (index: TDirect):shortint;
begin
case index of
d_SE:begin result:=StrToInt(FormFh.LabelXun20.Caption) end;
d_S:begin result:=StrToInt(FormFh.LabelLi20.Caption)  end;
d_SW:begin result:=StrToInt(FormFh.LabelKun20.Caption) end;
d_E:begin result:=StrToInt(FormFh.LabelZhen20.Caption)  end;
d_NE:begin result:=StrToInt(FormFh.LabelGen20.Caption)  end;
d_W:begin result:=StrToInt(FormFh.LabelDui20.Caption)  end;
d_N:begin result:=StrToInt(FormFh.LabelKan20.Caption) end;
d_NW:begin result:=StrToInt(FormFh.LabelQian20.Caption)  end;
end;

end;


//--------------------------------------------------------



end.
