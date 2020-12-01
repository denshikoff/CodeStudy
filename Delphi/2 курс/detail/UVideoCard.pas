unit UVideoCard;

interface
  Uses UDetail, UMemory,SysUtils;
  type
    VideoCard = class(Detail)
      private
        rate:real;
        volume:integer;
        function checkVolume(V:integer):integer;
      public
        constructor Create(R:real; V:integer);
        destructor Destroy; override;
        function getRate:real;
        procedure setRate(R:real);
        function getVolume:integer;
        procedure setVolume(V:integer);
    end;
implementation
  constructor VideoCard.Create(R:real; V:integer);
  begin
    rate := R;
    volume := checkVolume(V);
  end;

  destructor VideoCard.Destroy;
  begin
    inherited Destroy;
  end;

  //�������� �������
  function VideoCard.checkVolume(V:integer):integer;
  begin
    if V in [2, 4, 6, 8] then
      result := V
    else
      Exception.Create('Size is false');
  end;

  //�������� �������
  function VideoCard.getRate:real;
  begin
    result := rate;
  end;

  //���������� �������
  procedure VideoCard.setRate(R:real);
  begin
    rate := R;
  end;

  //�������� ������
  function VideoCard.getVolume:integer;
  begin
    result := volume;
  end;

  //���������� ������
  procedure VideoCard.setVolume(V:integer);
  begin
    volume := checkVolume(V);
  end;
end.
