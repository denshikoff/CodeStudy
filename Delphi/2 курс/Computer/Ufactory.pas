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
  CPU:detail := TCpuForm.Create(detail);
  Video:detail := TVideoCardForm.Create(detail);
  Memory:detail := TMemoryForm.Create(detail);
  end;
  result := detail;
end;
end.
