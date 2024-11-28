unit UFRListadoTablas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Menus, Vcl.StdCtrls, cxCheckBox, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinMoneyTwins, dxSkinsCore, dxSkinBlue,
  dxSkinOffice2007Blue, dxSkinOffice2010Silver, dxSkinVS2010, cxContainer,
  cxEdit, cxCustomListBox, cxCheckListBox, Data.DB, cxButtons, SkinAzul,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRListadoTablas = class(TForm)
    ListTablas: TcxCheckListBox;
    QryTablas: TFDQuery;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListTablasClickCheck(Sender: TObject; AIndex: Integer; APrevState,
      ANewState: TcxCheckBoxState);
    procedure FormCreate(Sender: TObject);
  private
//    APrevIndex : Integer;
  public
    { Public declarations }
  end;

var
  FRListadoTablas: TFRListadoTablas;

implementation

uses
  UFRBuilder, UFRQueryBuilder, Utileria;

{$R *.dfm}

procedure TFRListadoTablas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I : Integer;
begin
  if ModalResult = mrOk then
    begin
      if FRBuilder.CheckSelection(ListTablas) = False then
        begin
          Mensaje('Debe Seleccionar las Tablas.',
                  'Operación Invalida', Advertencia);
          Abort;
        end;

      Randomize;
      for I:= 0 to ListTablas.Items.Count - 1 do
        if ListTablas.Items.Items[I].State = cbsChecked then
          begin
            FRQueryBuilder.MdTablas.Append;
            FRQueryBuilder.MdTablas.FieldByName('NombreTabla').AsString := ListTablas.Items.Items[I].Text;
            FRQueryBuilder.MdTablas.FieldByName('AliasTabla').AsString  := UpperCase(Copy(ListTablas.Items.Items[I].Text,1,5)) + IntToStr(Random(100));
            FRQueryBuilder.MdTablas.Post;
          end;

//      if FRQueryBuilder.MdTablas.RecordCount > 1 then
//        begin
//          FRQueryBuilder.MdTablas.First;
//          MessageDlg('Ahora Debe Seleccionar qué tabla se une a '+
//                     FRQueryBuilder.MdTablas.FieldByName('NombreTabla').AsString, mtInformation, [mbOK], 0);
//        end;
    end;
end;

procedure TFRListadoTablas.FormShow(Sender: TObject);
var
  I : Integer;
begin
//  FRBuilder.DataBase.GetTableNames(ListTablas.Items.Items[].i);

  ListTablas.DoubleBuffered := True;
  ListTablas.Items.BeginUpdate;

  QryTablas.Open;

  QryTablas.First;
  for I := 0 to QryTablas.RecordCount - 1 do
    begin
      with ListTablas.Items.Add do
        begin
          Text  := QryTablas.FieldByName('TABLE_NAME').AsString;
          State := cbsUnchecked;
        end;

        QryTablas.Next;
    end;

  ListTablas.Items.EndUpdate;
end;

procedure TFRListadoTablas.ListTablasClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
begin   //CON ESTA RUTINA OBLIGO AL USUARIO A ESCOGER UN SOLO ITEM
//  if (APrevIndex <> -1) and (ANewState = cbsChecked) then
//    (Sender as TcxCheckListBox).Items[APrevIndex].State := cbsUnchecked;
//
//  APrevIndex := AIndex;
end;

procedure TFRListadoTablas.FormCreate(Sender: TObject);
begin
//  APrevIndex := -1;
end;


end.
