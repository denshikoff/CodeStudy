unit ULinkedList;

interface
uses SysUtils,UDetail;
type
    TInfo= Detail;

		PNode=^Tnode;

		Tnode = record
              info: TInfo;
              next: PNode;
		        end;

    TList = record
              head: PNode;
              count: integer;
            end;
  LinkedList = class
    private
      list:TList;
    public
      procedure Add(info:TInfo);  //���������� ��������
      function Contains(info:TInfo): boolean; //�������� �� ������� ��������
      procedure search(info:TInfo);    //����� � �������� ��������
      procedure Clear();    //�������� ������
      function ToString(): string; //�������� ������
      function Get(index:integer): TInfo;    //��������� ��������
      constructor create();
      destructor destroy(); override;
    end;
implementation

 constructor LinkedList.create();
 begin
  inherited create();
  list.head := nil;
 end;

 destructor LinkedList.Destroy;
 begin
  Clear();
  inherited destroy();
 end;

 function InfoToString(info: TInfo):string;
	begin
		result := '������ � ID � '+ IntToStr(info.getId) + ' ���� ' +
     IntToStr(info.getPrice) + ' ��� ������: ' + info.getType + #10+#13;
	end;

	//�������� �����
	function CreateNode(info: TInfo):PNode;
	var
		node:PNode;
	begin
		new(node);
		node^.info := info;
		node^.next := nil;
		result := node;
	end;

	//���������� ��������
	procedure LinkedList.Add(info:TInfo);
	var
		tmp, node: PNode; 
	begin
		node:= CreateNode(info);
		if list.head = nil then
      list.head := node
		else
			begin
				tmp := list.head;
				while tmp^.next <> nil do tmp := tmp^.next;
				tmp^.next := node;
			end;
		inc(list.count);
	end;

  //��������� ��������
  function LinkedList.Get(index: integer): TInfo;
  var
    tmp: PNode;
    i: integer;
  begin
    if index >= list.count then
      raise Exception.Create('Index out of range');
    tmp := list.head;
    for i := 1 to index do tmp := tmp^.next;
      result := tmp^.info;
  end;

	function LinkedList.Contains(info:TInfo): boolean;
	var
		tmp: PNode;
	begin
		result := false;
		tmp := list.head;
		while (not result) AND (tmp <> nil) do
		begin
			if tmp^.info = info
			then result := true
			else tmp := tmp^.next;
		end;
	end;

  function Delete(var tmp,previous:PNode; var list:TList):boolean;
  begin
   if tmp = list.head then
      list.head := tmp^.next
   else
      previous^.next := tmp^.next;

   dispose(tmp);
   dec(list.count);
   result := true;
  end;


	//����� � �������� ��������
	procedure LinkedList.search(info:TInfo);
	var
		previous, tmp: PNode;
		done: boolean;
	begin
		done:= false;
		tmp := list.head;
		previous := list.head;
		while (not done) AND (tmp <> nil) do
		begin
			if tmp^.info = info
			then
         done := Delete(tmp,previous,list)
			else
				begin
					previous := tmp;
					tmp := tmp^.next;
				end;	
		end;
	end;

  //������� ������
	procedure LinkedList.Clear();
	var
		tmp: PNode;
	begin
		while list.head <> nil do
		begin
			tmp := list.head;
			list.head := list.head^.next;
			dispose(tmp);
		end;
		list.count := 0;
	end;

  //������������� � ������
	function LinkedList.ToString(): string;
	var
		tmp: PNode;
	begin
    result := result + ' ';
		if list.head <> nil
		then
			begin
				tmp := list.head;
				result := result + InfoToString(tmp^.info);
				tmp := tmp^.next;
				while (tmp <> nil) do
				begin
					result := result + ' ' +  InfoToString(tmp^.info);
					tmp := tmp^.next;
				end;
			end;
	end;
end.
 