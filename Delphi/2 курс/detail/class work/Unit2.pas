unit Unit2;

interface
uses
  Uperson;

type
  TStudent = class(Tperson)
  private
    Fkurs, Fgroup, Fdirection: string;
  public
    constructor Create(FIO, Kurs, group, direction: string; age: integer; pol: Tpol);
    destructor Destroy; override;
    property kurs: string read Fkurs write Fkurs;
    property group: string read Fgroup write Fgroup;
    property direction: string read Fdirection write Fdirection;
  end;

implementation
constructor TStudent.Create(FIO, Kurs, group, direction: string; age: integer; pol: Tpol);
begin
  inherited Create(FIO, age, pol);
  FKurs := Kurs;
  Fgroup := group;
  Fdirection := direction
end;

destructor TStudent.Destroy;
begin
  inherited Destroy
end;

end.
 