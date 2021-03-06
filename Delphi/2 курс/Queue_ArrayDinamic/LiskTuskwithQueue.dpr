program LiskTuskwithQueue;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Queue in 'Queue.pas';

var q:TQueue;
    s:string;
    count:integer;

begin
   init_q(q);
   repeat
   writeln('Read number');
   writeln('1-add');
   writeln('2-get');
   Writeln('0-exit');
   readln(s);
   if trystrtoint(s, count)
   then
      case count  of
      1:
      begin
        writeln('Read string');
        readln(s);
        add_in_q(q,s);
      end;
      2:
      begin
       try
         s:=from_q(q);
         writeln(s);
       except
          on E : Exception do
          writeln(e.message);
       end;
      end;
      end;

   until(count=0);
   destroy(q);
end.
