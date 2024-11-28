unit UFRQueryBuilder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Menus,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ShellApi,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2010Silver, dxSkinVS2010, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxContainer,
  cxTextEdit, cxMemo, cxButtons, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxmdaset, dxBarBuiltInMenu, cxPC, cxCheckBox, cxMaskEdit,
  cxDropDownEdit, cxCalc, SkinAzul;

type
  TFRQueryBuilder = class(TForm)
    MdTablas: TdxMemData;
    DsTablas: TDataSource;
    MdTablasNombreTabla: TStringField;
    MdTablasAliasTabla: TStringField;
    cxGridStyles: TcxStyleRepository;
    Seleccionado: TcxStyle;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    MmSELECT: TcxMemo;
    PcBuilder: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxLabel1: TcxLabel;
    GridTablas: TcxGrid;
    GridTablasDBTableView1: TcxGridDBTableView;
    GridTablasDBTableView1Column1: TcxGridDBColumn;
    GridTablasDBTableView1Column2: TcxGridDBColumn;
    GridTablasLevel1: TcxGridLevel;
    BtAgregarTabla: TcxButton;
    BtQuitarTabla: TcxButton;
    GridColumnas: TcxGrid;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1TableView1Column1: TcxGridColumn;
    cxGrid1TableView1Column3: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid1TableView1Column4: TcxGridColumn;
    cxGrid1TableView1Column5: TcxGridColumn;
    cxGrid1TableView1Column2: TcxGridColumn;
    BtNuevoJoin: TcxButton;
    Panel1: TPanel;
    CkbTodos: TcxCheckBox;
    cxLabel7: TcxLabel;
    EdCantidadColSelect: TcxCalcEdit;
    Panel2: TPanel;
    BtMoverArriba: TcxButton;
    BtMoverAbajo: TcxButton;
    Panel3: TPanel;
    CkbGenerarArchivo: TcxCheckBox;
    BtNativoDelphi: TcxButton;
    BtGenerarSQL: TcxButton;
    procedure BtAgregarTablaClick(Sender: TObject);
    procedure BtQuitarTablaClick(Sender: TObject);
    procedure PcBuilderChange(Sender: TObject);
    procedure BtGenerarSQLClick(Sender: TObject);
    procedure CkbTodosClick(Sender: TObject);
    procedure BtNuevoJoinClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtAgregarTablaMouseEnter(Sender: TObject);
    procedure BtAgregarTablaMouseLeave(Sender: TObject);
    procedure BtNativoDelphiClick(Sender: TObject);
    procedure BtMoverArribaClick(Sender: TObject);
    procedure BtMoverAbajoClick(Sender: TObject);
  private
    procedure MoveRecord(ARecordIndex : Integer; IsUpDirection : Boolean);
  public
    SelectJoin : string;
    CantJoin : Integer; //Cantidad de Joins
    function GetAlias(Tabla : string) : string;
  end;

var
  FRQueryBuilder: TFRQueryBuilder;

implementation

uses
  UFRBuilder, UFRNuevoJoin, UFRListadoTablas, Utileria;

{$R *.dfm}

procedure TFRQueryBuilder.BtQuitarTablaClick(Sender: TObject);
begin
  if MdTablas.RecordCount > 0 then
    MdTablas.Delete;
end;

procedure TFRQueryBuilder.BtAgregarTablaMouseEnter(Sender: TObject);
begin
  TcxButton(Sender).Font.Style := [fsBold];
end;

procedure TFRQueryBuilder.BtAgregarTablaMouseLeave(Sender: TObject);
begin
  TcxButton(Sender).Font.Style := [];
end;

procedure TFRQueryBuilder.BtGenerarSQLClick(Sender: TObject);

  function TotalSeleccionados : Integer;
  var
    I, S : Integer;
  begin
    S := 0;
    for I := 0 to cxGrid1TableView1.ViewData.RowCount -1 do
      if cxGrid1TableView1.ViewData.Rows[I].Values[4] = True then
        Inc(S);
    Result := S;
  end;

var
  I, ItemsCount : Integer;
  StrCampos, C : string;
begin
  if TotalSeleccionados = 0 then
    begin
      Mensaje('Debe Seleccionar los Campos a Generar!!!',
              'Operación Invalida', Advertencia);
      BtGenerarSQL.SetFocus;
      Abort;
    end;

  StrCampos := 'SELECT ';    //ARMAMOS LA SELECCION DE CAMPOS

  ItemsCount := 0;
  for I:= 0 to cxGrid1TableView1.ViewData.RowCount -1 do
    begin
      if cxGrid1TableView1.ViewData.Rows[I].Values[4] = True then
        begin
          Inc(ItemsCount);

          C := EmptyStr; //para el manejo de la coma

          if ItemsCount < TotalSeleccionados then
            C := ', ';

          if cxGrid1TableView1.ViewData.Rows[I].Values[3] <> EmptyStr then
            StrCampos := StrCampos + cxGrid1TableView1.ViewData.Rows[I].Values[1] +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[2] +' AS '+ cxGrid1TableView1.ViewData.Rows[I].Values[3] + C
          else
            StrCampos := StrCampos + cxGrid1TableView1.ViewData.Rows[I].Values[1] +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[2] + C;
        end;
    end;

  MmSELECT.Lines.Clear;
  FRQueryBuilder.MdTablas.First;
  StrCampos := StrCampos + sLineBreak + 'FROM ' + MdTablas.FieldByName('NombreTabla').AsString +' '+ MdTablas.FieldByName('AliasTabla').AsString;
  MmSELECT.Lines.Add(StrCampos);
  MmSELECT.Lines.Add(SelectJoin);

end;

procedure TFRQueryBuilder.BtMoverAbajoClick(Sender: TObject);
begin
  GridColumnas.SetFocus;
  if cxGrid1TableView1.Controller.FocusedRowIndex <> -1 then
    MoveRecord(cxGrid1TableView1.Controller.FocusedRowIndex, False);
end;

procedure TFRQueryBuilder.BtMoverArribaClick(Sender: TObject);
begin
  GridColumnas.SetFocus;
  if cxGrid1TableView1.Controller.FocusedRowIndex <> -1 then
    MoveRecord(cxGrid1TableView1.Controller.FocusedRecordIndex, True);
end;

procedure TFRQueryBuilder.BtAgregarTablaClick(Sender: TObject);
begin
  FRListadoTablas := TFRListadoTablas.Create(Self);
  FRListadoTablas.ShowModal;
  FRListadoTablas.Free;
end;

procedure TFRQueryBuilder.BtNativoDelphiClick(Sender: TObject);

  function TotalSeleccionados : Integer;
  var
    I, S : Integer;
  begin
    S := 0;
    for I := 0 to cxGrid1TableView1.ViewData.RowCount -1 do
      if cxGrid1TableView1.ViewData.Rows[I].Values[4] = True then
        Inc(S);
    Result := S;
  end;

var
  I, CantCampos, ItemsCount : Integer;
  myFile : TextFile;
  Ruta, StrCampos, C : string;
  {Parametros,} Campos : TStringList;
begin
  if TotalSeleccionados = 0 then
    begin
      Mensaje('Debe Seleccionar los Campos a Generar!!!',
              'Operación Invalida', Advertencia);
      BtNativoDelphi.SetFocus;
      Abort;
    end;

  Ruta := FRBuilder.EdRutaArchivo.Text;

  if DirectoryExists(Ruta) then
    begin
      AssignFile(myFile, Ruta + '\SQL_SELECT_JOIN.txt');
      ReWrite(myFile);
    end
  else
    begin
      Mensaje('Debe Seleccionar un Directorio Valido!!!',
              'Ruta del Archivo Invalida', Advertencia);
//      BtRutaArchivo.SetFocus;
      Abort;
    end;

  WriteLn(myFile, 'with QryDataset, SQL do ');
  WriteLn(myFile, '  begin');
  WriteLn(myFile, '    Close;');
  WriteLn(myFile, '    Clear;');

  CantCampos  := StrToIntDef(EdCantidadColSelect.Text, 0);

  StrCampos := 'SELECT ';    //ARMAMOS LA SELECCION DE CAMPOS

  Campos := TStringList.Create;

  ItemsCount := 0;
  for I:= 0 to cxGrid1TableView1.ViewData.RowCount -1 do
    begin
      if cxGrid1TableView1.ViewData.Rows[I].Values[4] = True then
        begin
          Inc(ItemsCount);

          C := EmptyStr; //para el manejo de la coma

          if ItemsCount < TotalSeleccionados then
            C := ', ';

          if cxGrid1TableView1.ViewData.Rows[I].Values[3] <> EmptyStr then
            StrCampos := StrCampos + cxGrid1TableView1.ViewData.Rows[I].Values[1] +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[2] +' AS '+ cxGrid1TableView1.ViewData.Rows[I].Values[3] + C
          else
            StrCampos := StrCampos + cxGrid1TableView1.ViewData.Rows[I].Values[1] +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[2] + C;

          if CantCampos = ItemsCount then //PARA LIMITAR LA CANTIDAD DE ITEMS POR LINEA
            begin
              Campos.Add(StrCampos);  //Agregamos la linea acumulada al stringlist
              StrCampos  := EmptyStr;
              ItemsCount := 0;        // lo ponemos en cero para volver a contar
            end;

        end;
    end;

  MmSELECT.Lines.Clear;
//  FRQueryBuilder.MdTablas.First;
//  StrCampos := StrCampos + sLineBreak + 'FROM ' + MdTablas.FieldByName('NombreTabla').AsString +' '+ MdTablas.FieldByName('AliasTabla').AsString;

  if CantCampos = 0 then
    begin
      FRQueryBuilder.MdTablas.First;
      StrCampos := StrCampos + sLineBreak + 'FROM ' + MdTablas.FieldByName('NombreTabla').AsString +' '+ MdTablas.FieldByName('AliasTabla').AsString;
      MmSELECT.Lines.Add(StrCampos);
    end
  else
    begin
      StrCampos := ExtraerHastaUltimo(StrCampos, ','); //Quitamos la ultima coma

      for I:= 0 to Campos.Count - 1 do
        begin
          MmSELECT.Lines.Add(Campos[I]);
        end;

      FRQueryBuilder.MdTablas.First;
      StrCampos := StrCampos + sLineBreak + 'FROM ' + MdTablas.FieldByName('NombreTabla').AsString +' '+ MdTablas.FieldByName('AliasTabla').AsString;

      MmSELECT.Lines.Add(StrCampos);
    end;

  Campos.Free;

  MmSELECT.Lines.Add(SelectJoin);

  for I:= 0 to MmSELECT.Lines.Count - 1 do
    begin
      if MmSELECT.Lines.Strings[I] <> EmptyStr then
        WriteLn(myFile, '    Add(''' + MmSELECT.Lines.Strings[I] + ''');' );
    end;

  WriteLn(myFile, '    Open;');
  WriteLn(myFile, '  end;');

  // Close the file
  CloseFile(myFile);

  Mensaje('El Codigo SQL SELECT se Realizo con Exito!!!',
          'Operación Completada', Informacion);

  if CkbGenerarArchivo.Checked = True then
    begin
      //ABRIMOS EL ARCHIVO GENERADO
      ShellExecute(Handle,'open','c:\windows\notepad.exe',
        PWideChar(Ruta + '\SQL_SELECT_JOIN.txt'), nil, SW_SHOWNORMAL);
    end
  else
    CopiarAlPortaPapeles(Ruta + '\SQL_SELECT_JOIN.txt');

end;

procedure TFRQueryBuilder.BtNuevoJoinClick(Sender: TObject);
begin
  if MdTablas.RecordCount = 0 then
    begin
      Mensaje('Debe Seleccionar las Tablas a Generar!!!',
              'Operación Invalida', Advertencia);
      BtNuevoJoin.SetFocus;
      Abort;
    end;

  FRNuevoJoin := TFRNuevoJoin.Create(Self);
  FRNuevoJoin.ShowModal;
  FRNuevoJoin.Free;
end;

procedure TFRQueryBuilder.CkbTodosClick(Sender: TObject);
var
  I : Integer;
begin
  if CkbTodos.Checked then
    begin
      for I:= 0 to cxGrid1TableView1.ViewData.RowCount -1 do
        begin
          cxGrid1TableView1.ViewData.Rows[I].Values[4]:= True;
        end;
    end
  else
    begin
      for I:= 0 to cxGrid1TableView1.ViewData.RowCount -1 do
        begin
          cxGrid1TableView1.ViewData.Rows[I].Values[4]:= False;
        end;
    end;

end;

procedure TFRQueryBuilder.FormShow(Sender: TObject);
begin
  PcBuilder.Pages[1].TabVisible := False;
end;

function TFRQueryBuilder.GetAlias(Tabla : string) : string;
begin
  MdTablas.Locate('NombreTabla', Tabla, []);
  Result := MdTablas.FieldByName('AliasTabla').AsString;
end;

procedure TFRQueryBuilder.PcBuilderChange(Sender: TObject);
var
  I, J : Integer;
  BM : TBookmark;
  ListCampos : TStringList;
begin
  if PcBuilder.ActivePageIndex = 1 then
    begin
      for I:= 0 to cxGrid1TableView1.ViewData.RowCount -1 do
        begin
          cxGrid1TableView1.DataController.DeleteRecord(I);
        end;

      ListCampos := TStringList.Create;
      cxGrid1TableView1.ViewData.BeginUpdate;

      BM := MdTablas.GetBookmark;
      MdTablas.DisableControls;
      try
        MdTablas.First;

        for I:= 0 to MdTablas.RecordCount -1 do
          begin
            FRBuilder.DataBase.GetFieldNames('', '', MdTablas.FieldByName('NombreTabla').AsString, '', ListCampos);

            for J:= 0 to ListCampos.Count - 1 do
              begin
                with cxGrid1TableView1.DataController do
                  begin
                    Append;
                    RecordCount := RecordCount + 1;
                    Values[RecordCount-1, 0] := MdTablas.FieldByName('NombreTabla').AsString;
                    Values[RecordCount-1, 1] := MdTablas.FieldByName('AliasTabla').AsString;
                    Values[RecordCount-1, 2] := ListCampos[J];
                    Values[RecordCount-1, 3] := EmptyStr;
                    Values[RecordCount-1, 4] := True;
                    Post;
                  end;
              end;

            MdTablas.Next;
          end;
      finally
        MdTablas.GotoBookmark(BM);
        MdTablas.FreeBookmark(BM);
        MdTablas.EnableControls;
      end;

      ListCampos.Free;
      cxGrid1TableView1.ViewData.EndUpdate;
    end;

end;

procedure TFRQueryBuilder.MoveRecord(ARecordIndex : Integer; IsUpDirection : Boolean);
begin


end;


end.
