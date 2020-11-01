unit UStack;

interface
  uses SysUtils, UDatenStruktur, LinkedList;
  type
    Stack = class(DatenStruktur)
      public
        procedure AddDate(info:TInfo); override;
        procedure deleteDate(); override;
        function toString():boolean; override;
        procedure addToStringDate(str:String); override;
        constructor create();
        destructor destroy(); override;
  end;

implementation
  constructor Stack.create;
  begin
    inherited create();

  end;

  destructor Stack.destroy;
  begin

  end;
end.
