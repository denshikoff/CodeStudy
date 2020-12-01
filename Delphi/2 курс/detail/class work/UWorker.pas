unit UWorker;

interface
uses
  SysUtils,
  Uperson;

type
  TWorker = class(Tperson)
  private
    Fexperience: integer;
    Fposition: string;
  public
    function toString: string; override;
    constructor Create(FIO, position: string; experience, age: integer;  pol: Tpol);
    destructor Destroy; override;
    property experience: integer read Fexperience write Fexperience;
    property position: string read Fposition write Fposition;
  end;

implementation
constructor TWorker.Create(FIO, position: string; experience, age: integer;  pol: Tpol);
begin
  inherited Create(FIO, age, pol);
  Fexperience := experience;
  Fposition := position
end;

destructor TWorker.Destroy;
begin
  inherited Destroy
end;

function TWorker.toString: string;
begin
  Result := inherited toString;
  Result := Result + ' experience: ' + IntToStr(Fexperience) + ' position: ' + FPosition
end;

end.
 