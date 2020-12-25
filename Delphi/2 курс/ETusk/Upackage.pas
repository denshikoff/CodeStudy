unit Upackage;

interface
uses USend, SysUtils;
type
  Tpackage = class(TSend)
    private
      Fweight:real;

    public
      constructor create(Pnamesend, PnameGet:String; Pdate:integer; Pweight:real);
      property weight:real read Fweight write Fweight;
      function toString:String; override;
  end;
implementation
  constructor Tpackage.create(Pnamesend, PnameGet:String; Pdate:integer; Pweight:real);
  begin
    inherited create(Pnamesend, PnameGet, Pdate);
    Fweight := Pweight;
  end;

  function Tpackage.toString:String;
  begin
    result := result + inherited toString;
    result := result + ' Вес: ' + inttostr(trunc(Fweight));
  end;
end.
