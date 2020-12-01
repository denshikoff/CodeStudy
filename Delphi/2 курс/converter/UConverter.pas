unit UConverter;

interface
uses SysUtils, Classes;
type
  Tconverter =class
public
  function TextToNumber(str:string):Integer;  virtual; abstract;
  function NumberTextTo(num:Integer):string;  virtual; abstract;
end;
implementation


end.
