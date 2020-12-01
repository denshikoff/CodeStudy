unit UCPU;

interface
  uses SysUtils, UDetail;
  type
  CPU = class(Detail)
    private
      rate:real;
      mark:String;
    public
      constructor Create(indef:integer; r:real; m:String);
      destructor Destroy; override;
      function getRate:real;
      procedure setRate(r:real);
      function getMark:String;
      procedure setMark(M:String);
  end;
implementation

  constructor CPU.Create(indef:integer; r:real; m:String);
  begin
    inherited Create(indef);
    rate := r;
    mark := m;
  end;

  destructor CPU.Destroy;
  begin
    inherited Destroy;
  end;

  //получить частоту
  function CPU.getRate:real;
  begin
    result := rate;
  end;

  //установить частоту
  procedure CPU.setRate(R:real);
  begin
    rate:=R;
  end;

  //получить марку
  function CPU.getMark:String;
  begin
    result := mark;
  end;
  //установить марку
  procedure CPU.setMark(M:String);
  begin
    mark:=M;
  end;
end.
 