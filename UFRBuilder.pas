unit UFRBuilder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXCtrls, IniFiles, ShellApi, Clipbrd,
  Vcl.ComCtrls, StrUtils,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.ODBCBase, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue,
  dxSkinDevExpressDarkStyle, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2010Silver, dxSkinOffice2019Black, SkinAzul,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  cxContainer, cxEdit, cxCheckBox, dxCore, dxSkinsForm, cxClasses,
  cxShellBrowserDialog, dxStatusBar, cxMemo, dxActivityIndicator, cxListBox,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxCustomListBox, cxCheckListBox,
  dxToggleSwitch, cxGroupBox, cxRadioGroup, cxButtons, cxTextEdit, cxLabel,
  dxBevel, cxPC, dxGDIPlusClasses;


type
  TFRBuilder = class(TForm)
    BalloonHint1: TBalloonHint;
    cxPageControl1: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    dxBevel1: TdxBevel;
    cxLabel1: TcxLabel;
    TxtTabla: TcxTextEdit;
    BtBuscar: TcxButton;
    cxLabel9: TcxLabel;
    EdRutaArchivo: TcxTextEdit;
    BtRutaArchivo: TcxButton;
    BtEstructuraTabla: TcxButton;
    BtFieldByName: TcxButton;
    RgFormatoSalida: TcxRadioGroup;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    ListCamposWhereSelect: TcxCheckListBox;
    BtGenerar_SELECT: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    CkbListTodoSelect: TcxCheckBox;
    CkbListWhereSelect: TcxCheckBox;
    cxLabel7: TcxLabel;
    cxLabel11: TcxLabel;
    ListCamposOrderBy: TcxCheckListBox;
    CkbListOrderBy: TcxCheckBox;
    EdBusquedaCampo: TcxTextEdit;
    cxTabSheet2: TcxTabSheet;
    ListCamposInsert: TcxCheckListBox;
    BtGenerar_INSERT: TcxButton;
    cxLabel2: TcxLabel;
    CkbListInsert: TcxCheckBox;
    cxTabSheet3: TcxTabSheet;
    BtGenerar_UPDATE: TcxButton;
    cxLabel5: TcxLabel;
    ListCamposUpdate: TcxCheckListBox;
    cxLabel6: TcxLabel;
    ListCamposWhereUpdate: TcxCheckListBox;
    CkbListUpdate: TcxCheckBox;
    CkbListWhereUpdate: TcxCheckBox;
    cxLabel10: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    BtGenerar_DELETE: TcxButton;
    cxLabel8: TcxLabel;
    ListCamposWhereDelete: TcxCheckListBox;
    CkbListWhereDelete: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    dxBevel2: TdxBevel;
    dxActivityIndicator2: TdxActivityIndicator;
    cxLabel13: TcxLabel;
    EdNombreProcedimiento: TcxTextEdit;
    BtBuscar1: TcxButton;
    BtGenerar: TcxButton;
    RgFormatoSalida1: TcxRadioGroup;
    MmoListParams: TcxMemo;
    CkbQuitarArroba: TcxCheckBox;
    StbBarraEstado: TdxStatusBar;
    cxLabel14: TcxLabel;
    dxBevel3: TdxBevel;
    EdCantidadColSelect: TcxCalcEdit;
    EdCantidadColInsert: TcxCalcEdit;
    EdCantidadColUpdate: TcxCalcEdit;
    BtScriptStoreProcedure: TcxButton;
    EdCantidadColProc: TcxCalcEdit;
    ListCamposInsertSel: TcxListBox;
    BtAddItem: TcxButton;
    BtRemoveItem: TcxButton;
    BtItemUp: TcxButton;
    BtItemDown: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    RgTipoScriptSELECT: TcxRadioGroup;
    RgTipoScriptINSERT: TcxRadioGroup;
    RgTipoScriptUPDATE: TcxRadioGroup;
    RgTipoScriptDELETE: TcxRadioGroup;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    ListCamposSelect: TcxCheckListBox;
    DataBase: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    QryPrimaryKeys: TFDQuery;
    QryProcedure: TFDQuery;
    QryDatasetStructure: TFDQuery;
    QryConsulta: TFDQuery;
    QryUtils: TFDQuery;
    dxToggleSwitch1: TdxToggleSwitch;
    dxSkinController1: TdxSkinController;
    LbQueryBuilder: TcxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure BtGenerar_INSERTClick(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtGenerar_SELECTClick(Sender: TObject);
    procedure BtGenerar_UPDATEClick(Sender: TObject);
    procedure BtGenerar_DELETEClick(Sender: TObject);
    procedure BtRutaArchivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CkbListTodoSelectClick(Sender: TObject);
    procedure CkbListWhereSelectClick(Sender: TObject);
    procedure CkbListInsertClick(Sender: TObject);
    procedure CkbListUpdateClick(Sender: TObject);
    procedure CkbListWhereUpdateClick(Sender: TObject);
    procedure CkbListWhereDeleteClick(Sender: TObject);
    procedure BtRutaArchivoMouseEnter(Sender: TObject);
    procedure BtRutaArchivoMouseLeave(Sender: TObject);
    procedure CkbListOrderByClick(Sender: TObject);
    procedure BtEstructuraTablaClick(Sender: TObject);
    procedure ListCamposSelectDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure EdBusquedaCampoKeyPress(Sender: TObject; var Key: Char);
    procedure EdBusquedaCampoPropertiesChange(Sender: TObject);
    procedure BtFieldByNameClick(Sender: TObject);
    procedure BtBuscar1Click(Sender: TObject);
    procedure BtGenerarClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListCamposSelectClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure ListCamposInsertClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure ListCamposUpdateClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure BtScriptStoreProcedureClick(Sender: TObject);
    procedure BtItemUpClick(Sender: TObject);
    procedure BtItemDownClick(Sender: TObject);
    procedure BtRemoveItemClick(Sender: TObject);
    procedure BtAddItemClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure dxToggleSwitch1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    procedure LimpiarListados;
    function TotalChecked(CheckList : TcxCheckListBox) : Integer;
    procedure SeleccionarTodo(CheckList : TcxCheckListBox; Value : Boolean);

    function MasLargo(Lista : TStringList) : Integer;

//    function GetTokenCount(Cadena, Separador : string) : Integer;
//    function GetToken(Cadena, Separador : string; Token : Integer) : string;
//    function LastToken(Cadena, Separador : string) : string;
//    function IsLastToken(Cadena, Separador : string; TokenName : string) : Boolean; overload;
//    function IsLastToken(Cadena, Separador : string; Token : Integer) : Boolean; overload;
//    function TokenExists(Cadena, Separador : string; TokenName : string) : Boolean;
//    function FDeleteToken(Cadena, Separador : string; Token : Integer) : string;
//    procedure DeleteToken(Cadena, Separador : string; Token : Integer);

//    function DesarmarCadena(const Separador, Cadena : string) : TArray<string>;


    //    function BuscarElementoLista(Elemento : string; Lista : TcxCheckListBox) : Integer;
    procedure LbMoveItemUp(AListBox : TcxListBox);
    procedure LbMoveItemDown(AListBox : TcxListBox);

    function FindSelectedItem(ACheckListBox : TcxCheckListBox) : Integer;
    procedure ClbMoveItemUp(ACheckListBox : TcxCheckListBox);
    procedure ClbMoveItemDown(ACheckListBox : TcxCheckListBox);

  public
    function CheckSelection(CheckList : TcxCheckListBox) : Boolean;


//  protected
//    procedure WMWindowPosChanged(var AMessage : TMessage); message WM_WINDOWPOSCHANGED;
//    procedure WMActivateApp(var AMessage : TMessage); message WM_ACTIVATEAPP;

  end;


var
  FRBuilder: TFRBuilder;
  UltIndice : Integer = -1;

implementation

uses
  Utileria, UFRSelectQueryBuilder, ModoOscuroClaro;

{$R *.dfm}

//{ TcxMyShellBrowserDialog }
//
//function TcxMyShellBrowserDialog.CreateForm: TcxShellBrowserDlg;
//begin
//  Result := inherited CreateForm;
//  Result.Width   := 3000;
//  Result.Height  := 1000;
//  Result.cxButton1.Caption := 'Aceptar';
//  Result.cxButton2.Caption := 'Cancelar';
////  Result.Font.Size := 16;
//end;

procedure TFRBuilder.BtBuscarClick(Sender: TObject);
var
  I : Integer;
begin
  if EdRutaArchivo.Text = EmptyStr then
    begin
      Mensaje('Debe Elegir la Ruta donde se Guardara el Archivo de Texto!!!',
              'Operación Invalida', Advertencia);
      BtRutaArchivo.SetFocus;
      Abort;
    end;

  if TxtTabla.Text = EmptyStr then
    begin
      Mensaje('Debe Digitar la Tabla para Realizar las Operaciones!!!',
              'Operación Invalida', Advertencia);
      TxtTabla.SetFocus;
      Abort;
    end;

  with QryUtils, SQL do
    begin
      Close;
      Clear;
      Add('SELECT * FROM INFORMATION_SCHEMA.TABLES');
      Add('WHERE TABLE_SCHEMA = ' + QuotedStr('dbo'));
      Add('AND TABLE_NAME = ' + QuotedStr(Trim(TxtTabla.Text)));
      Open;

      if RecordCount = 0 then
        begin
          Mensaje('La Tabla Digitada No Existe en la Base de Datos' +#13+
                  'ó No Tienes Permiso de Lectura.'+#13+
                  'Por Favor Verifique!!!','Tabla No Existe', Error);
          TxtTabla.SetFocus;
          Abort;
        end;
    end;

  CkbListTodoSelect.Checked  := False;
  CkbListWhereSelect.Checked := False;
  CkbListOrderBy.Checked     := False;
  CkbListInsert.Checked      := False;
  CkbListUpdate.Checked      := False;
  CkbListWhereUpdate.Checked := False;
  CkbListWhereDelete.Checked := False;

  LimpiarListados;

  QryConsulta.Close;
  QryConsulta.SQL.Text := 'SELECT TOP 1 * FROM ' + TxtTabla.Text;
  QryConsulta.Open;

  //AL CARGAR LOS DATOS EN LOS TcxCheckListBox MINIMIZAMOS EL PARPADEO
  for I := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[I] is TcxCheckListBox then
        begin
          (Self.Components[I] as TcxCheckListBox).DoubleBuffered := True;

          (Self.Components[I] as TcxCheckListBox).Items.BeginUpdate;
        end;
    end;


//  ListCamposInsert.Items.BeginUpdate;
//
//  ListCamposSelect.Items.BeginUpdate;
//  ListCamposWhereSelect.Items.BeginUpdate;
//  ListCamposOrderBy.Items.BeginUpdate;
//
//  ListCamposUpdate.Items.BeginUpdate;
//  ListCamposWhereUpdate.Items.BeginUpdate;
//
//  ListCamposWhereDelete.Items.BeginUpdate;

  QryConsulta.First;
  for I := 0 to QryConsulta.Fields.Count - 1 do
    begin
      //INSERT
      with ListCamposInsert.Items.Add do
        begin
          Text  := QryConsulta.Fields[I].FieldName;
          State := cbsUnchecked;
        end;

      //SELECT
      with ListCamposSelect.Items.Add do
        begin
          Text  := QryConsulta.Fields[I].FieldName;
          State := cbsUnchecked;
        end;

      with ListCamposWhereSelect.Items.Add do
        begin
          Text  := QryConsulta.Fields[I].FieldName;
          State := cbsUnchecked;
        end;

      with ListCamposOrderBy.Items.Add do
        begin
          Text  := QryConsulta.Fields[I].FieldName;
          State := cbsUnchecked;
        end;

      //UPDATE
      with ListCamposUpdate.Items.Add do
        begin
          Text  := QryConsulta.Fields[I].FieldName;
          State := cbsUnchecked;
        end;

      with ListCamposWhereUpdate.Items.Add do
        begin
          Text  := QryConsulta.Fields[I].FieldName;
          State := cbsUnchecked;
        end;

      //DELETE
      with ListCamposWhereDelete.Items.Add do
        begin
          Text  := QryConsulta.Fields[I].FieldName;
          State := cbsUnchecked;
        end;

        QryConsulta.Next;
    end;

  for I := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[I] is TcxCheckListBox then
        begin
//          (Self.Components[I] as TcxCheckListBox).Sorted := True;

          (Self.Components[I] as TcxCheckListBox).Items.EndUpdate;
        end;
    end;


//  ListCamposInsert.Sorted      := True;
//  ListCamposSelect.Sorted      := True;
//  ListCamposWhereSelect.Sorted := True;
//  ListCamposOrderBy.Sorted     := True;
//  ListCamposUpdate.Sorted      := True;
//  ListCamposWhereUpdate.Sorted := True;
//  ListCamposWhereDelete.Sorted := True;

//  ListCamposInsert.Items.EndUpdate;
//
//  ListCamposSelect.Items.EndUpdate;
//  ListCamposWhereSelect.Items.EndUpdate;
//  ListCamposOrderBy.Items.EndUpdate;
//
//  ListCamposUpdate.Items.EndUpdate;
//  ListCamposWhereUpdate.Items.EndUpdate;
//
//  ListCamposWhereDelete.Items.EndUpdate;

end;

procedure TFRBuilder.BtGenerar_INSERTClick(Sender: TObject);
var
  I, J, CantidadCol, CampoCount : Integer;
  myFile : TextFile;
  Ruta, InsertFields : string;
  Parametros, Campos : TStringList;
  LongMax : Integer;
begin
  if ListCamposInsertSel.Items.Count = 0 then
    begin
      Mensaje('Debe Seleccionar los Campos a Generar!!!',
              'Operación Invalida', Advertencia);
      BtBuscar.SetFocus;
      Abort;
    end;

  Ruta := EdRutaArchivo.Text;

  if DirectoryExists(Ruta) then
    begin
      AssignFile(myFile, Ruta + '\SQL_INSERT.txt');
      ReWrite(myFile);
    end
  else
    begin
      Mensaje('Debe Seleccionar un Directorio Valido!!!',
              'Ruta del Archivo Invalida', Advertencia);
      BtRutaArchivo.SetFocus;
      Abort;
    end;

  CantidadCol := StrToIntDef(EdCantidadColInsert.Text, 1);

  case RgTipoScriptINSERT.ItemIndex of
    0 : begin
          WriteLn(myFile, 'with QryDataset, SQL do ');
          WriteLn(myFile, '  begin');
          WriteLn(myFile, '    Close;');
          WriteLn(myFile, '    Clear;');

          WriteLn(myFile, '    Add(''INSERT INTO ' + Trim(TxtTabla.Text) + ' ('');');

          //ARMAMOS UNA CADENA DELIMITADA CON LOS CAMPOS SELECCIONADOS

          InsertFields := '';
          CampoCount   := 0;

          for I:= 0 to ListCamposInsertSel.Items.Count - 1 do
          begin
            Inc(CampoCount);
            InsertFields := InsertFields + ListCamposInsertSel.Items.Strings[I] + ', ';

            if (CampoCount mod CantidadCol) = 0 then
              begin
                InsertFields := InsertFields + sLineBreak;
              end;
          end;

          InsertFields := Copy(Trim(InsertFields), 1, Length(Trim(InsertFields)) - 1); // Eliminar la última coma

          Campos := TStringList.Create;
          Campos.Delimiter := #13; //Separador que utilizara el TStringList
          Campos.Text      := InsertFields;

          for I := 0 to Campos.Count - 1 do
            if I < Campos.Count - 1 then
              WriteLn(myFile, '    Add(''' + Trim(Campos[I]) + ''');')
            else
              WriteLn(myFile, '    Add(''' + Campos[I] + ')'');'); //agregamos el )

          Campos.Free;

          WriteLn(myFile, '    Add(''VALUES ( ''' + ');' );

          InsertFields := '';
          CampoCount   := 0;

          for I:= 0 to ListCamposInsertSel.Items.Count - 1 do
          begin
            Inc(CampoCount);
            InsertFields := InsertFields + ':' + ListCamposInsertSel.Items.Strings[I] + ', ';

            if (CampoCount mod CantidadCol) = 0 then
              begin
                InsertFields := InsertFields + sLineBreak;
              end;
          end;

          InsertFields := Copy(Trim(InsertFields), 1, Length(Trim(InsertFields)) - 1); // Eliminar la última coma

          Campos := TStringList.Create;
          Campos.Delimiter := #13; //Separador que utilizara el TStringList
          Campos.Text      := InsertFields;

          for I := 0 to Campos.Count - 1 do
            if I < Campos.Count - 1 then
              WriteLn(myFile, '    Add(''' + Trim(Campos[I]) + ''');')
            else
              WriteLn(myFile, '    Add(''' + Campos[I] + ')'');'); //agregamos el )

          Campos.Free;


          //AQUI ARMAMOS LOS PARAMETROS Y SUS TIPOS DE DATOS

          Parametros := TStringList.Create;

          for J:= 0 to ListCamposInsertSel.Items.Count - 1 do
            begin
              QryConsulta.First;
              for I:= 0 to QryConsulta.Fields.Count - 1 do
                begin
                  if ListCamposInsertSel.Items.Strings[J] = QryConsulta.Fields[I].FieldName then
                    begin
                      if (QryConsulta.Fields[I].DataType = ftFloat)
                      or (QryConsulta.Fields[I].DataType = ftCurrency)
                      or (QryConsulta.Fields[I].DataType = ftBCD) then
                        begin
                          Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsFloat');
                        end;

                      if (QryConsulta.Fields[I].DataType = ftString)
                      or (QryConsulta.Fields[I].DataType = ftMemo) then
                        begin
                          Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsString');
                        end;

                      if (QryConsulta.Fields[I].DataType = ftDate) then
                        begin
                          Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDate');
                        end;

                      if (QryConsulta.Fields[I].DataType = ftDateTime)
                      or (QryConsulta.Fields[I].DataType = ftTimeStamp) then
                        begin
                          Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDateTime');
                        end;

                      if (QryConsulta.Fields[I].DataType = ftTime) then
                        begin
                          Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsTime');
                        end;

                      if (QryConsulta.Fields[I].DataType = ftInteger)
                      or (QryConsulta.Fields[I].DataType = ftSmallint)
                      or (QryConsulta.Fields[I].DataType = ftWord)
                      or (QryConsulta.Fields[I].DataType = ftByte)
                      or (QryConsulta.Fields[I].DataType = ftShortint)
                      or (QryConsulta.Fields[I].DataType = ftLongWord)
                      or (QryConsulta.Fields[I].DataType = ftByte) then
                        begin
                          Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsInteger');
                        end;

                      if (QryConsulta.Fields[I].DataType = ftLargeint) then
                        begin
                          Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsLargeInt');
                        end;

                      if (QryConsulta.Fields[I].DataType = ftBoolean) then
                        begin
                          Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsBoolean');
                        end;
                    end;

                  QryConsulta.Next;
                end;
            end;

          LongMax := MasLargo(Parametros);  //Obtenemos la linea mas larga del listado

          for I := 0 to Parametros.Count - 1 do
            begin
              WriteLn(myFile, Justifica(Parametros.Strings[I], LongMax,' ', tjLeft) + ' := ;');
            end;

          Parametros.Free;

          WriteLn(myFile, '    ExecSQL;');
          WriteLn(myFile, '  end;');

        end;

    1 : begin
          WriteLn(myFile, 'INSERT INTO ' + Trim(TxtTabla.Text) + ' (');

          InsertFields := '';
          CampoCount   := 0;

          for I:= 0 to ListCamposInsertSel.Items.Count - 1 do
          begin
            Inc(CampoCount);
            InsertFields := InsertFields + ListCamposInsertSel.Items.Strings[I] + ', ';

            if (CampoCount mod CantidadCol) = 0 then
              begin
                InsertFields := InsertFields + sLineBreak;
              end;
          end;

          InsertFields := Copy(Trim(InsertFields), 1, Length(Trim(InsertFields)) - 1); // Eliminar la última coma

          Campos := TStringList.Create;
          Campos.Delimiter := #13; //Separador que utilizara el TStringList
          Campos.Text      := InsertFields;

          for I:= 0 to Campos.Count - 1 do
            if I < Campos.Count - 1 then
              WriteLn(myFile, '  ' + Campos[I])
            else
              WriteLn(myFile, '  ' + Campos[I] + ')'); //agregamos el )

          Campos.Free;

          WriteLn(myFile, 'VALUES (');

          InsertFields := '';
          CampoCount   := 0;

          for I:= 0 to ListCamposInsertSel.Items.Count - 1 do
          begin
            Inc(CampoCount);
            InsertFields := InsertFields + '@' + ListCamposInsertSel.Items.Strings[I] + ', ';

            if (CampoCount mod CantidadCol) = 0 then
              begin
                InsertFields := InsertFields + sLineBreak;
              end;
          end;

          InsertFields := Copy(Trim(InsertFields), 1, Length(Trim(InsertFields)) - 1); // Eliminar la última coma

          Campos := TStringList.Create;
          Campos.Delimiter := #13; //Separador que utilizara el TStringList
          Campos.Text      := InsertFields;

          for I:= 0 to Campos.Count - 1 do
            if I < Campos.Count - 1 then
              WriteLn(myFile, '  ' + Campos[I])
            else
              WriteLn(myFile, '  ' + Campos[I] + ')'); //agregamos el )

          Campos.Free;

        end;
  end;

  // Close the file
  CloseFile(myFile);

  Mensaje('El Codigo SQL INSERT se Realizo con Exito!!!',
          'Operación Completada', Informacion);

  if RgFormatoSalida.ItemIndex = 0 then
    CopiarAlPortaPapeles(Ruta + '\SQL_INSERT.txt')
  else
    begin
      //ABRIMOS EL ARCHIVO GENERADO
      ShellExecute(Handle,'open','c:\windows\notepad.exe',
        PWideChar(Ruta + '\SQL_INSERT.txt'), nil, SW_SHOWNORMAL);
    end;

end;

procedure TFRBuilder.BtGenerar_SELECTClick(Sender: TObject);
var
  I, J, CantCampos, CampoCount, LongMax : Integer;
  myFile : TextFile;
  Ruta, SelectFields, OrderByFields : string;
  SelectTodos : Boolean;
  Parametros, Campos : TStringList;
begin
  if CheckSelection(ListCamposSelect) = False then
    begin
      Mensaje('Debe Seleccionar los Campos a Generar!!!',
              'Operación Invalida', Advertencia);
      BtBuscar.SetFocus;
      Abort;
    end;

  Ruta := EdRutaArchivo.Text;

  if DirectoryExists(Ruta) then
    begin
      AssignFile(myFile, Ruta + '\SQL_SELECT.txt');
      ReWrite(myFile);
    end
  else
    begin
      Mensaje('Debe Seleccionar un Directorio Valido!!!',
              'Ruta del Archivo Invalida', Advertencia);
      BtRutaArchivo.SetFocus;
      Abort;
    end;

  case RgTipoScriptSELECT.ItemIndex of
    0 : begin        //SCRIPT NATIVO PARA DELPHI

          WriteLn(myFile, 'with QryDataset, SQL do ');
          WriteLn(myFile, '  begin');
          WriteLn(myFile, '    Close;');
          WriteLn(myFile, '    Clear;');

          CantCampos  := StrToIntDef(EdCantidadColSelect.Text, 1);
          SelectTodos := False;

          if CkbListTodoSelect.Checked = True then
            begin
              if Mensaje('¿Desea Generar el SELECT con * ?',
                         'Generación SELECT', Pregunta,2) = True then
                SelectTodos := True;
            end;

          if SelectTodos = False then
            begin
              //ARMAMOS UNA CADENA DELIMITADA CON LOS CAMPOS SELECCIONADOS

              SelectFields := EmptyStr;
              CampoCount   := 0;
              for I:= 0 to ListCamposSelect.Items.Count - 1 do
                begin
                  if ListCamposSelect.Items.Items[I].State = cbsChecked then
                    begin
                      Inc(CampoCount);
                      SelectFields := SelectFields + ListCamposSelect.Items.Items[I].Text + ', ';

                      if (CampoCount mod CantCampos) = 0 then //Si es multiplo de x cantidad
                        begin
                          SelectFields := SelectFields + sLineBreak;
                        end;

                    end;
                end;

              SelectFields := Copy(SelectFields, 1, Length(SelectFields) - 2); // Se Elimina la última coma y el espacio

              { UNA VEZ QUE TERMINAMOS DE DIVIDIR LA CADENA, ALMACENAMOS EN
                UN TStringList PARA VOLVER A RECORRERLA OTRA VEZ Y CREAR EL
                SELECT EN FORMATO DELPHI}

              Campos := TStringList.Create;
              Campos.Delimiter := #13; //Separador que utilizara el TStringList
              Campos.Text      := SelectFields;

              for I:= 0 to Campos.Count - 1 do
                begin
                  if I = 0 then
                    WriteLn(myFile, '    Add(''SELECT ' + Trim(Campos[I]) + ''');')
                  else
                    WriteLn(myFile, '    Add(''' + Trim(Campos[I]) + ''');');
                end;

              Campos.Free;
            end;

          if SelectTodos = False then
            WriteLn(myFile, '    Add(''' + 'FROM ' + Trim(TxtTabla.Text) + ''');')
          else
            WriteLn(myFile, '    Add(''' + 'SELECT * FROM ' + Trim(TxtTabla.Text) + ''');');


          //AQUI GENERAMOS EL WHERE DE LA CONSULTA...

          if CheckSelection(ListCamposWhereSelect) then
            begin
              CampoCount := 0;
              for I := 0 to ListCamposWhereSelect.Items.Count - 1 do
                if ListCamposWhereSelect.Items.Items[I].State = cbsChecked then
                  begin
                    Inc(CampoCount);
                    if CampoCount = 1 then //Si es el primer item seleccionado...
                      WriteLn(myFile, '    Add(''WHERE '+ ListCamposWhereSelect.Items.Items[I].Text + ' = :' + ListCamposWhereSelect.Items.Items[I].Text + ''');' )
                    else
                      WriteLn(myFile, '    Add(''AND ' + ListCamposWhereSelect.Items.Items[I].Text + ' = :' + ListCamposWhereSelect.Items.Items[I].Text + ''');' );
                  end;

              //AQUI ARMAMOS LOS PARAMETROS Y SUS TIPOS DE DATOS

              Parametros := TStringList.Create;

              for J := 0 to ListCamposWhereSelect.Items.Count - 1 do
                if ListCamposWhereSelect.Items.Items[J].State = cbsChecked then
                  begin
                    QryConsulta.First;
                    for I := 0 to QryConsulta.Fields.Count - 1 do
                      begin
                        if ListCamposWhereSelect.Items.Items[J].Text = QryConsulta.Fields[I].FieldName then
                          begin
                            if (QryConsulta.Fields[I].DataType = ftFloat)
                            or (QryConsulta.Fields[I].DataType = ftCurrency)
                            or (QryConsulta.Fields[I].DataType = ftBCD) then
                              begin
                                Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsFloat');
                              end;

                            if (QryConsulta.Fields[I].DataType = ftString)
                            or (QryConsulta.Fields[I].DataType = ftMemo) then
                              begin
                                Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsString');
                              end;

                            if (QryConsulta.Fields[I].DataType = ftDate) then
                              begin
                                Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDate');
                              end;

                            if (QryConsulta.Fields[I].DataType = ftDateTime)
                            or (QryConsulta.Fields[I].DataType = ftTimeStamp) then
                              begin
                                Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDateTime');
                              end;

                            if (QryConsulta.Fields[I].DataType = ftTime) then
                              begin
                                Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsTime');
                              end;

                            if (QryConsulta.Fields[I].DataType = ftInteger)
                            or (QryConsulta.Fields[I].DataType = ftSmallint)
                            or (QryConsulta.Fields[I].DataType = ftWord)
                            or (QryConsulta.Fields[I].DataType = ftLongWord)
                            or (QryConsulta.Fields[I].DataType = ftShortint)
                            or (QryConsulta.Fields[I].DataType = ftByte) then
                              begin
                                Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsInteger');
                              end;

                            if (QryConsulta.Fields[I].DataType = ftLargeint) then
                              begin
                                Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsLargeInt');
                              end;

                            if (QryConsulta.Fields[I].DataType = ftBoolean) then
                              begin
                                Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsBoolean');
                              end;

                          end;

                        QryConsulta.Next;
                      end;
                  end;

              LongMax := MasLargo(Parametros);  //Obtenemos la linea mas larga del listado

              for I := 0 to Parametros.Count - 1 do
                begin
                  WriteLn(myFile, Justifica(Parametros.Strings[I], LongMax,' ', tjLeft) + ' := ;');
                end;

              Parametros.Free;
            end;

          //AQUI GENERAMOS EL ORDER BY DE LA CONSULTA...

          if CheckSelection(ListCamposOrderBy) then
            begin
              OrderByFields := EmptyStr;
              CampoCount    := 0;
              for I:= 0 to ListCamposOrderBy.Items.Count - 1 do
                begin
                  if ListCamposOrderBy.Items.Items[I].State = cbsChecked then
                    begin
                      Inc(CampoCount);
                      OrderByFields := OrderByFields + ListCamposOrderBy.Items.Items[I].Text + ', ';

                      if (CampoCount mod CantCampos) = 0 then //Si es multiplo de x cantidad
                        begin
                          OrderByFields := OrderByFields + sLineBreak;
                        end;
                    end;
                end;

              OrderByFields := Copy(Trim(OrderByFields), 1, Length(Trim(OrderByFields)) - 1); // Se Elimina la última coma

              Campos := TStringList.Create;
              Campos.Delimiter := #13; //Separador que utilizara el TStringList
              Campos.Text      := OrderByFields;

              for I:= 0 to Campos.Count - 1 do
                begin
                  if I = 0 then
                    WriteLn(myFile, '    Add(''ORDER BY ' + Trim(Campos[I]) + ''');')
                  else
                    WriteLn(myFile, '    Add(''' + Campos[I] + ''');' );
                end;

              Campos.Free;
            end;

          WriteLn(myFile, '    Open;');
          WriteLn(myFile, '  end;');
        end;


    1 : begin     //SCRIPT NATIVO PARA SQL SERVER
          CantCampos  := StrToIntDef(EdCantidadColSelect.Text, 1);
          SelectTodos := False;

          if CkbListTodoSelect.Checked = True then
            begin
              if Mensaje('¿Desea Generar el SELECT con * ?',
                         'Generación SELECT', Pregunta,2) = True then
                SelectTodos := True;
            end;

          if SelectTodos = False then
            begin
              //AQUI CREAMOS EL SELECT DE LA CONSULTA
              //CON UNA CADENA DELIMITADA CON LOS CAMPOS SELECCIONADOS

              SelectFields := EmptyStr;
              CampoCount   := 0;
              for I:= 0 to ListCamposSelect.Items.Count - 1 do
                begin
                  if ListCamposSelect.Items.Items[I].State = cbsChecked then
                    begin
                      Inc(CampoCount);
                      SelectFields := SelectFields + ListCamposSelect.Items.Items[I].Text + ', ';

                      if (CampoCount mod CantCampos) = 0 then //Si es multiplo de x cantidad
                        begin
                          SelectFields := SelectFields + sLineBreak;
                        end;
                    end;
                end;

              SelectFields := Copy(SelectFields, 1, Length(SelectFields) - 2); // Se Elimina la última coma y el espacio

              WriteLn(myFile, 'SELECT ' + SelectFields);
            end;

          if SelectTodos = False then
            WriteLn(myFile, 'FROM ' + Trim(TxtTabla.Text))
          else
            WriteLn(myFile, 'SELECT * FROM ' + Trim(TxtTabla.Text));


          //AQUI GENERAMOS EL WHERE DE LA CONSULTA...

          CampoCount := 0;
          for I := 0 to ListCamposWhereSelect.Items.Count - 1 do
            begin
              if ListCamposWhereSelect.Items.Items[I].State = cbsChecked then
                begin
                  Inc(CampoCount);

                  if CampoCount = 1 then //Si es el primer item seleccionado...
                    WriteLn(myFile, 'WHERE '+ ListCamposWhereSelect.Items.Items[I].Text + ' = @' + ListCamposWhereSelect.Items.Items[I].Text)
                  else
                    WriteLn(myFile, 'AND ' + ListCamposWhereSelect.Items.Items[I].Text + ' = @' + ListCamposWhereSelect.Items.Items[I].Text);
                end;
            end;

          //AQUI GENERAMOS EL ORDER BY DE LA CONSULTA...

          if CheckSelection(ListCamposOrderBy) then  //Verificamos si hay al menos uno seleccionado
            begin
              OrderByFields := EmptyStr;
              CampoCount    := 0;
              for I:= 0 to ListCamposOrderBy.Items.Count - 1 do
                begin
                  if ListCamposOrderBy.Items.Items[I].State = cbsChecked then
                    begin
                      Inc(CampoCount);
                      OrderByFields := OrderByFields + ListCamposOrderBy.Items.Items[I].Text + ', ';

                      if (CampoCount mod CantCampos) = 0 then //Si es multiplo de x cantidad
                        begin
                          OrderByFields := OrderByFields + sLineBreak;
                        end;
                    end;
                end;

              OrderByFields := Copy(Trim(OrderByFields), 1, Length(Trim(OrderByFields)) - 1); // Se Elimina la última coma
              WriteLn(myFile, 'ORDER BY ' + OrderByFields);
            end;
        end;
  end;

  // Close the file
  CloseFile(myFile);

  Mensaje('El Codigo SQL SELECT se Realizo con Exito!!!',
          'Operación Completada', Informacion);

  if RgFormatoSalida.ItemIndex = 0 then
    CopiarAlPortaPapeles(Ruta + '\SQL_SELECT.txt')
  else
    begin
      //ABRIMOS EL ARCHIVO GENERADO
      ShellExecute(Handle,'open','c:\windows\notepad.exe',
        PWideChar(Ruta + '\SQL_SELECT.txt'), nil, SW_SHOWNORMAL);
    end;

end;

procedure TFRBuilder.BtGenerar_UPDATEClick(Sender: TObject);
var
  I, J, CantCampos, CampoCount, LongMax : Integer;
  myFile : TextFile;
  Ruta, UpdateFields : string;
  Parametros, Campos : TStringList;
begin
  if CheckSelection(ListCamposUpdate) = False then
    begin
      Mensaje('Debe Seleccionar los Campos a Generar!!!',
              'Operación Invalida', Advertencia);
      BtBuscar.SetFocus;
      Abort;
    end;

  Ruta := EdRutaArchivo.Text;

  if DirectoryExists(Ruta) then
    begin
      AssignFile(myFile, Ruta + '\SQL_UPDATE.txt');
      ReWrite(myFile);
    end
  else
    begin
      Mensaje('Debe Seleccionar un Directorio Valido!!!',
              'Ruta del Archivo Invalida', Advertencia);
      BtRutaArchivo.SetFocus;
      Abort;
    end;

  CantCampos := StrToIntDef(EdCantidadColUpdate.Text, 1);

  case RgTipoScriptUPDATE.ItemIndex of
    0 : begin
          WriteLn(myFile, 'with QryDataset, SQL do ');
          WriteLn(myFile, '  begin');
          WriteLn(myFile, '    Close;');
          WriteLn(myFile, '    Clear;');
          WriteLn(myFile, '    Add(''UPDATE ' + Trim(TxtTabla.Text) + ' SET'');');

          UpdateFields := EmptyStr;
          CampoCount   := 0;

          for I:= 0 to ListCamposUpdate.Items.Count - 1 do
          begin
            if ListCamposUpdate.Items.Items[I].State = cbsChecked then
              begin
                Inc(CampoCount);
                UpdateFields := UpdateFields + ListCamposUpdate.Items.Items[I].Text + ' = :' + ListCamposUpdate.Items.Items[I].Text + ', ';

                if (CampoCount mod CantCampos) = 0 then
                  UpdateFields := Trim(UpdateFields) + sLineBreak;
              end;
          end;

          if CantCampos = 1 then // CUANDO NO ELEGIMOS AGRUPAR LOS CAMPOS ESTA SALIENDO UNA COMA DE MAS, SE DEBE VERIFICAR EL PORQUE....
            UpdateFields := Copy(UpdateFields, 1, Length(UpdateFields) - 3)
          else
            UpdateFields := Copy(UpdateFields, 1, Length(UpdateFields) - 2); // Eliminar la última coma y el espacio

          Campos := TStringList.Create;
          Campos.Delimiter := #13; //Separador que utilizara el TStringList
          Campos.Text      := UpdateFields;

          for I:= 0 to Campos.Count - 1 do
            begin
              WriteLn(myFile, '    Add(''' + Campos[I] + ''');' );
            end;

          Campos.Free;


          //AQUI ARMAMOS LOS PARAMETROS DE ASIGNACION DE VALORES Y SUS TIPOS DE DATOS

          Parametros := TStringList.Create;

          for J := 0 to ListCamposUpdate.Items.Count - 1 do
            if ListCamposUpdate.Items.Items[J].State = cbsChecked then
              begin
                QryConsulta.First;
                for I := 0 to QryConsulta.Fields.Count - 1 do
                  begin
                    if ListCamposUpdate.Items.Items[J].Text = QryConsulta.Fields[I].FieldName then
                      begin
                        if (QryConsulta.Fields[I].DataType = ftFloat)
                        or (QryConsulta.Fields[I].DataType = ftCurrency)
                        or (QryConsulta.Fields[I].DataType = ftBCD) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsFloat');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftString)
                        or (QryConsulta.Fields[I].DataType = ftMemo) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsString');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftDate) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDate');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftDateTime)
                        or (QryConsulta.Fields[I].DataType = ftTimeStamp) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDateTime');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftTime) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsTime');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftInteger)
                        or (QryConsulta.Fields[I].DataType = ftSmallint)
                        or (QryConsulta.Fields[I].DataType = ftWord)
                        or (QryConsulta.Fields[I].DataType = ftLongWord)
                        or (QryConsulta.Fields[I].DataType = ftShortint)
                        or (QryConsulta.Fields[I].DataType = ftByte) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsInteger');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftLargeint) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsLargeInt');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftBoolean) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsBoolean');
                          end;

                      end;

                    QryConsulta.Next;
                  end;
              end;

          //AQUI GENERAMOS EL WHERE DEL UPDATE...

          CampoCount := 0;
          for I := 0 to ListCamposWhereUpdate.Items.Count - 1 do
            begin
              if ListCamposWhereUpdate.Items.Items[I].State = cbsChecked then
                begin
                  Inc(CampoCount);

                  if CampoCount = 1 then //Si es el primer item seleccionado...
                    WriteLn(myFile, '    Add(''WHERE '+ ListCamposWhereUpdate.Items.Items[I].Text + ' = :' + ListCamposWhereUpdate.Items.Items[I].Text + ''');' )
                  else
                    WriteLn(myFile, '    Add(''AND ' + ListCamposWhereUpdate.Items.Items[I].Text + ' = :' + ListCamposWhereUpdate.Items.Items[I].Text + ''');' );
                end;
            end;


          //AQUI ARMAMOS LOS PARAMETROS DEL WHERE Y SUS TIPOS DE DATOS

          for J := 0 to ListCamposWhereUpdate.Items.Count - 1 do
            if ListCamposWhereUpdate.Items.Items[J].State = cbsChecked then
              begin
                QryConsulta.First;
                for I := 0 to QryConsulta.Fields.Count - 1 do
                  begin
                    if ListCamposWhereUpdate.Items.Items[J].Text = QryConsulta.Fields[I].FieldName then
                      begin
                        if (QryConsulta.Fields[I].DataType = ftFloat)
                        or (QryConsulta.Fields[I].DataType = ftCurrency)
                        or (QryConsulta.Fields[I].DataType = ftBCD) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsFloat');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftString)
                        or (QryConsulta.Fields[I].DataType = ftMemo) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsString');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftDate) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDate');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftDateTime)
                        or (QryConsulta.Fields[I].DataType = ftTimeStamp) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDateTime');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftTime) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsTime');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftInteger)
                        or (QryConsulta.Fields[I].DataType = ftSmallint)
                        or (QryConsulta.Fields[I].DataType = ftWord)
                        or (QryConsulta.Fields[I].DataType = ftLongWord) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsInteger');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftLargeint) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsLargeInt');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftBoolean) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsBoolean');
                          end;
                      end;

                    QryConsulta.Next;
                  end;
              end;

          LongMax := MasLargo(Parametros);  //Obtenemos la linea mas larga del listado

          for I := 0 to Parametros.Count - 1 do
            begin
              WriteLn(myFile, Justifica(Parametros.Strings[I], LongMax,' ', tjLeft) + ' := ;');
            end;

          Parametros.Free;

          WriteLn(myFile, '    ExecSQL;');
          WriteLn(myFile, '  end;');
        end;

    1 : begin
          WriteLn(myFile, 'UPDATE ' + Trim(TxtTabla.Text) + ' SET');

          LongMax  := 0;

          //Verificamos cual es el campo mas largo del listado
          for I:= 0 to ListCamposUpdate.Items.Count - 1 do
          begin
            if ListCamposUpdate.Items.Items[I].State = cbsChecked then
              begin
                if Length(ListCamposUpdate.Items.Items[I].Text) > LongMax then
                  LongMax := Length(ListCamposUpdate.Items.Items[I].Text);
              end;
          end;

          UpdateFields := EmptyStr;
          CampoCount   := 0;

          for I:= 0 to ListCamposUpdate.Items.Count - 1 do
          begin
            if ListCamposUpdate.Items.Items[I].State = cbsChecked then
              begin
                Inc(CampoCount);

                if CantCampos = 1 then   //SOLO ALINEAMOS LOS CAMPOS SI LA CANTIDAD DE AGRUPAMIENTO ES 1
                  UpdateFields := UpdateFields + ' ' + Justifica(ListCamposUpdate.Items.Items[I].Text, LongMax,' ', tjLeft) + ' = @' + ListCamposUpdate.Items.Items[I].Text + ','
                else
                  UpdateFields := UpdateFields + ' ' + ListCamposUpdate.Items.Items[I].Text + ' = @' + ListCamposUpdate.Items.Items[I].Text + ',';
              end;

            if (CampoCount mod CantCampos) = 0 then
              begin
                UpdateFields := UpdateFields + sLineBreak;
              end;
          end;

          UpdateFields := Copy(Trim(UpdateFields), 1, Length(Trim(UpdateFields)) - 1); // Eliminar la última coma

          Campos := TStringList.Create;
          Campos.Delimiter := #13; //Separador que utilizara el TStringList
          Campos.Text      := UpdateFields;

          for I:= 0 to Campos.Count - 1 do
            begin
              WriteLn(myFile, '  ' + Trim(Campos[I])); //Le agregamos espacio por delante para que los campos queden alineados
            end;

          Campos.Free;

          //AQUI GENERAMOS EL WHERE DEL UPDATE...

          CampoCount := 0;
          for I := 0 to ListCamposWhereUpdate.Items.Count - 1 do
            begin
              if ListCamposWhereUpdate.Items.Items[I].State = cbsChecked then
                begin
                  Inc(CampoCount);

                  if CampoCount = 1 then //Si es el primer item seleccionado...
                    WriteLn(myFile, 'WHERE '+ ListCamposWhereUpdate.Items.Items[I].Text + ' = @' + ListCamposWhereUpdate.Items.Items[I].Text)
                  else
                    WriteLn(myFile, 'AND ' + ListCamposWhereUpdate.Items.Items[I].Text + ' = @' + ListCamposWhereUpdate.Items.Items[I].Text);
                end;
            end;
        end;
  end;

  CloseFile(myFile);

  Mensaje('El Codigo SQL UPDATE se Realizo con Exito!!!',
          'Operación Completada', Informacion);

  if RgFormatoSalida.ItemIndex = 0 then
    CopiarAlPortaPapeles(Ruta + '\SQL_UPDATE.txt')
  else
    begin
      //ABRIMOS EL ARCHIVO GENERADO
      ShellExecute(Handle,'open','c:\windows\notepad.exe',
        PWideChar(Ruta + '\SQL_UPDATE.txt'), nil, SW_SHOWNORMAL);
    end;

end;

procedure TFRBuilder.BtItemDownClick(Sender: TObject);
begin
  LbMoveItemDown(ListCamposInsertSel);
end;

procedure TFRBuilder.BtItemUpClick(Sender: TObject);
begin
  LbMoveItemUp(ListCamposInsertSel);
end;

procedure TFRBuilder.BtEstructuraTablaClick(Sender: TObject);
var
  myFile : TextFile;
  Ruta, Columna, TipoDato, Longitud : string;
  I : Integer;
begin
//  if QryConsulta.RecordCount = 0 then
//    begin
//      Mensaje('Debe Realizar la Consulta Primero!!!',
//              'Operación Invalida', Advertencia);
//      BtBuscar.SetFocus;
//      Abort;
//    end;

  Ruta := EdRutaArchivo.Text;
  AssignFile(myFile, Ruta + '\FieldList.txt');
  ReWrite(myFile);

  WriteLn(myFile, Justifica('COLUMNA',30,' ',tjLeft) +' '+ Justifica('TIPO DE DATO',15,' ',tjLeft));
  WriteLn(myFile, '==========================================================');

  if Mensaje('¿DESEA OBTENER LOS CAMPOS EN FORMA NATIVA DE LA BASE DE DATOS?',
             'Estructura de la Tabla',Pregunta, 2) = True then
    begin
      with QryDatasetStructure do
        begin
          Close;
          ParamByName('TABLE_NAME').AsString := Trim(TxtTabla.Text);
          Open;
          First;
        end;

      for I := 0 to QryDatasetStructure.RecordCount - 1 do
        begin
          Columna  := QryDatasetStructure.FieldByName('COLUMN_NAME').AsString;
          TipoDato := QryDatasetStructure.FieldByName('DATA_TYPE_2').AsString + ',';
          WriteLn(myFile, Justifica(Columna,30,' ',tjLeft) +' '+ Justifica(TipoDato,15,' ',tjLeft));

          QryDatasetStructure.Next;
        end;
    end
  else
    begin
      for I := 0 to QryConsulta.FieldCount - 1 do
        begin
          Columna  := QryConsulta.FieldDefs.Items[I].Name;
          TipoDato := FieldTypeNames[QryConsulta.Fields.Fields[I].DataType];
          Longitud := IntToStr(QryConsulta.FieldDefs.Items[I].Size);

          if (TipoDato = 'String') then
            begin
              Insert('(',Longitud,1);
              Insert(')',Longitud,Length(Longitud)+1);

              WriteLn(myFile, Justifica(Columna,30,' ',tjLeft) +' '+ Justifica(TipoDato + Longitud,15,' ',tjLeft));
            end;

          if (TipoDato = 'DateTime') or (TipoDato = 'Integer')
          or (TipoDato = 'Float') or (TipoDato = 'LargeInt')
          or (TipoDato = 'Boolean') then
            begin
              WriteLn(myFile, Justifica(Columna,30,' ',tjLeft) +' '+ Justifica(TipoDato,15,' ',tjLeft));
            end;
        end;
    end;

  CloseFile(myFile);

  //ABRIMOS EL ARCHIVO GENERADO
  ShellExecute(Handle,'open','c:\windows\notepad.exe',
    PWideChar(Ruta + '\FieldList.txt'), nil, SW_SHOWNORMAL);
end;

procedure TFRBuilder.BtRemoveItemClick(Sender: TObject);
begin
  if ListCamposInsertSel.Items.Count > -1 then
    ListCamposInsertSel.Items.Delete(ListCamposInsertSel.ItemIndex);
end;

procedure TFRBuilder.BtRutaArchivoClick(Sender: TObject);
begin
//  with TFileOpenDialog.Create(nil) do
//    try
//      Options := [fdoPickFolders];
//      if Execute then
//        EdRutaArchivo.Text := FileName;
//    finally
//      Free;
//    end;

  cxShellBrowserDialog1.Path := ExtractFilePath(Application.ExeName);
  if cxShellBrowserDialog1.Execute then
    EdRutaArchivo.Text := cxShellBrowserDialog1.Path;
end;

procedure TFRBuilder.BtRutaArchivoMouseEnter(Sender: TObject);
begin
  TcxButton(Sender).Font.Style := [fsBold];
end;

procedure TFRBuilder.BtRutaArchivoMouseLeave(Sender: TObject);
begin
  TcxButton(Sender).Font.Style := [];
end;

procedure TFRBuilder.BtFieldByNameClick(Sender: TObject);
var
  I, J : Integer;
  Ruta : string;
  myFile : TextFile;
begin
  cxPageControl1.ActivePageIndex := 0;

  Ruta := EdRutaArchivo.Text;
  AssignFile(myFile, Ruta + '\CAMPOS_FieldByName.txt');
  ReWrite(myFile);

  WriteLn(myFile, 'CAMPOS DE LA TABLA ' + TxtTabla.Text);
  WriteLn(myFile, '==========================================================');

  if Mensaje('¿DESEA GENERAR TODOS LOS CAMPOS?',
             'Generación FieldByName', Pregunta, 2) = True then
    begin
      QryConsulta.First;
      for I := 0 to QryConsulta.Fields.Count - 1 do
        begin
          if (QryConsulta.Fields[I].DataType = ftFloat)
          or (QryConsulta.Fields[I].DataType = ftCurrency)
          or (QryConsulta.Fields[I].DataType = ftBCD) then
            begin
              WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsFloat := ');
            end;

          if (QryConsulta.Fields[I].DataType = ftString)
          or (QryConsulta.Fields[I].DataType = ftMemo) then
            begin
              WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsString := ');
            end;

          if (QryConsulta.Fields[I].DataType = ftDate) then
            begin
              WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDate := ');
            end;

          if (QryConsulta.Fields[I].DataType = ftDateTime)
          or (QryConsulta.Fields[I].DataType = ftTimeStamp) then
            begin
              WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDateTime := ');
            end;

          if (QryConsulta.Fields[I].DataType = ftInteger)
          or (QryConsulta.Fields[I].DataType = ftSmallint)
          or (QryConsulta.Fields[I].DataType = ftWord)
          or (QryConsulta.Fields[I].DataType = ftLongWord) then
            begin
              WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsInteger := ');
            end;

          if (QryConsulta.Fields[I].DataType = ftLargeint) then
            begin
              WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsLargeInt := ');
            end;

          if (QryConsulta.Fields[I].DataType = ftBoolean) then
            begin
              WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsBoolean := ');
            end;

          QryConsulta.Next;
        end;
    end
  else
    begin
      if CheckSelection(ListCamposSelect) = False then
        begin
          Mensaje('Debe Seleccionar los Campos a Generar!!!',
                  'Operación Invalida', Advertencia);
          BtBuscar.SetFocus;
          Abort;
        end;

      for J := 0 to ListCamposSelect.Items.Count - 1 do
        if ListCamposSelect.Items.Items[J].State = cbsChecked then
          begin
            QryConsulta.First;
            for I := 0 to QryConsulta.Fields.Count - 1 do
              begin
                if ListCamposSelect.Items.Items[J].Text = QryConsulta.Fields[I].FieldName then
                  begin
                    if (QryConsulta.Fields[I].DataType = ftFloat)
                    or (QryConsulta.Fields[I].DataType = ftCurrency)
                    or (QryConsulta.Fields[I].DataType = ftBCD) then
                      begin
                        WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsFloat := ');
                      end;

                    if (QryConsulta.Fields[I].DataType = ftString)
                    or (QryConsulta.Fields[I].DataType = ftMemo) then
                      begin
                        WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsString := ');
                      end;

                    if (QryConsulta.Fields[I].DataType = ftDate) then
                      begin
                        WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDate := ');
                      end;

                    if (QryConsulta.Fields[I].DataType = ftDateTime)
                    or (QryConsulta.Fields[I].DataType = ftTimeStamp) then
                      begin
                        WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDateTime := ');
                      end;

                    if (QryConsulta.Fields[I].DataType = ftInteger)
                    or (QryConsulta.Fields[I].DataType = ftLargeint)
                    or (QryConsulta.Fields[I].DataType = ftSmallint)
                    or (QryConsulta.Fields[I].DataType = ftWord)
                    or (QryConsulta.Fields[I].DataType = ftLongWord) then
                      begin
                        WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsInteger := ');
                      end;

                    if (QryConsulta.Fields[I].DataType = ftBoolean) then
                      begin
                        WriteLn(myFile, 'QryDataset.FieldByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsBoolean := ');
                      end;

                  end;

                QryConsulta.Next;
              end;
          end;
    end;

  CloseFile(myFile);

  Mensaje('Los Campos FieldByName para Delphi se Realizaron con Exito!!!',
          'Operación Completada', Informacion);

  //ABRIMOS EL ARCHIVO GENERADO
  ShellExecute(Handle,'open','c:\windows\notepad.exe',
    PWideChar(Ruta + '\CAMPOS_FieldByName.txt'), nil, SW_SHOWNORMAL);
end;

procedure TFRBuilder.BtGenerarClick(Sender: TObject);
var
  I : Integer;
  myFile : TextFile;
  Ruta, Str : string;
  Parametros : TStringList;
  LongMax : Integer;
  const
  TiposS : array[1..5] of string = ('decimal','numeric','char','varchar','nvarchar');
begin
  if QryProcedure.IsEmpty then
    begin
      Mensaje('Debe Ejecutar la Consulta!!!','Operación Invalida', Advertencia);
      BtBuscar1.SetFocus;
      Abort;
    end;

  Ruta := EdRutaArchivo.Text;

  if DirectoryExists(Ruta) then
    begin
      AssignFile(myFile, Ruta + '\PARAMETRO_PROCEDIMIENTO.txt');
      ReWrite(myFile);
    end
  else
    begin
      Mensaje('Debe Seleccionar un Directorio Valido!!!',
              'Operación Invalida', Advertencia);
      cxPageControl2.ActivePageIndex := 0;
      EdRutaArchivo.SetFocus;
      Abort;
    end;

  WriteLn(myFile, 'LISTADO DE CAMPOS');
  WriteLn(myFile, '');

  QryProcedure.First;
  for I := 0 to QryProcedure.RecordCount - 1 do
    begin
      if MatchStr(QryProcedure.FieldByName('ParameterDataType').AsString, TiposS) then
        begin
          Str := Justifica(Trim(QryProcedure.FieldByName('ParameterName').AsString), 40,' ', tjLeft) +
                 Trim(QryProcedure.FieldByName('ParameterDataType').AsString) +'('+
                 Trim(QryProcedure.FieldByName('Size').AsString) + ')';
        end
      else
        begin
          Str := Justifica(Trim(QryProcedure.FieldByName('ParameterName').AsString), 40,' ', tjLeft) +
                 Trim(QryProcedure.FieldByName('ParameterDataType').AsString);
        end;

      if CkbQuitarArroba.Checked then   //Quitamos la arroba que tienen los parametros
        WriteLn(myFile, StringReplace(Str,'@','',[rfReplaceAll, rfIgnoreCase]))
      else
        WriteLn(myFile, Str);

      QryProcedure.Next;
    end;

  WriteLn(myFile, '========================================================');
  WriteLn(myFile, '');

  WriteLn(myFile, 'with SP_'+ Trim(EdNombreProcedimiento.Text)+' do ');
  WriteLn(myFile, '  begin');
  WriteLn(myFile, '    Close;');

  //AQUI ARMAMOS LOS PARAMETROS Y SUS TIPOS DE DATOS

  Parametros := TStringList.Create;

  QryProcedure.First;
  for I := 0 to QryProcedure.RecordCount - 1 do
    begin
      if (QryProcedure.FieldByName('ParameterDataType').AsString = 'decimal')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'money')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'numeric')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'smallmoney')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'float')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'real') then
        begin
          Parametros.Add('    ParamByName(' + QuotedStr(QryProcedure.FieldByName('ParameterName').AsString) + ').AsFloat');
        end;

      if (QryProcedure.FieldByName('ParameterDataType').AsString = 'char')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'varchar')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'nvarchar') then
        begin
          Parametros.Add('    ParamByName(' + QuotedStr(QryProcedure.FieldByName('ParameterName').AsString) + ').AsString');
        end;

      if (QryProcedure.FieldByName('ParameterDataType').AsString = 'date') then
        begin
          Parametros.Add('    ParamByName(' + QuotedStr(QryProcedure.FieldByName('ParameterName').AsString) + ').AsDate');
        end;

      if (QryProcedure.FieldByName('ParameterDataType').AsString = 'datetime')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'smalldatetime')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'TimeStamp') then
        begin
          Parametros.Add('    ParamByName(' + QuotedStr(QryProcedure.FieldByName('ParameterName').AsString) + ').AsDateTime');
        end;

      if (QryProcedure.FieldByName('ParameterDataType').AsString = 'time') then
        begin
          Parametros.Add('    ParamByName(' + QuotedStr(QryProcedure.FieldByName('ParameterName').AsString) + ').AsTime');
        end;

      if (QryProcedure.FieldByName('ParameterDataType').AsString = 'int')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'smallint')
      or (QryProcedure.FieldByName('ParameterDataType').AsString = 'tinyint') then
        begin
          Parametros.Add('    ParamByName(' + QuotedStr(QryProcedure.FieldByName('ParameterName').AsString) + ').AsInteger');
        end;

      if (QryProcedure.FieldByName('ParameterDataType').AsString = 'bigint') then
        begin
          Parametros.Add('    ParamByName(' + QuotedStr(QryProcedure.FieldByName('ParameterName').AsString) + ').AsLargeInt');
        end;

      if (QryProcedure.FieldByName('ParameterDataType').AsString = 'bit') then
        begin
          Parametros.Add('    ParamByName(' + QuotedStr(QryProcedure.FieldByName('ParameterName').AsString) + ').AsBoolean');
        end;

      QryProcedure.Next;
    end;

  LongMax := MasLargo(Parametros);  //Obtenemos la linea mas larga del listado

  for I := 0 to Parametros.Count - 1 do
    begin
      if CkbQuitarArroba.Checked then   //Quitamos la arroba que tienen los parametros
        WriteLn(myFile, StringReplace(Justifica(Parametros.Strings[I], LongMax,' ', tjLeft) + ' := ;','@','',[rfReplaceAll, rfIgnoreCase]))
      else
        WriteLn(myFile, Justifica(Parametros.Strings[I], LongMax,' ', tjLeft) + ' := ;'  );
    end;

  Parametros.Free;

  WriteLn(myFile, '    ExecProc;');
  WriteLn(myFile, '  end;');

  // Close the file
  CloseFile(myFile);

  Mensaje('El Codigo SQL se Realizo con Exito!!!',
          'Operación Completada', Informacion);

  if RgFormatoSalida1.ItemIndex = 0 then
    CopiarAlPortaPapeles(Ruta + '\PARAMETRO_PROCEDIMIENTO.txt')
  else
    begin
      //ABRIMOS EL ARCHIVO GENERADO
      ShellExecute(Handle,'open','c:\windows\notepad.exe',
                   PWideChar(Ruta + '\PARAMETRO_PROCEDIMIENTO.txt'), nil, SW_SHOWNORMAL);
    end;
end;

procedure TFRBuilder.BtGenerar_DELETEClick(Sender: TObject);
var
  I, J, CampoCount, LongMax : Integer;
  myFile : TextFile;
  Ruta : string;
  Parametros : TStringList;
begin
  if CheckSelection(ListCamposWhereDelete) = False then
    begin
      Mensaje('Debe Seleccionar los Campos a Generar!!!',
              'Operación Invalida', Advertencia);
      BtBuscar.SetFocus;
      Abort;
    end;

  Ruta := EdRutaArchivo.Text;

  if DirectoryExists(Ruta) then
    begin
      AssignFile(myFile, Ruta + '\SQL_DELETE.txt');
      ReWrite(myFile);
    end
  else
    begin
      Mensaje('Debe Seleccionar un Directorio Valido!!!',
              'Ruta del Archivo Invalida', Advertencia);
      BtRutaArchivo.SetFocus;
      Abort;
    end;


  case RgTipoScriptDELETE.ItemIndex of
    0 : begin
          WriteLn(myFile, 'with QryDataset, SQL do ');
          WriteLn(myFile, '  begin');
          WriteLn(myFile, '    Close;');
          WriteLn(myFile, '    Clear;');
          WriteLn(myFile, '    Add(''DELETE FROM ' + Trim(TxtTabla.Text) + ''');');

          //AQUI GENERAMOS EL WHERE DEL DELETE...

          CampoCount := 0;
          for I := 0 to ListCamposWhereDelete.Items.Count - 1 do
            begin
              if ListCamposWhereDelete.Items.Items[I].State = cbsChecked then
                begin
                  Inc(CampoCount);

                  if CampoCount = 1 then //Si es el primer item seleccionado...
                    WriteLn(myFile, '    Add(''WHERE '+ ListCamposWhereDelete.Items.Items[I].Text + ' = :' + ListCamposWhereDelete.Items.Items[I].Text + ''');' )
                  else
                    WriteLn(myFile, '    Add(''AND ' + ListCamposWhereDelete.Items.Items[I].Text + ' = :' + ListCamposWhereDelete.Items.Items[I].Text + ''');' );
                end;
            end;

          //AQUI ARMAMOS LOS PARAMETROS Y SUS TIPOS DE DATOS
          Parametros := TStringList.Create;

          for J := 0 to ListCamposWhereDelete.Items.Count - 1 do
            if ListCamposWhereDelete.Items.Items[J].State = cbsChecked then
              begin
                QryConsulta.First;
                for I := 0 to QryConsulta.Fields.Count - 1 do
                  begin
                    if ListCamposWhereDelete.Items.Items[J].Text = QryConsulta.Fields[I].FieldName then
                      begin
                        if (QryConsulta.Fields[I].DataType = ftFloat)
                        or (QryConsulta.Fields[I].DataType = ftCurrency)
                        or (QryConsulta.Fields[I].DataType = ftBCD) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsFloat');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftString)
                        or (QryConsulta.Fields[I].DataType = ftMemo) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsString');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftDate) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDate');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftDateTime)
                        or (QryConsulta.Fields[I].DataType = ftTimeStamp) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsDateTime');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftInteger)
                        or (QryConsulta.Fields[I].DataType = ftSmallint)
                        or (QryConsulta.Fields[I].DataType = ftWord)
                        or (QryConsulta.Fields[I].DataType = ftLongWord)
                        or (QryConsulta.Fields[I].DataType = ftShortint)
                        or (QryConsulta.Fields[I].DataType = ftByte) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsInteger');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftLargeint) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsLargeInt');
                          end;

                        if (QryConsulta.Fields[I].DataType = ftBoolean) then
                          begin
                            Parametros.Add('    ParamByName(' + QuotedStr(QryConsulta.Fields[I].FieldName) + ').AsBoolean');
                          end;
                      end;

                    QryConsulta.Next;
                  end;
              end;

          LongMax := MasLargo(Parametros);  //Obtenemos la linea mas larga del listado

          for I := 0 to Parametros.Count - 1 do
            begin
              WriteLn(myFile, Justifica(Parametros.Strings[I], LongMax,' ', tjLeft) + ' := ;');
            end;

          Parametros.Free;

          WriteLn(myFile, '    ExecSQL;');
          WriteLn(myFile, '  end;');

        end;

    1 : begin
          WriteLn(myFile, 'DELETE FROM ' + Trim(TxtTabla.Text));

          //AQUI GENERAMOS EL WHERE DEL DELETE...

          CampoCount := 0;
          for I := 0 to ListCamposWhereDelete.Items.Count - 1 do
            begin
              if ListCamposWhereDelete.Items.Items[I].State = cbsChecked then
                begin
                  Inc(CampoCount);

                  if CampoCount = 1 then //Si es el primer item seleccionado...
                    WriteLn(myFile, 'WHERE '+ ListCamposWhereDelete.Items.Items[I].Text + ' = @' + ListCamposWhereDelete.Items.Items[I].Text)
                  else
                    WriteLn(myFile, 'AND ' + ListCamposWhereDelete.Items.Items[I].Text + ' = @' + ListCamposWhereDelete.Items.Items[I].Text);
                end;
            end;

        end;
  end;

  // Close the file
  CloseFile(myFile);

  Mensaje('El Codigo SQL DELETE se Realizo con Exito!!!',
          'Operación Completada', Informacion);

  if RgFormatoSalida.ItemIndex = 0 then
    CopiarAlPortaPapeles(Ruta + '\SQL_DELETE.txt')
  else
    begin
      //ABRIMOS EL ARCHIVO GENERADO
      ShellExecute(Handle,'open','c:\windows\notepad.exe',
        PWideChar(Ruta + '\SQL_DELETE.txt'), nil, SW_SHOWNORMAL);
    end;
end;

procedure TFRBuilder.FormClose(Sender: TObject; var Action: TCloseAction);
 var
  Archivo : string;
begin
  Archivo := ExtractFilePath(Application.ExeName) + ChangeFileExt('Conexion','.ini');

  if FileExists(Archivo) then
    begin
      with TIniFile.Create(Archivo) do
        try
          WriteString('Conexion', 'Tabla', Trim(TxtTabla.Text));
          WriteString('Conexion', 'Ruta', Trim(EdRutaArchivo.Text));
        finally
          Free;
        end;
    end;

end;

procedure TFRBuilder.FormCreate(Sender: TObject);
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
              Mensaje('No Existe el Servidor ó Hay Problemas de Conexión' +#13+ E.Message,
                      'Error de Conexión',Error);
              DebeCerrar := True;
            end;
          end;

          TxtTabla.Text      := ReadString('Conexion', 'Tabla','');
          EdRutaArchivo.Text := ReadString('Conexion', 'Ruta','');

        finally
          Free;
        end;
    end
  else
    begin
      if Mensaje('No se ha Encontrado el Fichero de Configuración.' +'  '+
                 '¿Desea Crear el Archivo de Configuración?',
                 'El Archivo de Configuración NO EXISTE',Pregunta) then
        begin
          with TIniFile.Create(Archivo) do
            try
              WriteString('Conexion', 'Servidor', DataBase.Params.Values['Server']);
              WriteString('Conexion', 'Database', DataBase.Params.Values['Database']);
              WriteString('Conexion', 'Usuario', DataBase.Params.Values['User_Name']);
              WriteString('Conexion', 'Password', DataBase.Params.Values['Password']);
              WriteString('Conexion', 'Tabla', Trim(TxtTabla.Text));
              WriteString('Conexion', 'Ruta', Trim(EdRutaArchivo.Text));
            finally
              Free;
            end;
        end
      else
        DebeCerrar := True;
    end;

  if DebeCerrar then
    begin
      Application.Terminate; //marca la aplicación para que se cierre después de que se complete el evento actual.
      Close; // Cierra el formulario principal
    end;
end;

procedure TFRBuilder.FormShow(Sender: TObject);
begin
  ModoOscuroClaro.Formulario     := Self;
  ModoOscuroClaro.SkinController := dxSkinController1;
  SkinsModoClaro(True);


  cxPageControl1.ActivePageIndex:= 0;
  cxPageControl2.ActivePageIndex:= 0;
//  ActivityIndicator1.Visible := False;
//  ActivityIndicator1.SendToBack;
  StbBarraEstado.Panels.Items[0].Text := 'Servidor : ' + DataBase.Params.Values['Server'];
  StbBarraEstado.Panels.Items[1].Text := 'Base de Datos : ' + DataBase.Params.Values['Database'];
end;

procedure TFRBuilder.Image1Click(Sender: TObject);
begin
  FRSelectQueryBuilder := TFRSelectQueryBuilder.Create(Self);
  FRSelectQueryBuilder.ShowModal;
  FRSelectQueryBuilder.Free;
end;

procedure TFRBuilder.LimpiarListados;
begin
  ListCamposInsert.Items.Clear;
  ListCamposInsertSel.Items.Clear;
  ListCamposSelect.Items.Clear;
  ListCamposWhereSelect.Items.Clear;
  ListCamposOrderBy.Items.Clear;
  ListCamposUpdate.Items.Clear;
  ListCamposWhereUpdate.Items.Clear;
  ListCamposWhereDelete.Items.Clear;
end;

procedure TFRBuilder.ListCamposInsertClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var
  CantSel : Integer;
begin
  CantSel          := TotalChecked(ListCamposInsert);
  cxLabel2.Caption := 'LISTA DE CAMPOS ' + '[ '+  IntToStr(CantSel) + ' ]';
end;

procedure TFRBuilder.ListCamposSelectClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var
  CantSel : Integer;
begin
  CantSel          := TotalChecked(ListCamposSelect);
  cxLabel3.Caption := 'LISTA DE CAMPOS ' + '[ '+  IntToStr(CantSel) + ' ]';
end;

procedure TFRBuilder.ListCamposSelectDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  ACanvas      : TcxCanvas;
  AText        : string;
  ATextRect    : TRect;
  AListBox     : TcxCheckListBox;
  ACanvasFont  : TFont;
  AItemState   : TcxCheckBoxState;
begin      //AQUI MANEJAMOS EL ESTILO NEGRITA SI MARCAMOS ALGUN ITEM
  AListBox     := (Control as TcxCheckListBox);
  ACanvas      := AListBox.InnerCheckListBox.Canvas;
  ACanvasFont  := ACanvas.Font;
  AItemState   := AListBox.Items[Index].State;

  case AItemState of
    cbsUnchecked :
      begin
        if dxToggleSwitch1.Checked then    //Si estamos en el modo oscuro
          ACanvasFont.Color := clGray
        else
          ACanvasFont.Color := clBlack;
      end;
    cbsChecked :
      begin
        if dxToggleSwitch1.Checked then
          ACanvasFont.Color := clWhite
        else
          ACanvasFont.Color := clBlack;

        ACanvasFont.Style := [fsBold];
      end;
    cbsGrayed :
      begin
        ACanvasFont.Color := clGray;
      end;
  end;

  //MANEJAMOS EL COLOR DE FONDO SEGUN CORRESPONDA

  if dxToggleSwitch1.Checked then    //Si estamos en el modo oscuro
    ACanvas.Brush.Color := $00262525
  else
    ACanvas.Brush.Color := clWhite;

  ACanvas.FillRect(Rect);
  AText     := AListBox.Items[Index].Text;
  ATextRect := Rect;
  ACanvas.DrawTexT(AText, ATextRect, 0);
end;

procedure TFRBuilder.ListCamposUpdateClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var
  CantSel : Integer;
begin
  CantSel          := TotalChecked(ListCamposUpdate);
  cxLabel5.Caption := 'LISTA DE CAMPOS ' + '[ '+  IntToStr(CantSel) + ' ]';
end;

function TFRBuilder.TotalChecked(CheckList : TcxCheckListBox) : Integer;
var
  I, S : Integer;
begin
  S := 0;
  for I := 0 to CheckList.Items.Count - 1 do
    if CheckList.Items.Items[I].State = cbsChecked then
      Inc(S);
  Result := S;
end;

function TFRBuilder.CheckSelection(CheckList : TcxCheckListBox) : Boolean;
var
  I : Integer;
begin
  Result := False;
  for I := 0 to CheckList.Items.Count - 1 do
    if CheckList.Items.Items[I].State = cbsChecked then
      Result := True;
end;

procedure TFRBuilder.CkbListInsertClick(Sender: TObject);
begin
  if CkbListInsert.Checked then
    SeleccionarTodo(ListCamposInsert, True)
  else
    SeleccionarTodo(ListCamposInsert, False);

  ListCamposInsert.Refresh;
end;

procedure TFRBuilder.CkbListOrderByClick(Sender: TObject);
begin
  if CkbListOrderBy.Checked then
    SeleccionarTodo(ListCamposOrderBy, True)
  else
    SeleccionarTodo(ListCamposOrderBy, False);

  ListCamposOrderBy.Refresh;
end;

procedure TFRBuilder.CkbListTodoSelectClick(Sender: TObject);
begin
  if CkbListTodoSelect.Checked then
    SeleccionarTodo(ListCamposSelect, True)
  else
    SeleccionarTodo(ListCamposSelect, False);

  ListCamposSelect.Refresh;
end;

procedure TFRBuilder.CkbListUpdateClick(Sender: TObject);
begin
  if CkbListUpdate.Checked then
    SeleccionarTodo(ListCamposUpdate, True)
  else
    SeleccionarTodo(ListCamposUpdate, False);

  ListCamposUpdate.Refresh;
end;

procedure TFRBuilder.CkbListWhereDeleteClick(Sender: TObject);
begin
  if CkbListWhereDelete.Checked then
    SeleccionarTodo(ListCamposWhereDelete, True)
  else
    SeleccionarTodo(ListCamposWhereDelete, False);

  ListCamposWhereDelete.Refresh;
end;

procedure TFRBuilder.CkbListWhereSelectClick(Sender: TObject);
begin
  if CkbListWhereSelect.Checked then
    SeleccionarTodo(ListCamposWhereSelect, True)
  else
    SeleccionarTodo(ListCamposWhereSelect, False);

  ListCamposWhereSelect.Refresh;
end;

procedure TFRBuilder.CkbListWhereUpdateClick(Sender: TObject);
begin
  if CkbListWhereUpdate.Checked then
    SeleccionarTodo(ListCamposWhereUpdate, True)
  else
    SeleccionarTodo(ListCamposWhereUpdate, False);

  ListCamposWhereUpdate.Refresh;
end;

procedure TFRBuilder.BtAddItemClick(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to ListCamposInsert.Items.Count - 1 do
    begin
      if ListCamposInsert.Items.Items[I].State = cbsChecked then
        begin
          if ListCamposInsertSel.Items.IndexOf(ListCamposInsert.Items.Items[I].Text) = -1 then
            ListCamposInsertSel.Items.Add(ListCamposInsert.Items.Items[I].Text);
        end;
    end;

end;

procedure TFRBuilder.BtBuscar1Click(Sender: TObject);
var
  I : Integer;
  Str : string;
  const
  TiposS : array[1..5] of string = ('decimal','numeric','char','varchar','nvarchar');
begin
  MmoListParams.Lines.Clear;

  QryProcedure.Close;
  QryProcedure.ParamByName('ProcedureName').AsString := Trim(EdNombreProcedimiento.Text);
  QryProcedure.Open;

  QryProcedure.First;
  for I := 0 to QryProcedure.RecordCount - 1 do
    begin
      if MatchStr(QryProcedure.FieldByName('ParameterDataType').AsString, TiposS) then //SI EL VALOR COINCIDE CON UN VALOR DEL ARRAY
        begin
          Str := Justifica(Trim(QryProcedure.FieldByName('ParameterName').AsString), 40,' ', tjLeft) +
                 Trim(QryProcedure.FieldByName('ParameterDataType').AsString) +'('+
                 Trim(QryProcedure.FieldByName('Size').AsString) + ')';
        end
      else
        begin
          Str := Justifica(Trim(QryProcedure.FieldByName('ParameterName').AsString), 40,' ', tjLeft) +
                 Trim(QryProcedure.FieldByName('ParameterDataType').AsString);
        end;

      if CkbQuitarArroba.Checked then   //Quitamos la arroba que tienen los parametros
        MmoListParams.Lines.Add(StringReplace(Str,'@','',[rfReplaceAll, rfIgnoreCase]))
      else
        MmoListParams.Lines.Add(Str);

      QryProcedure.Next;
    end;
end;

procedure TFRBuilder.BtScriptStoreProcedureClick(Sender: TObject);
var
  C, Str, Columna, TipoDato : string;
  CantidadCol, N, I : Integer;
  Campos : TStringList;
  myFile : TextFile;
  Ruta : string;
begin
  if EdNombreProcedimiento.Text = EmptyStr then
    begin
      Mensaje('Debe Proporcionar un Nombre para el Store Procedure.',
              'Nombre Invalido', Advertencia);
      EdNombreProcedimiento.SetFocus;
      Abort;
    end;

  Ruta := EdRutaArchivo.Text;

  if DirectoryExists(Ruta) then
    begin
      AssignFile(myFile, Ruta + '\SQL_Store_Procedure.txt');
      ReWrite(myFile);
    end
  else
    begin
      Mensaje('Debe Seleccionar un Directorio Valido!!!',
              'Ruta del Archivo Invalida', Advertencia);
      cxPageControl1.ActivePageIndex := 0;
      BtRutaArchivo.SetFocus;
      Abort;
    end;

  with QryDatasetStructure do
    begin
      Close;
      ParamByName('TABLE_NAME').AsString := Trim(TxtTabla.Text);
      Open;
      First;
    end;

  with QryPrimaryKeys do
    begin
      Close;
      ParamByName('TABLE_NAME').AsString := Trim(TxtTabla.Text);
      Open;
    end;

  Campos := TStringList.Create;
  WriteLn(myFile, 'CREATE PROCEDURE ' + Trim(EdNombreProcedimiento.Text));

  for I := 0 to QryDatasetStructure.RecordCount - 1 do
    begin
      Columna   := QryDatasetStructure.FieldByName('COLUMN_NAME').AsString;
      TipoDato  := QryDatasetStructure.FieldByName('DATA_TYPE_2').AsString;
      Campos.Add(Columna);

      C := EmptyStr;
      if I < QryDatasetStructure.RecordCount - 1 then
        C := ',';

      WriteLn(myFile,'@' + Columna +' '+ TipoDato + C);

      QryDatasetStructure.Next;
    end;

  WriteLn(myFile, 'AS');
  WriteLn(myFile, 'BEGIN');
  WriteLn(myFile, '  BEGIN TRY');
  WriteLn(myFile, '    INSERT INTO ' + Trim(TxtTabla.Text) + ' (');


  CantidadCol := StrToIntDef(EdCantidadColProc.Text, 1);
  N      := 0;

  for I:= 0 to Campos.Count - 1 do
    begin
      Inc(N);
      C := EmptyStr;
      if I < Campos.Count - 1 then
        C := ',';

      if N = CantidadCol then
        begin
          Str := Str + ' ' + Campos[I] + C + #13;
          N   := 0;
        end
      else
        Str := Str + ' ' + Campos[I] + C;
    end;


  WriteLn(myFile, Justifica(Str,Length(Str),' ',tjLeft));


  WriteLn(myFile, '     )');
  WriteLn(myFile, '    VALUES (');

  Str := EmptyStr;
  N   := 0;
  for I:= 0 to Campos.Count - 1 do
    begin
      Inc(N);
      C := EmptyStr;
      if I < Campos.Count - 1 then
        C := ',';

      if N = CantidadCol then
        begin
          Str := Str + ' @' + Campos[I] + C + #13;
          N   := 0;
        end
      else
        Str := Str + ' @' + Campos[I] + C;
    end;

  WriteLn(myFile, Justifica(Str,Length(Str),' ',tjLeft));


  WriteLn(myFile, '    )');
  WriteLn(myFile, '  END TRY');
  WriteLn(myFile, '  BEGIN CATCH');
  WriteLn(myFile, '    UPDATE ' + Trim(TxtTabla.Text) + ' SET');

  for I := 0 to Campos.Count - 1 do
    begin
      C := EmptyStr;
      if I < Campos.Count - 1 then
        C := ',';
      WriteLn(myFile, '      ' + Justifica(Campos[I],20,' ',tjLeft) +' '+ Justifica('= @' + Campos[I] + C,20,' ',tjLeft));
    end;

  WriteLn(myFile, '    WHERE ');
  Columna := EmptyStr;
  Str     := EmptyStr;

  QryPrimaryKeys.First;
  for I:= 0 to QryPrimaryKeys.RecordCount - 1 do
    begin
      Columna := QryPrimaryKeys.FieldByName('COLUMN_NAME').AsString;
      C := EmptyStr;
      if I < QryPrimaryKeys.RecordCount - 1 then
        C := ' AND ';
      Str := Columna +' = @'+ Columna + C;
      WriteLn(myFile, '      ' + Str);

      QryPrimaryKeys.Next;
    end;

  WriteLn(myFile, '  END CATCH');
  WriteLn(myFile, 'END');

  for I := 1 to 5 do
    begin
      WriteLn(myFile, '');
    end;

  //CREATE PROCEDURE DELETE

  WriteLn(myFile, 'CREATE PROCEDURE ' + Trim(EdNombreProcedimiento.Text));

  QryPrimaryKeys.First;
  for I:= 0 to QryPrimaryKeys.RecordCount - 1 do
    begin
      Columna := QryPrimaryKeys.FieldByName('COLUMN_NAME').AsString +' '+
                 QryPrimaryKeys.FieldByName('DATA_TYPE').AsString;
      C := EmptyStr;
      if I < QryPrimaryKeys.RecordCount - 1 then
        C := ',';
      Str := '@' + Columna + C;
      WriteLn(myFile, Str);

      QryPrimaryKeys.Next;
    end;

  WriteLn(myFile, 'AS');
  WriteLn(myFile, 'BEGIN');
  WriteLn(myFile, '  DELETE FROM ' + Trim(TxtTabla.Text));
  WriteLn(myFile, '  WHERE ');

  Columna := EmptyStr;
  Str     := EmptyStr;

  QryPrimaryKeys.First;
  for I:= 0 to QryPrimaryKeys.RecordCount - 1 do
    begin
      Columna := QryPrimaryKeys.FieldByName('COLUMN_NAME').AsString;
      C := EmptyStr;
      if I < QryPrimaryKeys.RecordCount - 1 then
        C := ' AND ';
      Str := Columna +' = @'+ Columna + C;
      WriteLn(myFile, '      ' + Str);

      QryPrimaryKeys.Next;
    end;

  WriteLn(myFile, 'END');

  Campos.Free;
  CloseFile(myFile);

  Mensaje('El Script del Store Procedure se Realizo con Exito!!!',
          'Operación Completada', Informacion);

  if RgFormatoSalida1.ItemIndex = 0 then
    CopiarAlPortaPapeles(Ruta + '\SQL_Store_Procedure.txt')
  else
    begin
      //ABRIMOS EL ARCHIVO GENERADO
      ShellExecute(Handle,'open','c:\windows\notepad.exe',
        PWideChar(Ruta + '\SQL_Store_Procedure.txt'), nil, SW_SHOWNORMAL);
    end;

end;

procedure TFRBuilder.cxButton1Click(Sender: TObject);
begin
  ClbMoveItemUp(ListCamposSelect);
end;

procedure TFRBuilder.cxButton2Click(Sender: TObject);
begin
  ClbMoveItemDown(ListCamposSelect);
end;

procedure TFRBuilder.cxButton3Click(Sender: TObject);
begin
  ClbMoveItemUp(ListCamposWhereSelect);
end;

procedure TFRBuilder.cxButton4Click(Sender: TObject);
begin
  ClbMoveItemDown(ListCamposWhereSelect);
end;

procedure TFRBuilder.cxButton5Click(Sender: TObject);
begin
  ClbMoveItemUp(ListCamposOrderBy);
end;

procedure TFRBuilder.cxButton6Click(Sender: TObject);
begin
  ClbMoveItemDown(ListCamposOrderBy);
end;

procedure TFRBuilder.cxButton7Click(Sender: TObject);
begin
  ClbMoveItemUp(ListCamposUpdate);
end;

procedure TFRBuilder.cxButton8Click(Sender: TObject);
begin
  ClbMoveItemDown(ListCamposUpdate);
end;

procedure TFRBuilder.cxButton9Click(Sender: TObject);
begin
  ClbMoveItemUp(ListCamposWhereUpdate);
end;

procedure TFRBuilder.cxButton10Click(Sender: TObject);
begin
  ClbMoveItemDown(ListCamposWhereUpdate);
end;

procedure TFRBuilder.cxButton11Click(Sender: TObject);
begin
  ClbMoveItemUp(ListCamposWhereDelete);
end;

procedure TFRBuilder.cxButton12Click(Sender: TObject);
begin
  ClbMoveItemDown(ListCamposWhereDelete);
end;

procedure TFRBuilder.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 1 then
    EdNombreProcedimiento.SetFocus;
end;

procedure TFRBuilder.EdBusquedaCampoKeyPress(Sender: TObject; var Key: Char);
var                 //MANEJO DE LA BUSQUEDA DE LOS CAMPOS EN EL CHECKLISTBOX
  I, J : Integer;
  Nombre : string;
begin
  if Key = #13 then
    begin
      if Trim(EdBusquedaCampo.Text) <> '' then
        begin
          for I := 0 to (ListCamposSelect.Items.Count - 1) do
            begin
              //OBTENEMOS EL NOMBRE DEL CAMPO
              Nombre := ListCamposSelect.Items.Items[I].Text;

{              case RgTipoBusqueda.ItemIndex of
                0 : begin            //BUSQUEDA EXACTA...
                      if (AnsiStrLIComp(PChar(Nombre), PChar(EdBusquedaCampo.Text), Length(EdBusquedaCampo.Text)) = 0) and (I > UltIndice) then
                        begin
                          J                          := I;
                          UltIndice                  := J;
                          ListCamposSelect.ItemIndex := J;
                          Break;
                        end
                      else
                        ListCamposSelect.ItemIndex := UltIndice;
                    end;

                1 : begin  }          //BUSQUEDA APROXIMADA...
                      if (Pos(AnsiUpperCase(Trim(EdBusquedaCampo.Text)), AnsiUpperCase(ListCamposSelect.Items.Items[I].Text)) > 0) and (I > UltIndice) then
                        begin
                          J                          := I;
                          UltIndice                  := J;
                          ListCamposSelect.ItemIndex := J;
                          Break;
                        end
                      else
                        ListCamposSelect.ItemIndex := UltIndice;
//                    end;
//              end;
            end;
        end;
      EdBusquedaCampo.SetFocus;
    end;

end;

procedure TFRBuilder.EdBusquedaCampoPropertiesChange(Sender: TObject);
begin
  UltIndice := -1;
end;

procedure TFRBuilder.SeleccionarTodo(CheckList : TcxCheckListBox; Value : Boolean);
var
  I : Integer;
begin
  for I := 0 to CheckList.Items.Count - 1 do
    if Value = True then
      CheckList.Items.Items[I].State:= cbsChecked
    else
      CheckList.Items.Items[I].State:= cbsUnchecked;
end;

//Funcion para saber cual es la linea mas larga que tiene el StringList
function TFRBuilder.MasLargo(Lista : TStringList) : Integer;
var
  I, Valor, Max : Integer;
begin
  Max := 0;
  for I := 0 to Lista.Count - 1 do
    begin
      Valor := Length(Lista.Strings[I]);
      if Valor > Max then
          Max := Valor;
    end;
  Result := Max;
end;

{ *** FUNCIONES PARA EL MANEJO DE CADENAS DELIMITADAS *** }
{
//PARA OBTENER LA CANTIDAD DE TOKENS EN LA CADENA DELIMITADA...
function TFRBuilder.GetTokenCount(Cadena, Separador : string) : Integer;
var
  I, xLen, TotalTokens : Integer;
  xFlag : Boolean;
begin
  TotalTokens := 0;
  xLen        := Length(Cadena);
  I           := 1;
  xFlag := False;
  while (I <= xLen) and (xLen <> 0) do
    begin
      if (Cadena[I] = Separador) then
        xFlag := False
      else
        begin
          if (not xFlag) then
            begin
              xFlag := True;
              Inc(TotalTokens);
            end;
        end;
      Inc(I);
    end;
  Result := TotalTokens;
end;

//PARA OBTENER EL TOKEN DE ACUERDO A SU NUMERO EN LA CADENA DELIMITADA...
function TFRBuilder.GetToken(Cadena, Separador : string; Token : Integer) : string;

// Cadena     es la string delimitada en la que buscamos el token
// Separador  es la string que separa cada token
// Token      es el número de token que buscamos

 var
   Posicion : Integer;
begin
  while Token > 1 do
    begin
      Delete(Cadena,1,Pos(Separador,Cadena));
      Dec(Token);
    end;

  Posicion:= Pos(Separador,Cadena);

  if Posicion = 0 then
    Result := Cadena
  else
    Result:= Trim(Copy(Cadena,1,Posicion - Length(Separador)));
end;

//PARA OBTENER EL ULTIMO TOKEN EN LA CADENA DELIMITADA...
function TFRBuilder.LastToken(Cadena, Separador : string) : string;
begin
  Result := GetToken(Cadena, Separador, GetTokenCount(Cadena, Separador));
end;

//PARA SABER SI EL VALOR DEL TOKEN ES EL ULTIMO EN LA CADENA DELIMITADA...
function TFRBuilder.IsLastToken(Cadena, Separador : string; TokenName : string) : Boolean;
var
  I, NumToken, TotalTokens : Integer;
begin
  NumToken    := 0;
  TotalTokens := GetTokenCount(Cadena, Separador);

  for I:= 1 to TotalTokens do
    begin
      if Trim(TokenName) = Trim(GetToken(Cadena, Separador, I)) then
        begin
          NumToken := I;
          Break;
        end;
    end;

  if NumToken = TotalTokens then
    Result := True
  else
    Result := False;
end;

//PARA SABER SI EL NUMERO DE TOKEN ES EL ULTIMO EN LA CADENA DELIMITADA...
function TFRBuilder.IsLastToken(Cadena, Separador : string; Token : Integer) : Boolean;
begin
  if Token = GetTokenCount(Cadena, Separador) then
    Result := True
  else
    Result := False;
end;

//PARA SABER SI EL TOKEN EXISTE EN LA CADENA DELIMITADA...
function TFRBuilder.TokenExists(Cadena, Separador : string; TokenName : string) : Boolean;
var
  I, TotalTokens : Integer;
begin
  Result := False;

  TotalTokens := GetTokenCount(Cadena, Separador);

  for I:= 1 to TotalTokens do
    begin
      if TokenName = GetToken(Cadena, Separador, I) then
        begin
          Result := True;
          Break;
        end;
    end;
end;

//FUNCION PARA ELIMINAR EL NUMERO DE TOKEN DENTRO DE LA CADENA DELIMITADA...
function TFRBuilder.FDeleteToken(Cadena, Separador : string; Token : Integer) : string;
var
  Temp : string;
begin
  Temp := Cadena;
  Delete(Temp, Pos(GetToken(Temp, Separador, Token), Temp), Length(GetToken(Temp, Separador, Token))+1);

  if IsLastToken(Cadena, Separador, Token) then  //Si es el ultimo token
    begin
      Delete(Temp, Length(Temp), 1);  //le quitamos el delimitador
      Result := Temp;
    end
  else
    Result := Temp;
end;

//PROCEDIMIENTO PARA ELIMINAR EL NUMERO DE TOKEN DENTRO DE LA CADENA DELIMITADA...
procedure TFRBuilder.DeleteToken(Cadena, Separador : string; Token : Integer);
begin
//  ShowMessage(IntToStr( Pos(GetToken(Cadena, Separador, Token), Cadena)));

//  Delete(Cadena, 12, Length(GetToken(Cadena, Separador, Token)));

//  Delete(Cadena, Pos(GetToken(Cadena, Separador, Token), Cadena), Length(GetToken(Cadena, Separador, Token))+1);

end;

//FUNCION PARA GUARDAR LA CADENA DELIMITADA EN UN ARRAY DE STRING
function TFRBuilder.DesarmarCadena(const Separador, Cadena : string) : TArray<string>;
var
  I : Integer;
  S : string;
begin
  S := Cadena;
  SetLength(Result, 0);
  I := 0;
  while Pos(Separador, S) > 0 do
    begin
      SetLength(Result, Length(Result) +1);
      Result[I] :=  Copy(S, 1, Pos(Separador, S) -1) ;
      Inc(I);
      S := Trim(Copy(S, Pos(Separador, S) + Length(Separador), Length(S)));
    end;

  SetLength(Result, Length(Result) + 1);
  Result[I] := Copy(S, 1, Length(S));
end;
}

procedure TFRBuilder.dxToggleSwitch1Click(Sender: TObject);
begin
  if dxToggleSwitch1.Checked then
    begin
      SkinsModoClaro(False);
    end
  else
    begin
      SkinsModoClaro(True);
    end;

end;

//function TFRBuilder.BuscarElementoLista(Elemento : string; Lista : TcxCheckListBox) : Integer;
//var
//  I : Integer;
//begin
//  Result := -1;
//
//  for I := 0 to Lista.Items.Count - 1 do
//    begin
//      if AnsiUpperCase(Lista.Items.Items[I].Text) = AnsiUpperCase(Elemento) then
//        begin
//          Result := I;
//          Exit;
//        end;
//    end;
//end;

procedure TFRBuilder.LbMoveItemUp(AListBox : TcxListBox);
var
  CurrIndex : Integer;
begin
  with AListBox do
    if ItemIndex > 0 then
      begin
        CurrIndex := ItemIndex;
        Items.Move(ItemIndex, (CurrIndex - 1));
        ItemIndex := CurrIndex - 1;
      end;
end;

procedure TFRBuilder.LbMoveItemDown(AListBox : TcxListBox);
var
  CurrIndex, LastIndex : Integer;
begin
  with AListBox do
    begin
      CurrIndex := ItemIndex;
      LastIndex := Items.Count;
      if ItemIndex <> -1 then
        begin
          if CurrIndex + 1 < LastIndex then
            begin
              Items.Move(ItemIndex, (CurrIndex + 1));
              ItemIndex := CurrIndex + 1;
            end;
        end;
    end;
end;

function TFRBuilder.FindSelectedItem(ACheckListBox : TcxCheckListBox) : Integer;
var
  I : Integer;
begin
  Result := -1;
  for I := 0 to ACheckListBox.Count - 1 do
    if ACheckListBox.Selected[I] then
    begin
      Result := I;
      Break;
    end;
end;

procedure TFRBuilder.ClbMoveItemUp(ACheckListBox : TcxCheckListBox);
var
  ItemIndex : Integer;
begin
  ItemIndex := FindSelectedItem(ACheckListBox);
  if (ItemIndex <> -1) then
    begin
      try
        ACheckListBox.Items[ItemIndex].Index  := ACheckListBox.Items[ItemIndex].Index - 1;
        ACheckListBox.Selected[ItemIndex - 1] := True;

      except
        on E : EArgumentOutOfRangeException do
        begin

        end;
      end;
    end;
end;

procedure TFRBuilder.ClbMoveItemDown(ACheckListBox : TcxCheckListBox);
var
  ItemIndex : Integer;
begin
  ItemIndex := FindSelectedItem(ACheckListBox);
  if (ItemIndex <> -1) then
    begin
      try
        ACheckListBox.Items[ItemIndex].Index  := ACheckListBox.Items[ItemIndex].Index + 1;
        ACheckListBox.Selected[ItemIndex + 1] := True;

      except
        on E : EArgumentOutOfRangeException do
        begin

        end;
      end;
    end;
end;


end.
