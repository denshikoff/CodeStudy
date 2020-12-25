unit Ufactory;

interface
uses UCPUform,UVideoCardform, UMemoryForm, Udetail, Forms;
type
  Tdetail=(CPU, Video, Memory);
  TFactory = class
    function getDetail(tp:Tdetail):Tform;
  end;

implementation
function TFactory.getDetail(tp:Tdetail):Tform;
var detail:Tform;
begin
  case tp of
  CPU:detail := TCpuForm.Create(self);
  Video:detail := TVideoCardForm.Create(self);
  Memory:detail := TMemoryForm.Create(self);
  end;
  result := detail;
end;
end.
