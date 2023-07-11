program Project9;

uses
  Forms,
  walikelas in 'walikelas.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
