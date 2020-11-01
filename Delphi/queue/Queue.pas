unit Queue;

interface
  type Tinfo = string;
        PNode = ^Tnode;
        Tnode = record
                  inf:Tinfo;
                  next:PNode;
                end;

  TQueue = record
                  head:PNode;
                  tail:PNode
                end;

  procedure init(var queue:TQueue);
  function CreateNode(info: TInfo):PNode;
  procedure InQueue(var queue:TQueue; info:Tinfo);
  function IsEmpty(var queue:TQueue):boolean;
  function Dequeue(var queue:TQueue):Tinfo;
  procedure clear(var queue:TQueue);
implementation
  procedure init(var queue:TQueue);
  begin
    queue.head:= nil;
    queue.tail:=nil;
  end;

  //создание звена
	function CreateNode(info: TInfo):PNode;
	var
		node:PNode;
	begin
		new(node);
		node^.inf := info;
		node^.next := nil;
		result := node;
	end;

  procedure InQueue(var queue:TQueue; info:Tinfo);
  var tmp:PNode;
  begin
    tmp:=CreateNode(info);
    if queue.tail=nil then
      begin
        queue.head := tmp;
        queue.tail := tmp;
      end
    else
      begin
        queue.tail^.next := tmp;
        queue.tail:=tmp;
      end;
  end;

  function IsEmpty(var queue:TQueue):boolean;
  begin
    result := queue.head=nil;
  end;

  function Dequeue(var queue:TQueue):Tinfo;
  var tmp:PNode;
  begin

    result:=queue.head.inf;
    //перестановка головы  и удаление первого элемента
    tmp := queue.head;
    queue.head:= queue.head^.next;
    dispose(tmp);
    if queue.head = nil then
      queue.tail:= nil;
  end;

  procedure clear(var queue:TQueue);
  begin
    while not IsEmpty(queue)do
      Dequeue(queue);
  end;

end.
