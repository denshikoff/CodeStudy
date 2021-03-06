unit UnitRus;

interface
uses SysUtils, Classes, UConverter;

const slovaRU1_20:array[1..20]of string=('����', '����', '���', '���', '������', '����', '�����', '����',
      '������', '������', '������', '�����������', '����������', '����������', '������������',
      '����������', '�����������', '����������', '������������', '������������');
      slovaRUdesatki:array[1..8]of string=( '��������', '��������', '�����', '���������',
       '����������', '���������', '�����������', '���������') ;
      slovaRUsotni:array[1..9]of string=('���', '������', '������', '���������', '�������',
      '��������', '�������', '���������', '���������');
type
  TconvecterRU=class(Tconverter)
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
            if slovaRu1_20[j] = str
            then Result := j - 1;
          if Result=-1
          then
          for j:= 1 to 8 do
            if slovaRudesatki[j] = str
            then Result := (j+1)*10;
          if Result=-1
          then
          for j:= 1 to 9 do
            if slovaRUsotni[j] = str
            then Result := j*100
       end;
       
   function TconvecterRU.NumberTextTo(num:Integer):string;
   var  i, Nmod, Ndiv:Integer;
   begin
     Result:='';
     Nmod:= num mod 100;
     Ndiv:= num div 100;
     if Ndiv>0
     then Result:=slovaRusotni[Ndiv];
     if Nmod>=20
     then
        begin
            Ndiv:= Nmod div 10;
            Nmod:= Nmod mod 10;
            Result:=Result+' '+slovaRudesatki[Ndiv-1];
            if Nmod>0
            then Result:=Result+' '+slovaRu1_20[Nmod+1]
        end
     else
     Result:=Result+' '+slovaRu1_20[Nmod+1];
     Result:=Trim(Result);
   end;  

   function TconvecterRU.TextToNumber(str:string):Integer;
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
