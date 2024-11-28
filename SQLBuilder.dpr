program SQLBuilder;

uses
  Vcl.Forms,
  UFRBuilder in 'UFRBuilder.pas' {FRBuilder},
  UFRQueryBuilder in 'UFRQueryBuilder.pas' {FRQueryBuilder},
  UFRNuevoJoin in 'UFRNuevoJoin.pas' {FRNuevoJoin},
  UFRListadoTablas in 'UFRListadoTablas.pas' {FRListadoTablas},
  Utileria in 'Librerias\Utileria.pas',
  SynTaskDialog in 'Librerias\SynTaskDialog.pas',
  ModoOscuroClaro in 'Librerias\ModoOscuroClaro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRBuilder, FRBuilder);
  Application.Run;
end.
