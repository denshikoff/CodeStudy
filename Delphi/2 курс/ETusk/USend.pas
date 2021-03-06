unit USend;

interface
uses SysUtils;
type
  TSend = class
    private
      FnameSend, FnameGet:String;
      Fdate:integer;
    public
      constructor create(Pnamesend, PnameGet:String; Pdate:integer);
      property nameSend:string read FnameSend write FnameSend;
      property nameGet:string read FnameGet write FnameGet;
      property date:integer read Fdate write Fdate;
      function toString:String; virtual;
  end;
implementation
  constructor TSend.create(Pnamesend, PnameGet:String; Pdate:integer);
  begin
    FnameSend := Pnamesend;
    FnameGet := PnameGet;
    Fdate := Pdate;
  end;

  function TSend.toString:String;
  begin
    result := result + '�����������: ' + FnameSend + ' ����������: ' + FnameGet + ' ����: ' + inttostr(Fdate);
  end;
end.
 