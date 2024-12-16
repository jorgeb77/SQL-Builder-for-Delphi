unit UFRSelectQueryBuilder;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, System.UITypes,
  Vcl.CheckLst, Data.DB, System.Generics.Collections, System.StrUtils, IniFiles,
  Winapi.Windows, Winapi.Messages, System.RegularExpressions,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.Intf, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.UI.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.ODBCBase,
  AdvMemo, AdvmSQLS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  dxSkinMoneyTwins, dxSkinOffice2007Blue, dxSkinOffice2010Silver, dxSkinVS2010,
  cxTreeView, cxLabel, Vcl.Menus, cxMemo, cxRichEdit, cxCustomListBox,
  cxListBox, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxBarBuiltInMenu, cxCheckBox, cxCheckListBox, cxPC, dxSkinDevExpressDarkStyle,
  dxSkinOffice2019Black, SkinAzul, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBevel;

type
  TFRSelectQueryBuilder = class(TForm)
    DataBase: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    Timer1: TTimer;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    LbTablaPrincipal: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    TreeView1: TcxTreeView;
    CbTipoJoin: TcxComboBox;
    CbTablaSecundaria: TcxComboBox;
    CbCampoTablaSecundaria: TcxComboBox;
    BtnAgregarJoin: TcxButton;
    BtnConstruir: TcxButton;
    BtnAgregarCampos: TcxButton;
    BtnSalir: TcxButton;
    MmJoin: TcxRichEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    ListBox1: TcxListBox;
    Memo1: TAdvMemo;
    BtnFormatearConAlias: TcxButton;
    CheckListBox1: TcxCheckListBox;
    CheckListBox2: TcxCheckListBox;
    BalloonHint1: TBalloonHint;
    cxLabel1: TcxLabel;
    dxBevel1: TdxBevel;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure BtnAgregarJoinClick(Sender: TObject);
    procedure BtnConstruirClick(Sender: TObject);
    procedure BtnAgregarCamposClick(Sender: TObject);
    procedure BtnSalirClick(Sender: TObject);
    procedure BtnFormatearConAliasClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MmJoinKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbTablaSecundariaPropertiesChange(Sender: TObject);
    procedure BtnAgregarJoinMouseEnter(Sender: TObject);
    procedure BtnAgregarJoinMouseLeave(Sender: TObject);
    procedure MmJoinPropertiesChange(Sender: TObject);
  private
    procedure LoadTablesAndFields;
    procedure LoadFieldsForTable(const TableName : string);
    procedure LoadTablesIntoComboBox(ComboBox : TcxComboBox);
    procedure LoadFieldsIntoComboBox(ComboBox : TcxComboBox; const TableName : string);
//    function ValorExisteEnListBox(ListBox : TListBox; Valor : string) : Integer;
//    function ExtractWord(WordIndex : Integer; const S : string; Delimiters : TSysCharSet) : string;
    function SeleccionCheckListBox(CheckListBox : TcxCheckListBox) : Boolean;
  public

  end;

var
  FRSelectQueryBuilder: TFRSelectQueryBuilder;

implementation

{$R *.dfm}

uses SelectQueryBuilder, SQLAliasGenerator;

procedure TFRSelectQueryBuilder.FormCreate(Sender: TObject);
var
  Archivo : string;
  DebeCerrar : Boolean;  //Con esta bandera me aseguro de cerrar la app si se dispara la Exception
begin
  DebeCerrar := False;
  Archivo := ExtractFilePath(Application.ExeName) + ChangeFileExt('Conexion','.ini');

  if FileExists(Archivo) then
    begin
      with TIniFile.Create(Archivo) do
        try
          DataBase.Params.Values['Server']    := ReadString('Conexion', 'Servidor', '');
          DataBase.Params.Values['Database']  := ReadString('Conexion', 'Database', '');
          DataBase.Params.Values['User_Name'] := ReadString('Conexion', 'Usuario',  '');
          DataBase.Params.Values['Password']  := ReadString('Conexion', 'Password', '');

          try
            DataBase.Connected := True;
          except
            on E : Exception do
            begin
              MessageDlg('No Existe el Servidor ó Hay Problemas de Conexión' +#13+ E.Message,
                         TMsgDlgType.mtError, [mbOk], 0);
              DebeCerrar := True;
            end;
          end;
        finally
          Free;
        end;
    end
  else
    begin
      MessageDlg('No se ha Encontrado el Fichero de Configuración.',
                 TMsgDlgType.mtWarning, [mbOk], 0);
      DebeCerrar := True;
    end;

  if DebeCerrar then
    begin
      Application.Terminate; //marca la aplicación para que se cierre después de que se complete el evento actual.
      Close; // Cierra el formulario principal
    end;

  // Cargar las tablas y campos en el TreeView
  LoadTablesAndFields;
  // Cargar las tablas en el ComboBox CbTablaSecundaria
  LoadTablesIntoComboBox(CbTablaSecundaria);

  Timer1.Enabled := False;
end;

procedure TFRSelectQueryBuilder.LoadTablesAndFields;
var
  Tables, Fields : TFDQuery;
  TableNode : TTreeNode;
begin
  CbTablaSecundaria.Properties.Items.Clear;
  Tables := TFDQuery.Create(nil);
  Fields := TFDQuery.Create(nil);
  try
    Tables.Connection := DataBase;
    Tables.SQL.Text := 'SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES';
    Tables.Open;
    while not Tables.Eof do
      begin
        TableNode := TreeView1.Items.Add(nil, Tables.FieldByName('TABLE_NAME').AsString);
        CbTablaSecundaria.Properties.Items.Add(Tables.FieldByName('TABLE_NAME').AsString); // Agregamos las tablas al ComboBox CbTablaSecundaria
        Fields.Connection := DataBase;
        Fields.SQL.Text := 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = ' + QuotedStr(Tables.FieldByName('TABLE_NAME').AsString);
        Fields.Open;
        while not Fields.Eof do
          begin
            TreeView1.Items.AddChild(TableNode, Fields.FieldByName('COLUMN_NAME').AsString);
            Fields.Next;
          end;
        Tables.Next;
      end;
  finally
    Tables.Free;
    Fields.Free;
  end;
end;

procedure TFRSelectQueryBuilder.LoadFieldsForTable(const TableName : string);
var
  Fields : TFDQuery;
begin
  Fields := TFDQuery.Create(nil);
  try
    Fields.Connection := DataBase;
    Fields.SQL.Text := 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = ' + QuotedStr(TableName);
    Fields.Open;
    CheckListBox2.Items.Clear;

  CheckListBox2.Items.BeginUpdate;

    while not Fields.Eof do
    begin
//      CheckListBox2.Items.Add(Fields.FieldByName('COLUMN_NAME').AsString);
      CheckListBox2.Items.Add.Text := Fields.FieldByName('COLUMN_NAME').AsString;
      Fields.Next;
    end;

  finally
    Fields.Free;
    CheckListBox2.Items.EndUpdate;
  end;
end;

procedure TFRSelectQueryBuilder.Timer1Timer(Sender: TObject);


  //CON ESTE CODIGO MANEJAMOS EL RESALTADO DE SINTAXIS EN EL RichEdit
  procedure HighlightKeywords;
  var
    tmp : string;
    PalabrasReservadas : TMatchCollection;
    I : Integer;
  begin
    tmp := StringReplace(MmJoin.Text, #13#10, ' ', [rfReplaceAll]);
    PalabrasReservadas := TRegEx.Matches(tmp, 'INNER JOIN|LEFT JOIN|RIGHT JOIN|FULL JOIN|CROSS JOIN|ON|JOIN|AND');

    for I:= 0 to PalabrasReservadas.Count - 1 do
    begin
      MmJoin.SelStart  := PalabrasReservadas.Item[I].Index - 1;
      MmJoin.SelLength := PalabrasReservadas.Item[I].Length;
      MmJoin.SelAttributes.Color := clBlue;
//      MmJoin.SelAttributes.Style := [fsBold];
    end;
  end;


begin
  // Desactivar redibujado para evitar parpadeos en el RichEdit
  SendMessage(MmJoin.Handle, WM_SETREDRAW, 0, 0);

  try
    Timer1.Enabled := False; // Detener el temporizador
    HighlightKeywords;

  finally
    // Reacticar redibujado
    SendMessage(MmJoin.Handle, WM_SETREDRAW, 1, 0);
    RedrawWindow(MmJoin.Handle, nil, 0, RDW_FRAME or RDW_INVALIDATE or RDW_UPDATENOW);
  end;
end;

procedure TFRSelectQueryBuilder.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
  I : Integer;
begin
  if Node.Level = 0 then
    begin
      // Seleccionó una tabla, cargar campos en el CheckListBox
      CheckListBox1.Items.Clear;
      LbTablaPrincipal.Caption := Node.Text; // Mostramos la tabla seleccionada en el CheckListBox1

      CheckListBox1.Items.BeginUpdate;

      for I:= 0 to Node.Count - 1 do
      begin
        CheckListBox1.Items.Add.Text := Node.Item[I].Text;
      end;

      CheckListBox1.Items.EndUpdate;
    end;
end;

procedure TFRSelectQueryBuilder.BtnAgregarCamposClick(Sender: TObject);
var
  I : Integer;
  Campo : string;
begin
  cxPageControl1.ActivePageIndex := 0;

  if SeleccionCheckListBox(CheckListBox1) = False then
    begin
      MessageDlg('Debe seleccionar al menos un campo de la tabla ' + LbTablaPrincipal.Caption,
                 TMsgDlgType.mtWarning, [mbOk], 0);
      Exit;
    end;

  // Agregar campos de la tabla principal (CheckListBox1)
  for I := 0 to CheckListBox1.Items.Count - 1 do
  begin
//    if CheckListBox1.Checked[I] then
    if CheckListBox1.Items.Items[I].State = cbsChecked then
    begin
      Campo := LbTablaPrincipal.Caption + '.' + CheckListBox1.Items.Items[I].Text;

      if ListBox1.Items.IndexOf(Campo) = -1 then
        ListBox1.Items.Add(Campo);
    end;
  end;

  // Agregar campos de la tabla secundaria (CheckListBox2)
  for I := 0 to CheckListBox2.Items.Count - 1 do
  begin
    if CheckListBox2.Items.Items[I].State = cbsChecked then
      begin
//      Campo := CbTablaSecundaria.Text + '.' + CheckListBox2.Items.Strings[I];
        Campo := CbTablaSecundaria.Text + '.' + CheckListBox2.Items.Items[I].Text;

        if ListBox1.Items.IndexOf(Campo) = -1 then
          ListBox1.Items.Add(Campo);
      end;
  end;

end;

procedure TFRSelectQueryBuilder.BtnAgregarJoinClick(Sender: TObject);
var
  JoinType, NewCondition : string;
  I : Integer;
  JoinExists, ConditionExists : Boolean;
begin
  if (CbTipoJoin.Text = '') then
    begin
      MessageDlg('Debe seleccionar el tipo de join.',
                 TMsgDlgType.mtWarning, [mbOk], 0);
      CbTipoJoin.SetFocus;
      Exit;
    end;

  if (CbTablaSecundaria.Text = '') then
    begin
      MessageDlg('Debe seleccionar la tabla secundaria.',
                 TMsgDlgType.mtWarning, [mbOk], 0);
      CbTablaSecundaria.SetFocus;
      Exit;
    end;

  if (CbCampoTablaSecundaria.Text = '') then
    begin
      MessageDlg('Debe seleccionar el campo por el cual se hara el join.',
                 TMsgDlgType.mtWarning, [mbOk], 0);
      CbCampoTablaSecundaria.SetFocus;
      Exit;
    end;

  JoinType := CbTipoJoin.Text;

  // Crear la nueva condición de join
  NewCondition := CbTablaSecundaria.Text + '.' + CbCampoTablaSecundaria.Text +
                  ' = ' + LbTablaPrincipal.Caption + '.' + CbCampoTablaSecundaria.Text;

  // Verificar si ya existe un JOIN para esta tabla
  JoinExists      := False;
  ConditionExists := False;

  for I:= 0 to MmJoin.Lines.Count - 1 do
  begin
    // Buscar el JOIN inicial o las condiciones AND
    if (Pos(JoinType + ' ' + CbTablaSecundaria.Text + ' ON ', MmJoin.Lines[I]) > 0) then
      begin
        JoinExists := True;
        // Verificar si la condición ya existe en la línea del JOIN
        if (Pos(NewCondition, MmJoin.Lines[I]) > 0) then
          begin
            ConditionExists := True;
            Break;
          end;
      end
    else
      if (Pos(NewCondition, MmJoin.Lines[I]) > 0)
      or (Pos('AND ' + NewCondition, MmJoin.Lines[I]) > 0) then
        begin
          ConditionExists := True;
          Break;
        end;
  end;

  // Verificar si la condición ya existe
  if ConditionExists then
    begin
      MessageDlg('Ya existe una condición de join para este campo.',
                 TMsgDlgType.mtWarning, [mbOk], 0);
      Exit;
    end;

  // Si no existe un JOIN para esta tabla, crear uno nuevo
  if not JoinExists then
    begin
      MmJoin.Lines.Add(JoinType + ' ' + CbTablaSecundaria.Text + ' ON ' + NewCondition);
    end
  else
    begin
      // Agregar la nueva condición al final del Memo
      MmJoin.Lines.Add('AND ' + NewCondition);
    end;

  Timer1.Enabled := True;
end;

procedure TFRSelectQueryBuilder.BtnAgregarJoinMouseEnter(Sender: TObject);
begin
  TcxButton(Sender).Font.Style := [TFontStyle.fsBold];
end;

procedure TFRSelectQueryBuilder.BtnAgregarJoinMouseLeave(Sender: TObject);
begin
  TcxButton(Sender).Font.Style := [];
end;

procedure TFRSelectQueryBuilder.BtnConstruirClick(Sender: TObject);
var
  I, CampoCount : Integer;
  SelectFields, FromClause, JoinClause : string;
begin
//  if MmJoin.Lines.Count = 0 then
//    begin
//      MessageDlg('Debe establecer el join con la tabla.',
//      TMsgDlgType.mtWarning, [mbOk], 0);
//      BtnAgregarJoin.SetFocus;
//      Exit;
//    end;

 // Verificar si hay campos agregados al ListBox1
  if ListBox1.Items.Count = 0 then
    begin
      MessageDlg('Debe agregar al menos un campo.',
                 TMsgDlgType.mtWarning, [mbOk], 0);
      Exit;
    end;

  // Construir la cláusula SELECT
  SelectFields := '';
  CampoCount   := 0;

  for I := 0 to ListBox1.Items.Count - 1 do
  begin
    Inc(CampoCount);
    SelectFields := SelectFields + ListBox1.Items[I] + ', ';

    if (CampoCount mod 5) = 0 then
      begin
        SelectFields := SelectFields + sLineBreak;
      end;
  end;

  SelectFields := Copy(SelectFields, 1, Length(SelectFields) - 2); // Eliminar la última coma

  // Construir la cláusula FROM
  FromClause := 'FROM ' + LbTablaPrincipal.Caption;

  // Construir la cláusula JOIN
  JoinClause := '';

  for I := 0 to MmJoin.Lines.Count - 1 do
  begin
    JoinClause := JoinClause + MmJoin.Lines[I] + sLineBreak;
  end;

  // Construir el SQL final
  Memo1.Lines.Clear;
  Memo1.Lines.Add('SELECT ' + SelectFields);
  Memo1.Lines.Add(FromClause);
  Memo1.Lines.Add(JoinClause);

  cxPageControl1.ActivePageIndex := 1;
end;

procedure TFRSelectQueryBuilder.BtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFRSelectQueryBuilder.BtnFormatearConAliasClick(Sender: TObject);
var
  SQLProcessor : TSQLAliasProcessor;
begin
  SQLProcessor := TSQLAliasProcessor.Create;
  try
    // Aplica los aliases al Memo1
    SQLProcessor.ApplySQLAliases(Memo1);
  finally
    SQLProcessor.Free;
  end;

end;

procedure TFRSelectQueryBuilder.CbTablaSecundariaPropertiesChange(Sender: TObject);
begin    //Cargamos en el ComboBox los campos de la tabla secundaria
  if CbTablaSecundaria.Text <> EmptyStr then
    begin
      // Cargar campos de la tabla secundaria en el CheckListBox2
      LoadFieldsForTable(CbTablaSecundaria.Text);

      { Cargar los campos de la tabla secundaria seleccionada en el
        CbCampoTablaSecundaria para seleccionar el campo por el cual
        se hara el join. }
      CbCampoTablaSecundaria.Clear;
      LoadFieldsIntoComboBox(CbCampoTablaSecundaria, CbTablaSecundaria.Text);
    end
  else
    begin   //Si se limpia el ComboBox de la tabla secundaria se limpian los componentes
      CbCampoTablaSecundaria.Properties.Items.Clear;
      CbCampoTablaSecundaria.Clear;
      CheckListBox2.Items.Clear;
    end;
end;

procedure TFRSelectQueryBuilder.LoadTablesIntoComboBox(ComboBox : TcxComboBox);
var
  Tables : TFDQuery;
begin
  Tables := TFDQuery.Create(nil);
  try
    Tables.Connection := DataBase;
    Tables.SQL.Text   := 'SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES';
    Tables.Open;
    ComboBox.Properties.Items.Clear;
    while not Tables.Eof do
    begin
      ComboBox.Properties.Items.Add(Tables.FieldByName('TABLE_NAME').AsString);
      Tables.Next;
    end;
  finally
    Tables.Free;
  end;
end;

procedure TFRSelectQueryBuilder.MmJoinKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Timer1.Enabled := True;  // Reiniciar el temporizador
end;

procedure TFRSelectQueryBuilder.MmJoinPropertiesChange(Sender: TObject);
var
  CursorPos : Integer;
begin
  {COMO EL RichEdit NO TIENE LA PROPIEDAD CHARCASE SE DEBE
   CREAR ESTA FUNCIONALIDAD EN FORMA MANUAL. }

  // Guardar la posición actual del cursor
  CursorPos := MmJoin.SelStart;

  // Convertir el texto a mayúsculas
  MmJoin.Text := UpperCase(MmJoin.Text);

  // Restaurar la posición del cursor al final
  MmJoin.SelStart := Length(MmJoin.Text);
end;

procedure TFRSelectQueryBuilder.LoadFieldsIntoComboBox(ComboBox : TcxComboBox; const TableName : string);
var
  Fields : TFDQuery;
begin
  Fields := TFDQuery.Create(nil);
  try
    Fields.Connection := DataBase;
    Fields.SQL.Text   := 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = ' + QuotedStr(TableName);
    Fields.Open;
    ComboBox.Properties.Items.Clear;
    while not Fields.Eof do
    begin
      ComboBox.Properties.Items.Add(Fields.FieldByName('COLUMN_NAME').AsString);
      Fields.Next;
    end;
  finally
    Fields.Free;
  end;
end;

{
function TForm1.ValorExisteEnListBox(ListBox : TListBox; Valor : string) : Integer;
var
  I : Integer;
begin
  Result := -1;
  for I := 0 to ListBox.Count - 1 do
  begin
    if AnsiUpperCase(ListBox.Items[I]) = AnsiUpperCase(Valor) then
      begin
        Result := I;
        Exit;
      end;
  end;
end;

function TForm1.ExtractWord(WordIndex : Integer; const S : string; Delimiters : TSysCharSet) : string;
var
  I, WordCount : Integer;
begin
  WordCount := 1;
  Result := '';
  I := 1;
  while I <= Length(S) do
  begin
    if not CharInSet(S[I], Delimiters) then
      begin
        if WordCount = WordIndex then
          Result := Result + S[I]
        else
          Inc(WordCount);
      end
    else
      begin
        if WordCount = WordIndex then
          Break;
      end;
    Inc(I);
  end;
end;
 }

function TFRSelectQueryBuilder.SeleccionCheckListBox(CheckListBox : TcxCheckListBox) : Boolean;
var
  I : Integer;
begin
  Result := False;
  for I:= 0 to CheckListBox.Count - 1 do
  begin
//    if CheckListBox.Checked[I] then
    if CheckListBox.Items.Items[I].State = cbsChecked then
      begin
        Result := True;
        Break;
      end;
  end;
end;


end.

