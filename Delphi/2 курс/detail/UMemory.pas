unit UMemory;

interface
  uses SysUtils, UDetail;
  type
      Memory = class(Detail)
      private
        size:integer;
        generation:String;
        function checkSize(n:integer):integer;
      public
        constructor Create(indenf,n:integer; gen:String);
        destructor Destroy; override;
        function getSize:integer;
        procedure setSize(n:integer);
        function getGeneration:String;
        procedure setGeneration(G:String);
    end;


implementation
  constructor Memory.Create(indenf,n:integer; gen:String);
  begin
    inherited Create(indenf);
    size := checkSize(n);
    generation := gen;
  end;

  destructor Memory.Destroy;
  begin
    inherited Destroy;
  end;

  //получить размер памяти
  function Memory.getSize:integer;
  begin
   result := size;
  end;

  //проверка на правильность размера
  function Memory.checkSize(n:integer):integer;
  begin
   if n in [4,8,16,32,64] then
      result := n
    else
      Exception.Create('Size is false');
  end;


  //установить размер
  procedure Memory.setSize(n:integer);
  begin
    size := checkSize(n);
  end;

  //получить тип
  function Memory.getGeneration:String;
  begin
    result := generation;
  end;

  //установить тип
  procedure Memory.setGeneration(G:String);
  begin
    generation:=G;
  end;

end.
