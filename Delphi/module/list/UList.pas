Unit ULIst;

interface
	type
		TInfo = integer;

		PNode = ^Tnode;

		Tnode = record
              info: TInfo;
              next: PNode;
		        end;

		TList = record
              head: PNode;
              count: integer;
            end;
	
	procedure Init(var list: TList);
	procedure Add(var list: TList; info:TInfo);  //���������� ��������
	function Contains(list: TList; info:TInfo): boolean; //�������� �� ������� ��������
	procedure search(var list: TList; info:TInfo);    //�������� ��������
	procedure Clear(var list: TList);    //�������� ������
	function ToString(list: TList): string; //�������� ������
  function Get(list: TList; index: integer): TInfo;    //���������� ��������

implementation

uses SysUtils;

	function InfoToString(info: TInfo):string;
	begin
		result := '"' + info + '"';
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

	//������������� ������
	procedure Init(var list: TList);
	begin
		list.head := nil;
		list.count := 0;
	end;

	//���������� ��������
	procedure Add(var list: TList; info:TInfo);
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

  //���������� ��������
  function Get(list: TList; index: integer): TInfo;
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

	function Contains(list: TList; info:TInfo): boolean;
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
	procedure search(var list: TList; info:TInfo);
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

	procedure Clear(var list: TList);
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
	
	function ToString(list: TList): string;
	var 
		tmp: PNode;
	begin
		result := '[';
		if list.head <> nil
		then
			begin
				tmp := list.head;
				result := result + InfoToString(tmp^.info);
				tmp := tmp^.next;
				while (tmp <> nil) do
				begin
					result := result + ',' + InfoToString(tmp^.info);
					tmp := tmp^.next;
				end;
			end;
		result := result + ']';
	end;

end.
