program Project2;

{$APPTYPE CONSOLE}

uses
  Forms,
  SysUtils,
  Uperson,
  Unit2,
  UWorker in 'UWorker.pas',
  Unit3 in 'Unit3.pas',
  Unit4 in 'Unit4.pas',
  UMainForm in 'UMainForm.pas' {MainForm},
  UWorkerForm in 'UWorkerForm.pas' {WorkerForm};

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TWorkerForm, WorkerForm);
  Application.Run;
//  Form.ShowModal;

  {list := Tlist.Create;
  student := Tstudent.Create('Vasya', '2', '10', 'PI', 20, female);
  worker := TWorker.Create('Dima', 'stud', 0, 20, female);
  list.Add(student);
  list.Add(worker);}

  {for a := 1 to list.count do
    begin
      person := list.Get(a - 1);

      if person is Tstudent then
        begin
          student := person as Tstudent;
          writeln(student.FIO)
        end
      else
        begin
          worker := person as Tworker;
          writeln(worker.FIO);
        end
    end;

  person := list.Get(0);}

  //readln
end.
