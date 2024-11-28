unit UFRNuevoJoin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  dxSkinMoneyTwins, dxSkinOffice2007Blue, dxSkinOffice2010Silver, dxSkinVS2010,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView, cxCustomListBox, cxListBox, cxClasses, cxGridLevel, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ComCtrls, cxListView, Data.DB, cxDBData, dxmdaset,
  cxGridDBTableView, cxGroupBox, cxRadioGroup, cxDataUtils, dxCore,
  dxRibbonSkins, dxRibbonCustomizationForm, dxBar, dxRibbon, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxMemo, cxCheckBox, SkinAzul;

type
  TFRNuevoJoin = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    CbTabla1: TcxComboBox;
    CbTabla2: TcxComboBox;
    cxGrid1: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    LsbCamposTabla1: TcxListBox;
    LsbCamposTabla2: TcxListBox;
    BtAgregar: TcxButton;
    BtEliminar: TcxButton;
    BtMoverArriba: TcxButton;
    BtMoverAbajo: TcxButton;
    RgTipoJoin: TcxRadioGroup;
    CbOperadorJoin: TcxComboBox;
    cxLabel3: TcxLabel;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1TableView1Column1: TcxGridColumn;
    cxGrid1TableView1Column2: TcxGridColumn;
    cxGridStyles: TcxStyleRepository;
    Seleccionado: TcxStyle;
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    ActionManager1: TActionManager;
    cxImageList1: TcxImageList;
    ActAceptar: TAction;
    ActSalir: TAction;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    BtAgregarJoin: TcxButton;
    CkbPrimerJoin: TcxCheckBox;
    BalloonHint1: TBalloonHint;
    MmJoins: TcxMemo;
    procedure BtMoverArribaClick(Sender: TObject);
    procedure BtMoverAbajoClick(Sender: TObject);
    procedure LsbCamposTabla1Click(Sender: TObject);
    procedure LsbCamposTabla2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbTabla1PropertiesChange(Sender: TObject);
    procedure CbTabla2PropertiesChange(Sender: TObject);
    procedure BtEliminarClick(Sender: TObject);
    procedure BtAgregarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActAceptarExecute(Sender: TObject);
    procedure ActSalirExecute(Sender: TObject);
    procedure cxLabel4Click(Sender: TObject);
    procedure cxLabel5Click(Sender: TObject);
    procedure BtAgregarJoinClick(Sender: TObject);
    procedure BtAgregarJoinMouseEnter(Sender: TObject);
    procedure BtAgregarJoinMouseLeave(Sender: TObject);
  private
    StrSelect : string;
    procedure MoveRecord(ARecordIndex : Integer; IsUpDirection : Boolean);
    procedure LlenarComboxFromDataset(ComboBox : TcxComboBox; Dataset : TDataSet; Campo : string);
    procedure BubbleSort(var Arreglo : array of string; Ascendente : Boolean = True);
    procedure OrdenarListBox(ListBox : TcxListBox);
  public

  end;

var
  FRNuevoJoin: TFRNuevoJoin;

type
  TcxGridDataControllerAccess = class(TcxGridDataController);

const
  Columna1 = 0;
  Columna2 = 0;

implementation

uses
  UFRBuilder, UFRQueryBuilder;

{$R *.dfm}

procedure TFRNuevoJoin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrOk then
    begin
      FRQueryBuilder.SelectJoin                    := StrSelect;
      FRQueryBuilder.PcBuilder.Pages[1].TabVisible := True;
      FRQueryBuilder.PcBuilder.ActivePageIndex     := 1;
    end;
end;

procedure TFRNuevoJoin.FormShow(Sender: TObject);
var
  I : Integer;
begin
  CbTabla1.Properties.Items.Clear;
  CbTabla2.Properties.Items.Clear;

  LlenarComboxFromDataset(CbTabla1, FRQueryBuilder.MdTablas, 'NombreTabla');
  LlenarComboxFromDataset(CbTabla2, FRQueryBuilder.MdTablas, 'NombreTabla');

  FRQueryBuilder.MdTablas.First;
  CbTabla1.ItemIndex := CbTabla1.Properties.Items.IndexOf(FRQueryBuilder.MdTablas.FieldByName('NombreTabla').AsString);

  FRQueryBuilder.MdTablas.Next;
  CbTabla2.ItemIndex := CbTabla2.Properties.Items.IndexOf(FRQueryBuilder.MdTablas.FieldByName('NombreTabla').AsString);

  //INSERTAMOS 5 LINEAS EN BLANCO EN EL GRID
  for I := 1 to 5 do
    begin
      with cxGrid1TableView1.DataController do
        begin
          Append;
          RecordCount := RecordCount + 1;
          Values[RecordCount-1, Columna1] := '';
          Values[RecordCount-1, Columna2] := '';
          Post;
        end;
    end;

  cxGrid1TableView1.DataController.FocusedRowIndex:= 0; //NOS COLOCAMOS EN EL PRIMER REGISTRO
//  cxGrid1TableView1.DataController.FocusedRowIndex:= 0;

end;

procedure TFRNuevoJoin.BtMoverArribaClick(Sender: TObject);
begin
  cxGrid1.SetFocus;
  if cxGrid1TableView1.Controller.FocusedRowIndex <> -1 then
    MoveRecord(cxGrid1TableView1.Controller.FocusedRecordIndex, True);
end;

procedure TFRNuevoJoin.BtMoverAbajoClick(Sender: TObject);
begin
  cxGrid1.SetFocus;
  if cxGrid1TableView1.Controller.FocusedRowIndex <> -1 then
    MoveRecord(cxGrid1TableView1.Controller.FocusedRowIndex, False);
end;

procedure TFRNuevoJoin.CbTabla1PropertiesChange(Sender: TObject);
begin
  if CbTabla1.Text <> EmptyStr then
    begin
      LsbCamposTabla1.Items.Clear;
      FRBuilder.DataBase.GetFieldNames('', '', CbTabla1.Text, '', LsbCamposTabla1.Items);
    end;

end;

procedure TFRNuevoJoin.CbTabla2PropertiesChange(Sender: TObject);
begin
  if CbTabla2.Text <> EmptyStr then
    begin
      LsbCamposTabla2.Items.Clear;
      FRBuilder.DataBase.GetFieldNames('', '', CbTabla2.Text, '', LsbCamposTabla2.Items);
    end;
end;

procedure TFRNuevoJoin.BtAgregarJoinClick(Sender: TObject);

  function CantRows : Integer;
  var
    I, C : Integer;
  begin
    C := 0;
    for I:= 0 to cxGrid1TableView1.ViewData.RowCount -1 do
      begin
        if (cxGrid1TableView1.ViewData.Rows[I].Values[0] <> EmptyStr)
        and (cxGrid1TableView1.ViewData.Rows[I].Values[1] <> EmptyStr) then
          Inc(C);
      end;

    Result := C;
  end;

var
  I : Integer;
  StrTemp : string;
begin
  StrTemp := EmptyStr;

  for I:= 0 to cxGrid1TableView1.ViewData.RowCount -1 do
    begin
      if (cxGrid1TableView1.ViewData.Rows[I].Values[0] <> EmptyStr)
      and (cxGrid1TableView1.ViewData.Rows[I].Values[1] <> EmptyStr) then
        begin
          //ARMAMOS LA CONSULTA

          if (CantRows = 1) and (CkbPrimerJoin.Checked = True) then
            begin
              StrTemp := StrTemp + RgTipoJoin.Properties.Items.Items[RgTipoJoin.ItemIndex].Caption +' '+ CbTabla2.Text +' '+ FRQueryBuilder.GetAlias(CbTabla2.Text) + ' ';

              StrTemp := StrTemp + 'ON ' + FRQueryBuilder.GetAlias(CbTabla1.Text) +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[0]
                                         +' '+ CbOperadorJoin.Text +' '+ FRQueryBuilder.GetAlias(CbTabla2.Text) +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[1] + sLineBreak;
            end
          else
            begin
              if I = 0 then
                begin
                  StrTemp := StrTemp + RgTipoJoin.Properties.Items.Items[RgTipoJoin.ItemIndex].Caption +' '+ CbTabla2.Text +' '+ FRQueryBuilder.GetAlias(CbTabla2.Text) + ' ';
                  StrTemp := StrTemp + 'ON ' + FRQueryBuilder.GetAlias(CbTabla1.Text) +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[0]
                                         +' '+ CbOperadorJoin.Text +' '+ FRQueryBuilder.GetAlias(CbTabla2.Text) +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[1] + sLineBreak;
                end
              else
                begin
                  StrTemp := StrTemp + 'AND ' + FRQueryBuilder.GetAlias(CbTabla1.Text) +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[0]
                                         +' '+ CbOperadorJoin.Text +' '+ FRQueryBuilder.GetAlias(CbTabla2.Text) +'.'+ cxGrid1TableView1.ViewData.Rows[I].Values[1] + sLineBreak;
                end;
            end;
        end;
    end;

  MmJoins.Lines.Clear;
  StrSelect := StrSelect + StrTemp;
  MmJoins.Lines.Add(StrSelect);

  for I:= 0 to cxGrid1TableView1.ViewData.RowCount -1 do
    begin
      cxGrid1TableView1.ViewData.Rows[I].Values[0]:= EmptyStr;
      cxGrid1TableView1.ViewData.Rows[I].Values[1]:= EmptyStr;
    end;

  CkbPrimerJoin.Checked:= False;
  cxGrid1TableView1.DataController.FocusedRowIndex:= 0;
end;

procedure TFRNuevoJoin.BtAgregarJoinMouseEnter(Sender: TObject);
begin
  TcxButton(Sender).Font.Style := [fsBold];
end;

procedure TFRNuevoJoin.BtAgregarJoinMouseLeave(Sender: TObject);
begin
  TcxButton(Sender).Font.Style := [];
end;

procedure TFRNuevoJoin.cxLabel4Click(Sender: TObject);
begin
  OrdenarListBox(LsbCamposTabla1);
end;

procedure TFRNuevoJoin.cxLabel5Click(Sender: TObject);
begin
  OrdenarListBox(LsbCamposTabla2);
end;

procedure TFRNuevoJoin.ActAceptarExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFRNuevoJoin.ActSalirExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFRNuevoJoin.BtAgregarClick(Sender: TObject);
var
  ARecordIndex : Integer;
begin
//  with cxGrid1TableView1.DataController do
//    begin
//      BeginUpdate;
//      InsertRecord(FocusedRowIndex + 1);
//      FocusedRowIndex := FocusedRowIndex + 1;
//      EndUpdate;
//    end;


  ARecordIndex := cxGrid1TableView1.DataController.AppendRecord;
  cxGrid1TableView1.DataController.Values[ARecordIndex, cxGrid1TableView1Column1.Index] := '';
  cxGrid1TableView1.DataController.Values[ARecordIndex, cxGrid1TableView1Column2.Index] := '';


//  with cxGrid1TableView1.DataController do
//  begin
//    BeginUpdate;
//    DeleteRecord(FocusedRecordIndex);
//    EndUpdate;
//  end;

end;

procedure TFRNuevoJoin.BtEliminarClick(Sender: TObject);
begin
  cxGrid1TableView1.DataController.DeleteFocused;
end;

procedure TFRNuevoJoin.LsbCamposTabla1Click(Sender: TObject);
begin
  cxGrid1TableView1.DataController.Edit;
  cxGrid1TableView1.DataController.SetEditValue(cxGrid1TableView1Column1.Index, LsbCamposTabla1.Items.Strings[LsbCamposTabla1.ItemIndex], evsValue);
  cxGrid1TableView1.DataController.Post;
end;

procedure TFRNuevoJoin.LsbCamposTabla2Click(Sender: TObject);
begin
  cxGrid1TableView1.DataController.Edit;
  cxGrid1TableView1.DataController.SetEditValue(cxGrid1TableView1Column2.Index, LsbCamposTabla2.Items.Strings[LsbCamposTabla2.ItemIndex], evsValue);
  cxGrid1TableView1.DataController.Post;
end;

procedure TFRNuevoJoin.MoveRecord(ARecordIndex : Integer; IsUpDirection : Boolean);
var
  ANewIndex, ASourceRecordIndex: Integer;
begin
  if IsUpDirection then
    ASourceRecordIndex := ARecordIndex - 1
  else
    ASourceRecordIndex := ARecordIndex + 1;

  with TcxGridDataControllerAccess(cxGrid1TableView1.DataController) do
    begin
      if (ASourceRecordIndex >= RecordCount) or (ASourceRecordIndex < 0) then
        Exit;

      BeginUpdate;
      try
        ANewIndex := AppendRecord;
        CopyRecord(ARecordIndex, ANewIndex);
        CopyRecord(ASourceRecordIndex, ARecordIndex);
        CopyRecord(ANewIndex, ASourceRecordIndex);
        DeleteRecord(ANewIndex);
      finally
        FocusedRecordIndex := ASourceRecordIndex;
        EndUpdate;
      end;
    end;
end;

procedure TFRNuevoJoin.LlenarComboxFromDataset(ComboBox : TcxComboBox; Dataset : TDataSet; Campo : string);
var
  I : Integer;
  BM : TBookmark;
begin
  ComboBox.Properties.Items.BeginUpdate;
  with Dataset do
    begin
      BM := GetBookmark;
      DisableControls;
      try
        First;

        for I:= 0 to RecordCount -1 do
          begin
            ComboBox.Properties.Items.Add(Dataset.FieldByName(Campo).AsString);

            Next;
          end;
      finally
        GotoBookmark(BM);
        FreeBookmark(BM);
        EnableControls;
      end;
    end;
  ComboBox.Properties.Items.EndUpdate;
end;

procedure TFRNuevoJoin.BubbleSort(var Arreglo : array of string; Ascendente : Boolean = True);
var
  I, J : Integer;
  Temp : string;
begin
  for I:= Low(Arreglo) to (High(Arreglo) - 1) do
    begin
      for J := I + 1 to High(Arreglo) do
        begin
          if Ascendente = True then
            begin
              if Arreglo[I] > Arreglo[J] then  //Ascendente
                begin
                  Temp       := Arreglo[I];
                  Arreglo[I] := Arreglo[J];
                  Arreglo[J] := Temp;
                end;
            end
          else
            begin
              if Arreglo[I] < Arreglo[J] then //Descendente
                begin
                  Temp       := Arreglo[I];
                  Arreglo[I] := Arreglo[J];
                  Arreglo[J] := Temp;
                end;
            end;
        end;
    end;
end;

procedure TFRNuevoJoin.OrdenarListBox(ListBox : TcxListBox);
var
  I : Integer;
  ListRecords : array of string;
begin
  SetLength(ListRecords, ListBox.Items.Count);

  for I:= 0 to ListBox.Items.Count - 1 do
    begin
      ListRecords[I] := ListBox.Items.Strings[I];
    end;

  BubbleSort(ListRecords, True);

  ListBox.Items.Clear;

  ListBox.Items.BeginUpdate;

  for I:= Low(ListRecords) to High(ListRecords) do
    begin
      if ListRecords[I] <> EmptyStr then
        ListBox.Items.Add(ListRecords[I]);
    end;

  ListBox.Items.EndUpdate;

end;


end.
