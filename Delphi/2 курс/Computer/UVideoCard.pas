unit UVideoCard;

interface
  Uses UDetail, UMemory,SysUtils;
  type
    VideoCard = class(Detail)
      private
        rate:integer;
        Fvolume:integer;
      public
        constructor Create(iden,pr,R,V:integer);
        destructor Destroy; override;
        function getRate:integer;
        procedure setRate(R:integer);
        property volume:integer read Fvolume write Fvolume;
        function toString:String; override;
    end;
implementation
  constructor VideoCard.Create(iden,pr,R,V:integer);
  begin
    inherited Create(iden,pr);
    rate := R;
    volume :=  V;
  end;

  destructor VideoCard.Destroy;
  begin
    inherited Destroy;
  end;

  function VideoCard.toString:String;
  begin
    result := '���������� ';
    result := inherited toString;
    result := result + ' �������: ' + IntToStr(rate) + ' ������: ' + IntToStr(Fvolume);
  end;
  //�������� �������
  function VideoCard.getRate:integer;
  begin
    result := rate;
  end;

  //���������� �������
  procedure VideoCard.setRate(R:integer);
  begin
    rate := R;
  end;
end.
