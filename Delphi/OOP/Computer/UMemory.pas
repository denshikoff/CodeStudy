unit UMemory;

interface
  uses SysUtils, UDetal;
  type
      SizeMemory = set of byte;
      Memory = class(Detail)
      private
        size:byte;
      public
        function getSize():byte;
        procedure setSize(n:byte);
    end;


implementation
  function Memory.getSize():byte;
  begin
   result := size;
  end;

  procedure Memory.setSize(n:byte);
  begin
    if n in [4,8,16,32,64] then
      size := n
    else
      Exception.Create('Size is false');
  end;

end.
