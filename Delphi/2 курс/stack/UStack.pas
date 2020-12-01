unit UStack;

interface
 const
  //Глубина стека. Т. е. максимальное количество элементов,
  //которое может поместиться в стек.
    NMax = 100;
 type
    Telem = char;
    Titem = array[1..NMax] of Telem;
    //Тип, описывающий стек.
    TStack = record
              info : array[1..NMax] of Char;
              top:integer;
             end;

  procedure stack_init(var s:TStack);
  function stack_is_empty(var s:TStack):boolean;
  function popStack(var s:TStack; var el:Telem):boolean;
  function pushStack(var s:TStack; el:Telem):boolean;
implementation

  procedure stack_init(var s:TStack);
  begin
    s.top := 0;
  end;

  function stack_is_empty(var s:Tstack):boolean;
  begin
    stack_is_empty := s.top = 0;
  end;

  //вынуть элемент
  function popStack(var s:TStack; var el:Telem):boolean;
  begin
    with s do
      if top >= 1 then
        begin
          el := info[top]; //вынимаем с верху элемент
          top := top - 1;   //уменьшаем стек
          popStack := true; //говорим что стек существует и все хорошо
        end
      else
        popStack := false;
  end;

  //вставить элемент
  function pushStack(var s:TStack; el:Telem):boolean;
  begin
    with s do
      if top >= NMax then
        pushStack := false
      else
        begin
          top := top + 1;
          info[top] := el;
          pushStack := true;
        end;
  end;

end.
