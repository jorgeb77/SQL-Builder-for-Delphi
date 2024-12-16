program SQLBuilder;

uses
  Vcl.Forms,
  UFRBuilder in 'UFRBuilder.pas' {FRBuilder},
  Utileria in 'Librerias\Utileria.pas',
  SynTaskDialog in 'Librerias\SynTaskDialog.pas',
  ModoOscuroClaro in 'Librerias\ModoOscuroClaro.pas',
  SelectQueryBuilder in 'SelectQueryBuilder.pas',
  SQLAliasGenerator in 'SQLAliasGenerator.pas',
  UFRSelectQueryBuilder in 'UFRSelectQueryBuilder.pas' {FRSelectQueryBuilder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRBuilder, FRBuilder);
  Application.Run;
end.
