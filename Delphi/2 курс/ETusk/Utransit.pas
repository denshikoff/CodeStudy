unit Utransit;

interface
  uses USend, SysUtils;
  type
    Ttransfer = class(Tsend)
      private
        Fsum:integer;
      public
      constructor create(Pnamesend, PnameGet:String; Pdate:integer; Psum:integer);
      property sum:integer read Fsum write Fsum;
      function toString:String; override;
    end;
implementation
constructor Ttransfer.create(Pnamesend, PnameGet:String; Pdate:integer; Psum:integer);
  begin
    inherited create(Pnamesend, PnameGet, Pdate);
    Fsum := Psum;
  end;

function Ttransfer.toString:String;
  begin
    result := result + inherited toString;
    result := result + ' Ñóììà:' + inttostr(Fsum);
  end;
end.
