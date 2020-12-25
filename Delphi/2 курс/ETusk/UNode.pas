unit UNode;

interface
uses
  Usend;

type
  Tnode = class
  private
    Finfo: Tsend;
    Fnext: Tnode;
  public
    constructor Create(info: Tsend);
    destructor Destroy; override;
    property info: Tsend read Finfo;
    property next: Tnode read Fnext write Fnext;
  end;

implementation
constructor Tnode.Create(info: Tsend);
begin
  inherited Create;
  Finfo := info;
  Fnext := nil;
end;

destructor Tnode.Destroy;
begin
  inherited Destroy
end;

end.
