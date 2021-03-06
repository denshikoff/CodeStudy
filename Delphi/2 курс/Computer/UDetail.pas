unit UDetail;
{10. ����� ��������� ������������ �����. �� ���� ������ ���� ����������
��������� ��������. ���������� ����� ������ ���������, ������� �����
������������ ��������� ������ �������� �������� ������. �����������
�������� ���������� �������� � ������, �������� �������� �� ������, �����
�������� � ������ � ������. ������ ������.
������� ����������.

����� ������ ����������, �������� �� ������,
����� ����������������� ����� � ����� �����. ������ ������
�������, ��������, ������, ���������, ������� � �.�. ��� ���������,
������ �������� ������� ����������������. �� ������ �������
��������� ������, ��� ������ �� ������� �������� ���������� � ������
� ����. ���������� ���������� ������ �������� ������ ��� ������ �
��������� ���������������� �� ������������ �����.}
interface
  uses SysUtils;
  type
    Detail = class
      private
        id:integer;
        price:integer;
      public
        constructor Create(indenf:integer; pr:integer);
        destructor destroy; override;
        procedure setId(iden:integer);
        procedure setPrice(p:integer);
        function getId:integer;
        function getPrice:integer;
        function toString:String;virtual;
    end;

implementation
  constructor Detail.Create(indenf:integer; pr:integer);
  begin
    inherited Create;
    id := indenf;
    price := pr;
  end;

  destructor Detail.destroy;
  begin
    inherited destroy;
  end;

  function Detail.toString:String;
  begin
    result := result + 'id: '+ IntToStr(id) + ' price: '+ IntToStr(price);
  end;
  procedure Detail.setId(iden:integer);
  begin
    id := iden;
  end;

  procedure Detail.setPrice(p:integer);
  begin
    price := p;
  end;

  function Detail.getId:integer;
  begin
    result := id;
  end;

  function Detail.getPrice:integer;
  begin
    result := price;
  end;
end.

