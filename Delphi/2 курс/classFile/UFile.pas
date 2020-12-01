unit UFile;

interface
  type
    Tfile = class
      private
      public
        procedure openFileRead; virtual; abstract;
        procedure openFileWrite; virtual; abstract;
    end;
implementation
end.
