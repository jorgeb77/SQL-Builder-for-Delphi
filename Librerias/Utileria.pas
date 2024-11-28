unit Utileria;

interface

uses SysUtils, DateUtils, StrUtils, Forms, Dialogs, IniFiles, Classes, Windows,
  Messages, Variants, Graphics, ExtCtrls, StdCtrls, Buttons, ComCtrls, DB,
  Vcl.DBCtrls, Vcl.DBGrids, Controls, System.UITypes, Clipbrd, Winapi.WinSpool,
  ShellApi, Printers, CxControls, CxEdit, CxTextEdit, SynTaskDialog, MemDS,
  UniDacVcl, DBAccess, Uni, UniProvider, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridCustomView, CxContainer,
  cxMaskEdit, cxDropDownEdit, CxCalendar, CxDBEdit, CxLookAndFeelPainters,
  CxButtons, CxLookupEdit, CxDBLookupEdit, CxDBLookupComboBox, CxCurrencyEdit,
  cxMemo, CxNavigator, CxDBNavigator, cxGraphics, cxSpinEdit, cxTimeEdit,
  cxButtonEdit, cxCheckBox, cxGroupBox, cxRadioGroup, cxImageComboBox,
  CxFormats, cxClasses, WinSock, IdGlobal;


type
  TipoMensaje = (Advertencia = 1, Pregunta = 2, Error = 3, Informacion = 4);
  TJusticado = (tjLeft, tjCenter, tjRight);

var
  Formulario : TForm;

//function Mensaje(FForm : TForm; Contenido, Descripcion : string; Tipo : TipoMensaje; DefaultButton : Integer = 1) : Boolean;
function Mensaje(Mensaje, Descripcion : string; Tipo : TipoMensaje; DefaultButton : Integer = 1) : Boolean;


// Suma una columna de un Dataset
function SumaColumna(ADataset : TDataSet; ColumnName : string; Condicion : string = '') : Double;

//Fecha larga
function FechaLarga(Fecha : TDatetime) : string;

//Mes de la Fecha
function ObtenerMes(Fecha : TDatetime) : string;
function PrimerDiaDelMes(const Fecha : TDateTime) : TDateTime;
function UltimoDiaDelMes(const Fecha : TDateTime) : TDateTime;
function SinFormato(Str : string) : Double;
//function ValidarHorario(IdArea, IdSucursal : Integer; Fecha : TDate; HoraDesde, HoraHasta : string) : Boolean;
function TimeIsNull(Hora : TTime) : Boolean;
function SecondsIdle : DWord;
function IsGridFocused : Boolean;
function GetEditor : TcxCustomEdit;
function GetLookupComboBox : TcxCustomLookupComboBox;
function GetMemo : TcxCustomMemo;
procedure CambiaColorSoloLectura;
procedure CambiaColorModifica;
procedure HabilitaControles(Form : TForm; Estado : Boolean);
function BotonesEnfocados(Form : TForm) : Boolean;
function NPos(Cadena : string; SubCadena : string; Posicion : Integer) : Integer;
function LPad(Cadena: string; Longitud : Word; Relleno : string = ' ') : string;
function RPad(Cadena: string; Longitud : Word; Relleno : string = ' ') : string;
function RellenaLinea(Longitud : SmallInt; Rellena : Char) : string;
function Justifica(Texto : string; Longitud : SmallInt; Rellena : Char; Justificado : TJusticado) : string;
function MasLargo(Lista : TStringList) : Integer;
function ObtenerPipe(Linea : string; Delimitador : AnsiChar; Posicion : Integer) : string;
function NumLetra(const MNum : Currency; const IIdioma, IModo : Smallint) : string;
function ObtenerNombrePC() : AnsiString;
function ObtenerIPPublica : string;
function ObtenerIPPrivada : string;
function ObtenerUserName : string;
function TipoVariable(Variable : Variant) : string;
function Mascara(Edt, Mascara : string) : string;
function EvaluaCaracteres(Nombre : string) : Boolean;
function ExtraerHastaUltimo(Cadena : string; Caracter : Char) : string;
function Insertar(Cadena, Insertada : string; P : Integer) : string;
function GetTempDir : string;
procedure GrabarStringArchivo(Texto : string);
procedure CopiarAlPortaPapeles(RutaArchivo : string);



function Hora24(HoraCorta : string; IncluyeSegundos : Boolean) : string;
function DiaDeLaSemana(Fecha : TDateTime) : string;
function EsNumero(Valor : string) : Boolean;
function VerificarElementosRepetidos(ATable : TDataSet; Campo : string) : string;
function ValidaEMail(const EMailIn : string) : Boolean;
function ColorToStr(Color : TColor) : string;
function StrToColor(Color : string) : TColor; //MEJOR USE StringToColor INCLUIDA EN DELPHI
function ConvertColorToInteger(Color : TColor) : LongInt;

//PARA EL MANEJO DE LA IMPRESORA
procedure SetPaperSize(NombrePrinter : string; Papel : Word);
function GetPaperSize(NombrePrinter : string) : Integer;
function GetPaperName(IdxPrinter, Papel : Word) : string;
function GetPaperName2(NombrePrinter : string; Papel : Word) : string;
procedure SetPaperBin(NombrePrinter : string; Bin : Integer);
function GetPaperBin(NombrePrinter : string) : Integer;

implementation


function Hora24(HoraCorta : string; IncluyeSegundos : Boolean) : string;
var
 Fecha : TDateTime;
 Resultado : string;
begin
  // hora a convertir
  Fecha:= StrToTime(HoraCorta);

  // convertir hora a string
  if IncluyeSegundos = True then
    DateTimeToString(Resultado, 'hh:mm:ss', Fecha)
  else
    DateTimeToString(Resultado, 'hh:mm', Fecha);

  Result:= Resultado;
end;

function DiaDeLaSemana(Fecha : TDateTime) : string;
const
  Dias : array[1..7] of string = ('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo');
begin
  Result := Dias[DayOfTheWeek(Fecha)];
end;

function EsNumero(Valor : string) : Boolean;
var
  I : Integer;
  nSigno : Integer; //nSigno cuenta la cantidad de signos escritos debe ser solo uno.
  nSeparador : Integer; //nSeparador la cantidad de simbolo decimal.
begin
  Valor := Trim(Valor);
  I          := 0;
  nSigno     := 0;
  nSeparador := 0;
  Result     := (Length(Valor) > 0);
  while ((I <= Length(Valor)-1) and (Result = True)) do
    begin
      Inc(I);
      Result := (IsNumeric(Valor[I]) or ((Valor[I] = '-') and (nSigno = 0)
                and (I = 1)) or ((Valor[I] = FormatSettings.DecimalSeparator) and (nSeparador = 0)
                and (I <> Length(Valor))));

      //Determina si se escribio para incrementar el contador
      if (Valor[I] = '-') then
        Inc(nSigno);

      if (Valor[I] = FormatSettings.DecimalSeparator) then
        Inc(nSeparador);
    end;
end;

//function EsNumero(Value : string) : Boolean;
//var
//  I, Estado : Byte;
//begin
//  if Length(Value) > 0 then
//    Estado := 1
//  else
//    Estado := 0;
//
//  I:= 1;
//  while (I <= Length(Value)) and (Estado <> 0) do
//    begin
//      case Estado of
//        1 : case Value[I] of
//              '0'..'9' : Estado := 2;
//              '-'      : Estado := 3;
//            else
//              Estado := 0;
//            end;
//
//        2 : case Value[I] of
//              '0'..'9' : Estado := 2;
//              '.'      : Estado := 4;
//              '-'      : Estado := 0;
//            else
//              Estado := 0;
//            end;
//
//        3 : case Value[I] of
//              '0'..'9' : Estado := 2;
//            else
//              Estado := 0;
//            end;
//
//        4 : case Value[I] of
//              '0'..'9' : Estado := 5;
//            else
//              Estado := 0;
//            end;
//
//        5 : case Value[I] of
//              '0'..'9' : Estado := 5;
//            else
//              Estado := 0;
//            end;
//      end;
//      Inc(I);
//    end;
//
//  Result:= (Estado in [2, 5]);
//end;

//FUNCION PARA VERIFICAR SI EXISTEN ELEMENTOS REPETIDOS EN UNA TABLA...
function VerificarElementosRepetidos(ATable : TDataSet; Campo : string) : string;
var
  Lista : TStringList;
  I, P : Integer;
  Repetidos : string;
begin
  Lista := TStringList.Create;
  try
    ATable.DisableControls;
    ATable.First;
    while not ATable.Eof do
      begin
        Lista.Add(ATable.FieldByName(Campo).AsString);
        ATable.Next;
      end;
  finally
    ATable.EnableControls;
  end;

  Lista.Sort;
  I:= 0;
  while I <= Lista.Count -1 do
    begin
      if (Lista.Find(Lista[I],P)) and (I <> P) then
//        Lista.Delete(P);
        Repetidos := Repetidos + Lista.Strings[P] + #13;
      Inc(I);
    end;

  Lista.Free;
  Result := Repetidos;
end;

function Mensaje(Mensaje, Descripcion : string; Tipo : TipoMensaje; DefaultButton : Integer = 1) : Boolean;

{ CÓMO USAR CUSTOMBUTTONS
  Al usar la propiedad Buttons, el ButtonID es 100, el siguiente 101 y así sucesivamente...
}
var
  Dialogo : TTaskDialog;
  Respuesta : Integer;
begin
  DefaultButton := DefaultButton + 99;
  Result  := False;

  case Tipo of
    Advertencia : begin        // Mensaje de advertencia
                    Dialogo.Title   := 'Advertencia';
                    Dialogo.Inst    := Descripcion;
                    Dialogo.Content := Mensaje;
                    Dialogo.Buttons := 'Aceptar';
                    Respuesta       := Dialogo.Execute([],0,[], tiWarning);
                    if Respuesta = 100 then
                      Result := True;
                  end;

    Pregunta : begin         // Mensaje de pregunta
                 Dialogo.Title         := 'Atención';
                 Dialogo.Inst    := Descripcion;
                 Dialogo.Content := Mensaje;
                 Dialogo.Buttons := 'Si'#10'No';
                 Respuesta       := Dialogo.Execute([],DefaultButton,[], tiQuestion);

                 if Respuesta = 100 then
                   Result := True
                 else
                   Result := False;
               end;

    Error : begin            // Mensaje de Error
              Dialogo.Title   := 'Error';
              Dialogo.Inst    := Descripcion;
              Dialogo.Content := Mensaje;
              Dialogo.Buttons := 'Aceptar';
              Respuesta       := Dialogo.Execute([],0,[], tiError);
              if Respuesta = 100 then
                Result := True;
            end;

    Informacion : begin      // Mensaje de Información
                    Dialogo.Title   := 'Atención';
                    Dialogo.Inst    := Descripcion;
                    Dialogo.Content := Mensaje;
                    Dialogo.Buttons := 'Aceptar';
                    Respuesta       := Dialogo.Execute([],0,[], tiInformation);
                    if Respuesta = 100 then
                      Result := True;
                  end;
  end; // case

end;


{
  Descripcion: Suma una columna de un Dataset
  Parametros : ADataset:TDataSet;ColumnName:String
  Retorno    : Extended
}
function SumaColumna(ADataset : TDataSet; ColumnName, Condicion : string) : Double;
var
  RecordMark : TBookMark;
  OldFilter : string;
begin
  RecordMark := ADataset.GetBookmark;
  ADataset.CheckBrowseMode;

  with ADataset do
    begin
      if Condicion <> '' then
        begin
          if ADataset.Filter <> '' then
            begin
              OldFilter := ADataset.Filter;
              ADataset.Filter := ' AND ' + Condicion;
            end
          else
            ADataset.Filter := Condicion;
          ADataset.Filtered := True;
        end;

      ADataset.First;
      ADataset.DisableControls;
      Result := 0;
      while not ADataset.Eof do
        begin
          Result := Result + ADataset.FieldByName(ColumnName).AsFloat;
          ADataset.Next;
        end;

      if Condicion <> '' then
        begin
          if OldFilter <> '' then
            ADataset.Filter := OldFilter
          else
            ADataset.Filter := '';

          ADataset.Filtered := True;
        end;

      ADataset.GotoBookmark(RecordMark);
      ADataset.FreeBookmark(RecordMark);
      ADataset.EnableControls;
    end;
end;

{ Fecha larga }
{
  Descripcion: Retorna la fecha en formato largo.
  Parametros : TDateTime
  Retorno    : String
}
function FechaLarga(Fecha : TDatetime) : string;
begin
  Result := IntToStr(DayOf(Fecha)) + ' de ' + ObtenerMes(Fecha) + ' del ' +
    IntToStr(YearOf(Fecha));
end;

{ Mes de la Fecha }
{
  Descripcion: Retorna el Mes en Español de una fecha
  Parametros : TDateTime
  Retorno    : String
}

function ObtenerMes(Fecha : TDatetime) : string;
begin
  case MonthOf(Fecha) of
    1 :
      Result := 'Enero';
    2 :
      Result := 'Febrero';
    3 :
      Result := 'Marzo';
    4 :
      Result := 'Abril';
    5 :
      Result := 'Mayo';
    6 :
      Result := 'Junio';
    7 :
      Result := 'Julio';
    8 :
      Result := 'Agosto';
    9 :
      Result := 'Septiembre';
    10 :
      Result := 'Octubre';
    11 :
      Result := 'Noviembre';
    12 :
      Result := 'Diciembre';
  end;
end;

function PrimerDiaDelMes(const Fecha : TDateTime) : TDateTime;
var
  Anio, Mes, Dia : Word;
begin
  DecodeDate(Fecha, Anio, Mes, Dia);
  Result := EncodeDate(Anio, Mes, 1);
end;

function UltimoDiaDelMes(const Fecha : TDateTime) : TDateTime;
var
  Anio, Mes, Dia : Word;
begin
  DecodeDate(Fecha, Anio, Mes, Dia);
//  Result := EndOfTheDay(EncodeDate(Anio, Mes, DaysInAMonth(Anio,Mes)));
  Result := EncodeDate(Anio, Mes, DaysInAMonth(Anio, Mes));
end;

{ Funcion que quita los caracteres invalidos a un monto para
  poder hacer calculos con dicho monto. }
function SinFormato(Str : string) : Double;
var
 I : Integer;
begin
  for I:= Length(Str) downto 1 do
    begin
      if not (Str[I] in ['0'..'9','-','.',',']) then
        Delete(Str,I,1);
    end;
  Result:= StrToFloat(StringReplace(Str,',','', [rfReplaceAll]));
end;

//Funcion que Verifica si una Area Trabaja en un determinado Horario
//function ValidarHorario(IdArea, IdSucursal : Integer; Fecha : TDate; HoraDesde, HoraHasta : string) : Boolean;
//var
//  Dia : Integer;
//  QryHorarios : TUniQuery;
//begin
//  Screen.Cursor := crSQLWait;
//
//  QryHorarios := DM.NewQuery;
//  QryHorarios.Close;
//  QryHorarios.SQL.Clear;
//  QryHorarios.SQL.Add('SELECT * FROM PTHORARIO_AREA');
//  QryHorarios.SQL.Add('WHERE ID_AREA = ' + IntToStr(IdArea));
//  QryHorarios.SQL.Add('AND ID_SUCURSAL = ' + IntToStr(IdSucursal));
//  QryHorarios.Open;
//
//  Dia := DayOfTheWeek(Fecha);
//
//  case Dia of
//    1 : begin          //Comparamos las horas segun sea AM ó PM
//          if (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = False)
//          or (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = True) then  //Si la hora es en la mañana
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('LUN_DESDE').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('LUN_HASTA').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end
//          else  //De lo contrario la hora es en la tarde
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('LUN_DESDE1').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('LUN_HASTA1').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end;
//        end;
//
//    2 : begin
//          if (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = False)
//          or (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = True) then  //Si la hora es en la mañana
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('MAR_DESDE').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('MAR_HASTA').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end
//          else  //De lo contrario la hora es en la tarde
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('MAR_DESDE1').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('MAR_HASTA1').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end;
//        end;
//
//    3 : begin
//          if (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = False)
//          or (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = True) then  //Si la hora es en la mañana
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('MIE_DESDE').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('MIE_HASTA').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end
//          else  //De lo contrario la hora es en la tarde
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('MIE_DESDE1').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('MIE_DESDE1').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end;
//        end;
//
//    4 : begin
//          if (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = False)
//          or (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = True) then  //Si la hora es en la mañana
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('JUE_DESDE').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('JUE_HASTA').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end
//          else  //De lo contrario la hora es en la tarde
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('JUE_DESDE1').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('JUE_HASTA1').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end;
//        end;
//
//    5 : begin
//          if (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = False)
//          or (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = True) then  //Si la hora es en la mañana
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('VIE_DESDE').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('VIE_HASTA').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end
//          else  //De lo contrario la hora es en la tarde
//            begin
//              if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('VIE_DESDE1').AsString,1,5)))
//              and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('VIE_HASTA1').AsString,1,5))) then
//                Result := True
//              else
//                Result := False;
//            end;
//        end;
//
//    6 : begin
//          if (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = False)
//          or (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = True) then  //Si la hora es en la mañana
//            begin
//              if (not QryHorarios.FieldByName('SAB_DESDE').IsNull)
//              and (not QryHorarios.FieldByName('SAB_HASTA').IsNull) then
//                begin
//                  if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('SAB_DESDE').AsString,1,5)))
//                  and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('SAB_HASTA').AsString,1,5))) then
//                    Result := True
//                  else
//                    Result := False;
//                end
//              else
//                Result := False;
//            end
//          else  //De lo contrario la hora es en la tarde
//            begin
//              if (not QryHorarios.FieldByName('SAB_DESDE1').IsNull)
//              and (not QryHorarios.FieldByName('SAB_HASTA1').IsNull) then
//                begin
//                  if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('SAB_DESDE1').AsString,1,5)))
//                  and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('SAB_HASTA1').AsString,1,5))) then
//                    Result := True
//                  else
//                    Result := False;
//                end
//              else
//                Result := False;
//            end;
//        end;
//
//    7 : begin
//          if (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = False)
//          or (IsPM(StrToTime(HoraDesde)) = False) and (IsPM(StrToTime(HoraHasta)) = True) then  //Si la hora es en la mañana
//            begin
//              if (not QryHorarios.FieldByName('DOM_DESDE').IsNull)
//              and (not QryHorarios.FieldByName('DOM_HASTA').IsNull) then
//                begin
//                  if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('DOM_DESDE').AsString,1,5)))
//                  and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('DOM_HASTA').AsString,1,5))) then
//                    Result := True
//                  else
//                    Result := False;
//                end
//              else
//                Result := False;
//            end
//          else  //De lo contrario la hora es en la tarde
//            begin
//              if (not QryHorarios.FieldByName('DOM_DESDE1').IsNull)
//              and (not QryHorarios.FieldByName('DOM_HASTA1').IsNull) then
//                begin
//                  if (StrToTime(HoraDesde) >= StrToTime(Copy(QryHorarios.FieldByName('DOM_DESDE1').AsString,1,5)))
//                  and (StrToTime(HoraHasta) <= StrToTime(Copy(QryHorarios.FieldByName('DOM_HASTA1').AsString,1,5))) then
//                    Result := True
//                  else
//                    Result := False;
//                end
//              else
//                Result := False;
//            end;
//        end;
//  end;
//
//  FreeAndNil(QryHorarios);
//  Screen.Cursor := crDefault;
//end;

function TimeIsNull(Hora : TTime) : Boolean;
var
  myHour, myMin, mySec, myMilli : Word;
begin
  DecodeTime(Hora, myHour, myMin, mySec, myMilli);

  if (myHour = 12) and (myMin = 0) and (IsAM(Hora) = True) then  //si la hora es 12:00 a.m.
    Result := True  //La asumimos como nula
  else
    Result := False;
end;

//FUNCIÓN QUE DETECTA LA INACTIVIDAD DEL SISTEMA.
function SecondsIdle : DWord;
var
  liInfo : TLastInputInfo;
begin
  liInfo.cbSize := SizeOf(TLastInputInfo);
  GetLastInputInfo(liInfo);
  Result := (GetTickCount - liInfo.dwTime) div 1000;
end;

function IsGridFocused : Boolean;
var
  AContainer : TcxCustomEdit;
begin
  Result := Screen.ActiveControl is TcxGridSite;
  if not Result then
    begin
      AContainer := nil;
      if Screen.ActiveControl is TcxCustomEdit then
        begin
          AContainer := TcxCustomEdit(Screen.ActiveControl);
          Result := True;
        end
      else
        if (Screen.ActiveControl.Parent <> nil) and
        (Screen.ActiveControl.Parent is TcxCustomEdit) then
        begin
          AContainer := TcxCustomEdit(Screen.ActiveControl.Parent);
          Result := True;
        end;
      Result := Result and (AContainer.Parent is TcxGridSite);
    end;
end;

{
  Cuando un TcxDBTextEdit se centra, el Screen.ActiveControl tiene la
  TcxCustomInnerTextEdit tipo. En mi opinión, el ActiveControl deben ser del
  tipo TcxDBTextEdit. ¿Cómo podría yo determinar si ActiveControl es del tipo
  o TcxTextEdit TcxDBTextEdit?

  solución :

  Por su diseño, nuestros editores son contenedores (para apoyar estilos CX)
  para los editores de interior que implementan la funcionalidad de edición.
  Usted puede utilizar código similar al siguiente para obtener el editor
  correspondiente a un control interno en particular:
}

function GetEditor : TcxCustomEdit;
 var
  AControl : TWinControl;
begin
  Result:= nil;
  AControl:= Screen.ActiveControl;
  if Supports(AControl, IcxInnerEditHelper) or
    Supports(AControl, IcxContainerInnerControl) then
    Result:= TcxCustomEdit(AControl.Owner)
  else
    if AControl is TcxCustomEdit then
      Result:= TcxCustomEdit(AControl);
end;

{EJEMPLO DE USO :
  if (Key in [VK_UP,VK_DOWN,VK_RETURN])
  and (not (GetLookupComboBox is TcxLookupComboBox)) then
}

function GetLookupComboBox : TcxCustomLookupComboBox;
 var
  AControl : TWinControl;
begin
  Result:= nil;
  AControl:= Screen.ActiveControl;
  if Supports(AControl, IcxInnerEditHelper) or
    Supports(AControl, IcxContainerInnerControl) then
    Result:= TcxCustomLookupComboBox(AControl.Owner)
  else
    if AControl is TcxCustomLookupComboBox then
      Result:= TcxCustomLookupComboBox(AControl);
end;

function GetMemo : TcxCustomMemo;
 var
  AControl : TWinControl;
begin
  Result:= nil;
  AControl:= Screen.ActiveControl;
  if Supports(AControl, IcxInnerEditHelper) or
    Supports(AControl, IcxContainerInnerControl) then
    Result:= TcxCustomMemo(AControl.Owner)
  else
    if AControl is TcxCustomMemo then
      Result:= TcxCustomMemo(AControl);
end;

{ Metodo para hacer que los componentes DBEdit, DBMemo y DBGrid solo puedan ser vistos y no modificados }
procedure CambiaColorSoloLectura;
var
  I : Integer;
begin
  for I:= 0 to Formulario.ComponentCount - 1 do
    begin
      if Formulario.Components[I] is TDBLookupComboBox then
        with Formulario.Components[I] as TDBLookupComboBox do
        begin
          ReadOnly := True;
          Color    := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TDBComboBox then
        with Formulario.Components[I] as TDBComboBox do
        begin
          ReadOnly := True;
          Color    := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TcxDBLookupComboBox then
        with Formulario.Components[I] as TcxDBLookupComboBox do
        begin
          Properties.ReadOnly := True;
          Style.Color         := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TcxDBComboBox then
        with Formulario.Components[I] as TcxDBComboBox do
        begin
          Properties.ReadOnly := True;
          Style.Color         := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TDBEdit then
        with Formulario.Components[I] as TDBEdit do
        begin
          ReadOnly := True;
          Color    := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TcxDBTextEdit then
        with Formulario.Components[I] as TcxDBTextEdit do
        begin
          Properties.ReadOnly := True;
          Style.Color         := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TcxDBMaskEdit then
        with Formulario.Components[I] as TcxDBMaskEdit do
        begin
          Properties.ReadOnly := True;
          Style.Color         := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TDBMemo then
        with Formulario.Components[I] as TDBMemo do
        begin
          ReadOnly := True;
          Color    := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TcxDBMemo then
        with Formulario.Components[I] as TcxDBMemo do
        begin
          Properties.ReadOnly := True;
          Style.Color         := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TDBGrid then
        with Formulario.Components[I] as TDBGrid do
        begin
          ReadOnly := True;
          Color    := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TcxGrid then
        with Formulario.Components[I] as TcxGrid do
          begin
            Enabled := False;
          end; { with }

      if Formulario.Components[I] is TDBRadioGroup then
        with Formulario.Components[I] as TDBRadioGroup do
        begin
          ReadOnly := True;
        end; { with }

      if Formulario.Components[I] is TcxDBRadioGroup then
        with Formulario.Components[I] as TcxDBRadioGroup do
        begin
          Properties.ReadOnly:= True;
        end; { with }

      if Formulario.Components[I] is TDBCheckBox then
        with Formulario.Components[I] as TDBCheckBox do
        begin
          ReadOnly := True;
        end; { with }

      if Formulario.Components[I] is TcxDBCheckBox then
        with Formulario.Components[I] as TcxDBCheckBox do
        begin
          Properties.ReadOnly:= True;
        end; { with }

      if Formulario.Components[I] is TEdit then
        with Formulario.Components[I] as TEdit do
        begin
          ReadOnly := True;
          Color    := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TMemo then
        with Formulario.Components[I] as TMemo do
        begin
          ReadOnly := True;
          Color    := $00B0FFFF;
        end; { with }

      if Formulario.Components[I] is TcxDBDateEdit then
        with Formulario.Components[I] as TcxDBDateEdit do
        begin
          Style.Color         := $00B0FFFF;
          Properties.ReadOnly := True;
        end; // with

      if Formulario.Components[I] is TcxDBCurrencyEdit then
        with Formulario.Components[I] as TcxDBCurrencyEdit do
        begin
          Style.Color := $00B0FFFF;
          Properties.ReadOnly := True;
        end;
    end; { for }
end;

{ Metodo para hacer que los componentes DBEdit, DBMemo y DBGrid puedan ser modificados }
procedure CambiaColorModifica;
var
  I : Integer;
begin
  for I:= 0 to Formulario.ComponentCount - 1 do
    begin
      if Formulario.Components[I] is TDBLookupComboBox then
        with Formulario.Components[I] as TDBLookupComboBox do
        begin
          ReadOnly := False;
          Color    := clWindow
        end; { with }

      if Formulario.Components[I] is TDBComboBox then
        with Formulario.Components[I] as TDBComboBox do
        begin
          ReadOnly := False;
          Color    := clWindow
        end; { with }

      if Formulario.Components[I] is TcxDBLookupComboBox then
        with Formulario.Components[I] as TcxDBLookupComboBox do
        begin
          Properties.ReadOnly := False;
          Style.Color         := clWindow;
        end; { with }

      if Formulario.Components[I] is TcxDBComboBox then
        with Formulario.Components[I] as TcxDBComboBox do
        begin
          Properties.ReadOnly := False;
          Style.Color         := clWindow;
        end; { with }

      if Formulario.Components[I] is TDBEdit then
        with Formulario.Components[I] as TDBEdit do
        begin
          ReadOnly := False;
          Color    := clWindow
        end; { with }

      if Formulario.Components[I] is TcxDBTextEdit then
        with Formulario.Components[I] as TcxDBTextEdit do
        begin
          Properties.ReadOnly := False;
          Style.Color         := clWindow;
        end; { with }

      if Formulario.Components[I] is TcxDBMaskEdit then
        with Formulario.Components[I] as TcxDBMaskEdit do
        begin
          Properties.ReadOnly := False;
          Style.Color         := clWindow;
        end; { with }

      if Formulario.Components[I] is TDBMemo then
        with Formulario.Components[I] as TDBMemo do
        begin
          ReadOnly := False;
          Color    := clWindow
        end; { with }

      if Formulario.Components[I] is TcxDBMemo then
        with Formulario.Components[I] as TcxDBMemo do
        begin
          Properties.ReadOnly := False;
          Style.Color         := clWindow;
        end; { with }

      if Formulario.Components[I] is TDBGrid then
        with Formulario.Components[I] as TDBGrid do
        begin
          ReadOnly := False;
          Color    := clWindow
        end; { with }

      if Formulario.Components[I] is TcxGrid then
        with Formulario.Components[I] as TcxGrid do
          begin
            Enabled := True;
          end; { with }

      if Formulario.Components[I] is TDBRadioGroup then
        with Formulario.Components[I] as TDBRadioGroup do
        begin
          ReadOnly := False;
        end; { with }

      if Formulario.Components[I] is TcxDBRadioGroup then
        with Formulario.Components[I] as TcxDBRadioGroup do
        begin
          Properties.ReadOnly:= False;
        end; { with }

      if Formulario.Components[I] is TDBCheckBox then
        with Formulario.Components[I] as TDBCheckBox do
        begin
          ReadOnly := False;
        end; { with }

      if Formulario.Components[I] is TcxDBCheckBox then
        with Formulario.Components[I] as TcxDBCheckBox do
        begin
          Properties.ReadOnly:= False;
        end; { with }

      if Formulario.Components[I] is TEdit then
        with Formulario.Components[I] as TEdit do
        begin
          ReadOnly := False;
          Color    := clWindow
        end; { with }

      if Formulario.Components[I] is TMemo then
        with Formulario.Components[I] as TMemo do
        begin
          ReadOnly := False;
          Color    := clWindow
        end; { with }

      if Formulario.Components[I] is TcxDBDateEdit then
        with Formulario.Components[I] as TcxDBDateEdit do
        begin
          Style.Color := clWindow;
          Properties.ReadOnly := False;
        end;

      if Formulario.Components[I] is TcxDBCurrencyEdit then
        with Formulario.Components[I] as TcxDBCurrencyEdit do
        begin
          Style.Color := clWindow;
          Properties.ReadOnly := False;
        end;
    end; { for }
end;

procedure HabilitaControles(Form : TForm; Estado : Boolean);
var
  I : Byte;
begin
  for I := 0 to Form.ComponentCount -1 do
    begin
      if Form.Components[I] is TcxTextEdit then
        TcxTextEdit(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxMaskEdit then
        TcxMaskEdit(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxCurrencyEdit then
        TcxCurrencyEdit(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxMemo then
        TcxMemo(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxLookupComboBox then
        TcxLookupComboBox(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxImageComboBox then
        TcxImageComboBox(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxRadioGroup then
        TcxRadioGroup(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxCheckBox then
        TcxCheckBox(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxDateEdit then
        TcxDateEdit(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxComboBox then
        TcxComboBox(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxButtonEdit then
        TcxButtonEdit(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxSpinEdit then
        TcxSpinEdit(Form.Components[I]).Properties.ReadOnly := not Estado;

      if Form.Components[I] is TcxTimeEdit then
        TcxTimeEdit(Form.Components[I]).Properties.ReadOnly := not Estado;
    end;

  //MANEJAMOS LOS COLORES DE LOS CONTROLES...
  if Estado = False then
    begin
      for I := 0 to Form.ComponentCount -1 do
        begin
          if Form.Components[I] is TcxTextEdit then
            TcxTextEdit(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxMaskEdit then
            TcxMaskEdit(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxCurrencyEdit then
            TcxCurrencyEdit(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxMemo then
            TcxMemo(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxLookupComboBox then
            TcxLookupComboBox(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxImageComboBox then
            TcxImageComboBox(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxDateEdit then
            TcxDateEdit(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxComboBox then
            TcxComboBox(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxButtonEdit then
            TcxButtonEdit(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxSpinEdit then
            TcxSpinEdit(Form.Components[I]).Style.Color:= $00B0FFFF;

          if Form.Components[I] is TcxTimeEdit then
            TcxTimeEdit(Form.Components[I]).Style.Color:= $00B0FFFF;
        end;
    end
  else
    begin
      for I := 0 to Form.ComponentCount -1 do
        begin
          if Form.Components[I] is TcxTextEdit then
            TcxTextEdit(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxMaskEdit then
            TcxMaskEdit(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxCurrencyEdit then
            TcxCurrencyEdit(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxMemo then
            TcxMemo(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxLookupComboBox then
            TcxLookupComboBox(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxImageComboBox then
            TcxImageComboBox(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxDateEdit then
            TcxDateEdit(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxComboBox then
            TcxComboBox(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxButtonEdit then
            TcxButtonEdit(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxSpinEdit then
            TcxSpinEdit(Form.Components[I]).Style.Color:= clWindow;

          if Form.Components[I] is TcxTimeEdit then
            TcxTimeEdit(Form.Components[I]).Style.Color:= clWindow;
        end;
    end;

end;

{FUNCION QUE SERVIRA PARA CANCELAR EL DISPARO DEL EVENTO ONEXIT AL PRESIONAR
 UN BOTON CUANDO EN DICHO EVENTO EXISTA UN CODIGO DE VALIDACION. }
function BotonesEnfocados(Form : TForm) : Boolean;
var
  I : Integer;
begin
  Result := False;
  for I:= 0 to Form.ComponentCount - 1 do
    begin
      if Form.Components[I] is TcxButton then
        begin
          if (Form.Components[I] as TcxButton).Focused then
            begin
              Result:= True;
              Break;
            end;
        end;
    end;
end;

function NPos(Cadena : string; SubCadena : string; Posicion : Integer) : Integer;
var
  Temp : string;
  N, I : Integer;
begin
  N:= Posicion;
  Temp:= '';
  I:= 1;
  while I <= N do
    begin
      Posicion:= Pos(SubCadena, Cadena);
      if Posicion <> 0 then
        begin
          Temp:= Temp + Copy(Cadena, 1, Posicion);
          Delete(Cadena, 1, Posicion);
        end
      else
        Temp:= Cadena;
        Inc(I);
    end;
  Result:= Length(Temp);
end;

function LPad(Cadena: string; Longitud : Word; Relleno : string = ' ') : string;
begin
  Result := Cadena;

  while Length(Result) < Longitud do
    Result := Relleno + Result;

  if Length(Cadena) <= Longitud then
    Result := Copy(Result, 1, Longitud);
end;

function RPad(Cadena: string; Longitud : Word; Relleno : string = ' ') : string;
begin
  Result := Cadena;

  while Length(Result) < Longitud do
    Result := Result + Relleno;

  if Length(Cadena) <= Longitud then
    Result := Copy(Result, 1, Longitud);
end;

function RellenaLinea(Longitud : SmallInt; Rellena : Char) : string;
begin
  Result := '';
  while Length(Result) < Longitud do
    Result := Result + Rellena;
end;

function Justifica(Texto : string; Longitud : SmallInt; Rellena : Char; Justificado : TJusticado) : string;
var
  LongTexto : SmallInt;
begin
   LongTexto := Length(Texto);
   if  LongTexto  < Longitud then
   begin
     LongTexto := Longitud - LongTexto;
     case Justificado of
       tjLeft : Texto := Texto+ RellenaLinea(LongTexto, Rellena);
       tjRight : Texto := RellenaLinea(LongTexto, Rellena) + Texto;
       tjCenter : Texto := RellenaLinea( ( LongTexto - Round(LongTexto/ 2) ) , Rellena) +
                          Texto +
                          RellenaLinea( ( Round(LongTexto/ 2) ) , Rellena);
     end;
   end;
   Result := Texto;
end;

//Funcion para saber cual es la linea mas larga que tiene el StringList
function MasLargo(Lista : TStringList) : Integer;
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

function ObtenerPipe(Linea : string; Delimitador : AnsiChar; Posicion : Integer) : string;
var
  Lista : TStringList;
  I : Integer;
begin
  Lista := TStringList.Create;
  try
    Lista.Clear;
    ExtractStrings([Delimitador], [], PChar(Linea), Lista);

    for I:= 0 to Lista.Count -1 do
      if (I+1) = Posicion then
        Result:= Lista[I];
  finally
    Lista.Free;
  end;
end;


// CONVERTIR NUMEROS A LETRAS

(* ************************************ *)
(* Conversión Número -> Letra *)
(* *)
(* Parámetros: *)
(* *)
(* mNum: Número a convertir *)
(* iIdioma: Idioma de conversión *)
(* 1 -> Castellano *)
(* 2 -> Catalán *)
(* iModo: Modo de conversión *)
(* 1 -> Masculino *)
(* 2 -> Femenino *)
(* *)
(* Restricciones: *)
(* *)
(* - Redondeo a dos decimales *)
(* - Rango: 0,00 a 999.999.999.999,99 *)
(* *)
(* ************************************ *)

function NumLetra(const MNum : Currency; const IIdioma, IModo : Smallint) : string;
const
  ITopFil : Smallint = 6;
  ITopCol : Smallint = 10;
  ACastellano: array [0 .. 5, 0 .. 9] of PChar =
  (('UNA ', 'DOS ', 'TRES ', 'CUATRO ', 'CINCO ', 'SEIS ', 'SIETE ',
    'OCHO ', 'NUEVE ', 'UN '), ('ONCE ', 'DOCE ', 'TRECE ', 'CATORCE ',
    'QUINCE ', 'DIECISEIS ', 'DIECISIETE ', 'DIECIOCHO ', 'DIECINUEVE ', '')
    , ('DIEZ ', 'VEINTE ', 'TREINTA ', 'CUARENTA ', 'CINCUENTA ',
    'SESENTA ', 'SETENTA ', 'OCHENTA ', 'NOVENTA ', 'VEINTI'),
  ('CIEN ', 'DOSCIENTAS ', 'TRESCIENTAS ', 'CUATROCIENTAS ', 'QUINIENTAS ',
    'SEISCIENTAS ', 'SETECIENTAS ', 'OCHOCIENTAS ', 'NOVECIENTAS ',
    'CIENTO '), ('CIEN ', 'DOSCIENTOS ', 'TRESCIENTOS ', 'CUATROCIENTOS ',
    'QUINIENTOS ', 'SEISCIENTOS ', 'SETECIENTOS ', 'OCHOCIENTOS ',
    'NOVECIENTOS ', 'CIENTO '), ('MIL ', 'MILLON ', 'MILLONES ', 'CERO ',
    'Y ', 'UN ', 'DOS ', 'CON ', '', ''));
  ACatalan : array [0 .. 5, 0 .. 9] of PChar =
  (('UNA ', 'DUES ', 'TRES ', 'QUATRE ', 'CINC ', 'SIS ', 'SET ', 'VUIT ',
    'NOU ', 'UN '), ('ONZE ', 'DOTZE ', 'TRETZE ', 'CATORZE ', 'QUINZE ',
    'SETZE ', 'DISSET ', 'DIVUIT ', 'DINOU ', ''), ('DEU ', 'VINT ',
    'TRENTA ', 'QUARANTA ', 'CINQUANTA ', 'SEIXANTA ', 'SETANTA ',
    'VUITANTA ', 'NORANTA ', 'VINT-I-'), ('CENT ', 'DOS-CENTES ',
    'TRES-CENTES ', 'QUATRE-CENTES ', 'CINC-CENTES ', 'SIS-CENTES ',
    'SET-CENTES ', 'VUIT-CENTES ', 'NOU-CENTES ', 'CENT '),
  ('CENT ', 'DOS-CENTS ', 'TRES-CENTS ', 'QUATRE-CENTS ', 'CINC-CENTS ',
    'SIS-CENTS ', 'SET-CENTS ', 'VUIT-CENTS ', 'NOU-CENTS ', 'CENT '),
  ('MIL ', 'MILIO ', 'MILIONS ', 'ZERO ', '-', 'UN ', 'DOS ', 'AMB ', '',''));

var
  ATexto : array [0 .. 5, 0 .. 9] of PChar;
  CTexto, CNumero : string;
  ICentimos, IPos : Smallint;
  BHayCentimos, BHaySigni : Boolean;

// Cargar Textos según Idioma / Modo
procedure NumLetra_CarTxt;
var
  I, J : Smallint;
begin
  //Asignación según Idioma

  for I:= 0 to ITopFil - 1 do
    for J:= 0 to ITopCol - 1 do
      case IIdioma of
        1 : ATexto[I, J]:= ACastellano[I, J];
        2 : ATexto[I, J]:= ACatalan[I, J];
      else
        ATexto[I, J]:= ACastellano[I, J];
      end;

  //Asignación si Modo Masculino
  if (IModo = 1) then
    begin
      for J:= 0 to 1 do
        ATexto[0, J]:= ATexto[5, J + 5];

      for J:= 0 to 9 do
        ATexto[3, J]:= ATexto[4, J];
    end;
end;

//Traducir Dígito -Unidad
procedure NumLetra_Unidad;
begin
  if not((CNumero[IPos] = '0') or (CNumero[IPos - 1] = '1') or
      ((Copy(CNumero, IPos - 2, 3) = '001') and ((IPos = 3) or (IPos = 9)))) then
    if (CNumero[IPos] = '1') and (IPos <= 6) then
      CTexto:= CTexto + ATexto[0, 9]
    else
      CTexto:= CTexto + ATexto[0, StrToInt(CNumero[IPos]) - 1];

  if ((IPos = 3) or (IPos = 9)) and (Copy(CNumero, IPos - 2, 3) <> '000') then
    CTexto:= CTexto + ATexto[5, 0];

  if (IPos = 6) then
    if (Copy(CNumero, 1, 6) = '000001') then
      CTexto:= CTexto + ATexto[5, 1]
    else
      CTexto:= CTexto + ATexto[5, 2];
end;

//Traducir Dígito -Decena-
procedure NumLetra_Decena;
begin
  if (CNumero[IPos] = '0') then
    Exit
  else
    if (CNumero[IPos + 1] = '0') then
      CTexto:= CTexto + ATexto[2, StrToInt(CNumero[IPos]) - 1]
  else
    if (CNumero[IPos] = '1') then
      CTexto:= CTexto + ATexto[1, StrToInt(CNumero[IPos + 1]) - 1]
  else
    if (CNumero[IPos] = '2') then
      CTexto:= CTexto + ATexto[2, 9]
  else
    CTexto:= CTexto + ATexto[2, StrToInt(CNumero[IPos]) - 1] + ATexto[5, 4];
end;

//Traducir Dígito -Centena-
procedure NumLetra_Centena;
var
  IPos2 : Smallint;
begin
  if (CNumero[IPos] = '0') then
    Exit;

  IPos2:= 4 - Ord(IPos > 6);

  if (CNumero[IPos] = '1') and (Copy(CNumero, IPos + 1, 2) <> '00') then
    CTexto:= CTexto + ATexto[IPos2, 9]
  else
    CTexto:= CTexto + ATexto[IPos2, StrToInt(CNumero[IPos]) - 1];
end;

//Eliminar Blancos previos a guiones
procedure NumLetra_BorBla;
var
  I : Smallint;
begin
  I:= Pos(' -', CTexto);

  while (I > 0) do
    begin
      Delete(CTexto, I, 1);
      I:= Pos(' -', CTexto);
    end;
end;

begin
  //Control de Argumentos
  if (MNum < 0.00) or (MNum > 999999999999.99) or (IIdioma < 1) or
    (IIdioma > 2) or (IModo < 1) or (IModo > 2) then
    begin
      Result:= 'ERROR EN ARGUMENTOS';
      Abort;
    end;

  //Cargar Textos según Idioma / Modo *)
  NumLetra_CarTxt;

  { Bucle Exterior -Tratamiento Céntimos-
    NOTA: Se redondea a dos dígitos decimales }

  CNumero:= Trim(Format('%12.0f', [Int(MNum)]));
  CNumero:= StringOfChar('0', 12 - Length(CNumero)) + CNumero;
  ICentimos:= Trunc((Frac(MNum) * 100) + 0.5);

  repeat
    //Detectar existencia de Céntimos
    if (ICentimos <> 0) then
      BHayCentimos:= True
    else
      BHayCentimos:= False;

    //Bucle Interior -Traducción-
    BHaySigni:= False;

    for IPos:= 1 to 12 do
      begin
        //Control existencia Dígito significativo
        if not(BHaySigni) and (CNumero[IPos] = '0') then
          Continue
        else
          BHaySigni:= True;

        //Detectar Tipo de Dígito
        case ((IPos - 1) mod 3) of
          0 : NumLetra_Centena;
          1 :  NumLetra_Decena;
          2 : NumLetra_Unidad;
        end;
      end;

    //Detectar caso 0
    if (CTexto = '') then
      CTexto:= ATexto[5, 3];

    //Traducir Céntimos -si procede-
    if (ICentimos <> 0) then
      begin
        CTexto:= CTexto + ATexto[5, 7];
        CNumero:= Trim(Format('%.12d', [ICentimos]));
        ICentimos := 0;
      end;
  until not(BHayCentimos);

  //Eliminar Blancos innecesarios -sólo Catalán-
  if (IIdioma = 2) then
    NumLetra_BorBla;

  //Retornar Resultado
  Result:= Trim(CTexto);
end;

//Función para obtiner el nombre del PC
function ObtenerNombrePC() : AnsiString;
var
  Nombre : AnsiString;
  DatosSocket : WSAData;
begin
  WSAStartup($0101, DatosSocket);
  SetLength(nombre, MAX_PATH);
  gethostname(PAnsiChar(Nombre), MAX_PATH);
  SetLength(Nombre, StrLen(PansiChar(Nombre)));
  Result:= Nombre;
end;

//Función para obtener el numero de IP publica del PC
function ObtenerIPPublica : string;
var
  Buffer: array[0..127] of char;
  WSAData: TWSADATA;
  HostEnt: phostent;
begin
  Result:= '';
  FillChar(Buffer,Sizeof(Buffer),#0);
  if WSAStartup(MAKEWORD(1, 1), WSADATA) = 0 then
  begin
    if GetHostName(@Buffer,Sizeof(Buffer)) = 0 then
    begin
      HostEnt:= gethostbyname(@Buffer);
      if HostEnt <> nil then
        Result:= String(inet_ntoa(PInAddr(HostEnt.h_addr_list^)^));
    end;
    WSACleanup;
  end;
end;

//Función para obtener el numero de IP publica del PC
function ObtenerIPPrivada : string;
type
  TaPInAddr = array [0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe       : PHostEnt;
  pptr      : PaPInAddr;
  Buffer    : array [0..63] of Ansichar;
  I         : Integer;
  GInitData : TWSADATA;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(Buffer);

  if phe = nil then
    Exit;

  pptr := PaPInAddr(phe^.h_addr_list);
  I := 0;

  while pptr^[I] <> nil do
    begin
      Result := StrPas(inet_ntoa(pptr^[I]^));
      Inc(I);
    end;

  WSACleanup;
end;

function ObtenerUserName : string;
var
  pcUser  : PChar;
  dwUSize : DWORD;
begin
  dwUSize := 21;
  GetMem(pcUser, dwUSize);
  try
    if Windows.GetUserName(pcUser, dwUSize) then
      Result := pcUser
  finally
    FreeMem(pcUser);
  end;
end;

function TipoVariable(Variable : Variant) : string;
var
  Tipo : Integer;
begin
  Tipo := VarType(Variable);

  case Tipo of
    varEmpty     : Result := 'Vacía';
    varNull      : Result := 'Nula';
    varSmallInt  : Result := 'SmallInt';
    varInteger   : Result := 'Integer';
    varSingle    : Result := 'Single';
    varDouble    : Result := 'Double';
    varCurrency  : Result := 'Currency';
    varDate      : Result := 'Date';
    varOleStr    : Result := 'OleStr';
    varDispatch  : Result := 'Dispatch';
    varError     : Result := 'Error';
    varBoolean   : Result := 'Boolean';
    varVariant   : Result := 'Variant';
    varUnknown   : Result := 'Desconocida';
    varByte      : Result := 'Byte';
    varWord      : Result := 'Word';
    varLongWord  : Result := 'LongWord';
    varInt64     : Result := 'Int64';
    varStrArg    : Result := 'StrArg';
    varString    : Result := 'String';
    varAny       : Result := 'Any';
  end;

  Result := 'Tipo ' + Result;
end;

{ FUNCION QUE SERVIRA PARA ESTABLECER LA MASCARA DE FORMATO MIENTRAS EL USUARIO
  ESCRIBE.
  EJEMPLO DE USO (PONER EL CODIGO EN EL EVENTO ONCHANGE):
  Edit1.Text     := Mascara(Edit1.Text,'(999)-999-9999'); //telefono
  Edit1.SelStart := Length(Edit1.Text);
  }
function Mascara(Edt, Mascara : string) : string;
var
  I : Integer;
begin
  for I := 1 to Length(Edt) do
    begin
       if (Mascara[I] = '9') and not (Edt[I] in ['0'..'9'])
       and (Length(Edt) = Length(Mascara)+1) then
         Delete(Edt,I,1);
       if (Mascara[I] <> '9') and (Edt[I] in ['0'..'9']) then
         Insert(Mascara[I],Edt, I);
    end;
  Result := Edt;
end;

//FUNCION PARA PERMITIR SOLO CARACTERES VALIDOS EN UNA STRING
function EvaluaCaracteres(Nombre : string) : Boolean;
var
  I : Integer;
begin
  Result := False;
  for I:= 0 to Length(Nombre) do
    if not (Nombre[I] in ['0'..'9','a'..'z','A'..'Z','ñ','Ñ']) then
      Exit;
  Result := True;
end;

//Funcion que extrae cadena hasta el ultimo caracter especificado
function ExtraerHastaUltimo(Cadena : string; Caracter : Char) : string;
var
  I : Integer;
begin
  I:= Length(Cadena);
  while (I > 0) and (Cadena[I] <> Caracter) do
    Dec(I);

  Result := Copy(Cadena, 1, I-1);
end;

//FUNCION QUE INSERTA UNA CADENA DENTRO DE OTRA A PARTIR DE LA POSICION P
function Insertar(Cadena, Insertada : string; P : Integer) : string;
begin
  if P <= 0 then
    Result := Cadena
  else
    Result := Copy(Cadena,1,P-1) + Insertada + Copy(Cadena,P,Length(Cadena));
end;

//FUNCION PARA OBTENER LA RUTA DEL DIRECTORIO TEMPORAL DE WINDOWS
function GetTempDir : string;
var
  Buffer : array[0..Max_path] of Char;
begin
  FillChar(Buffer, Max_Path + 1, 0);
  GetTempPath(Max_path, Buffer);
  Result := string(Buffer);
  if Result[Length(Result)] <> '\' then
    Result := Result + '\';
end;


{ PROCEDIMIENTO QUE GRABA UN STRING EN UN ARCHIVO DE TEXTO Y AL PORTAPAPELES.
  ESTA RUTINA ES UTIL PARA ANALIZAR QUERYS GENERADOS EN TIEMPO DE EJECUCION. }
procedure GrabarStringArchivo(Texto : string);
  procedure CopiarAlPortaPapeles(Archivo : string);
  var
   List : TStringList;
  begin
    List:= TStringList.Create;
    List.LoadFromFile(Archivo);
    Clipboard.AsText := List.Text;
    List.Free;
  end;

var
  myFile : TextFile;
//    Ruta : string;
begin
//    Ruta := IncludeTrailingPathDelimiter(Ruta);
  AssignFile(myFile, GetTempDir + 'Texto.txt');
  ReWrite(myFile);
  WriteLn(myFile, Texto);
  CloseFile(myFile);

  if MessageDlg('¿Quieres Abrir el Archivo Generado?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //ABRIMOS EL ARCHIVO GENERADO
      ShellExecute(0,'open','c:\windows\notepad.exe',
                   PWideChar(GetTempDir + 'Texto.txt'), nil, SW_SHOWNORMAL);
    end;

  CopiarAlPortaPapeles(GetTempDir + 'Texto.txt')
end;

//PROCEDIMIENTO PARA COPIAR EL CONTENIDO DE UN ARCHIVO DE TEXTO AL PORTAPAPELES
procedure CopiarAlPortaPapeles(RutaArchivo : string);
var
 List : TStringList;
begin
  List:= TStringList.Create;
  List.LoadFromFile(RutaArchivo);
  Clipboard.AsText := List.Text;
  List.Free;
end;

//function ValidaEMail(const EMailIn : PChar) : Boolean;
function ValidaEMail(const EMailIn : string) : Boolean;
const
  CaraEsp : array[1..40] of string[1] =
  ('!','#','$','%','¨','&','*',
   '(',')','+','=','§','¬','¢','¹','²',
   '³','£','´','`','ç','Ç',',',';',':',
   '<','>','~','^','?','/','','|','[',']','{','}',
   'º','ª','°');
var
  I, cont : Integer;
  EMail : string;
begin
  EMail  := EMailIn;
  Result := True;
  cont   := 0;
  if EMail <> '' then
    if (Pos('@', EMail)<>0) and (Pos('.', EMail)<>0) then    // existe @ .
      begin
        if (Pos('@', EMail)=1) or (Pos('@', EMail)= Length(EMail))
        or (Pos('.', EMail)=1) or (Pos('.', EMail)= Length(EMail))
        or (Pos(' ', EMail)<>0) then
          Result := False
        else                                   // @ seguido de . e vice-versa
          if (abs(Pos('@', EMail) - Pos('.', EMail)) = 1) then
            Result := False
          else
            begin
              for I := 1 to 40 do            // se existe Caracter Especial
                if Pos(CaraEsp[I], EMail)<>0 then
                  Result := False;

              for I := 1 to Length(EMail) do
                begin                                 // se existe apenas 1 @
                  if EMail[I] = '@' then
                    cont := cont + 1;                    // . seguidos de .
                  if (EMail[I] = '.') and (EMail[I+1] = '.') then
                    Result := false;
                end;
                                     // . no f, 2ou+ @, . no I, - no I, _ no I
              if (cont >=2) or ( EMail[Length(EMail)]= '.' )
              or ( EMail[1]= '.' ) or ( EMail[1]= '_' )
              or ( EMail[1]= '-' )  then
                Result := False;
                                              // @ seguido de COM e vice-versa
              if (Abs(Pos('@', EMail) - Pos('com', EMail)) = 1) then
                Result := False;
                                                // @ seguido de - e vice-versa
              if (Abs(Pos('@', EMail) - Pos('-', EMail)) = 1) then
                Result := False;
                                                // @ seguido de _ e vice-versa
              if (Abs(Pos('@', EMail) - Pos('_', EMail)) = 1) then
                Result := False;
            end;
      end
    else
      Result := False;
end;

function ColorToStr(Color : TColor) : string;
begin
  Result:= IntToHex(Color,6);
  Result:= Copy(Result,5,2) + Copy(Result,3,2) + Copy(Result,1,2);
end;

//MEJOR USE StringToColor INCLUIDA EN DELPHI
function StrToColor(Color : string) : TColor;
begin    //NO USE ESTA FUNCION... MEJOR USE StringToColor INCLUIDA EN DELPHI
  while Length(Color) < 6 do
    Color:= '0' + Color;
  Color  := Copy(Color,5,2) + Copy(Color,3,2) + Copy(Color,1,2);
  Result := StrToIntDef('$'+Color,0);
end;


{ FUNCION PARA CONVERTIR UN TCOLOR A INTEGER

 Esta funcion sirve para guardar el color en formato numerico en la
 base de datos para luego asignar ese color a cualquier componente.

 EJEMPLO DE USO :

  var
    Color : LongInt;
  begin
    Color       := ConvertColorToInteger(ColorBox1.Color);  //Obtenemos su valor numerico
    Edit1.Color := StringToColor(IntToStr(Color)); //Con la funcion StringToColor obtenemos el TColor
  end;
}
function ConvertColorToInteger(Color : TColor) : LongInt;
var
  _Color : LongInt;
  r, g, b : Byte;
begin
  _Color := ColorToRGB(Color);
  r      := _Color;
  g      := _Color shr 8;
  b      := _Color shr 16;
  Result := RGB(r,g,b);
end;

//PARA ESTABLECER EL TAMAÑO DEL PAPEL QUE TENDRA LA IMPRESORA
procedure SetPaperSize(NombrePrinter : string; Papel : Word);
var
  PrintDevice : array [0..255] of Char;
  PrintDriver : array [0..255] of Char;
  PrintPort : array [0..255] of Char;
  Handle : THandle;
  DevMode : PDevMode;
begin
  Printer.PrinterIndex := Printer.Printers.IndexOf(NombrePrinter);
  Printer.GetPrinter(PrintDevice, PrintDriver, PrintPort, Handle);

  if Handle <> 0 then
    begin
      DevMode := GlobalLock(Handle);
      if DevMode <> nil then
        begin
          with DevMode^ do
            begin
              dmPaperSize := Papel;
              dmFields    := dmFields or DM_PAPERSIZE;
            end;
          GlobalUnlock(Handle);
        end;
    end;
end;

//PARA OBTENER EL TAMAÑO DEL PAPEL QUE TIENE LA IMPRESORA
function GetPaperSize(NombrePrinter : string) : Integer;
var
 FDevice : array[0..255] of Char;
 FDriver : array[0..255] of Char;
 FPort : array[0..255] of Char;
 FHandle : THandle;
 FDeviceMode : PDevMode;
begin
  Printer.PrinterIndex := Printer.Printers.IndexOf(NombrePrinter);
  Printer.GetPrinter(FDevice, FDriver, FPort, FHandle);

  if FHandle = 0 then
    begin
      Printer.PrinterIndex := Printer.PrinterIndex;
    end;

  Printer.GetPrinter (FDevice, FDriver, FPort, FHandle);

  if FHandle <> 0 then
    begin
      FDeviceMode := GlobalLock(FHandle);
      FDeviceMode^.dmFields := 0;
      GlobalUnlock(FHandle);
    end
  else
    begin
      FDeviceMode := nil;
      raise Exception.Create('Error retrieving DeviceMode');
    end;

  Result := FDeviceMode^.dmPaperSize;
end;

//PARA OBTENER EL NOMBRE DEL PAPEL QUE TIENE UNA IMPRESORA MEDIANTE SU INDICE
function GetPaperName(IdxPrinter, Papel : Word) : string;
type
  TPaperName = array[0..63] of Char;
  TAWord = array[1..High(WORD)] of WORD;
  TPaperNameArray = array[1..High(Integer) div SizeOf(TPaperName)] of TPaperName;
  PPaperNameArray = ^TPaperNameArray;
  PAWord = ^TAWord;
var
  Device, Driver, Port : array[0..255] of Char;
  hDevMode : THandle;
  I, NumPaperFormats : Integer;
  pPaperFormats : PPaperNameArray;
  pPapers : PAWord; //PWORD;
begin
  Result := '';
  Printer.PrinterIndex := IdxPrinter;
  Printer.GetPrinter(Device, Driver, Port, hDevmode);
  NumPaperFormats := DeviceCapabilities(Device, Port, DC_PAPERNAMES, nil, nil);
  if NumPaperFormats > 0 then
    begin
      GetMem(pPaperFormats, NumPaperFormats * SizeOf(TPaperName));
      GetMem(pPapers, NumPaperFormats * SizeOf(WORD));
      ZeroMemory(pPapers, NumPaperFormats);
      try
        DeviceCapabilities(Device, Port, DC_PAPERNAMES, PWideChar(pPaperFormats), nil);
        DeviceCapabilities(Device, Port, DC_PAPERS, PWideChar(pPapers), nil);

        for I:= 1 to NumPaperFormats do
          begin
            if pPapers^[I] = Papel then
              begin
                Result := pPaperformats^[I];
                Break;
              end;
          end;
      finally
        FreeMem(pPaperFormats);
        FreeMem(pPapers);
      end;
    end;
end;

//PARA OBTENER EL NOMBRE DEL PAPEL QUE TIENE UNA IMPRESORA MEDIANTE SU NOMBRE
function GetPaperName2(NombrePrinter : string; Papel : Word) : string;
type
  TPaperName = array[0..63] of Char;
  TAWord = array[1..High(WORD)] of WORD;
  TPaperNameArray = array[1..High(Integer) div SizeOf(TPaperName)] of TPaperName;
  PPaperNameArray = ^TPaperNameArray;
  PAWord = ^TAWord;
var
  Device, Driver, Port : array[0..255] of Char;
  hDevMode : THandle;
  I, NumPaperFormats : Integer;
  pPaperFormats : PPaperNameArray;
  pPapers : PAWord; //PWORD;
begin
  Result := '';
  Printer.PrinterIndex := Printer.Printers.IndexOf(NombrePrinter);
  Printer.GetPrinter(Device, Driver, Port, hDevmode);
  NumPaperFormats := DeviceCapabilities(Device, Port, DC_PAPERNAMES, nil, nil);
  if NumPaperFormats > 0 then
    begin
      GetMem(pPaperFormats, NumPaperFormats * SizeOf(TPaperName));
      GetMem(pPapers, NumPaperFormats * SizeOf(WORD));
      ZeroMemory(pPapers, NumPaperFormats);
      try
        DeviceCapabilities(Device, Port, DC_PAPERNAMES, PWideChar(pPaperFormats), nil);
        DeviceCapabilities(Device, Port, DC_PAPERS, PWideChar(pPapers), nil);

        for I:= 1 to NumPaperFormats do
          begin
            if pPapers^[I] = Papel then
              begin
                Result := pPaperformats^[I];
                Break;
              end;
          end;
      finally
        FreeMem(pPaperFormats);
        FreeMem(pPapers);
      end;
    end;
end;

//PARA ESTABLECER LA BANDEJA POR LA CUAL SALDRA EL PAPEL DE LA IMPRESORA
procedure SetPaperBin(NombrePrinter : string; Bin : Integer);
var
  PrintDevice : array [0..255] of Char;
  PrintDriver : array [0..255] of Char;
  PrintPort : array [0..255] of Char;
  Handle : THandle;
  DevMode : PDevMode;
begin
  Printer.PrinterIndex := Printer.Printers.IndexOf(NombrePrinter);
  Printer.GetPrinter(PrintDevice, PrintDriver, PrintPort, Handle);
  if Handle <> 0 then
    begin
      DevMode := GlobalLock(Handle);
      if DevMode <> nil then
        begin
          with DevMode^ do
            begin
              dmDefaultSource := Bin;
              dmFields        := dmFields or DM_DEFAULTSOURCE;
            end;
          GlobalUnlock(Handle);
        end;
    end;
end;

//PARA OBTENER LA BANDEJA ACTUAL DE LA IMPRESORA
function GetPaperBin(NombrePrinter : string) : Integer;
var
 FDevice : array[0..255] of Char;
 FDriver : array[0..255] of Char;
 FPort : array[0..255] of Char;
 FHandle : THandle;
 FDeviceMode : PDevMode;
begin
  Printer.PrinterIndex := Printer.Printers.IndexOf(NombrePrinter);
  Printer.GetPrinter(FDevice, FDriver, FPort, FHandle);

  if FHandle = 0 then
    begin
      Printer.PrinterIndex := Printer.PrinterIndex;
    end;

  Printer.GetPrinter (FDevice, FDriver, FPort, FHandle);

  if FHandle <> 0 then
    begin
      FDeviceMode := GlobalLock(FHandle);
      FDeviceMode^.dmFields := 0;
      GlobalUnlock(FHandle);
    end
  else
    begin
      FDeviceMode := nil;
      raise Exception.Create('Error retrieving DeviceMode');
    end;

  Result := FDeviceMode^.dmDefaultSource;
end;


end.







