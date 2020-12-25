unit ULetter;

interface
uses USend, SysUtils;
  type
    Tletter = class(TSend)
      private
        Finfo:String;
        Forder:boolean;
      public
        constructor create(Pnamesend, PnameGet:String; Pdate:integer; Pinfo:String; Porder:boolean);
        property info:String read Finfo write Finfo;
        property order:boolean read Forder write Forder;
        function toString:String; override;
    end;
implementation
 constructor Tletter.create(Pnamesend, PnameGet:String; Pdate:integer; Pinfo:String; Porder:boolean);
 begin
  inherited create(Pnamesend, PnameGet, Pdate);
  Finfo := Pinfo;
  Forder := Porder;
 end;

 function Tletter.toString:String;
 begin
  result := result + inherited toString;
  result := result + ' Текст: ' + Finfo;
  if Forder = true then
    result := result + ' Письмо заказное'
  else
    result := result + ' Письмо незаказное'
 end;
end.
 