unit UCPU;

interface
  uses SysUtils, UDetail;
  type
   Tmark = (intel, amd);
   CPU = class(Detail)
    private
      rate:integer;
      Fmark:Tmark;
    public
      constructor Create(indef:integer; pr:integer; r:integer; m:Tmark);
      destructor Destroy; override;
      function getRate:integer;
      procedure setRate(r:integer);
      property mark:Tmark read Fmark write Fmark;
      function toString:string; override;
  end;
implementation
  constructor CPU.Create(indef:integer; pr:integer; r:integer; m:Tmark);
  begin
    inherited Create(indef,pr);
    rate := r;
    mark := m;
  end;

  destructor CPU.Destroy;
  begin
    inherited Destroy;
  end;

  function CPU.toString:String;
  begin
    result := '��������� ';
    Result := inherited toString;
    result := result +  ' �������: ' + IntToStr(rate) + ' ';
    if Fmark = intel then
      result := result + '�����: intel'
    else
      result := result + '�����: amd';
  end;

  //�������� �������
  function CPU.getRate:integer;
  begin
    result := rate;
  end;

  //���������� �������
  procedure CPU.setRate(R:integer);
  begin
    rate:=R;
  end;
end.
