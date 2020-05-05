unit AFD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAFDForm = class(TForm)
    VEdit: TEdit;
    VButton: TButton;
    procedure VButtonClick(Sender: TObject);
  private
    procedure q0(pos: integer; cadena: String);
    procedure q1(pos: integer; cadena: String);
  end;

var
  AFDForm: TAFDForm;
  Flag: Boolean;

implementation

{$R *.dfm}

procedure TAFDForm.VButtonClick(Sender: TObject);
begin
  Flag := False;
  q0(0, VEdit.Text);
  if Flag then VEdit.Color := $00ff00
  else VEdit.Color := $0000ff;
end;

procedure TAFDForm.q0(pos: integer; cadena: String);
begin
  if cadena.Chars[pos] = 'a' then
  begin
    pos := pos + 1;
    Flag := True;
    q1(pos, cadena);
  end;
end;

procedure TAFDForm.q1(pos: integer; cadena: String);
begin
  if cadena.Chars[pos] = 'b' then
    if cadena.Chars[pos+1] = ''
    then
      Flag := True
    else
    begin
      pos := pos + 1;
      Flag := False;
      q1(pos, cadena);
    end
  else if (cadena.Chars[pos] <> 'b') and (cadena.Chars[pos+1] <> '') then
    Flag := False;
end;

end.
