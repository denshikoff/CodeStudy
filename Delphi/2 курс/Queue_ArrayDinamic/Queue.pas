unit Queue;

interface
uses SysUtils;

const default= 10; step=5;

type
  Tinfo=string;
  TQueue=record
    head, tail:Integer;
    ar_y:array of Tinfo;
    end;
procedure init_q(var Queue:TQueue);
procedure add_in_q(var Queue:TQueue; info:Tinfo);
function from_q(var Queue:TQueue):Tinfo;
function is_empty(var Queue:TQueue):Boolean ;
procedure clear(var Queue:TQueue);
procedure destroy (var queue:TQueue);

implementation
procedure init_q(var Queue:TQueue);
begin
  setlength(queue.ar_y, default);
  Queue.head:=-1;
  Queue.tail:=-1;
end;

procedure add_in_q(var Queue:TQueue; info:Tinfo);
begin
  with queue do
    begin
      if tail=(length(ar_y)-1)
      then SetLength(ar_y, Length(ar_y)+step);
      ar_y[tail+1]:=info;
      inc(tail);
      if head=-1
      then inc(head);
    end;

end;

function from_q(var queue:TQueue):Tinfo;
begin
  
  if is_empty(queue)
  then raise Exception.create('Queue is empty'); 
  with Queue do
    begin
      Result:=ar_y[head];
      inc(head);
    end;
  if is_empty(queue)
  then init_q(queue);
end;

function is_empty(var Queue:TQueue):Boolean ;
begin
  with Queue do
     Result:=((head=-1) or (head>tail));
end;  

procedure clear(var Queue:TQueue);
begin
  init_q(Queue);
end;

procedure destroy (var queue:TQueue);
begin
  SetLength(queue.ar_y,0);
end;  
end.
