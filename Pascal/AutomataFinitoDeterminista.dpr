program AutomataFinitoDeterminista;

uses
  Vcl.Forms,
  AFD in 'AFD.pas' {AFDForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAFDForm, AFDForm);
  Application.Run;
end.
