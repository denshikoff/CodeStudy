unit UDatenStruktur;

interface
  uses SysUtils,
       LinkedList;
  type
    DatenStruktur = class
      private
        LinkedList:ListLinked;
      public
        procedure addDate(info:TInfo); virtual; abstract;
        procedure deleteDate(); virtual; abstract;
        procedure clearDate();
        function toString():boolean; virtual; abstract;
        procedure addToStringDate(str:String); virtual; abstract;
    end;

implementation
 procedure DatenStruktur.clearDate();
 begin

 end;
end.
 