unit UnitEN;

interface
uses SysUtils, Classes, UConverter;
 const slova_en_20: array[1..20]of string =  ( 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven',
            'twelve', 'thirteen ', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen' );
 const slova_en_desyatki: array[1..8]of string = ( 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety' );
 const hundreds:array[1..1] of string = ('hundred');
 type
  TconvecterEN=class(Tconverter)
public
  function TextToNumber(str:string):Integer;  override;
  function NumberTextTo(num:Integer):string;  override;
end;

implementation
  function helpNTS(str:string):Integer;
     var  j:Integer;
       begin
          Result := -1;
          for j:= 1 to 20 do
            if slova_en_20[j] = str
            then Result := j - 1;
          if Result=-1
          then
          for j:= 1 to 8 do
            if slova_en_desyatki[j] = str
            then Result := (j+1)*10;
          if Result=-1
          then
          for j:= 1 to 9 do
            if hundreds[j] = str
            then Result := j*100
       end;


  function TconvecterEN.NumberTextTo(num:Integer):string;
   var  i, Nmod, Ndiv:Integer;
   begin
     Result:='';
     Nmod:= num mod 100;
     Ndiv:= num div 100;
     if Ndiv>0
     then Result:=hundreds[1];
     if Nmod>=20
     then
        begin
            Ndiv:= Nmod div 10;
            Nmod:= Nmod mod 10;
            Result:=Result+' '+slova_en_desyatki[Ndiv-1];
            if Nmod>0
            then Result:=Result+' '+slova_en_20[Nmod+1]
        end
     else
     if num <> 100 then
        Result:=Result+' '+slova_en_20[Nmod+1];
     Result:=Trim(Result);
   end;

  function TconvecterEN.TextToNumber(str:string):Integer;
 var SL:TStringList; i:Integer; tmp:string;
   begin
     Result := 0;
     sl:=TStringList.Create;
     str:=LowerCase(str);
     ExtractStrings([' '],[' '], PAnsiChar(AnsiString(str)), SL);
     for i:=0 to sl.Count-1 do
       begin
       tmp:=SL[i];
       Result:=Result+helpNTS(tmp)
       end;

   end;


end.
