unit mainmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, hubungan, kelas, ortu, poin, semester, siswa, user, walikelas;

type
  TForm9 = class(TForm)
    mm1: TMainMenu;
    DATASISWA1: TMenuItem;
    HUBUNGAN1: TMenuItem;
    KELAS1: TMenuItem;
    ORANGTUA1: TMenuItem;
    POIN1: TMenuItem;
    SEMESTER1: TMenuItem;
    SISWA1: TMenuItem;
    USER1: TMenuItem;
    WALIKELAS1: TMenuItem;
    KELUAR1: TMenuItem;
    procedure HUBUNGAN1Click(Sender: TObject);
    procedure KELAS1Click(Sender: TObject);
    procedure ORANGTUA1Click(Sender: TObject);
    procedure POIN1Click(Sender: TObject);
    procedure SEMESTER1Click(Sender: TObject);
    procedure SISWA1Click(Sender: TObject);
    procedure USER1Click(Sender: TObject);
    procedure WALIKELAS1Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.HUBUNGAN1Click(Sender: TObject);
begin
if Form1=nil then
Form1:=TForm1.Create(Application);
Form1.Show;
end;

procedure TForm9.KELAS1Click(Sender: TObject);
begin
if Form2=nil then
Form2:=TForm2.Create(Application);
Form2.Show;
end;

procedure TForm9.ORANGTUA1Click(Sender: TObject);
begin
if Form3=nil then
Form3:=TForm3.Create(Application);
Form3.Show;
end;

procedure TForm9.POIN1Click(Sender: TObject);
begin
if Form4=nil then
Form4:=TForm4.Create(Application);
Form4.Show;
end;

procedure TForm9.SEMESTER1Click(Sender: TObject);
begin
if Form5=nil then
Form5:=TForm5.Create(Application);
Form5.Show;
end;

procedure TForm9.SISWA1Click(Sender: TObject);
begin
if Form6=nil then
Form6:=TForm6.Create(Application);
Form6.Show;
end;

procedure TForm9.USER1Click(Sender: TObject);
begin
if Form7=nil then
Form7:=TForm7.Create(Application);
Form7.Show;
end;

procedure TForm9.WALIKELAS1Click(Sender: TObject);
begin
if Form8=nil then
Form8:=TForm8.Create(Application);
Form8.Show;
end;

procedure TForm9.KELUAR1Click(Sender: TObject);
begin
Close;
end;

end.
