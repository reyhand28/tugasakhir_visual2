program Project10;

uses
  Forms,
  mainmenu in 'mainmenu.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
