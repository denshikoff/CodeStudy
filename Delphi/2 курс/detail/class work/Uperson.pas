unit Uperson;

interface
uses
  SysUtils;

type
 tpol=(male,female);
 Tperson=class
 private
   FFIO:string;
   Fage:Integer;
   Fpol:Tpol;
 public
   constructor Create(fio:string; age:integer; pol:tpol); overload;
   constructor Create; overload;
   property FIO:string read FFIO write FFIO;
   property age:Integer read Fage write Fage;
   property pol:Tpol read Fpol write Fpol;
   destructor Destroy; override;
   function toString: string; virtual;
 end;

implementation
constructor TPerson.Create(FIO: string; age: integer; pol: Tpol);
begin
  inherited Create;
  FFIO := FIO;
  Fage := age;
  Fpol := pol
end;

constructor TPerson.Create;
begin
  inherited Create;
  FFIO := '';
  Fage := 0;
  Fpol := male
end;

destructor TPerson.Destroy;
begin
  inherited Destroy
end;

function TPerson.toString: string;
begin
  Result := 'FIO: ' + FFIO + ' Age: ' + IntToStr(Fage) + ' Gender: ' ;
  if Fpol = male then
    Result := Result + 'male'
  else
    Result := Result + 'female'
end;

end.

