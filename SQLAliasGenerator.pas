unit SQLAliasGenerator;

interface

uses
  System.SysUtils, System.Classes, Vcl.StdCtrls, System.RegularExpressions,
  System.Generics.Collections, AdvMemo;

type
  TSQLAliasProcessor = class
  private
    function ExtractTableAliases(const SQLText : string) : TDictionary<string, string>;
    function ProcessSQLWithAliases(const SQLText : string; TableAliases : TDictionary<string, string>) : string;
  public
    procedure ApplySQLAliases(Memo : TAdvMemo);
  end;

implementation

{ Extrae los alias de las tablas de la consulta SQL }
function TSQLAliasProcessor.ExtractTableAliases(const SQLText : string) : TDictionary<string, string>;
var
  TableAliases : TDictionary<string, string>;
  Lines        : TArray<string>;
  Line         : string;
  Match        : TMatch;
  Regex        : TRegEx;
begin
  TableAliases := TDictionary<string, string>.Create;

  // Patrones para encontrar alias de tablas en diferentes contextos
  Regex := TRegEx.Create(
    '(FROM|INNER JOIN|LEFT JOIN|RIGHT JOIN)\s+(\w+)\s+(\w+)',
    [roIgnoreCase]
  );

  // Dividir el texto en líneas y eliminar saltos de línea extra
  Lines := TRegEx.Split(SQLText, '\r?\n');

  for Line in Lines do
  begin
    Match := Regex.Match(Line);
    if Match.Success then
      begin
        // La tabla original es el segundo grupo, el alias es el tercero
        TableAliases.AddOrSetValue(Match.Groups[2].Value, Match.Groups[3].Value);
      end;
  end;

  Result := TableAliases;
end;

{ Procesa el SQL reemplazando nombres de tablas con sus alias }
function TSQLAliasProcessor.ProcessSQLWithAliases(const SQLText : string;
  TableAliases : TDictionary<string, string>) : string;
var
  ResultText : string;
  TableName, Alias : string;
begin
  ResultText := SQLText;

  // Reemplazar nombres de tablas en la cláusula SELECT
  for TableName in TableAliases.Keys do
  begin
    Alias := TableAliases[TableName];

    // Reemplazar en SELECT
    ResultText := TRegEx.Replace(
      ResultText, '\b' + TableName + '\.([\w_]+)\b',
      Alias + '.$1', [roIgnoreCase] );

    // Reemplazar en JOIN y condiciones
    ResultText := TRegEx.Replace(
      ResultText, '\b' + TableName + '\.([\w_]+)\b',
      Alias + '.$1', [roIgnoreCase] );
  end;

  Result := ResultText;
end;

{ Aplica los alias al Memo }
procedure TSQLAliasProcessor.ApplySQLAliases(Memo : TAdvMemo);
var
  TableAliases : TDictionary<string, string>;
  ProcessedSQL : string;
begin
  // Verificar que el Memo no sea nil
  if Memo = nil then
    Exit;

  // Extraer aliases de tablas
  TableAliases := ExtractTableAliases(Memo.Lines.Text);

  try
    // Procesar SQL con los aliases
    ProcessedSQL := ProcessSQLWithAliases(Memo.Lines.Text, TableAliases);

    // Actualizar el contenido del Memo
    Memo.Lines.Text := ProcessedSQL;
  finally
    TableAliases.Free;
  end;
end;

end.
