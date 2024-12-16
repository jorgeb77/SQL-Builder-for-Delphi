unit SelectQueryBuilder;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections;

type
  TJoinType = (jtInner, jtLeft, jtRight, jtFull, jtCross);

  TQueryBuilder = class
  private
    FSelect       : TStringList;
    FFrom         : TStringList;
    FWhere        : TStringList;
    FJoins        : TStringList;
    FOrderBy      : TStringList;
    FGroupBy      : TStringList;
    FCurrentTable : string; // Para almacenar la tabla actual
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddSelect(const Field : string);
    procedure AddFrom(const Table : string);
    procedure AddWhere(const Condition : string);
    procedure AddJoin(const Table : string; JoinType : TJoinType; const Condition : string);
    procedure AddOrderBy(const Field : string; Ascending : Boolean = True);
    procedure AddGroupBy(const Field : string);
    function BuildQuery : string;
    // Métodos públicos para acceder a los valores
    function GetSelectList : TStringList;
    function GetFromList : TStringList;
    function GetJoinsList : TStringList;
//    function GetWhereList : TStringList;
  end;

implementation

constructor TQueryBuilder.Create;
begin
  inherited Create;
  FSelect  := TStringList.Create;
  FFrom    := TStringList.Create;
  FWhere   := TStringList.Create;
  FJoins   := TStringList.Create;
  FOrderBy := TStringList.Create;
  FGroupBy := TStringList.Create;
end;

destructor TQueryBuilder.Destroy;
begin
  FSelect.Free;
  FFrom.Free;
  FWhere.Free;
  FJoins.Free;
  FOrderBy.Free;
  FGroupBy.Free;
  inherited Destroy;
end;

procedure TQueryBuilder.AddSelect(const Field : string);
begin
  if FCurrentTable <> '' then
    FSelect.Add(FCurrentTable + '.' + Field)
  else
    FSelect.Add(Field);
end;

procedure TQueryBuilder.AddFrom(const Table : string);
begin
  FFrom.Add(Table);
  FCurrentTable := Table; // Almacenar la tabla actual
end;

procedure TQueryBuilder.AddWhere(const Condition : string);
begin
  FWhere.Add(Condition);
end;

procedure TQueryBuilder.AddJoin(const Table : string; JoinType : TJoinType; const Condition : string);
var
  JoinStr : string;
begin
  case JoinType of
    jtInner : JoinStr := 'INNER JOIN';
    jtLeft  : JoinStr := 'LEFT JOIN';
    jtRight : JoinStr := 'RIGHT JOIN';
    jtFull  : JoinStr := 'FULL JOIN';
    jtCross : JoinStr := 'CROSS JOIN';
  else
    JoinStr := 'JOIN';
  end;
  FJoins.Add(JoinStr + ' ' + Table + ' ON ' + Condition);
  FCurrentTable := Table; // Actualizar la tabla actual
end;

procedure TQueryBuilder.AddOrderBy(const Field : string; Ascending : Boolean);
begin
  if Ascending then
    FOrderBy.Add(Field + ' ASC')
  else
    FOrderBy.Add(Field + ' DESC');
end;

procedure TQueryBuilder.AddGroupBy(const Field : string);
begin
  FGroupBy.Add(Field);
end;

function TQueryBuilder.BuildQuery : string;
var
  Query : string;
begin
  Query := 'SELECT ' + FSelect.CommaText;
  Query := Query + ' FROM ' + FFrom.CommaText;
  if FJoins.Count > 0 then
    Query := Query + ' ' + FJoins.Text;
  if FWhere.Count > 0 then
    Query := Query + ' WHERE ' + FWhere.CommaText;
  if FGroupBy.Count > 0 then
    Query := Query + ' GROUP BY ' + FGroupBy.CommaText;
  if FOrderBy.Count > 0 then
    Query := Query + ' ORDER BY ' + FOrderBy.CommaText;
  Result := Query;
end;

// Métodos públicos para acceder a los valores
function TQueryBuilder.GetSelectList : TStringList;
begin
  Result := FSelect;
end;

function TQueryBuilder.GetFromList : TStringList;
begin
  Result := FFrom;
end;

function TQueryBuilder.GetJoinsList : TStringList;
begin
  Result := FJoins;
end;

//function TQueryBuilder.GetWhereList : TStringList;
//begin
//  Result := FWhere;
//end;


end.



