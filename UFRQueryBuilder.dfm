object FRQueryBuilder: TFRQueryBuilder
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Query Builder'
  ClientHeight = 1327
  ClientWidth = 1500
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  StyleName = 'Windows'
  OnShow = FormShow
  PixelsPerInch = 168
  TextHeight = 23
  object cxPageControl1: TcxPageControl
    Left = 9
    Top = 978
    Width = 1463
    Height = 338
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
    TabStop = False
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    ClientRectBottom = 333
    ClientRectLeft = 2
    ClientRectRight = 1458
    ClientRectTop = 39
    object cxTabSheet1: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'SQL   '
      ImageIndex = 0
      object MmSELECT: TcxMemo
        Left = 0
        Top = 0
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        TabStop = False
        Align = alClient
        Properties.ScrollBars = ssVertical
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.LookAndFeel.ScrollMode = scmClassic
        Style.LookAndFeel.SkinName = 'Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollMode = scmClassic
        StyleDisabled.LookAndFeel.SkinName = 'Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollMode = scmClassic
        StyleFocused.LookAndFeel.SkinName = 'Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollMode = scmClassic
        StyleHot.LookAndFeel.SkinName = 'Blue'
        TabOrder = 0
        Height = 294
        Width = 1456
      end
    end
  end
  object PcBuilder: TcxPageControl
    Left = 9
    Top = 14
    Width = 1477
    Height = 954
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.ScrollMode = scmClassic
    LookAndFeel.SkinName = 'Blue'
    OnChange = PcBuilderChange
    ClientRectBottom = 949
    ClientRectLeft = 2
    ClientRectRight = 1472
    ClientRectTop = 44
    object cxTabSheet2: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Tablas / Joins'
      ImageIndex = 0
      object cxLabel1: TcxLabel
        Left = 14
        Top = 0
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Tablas'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -23
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object GridTablas: TcxGrid
        Left = 14
        Top = 37
        Width = 1432
        Height = 772
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmClassic
        LookAndFeel.SkinName = 'Blue'
        object GridTablasDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DsTablas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 11
          FixedDataRows.SeparatorWidth = 11
          NewItemRow.SeparatorWidth = 11
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.NavigatorOffset = 88
          OptionsView.FixedColumnSeparatorWidth = 4
          OptionsView.GroupByBox = False
          Preview.LeftIndent = 35
          Preview.RightIndent = 9
          RowLayout.MinValueWidth = 140
          Styles.Inactive = Seleccionado
          Styles.Selection = Seleccionado
          object GridTablasDBTableView1Column1: TcxGridDBColumn
            Caption = 'Nombre de la Tabla'
            DataBinding.FieldName = 'NombreTabla'
            MinWidth = 35
            Options.Editing = False
            Width = 875
          end
          object GridTablasDBTableView1Column2: TcxGridDBColumn
            Caption = 'Alias de la Tabla (haga clic para modificar)'
            DataBinding.FieldName = 'AliasTabla'
            MinWidth = 35
            Width = 443
          end
        end
        object GridTablasLevel1: TcxGridLevel
          GridView = GridTablasDBTableView1
        end
      end
      object BtAgregarTabla: TcxButton
        Left = 14
        Top = 816
        Width = 263
        Height = 70
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Agregar Tabla'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Silver'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C08648800000280494441544889B5554D4854
          51183DDF9D3739E5C8301649E444D6226CD14684112568A48511CDA2160581D0
          A28DDB5A94D04210DCB46B1FC444B4081C1246989CE0E1C68DD5C69D60910AE3
          0FEA18CEBDF7DDFBB59819793AA2332FFA5697F33ECEF9EE3997F751FB9524BA
          FA870122042A6658F600DE07C00CAC7CFF8CE2421E4E57FF30CE77A73E11511A
          40D32ACCCCD6481F006670B6257AEE4171210F012220207945C01E040844A034
          551D11152C187945C1D46354910100110D7BC1B999B9EE06D56A3BA50100CEB5
          7809A9EE9FB87BFB26FB1BA6F22E9D84596B7932374343A981037DB9C22CCD9B
          1DE40188588B0E7C036B8F9E1E00E2910AAF08CC0EC09823FC3F544EED309577
          EB823E0E6366D65A1150B1E444816633B0D6B29412B9C2EC9119D4CE812D6AC4
          9E7F12382E607F05CAC0EF3FF01F3230C6B0526A9FFCB80C1C0428BF3D44B4B8
          5CDA9E5815727ADBAAA2A36C47F97468C8567FAF81046A014B4FE73612679E8C
          AFCF8FEC907199D049CCBF9D0E64A8FD42A4239D2AD3F3D131F4F4F635F624B0
          FFFE41448B1B89D6FE2FE1CDAC86ED3BDC532ECB39592E0F369DC19DC101564A
          61B9B43531BEFE6DC44F9EBD91E67B3F2621A584A7755284C48BA62DAAD9B32A
          D4F48E30AEFF5B58089252B256BA1A323D76AA59301AAC5AC06B7BBB45063AA9
          3A795808028042F211696BF8D6EC7B1090A0672FC7D0D39B6C6865D6FC078095
          B3A14421B6EB12D1556666251566920F69C07DC7BE05B6E4B85FF388C7DBEF83
          E8C4B566D9C21A0306B029A3402C9661E6574A2A28A5485B73C009066702AFCA
          D6CB17D1F7F17544795EC1533A59378CE53926A4424105F456097FD636BDB69E
          EB1F886001BA444094815F00DE30F8E9D2DBECDE5FEFA77D07584601E1000000
          0049454E44AE426082}
        OptionsImage.Spacing = 7
        TabOrder = 2
        OnMouseEnter = BtAgregarTablaMouseEnter
        OnMouseLeave = BtAgregarTablaMouseLeave
        OnClick = BtAgregarTablaClick
      end
      object BtQuitarTabla: TcxButton
        Left = 291
        Top = 816
        Width = 262
        Height = 70
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Quitar Tabla'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Silver'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C086488000002AD494441544889B5954F4854
          5114C67FE7F94A33CDAC28820AEC9F19448B8832234871510806FDD9140511B5
          6855D0A6A0456DDAD42E172DC30882204B321CD49A6A935051E1646650493153
          5AF8A779EFCD7BF7B418472667D07CD1595D3E0EDF77EFF79DCB91052BB75251
          7304440855AA18F541270054E1CBCB7B247A22D8153547585C557B5B441A8119
          ABA8AA9AC0CD0250455B0A4B16ED4BF444B0108190E46901F3272088208D32EE
          8895C6C291A715825C4CD2320056C92C3F3CB7AAE6BC60BC4A67A700B02BCB47
          A8ADFA4843FD0ECD6E688D44653ACC18A377DA3A6457EDF63FFADA3A9FC8F360
          9808609515A642BFC098FCB707282F4AF35AA1D98120C8E3FFA4B23387D64834
          27E8A93055D554CA13485B32ADC04C3330C6A8EBBAB4753EC99B41E61CDAA2BF
          B1E79F04A60A38BB426590ED3FFC870C822050CFF326C8A7CAC0264465DB6389
          F48F7D8D5F2A8E271E303C9248DAF69232C7DD650526BC4026E0C0F5DA360C0E
          1DB5AF349D6464348AEAB23922039BED82E68D6215F52E5FEDC8997317D8B4B9
          FAEF468289F9C712E9DF303858B3F4E1D316F1FDEAC93DC964F25932E9D4CD38
          83DD75DBD5F33CC6BEC62FD957DA4F8AEF57DBEB2B1563F063EFB0ABD6E2FA29
          9CEE175B44383BE331CDD8531C4F3C983D327A287D6543C9E9131435D433F7D4
          715CC749378B1CB4C6579DE665CB539980DDEF4309549701F8B13E71EEB5537C
          F880FCB87517E7752C3345CB6D0554B5A53512CDD96A93FF81AAEAFD8EC70250
          11FFB6B812068055F6BA355AD850CFF76BD775FEFE469CB77DEABC8909F0D98E
          7645282F5FB0179169D79A518309021428FC394C2534ABEA79D74F317CF132CE
          AB1E9CDEF7488195B9D18DD0AB724D69198FEAF614A53CAFCB71DD2D390DAADD
          A8EE2C082B30E4B9C4C746FD6D650B6F0A80C80A601EF009D526E0D8D50FB15F
          BF016C8B847B8F506FB00000000049454E44AE426082}
        OptionsImage.Spacing = 7
        TabOrder = 3
        OnMouseEnter = BtAgregarTablaMouseEnter
        OnMouseLeave = BtAgregarTablaMouseLeave
        OnClick = BtQuitarTablaClick
      end
      object BtNuevoJoin: TcxButton
        Left = 567
        Top = 816
        Width = 263
        Height = 70
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Nuevo Join'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Silver'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C086488000003314944415448899D94DB4F53
          5914C6BFB57BE8A920605104144784182521F860D47A09911A07CD207DE88397
          C14B7CD3075FC5C4181312837F814F1A25108993D11EC504D3C1719A9A191FBC
          25436266326A233A20A8201C38B79EE5436D2DC55EE87A38C9DE679FEF5BEBDB
          BF1C429EB5F1F0252CAFF7FE4A443E00F49D23CCCC8AC8D7A0C81905D28B0300
          81C827E56BB0DE3D056F7D845A773725F6FA8321B4EE6EE2B8697F3084BC2728
          95CD9CCEE53581E494211796028875995CA9EB051B0887039E9603783DA61E6B
          00F09D88E6AC250028ABF560CDF6A300A5BB2F00CC78FB4C414D5529CAAB56B7
          699AD109209177BA226001C8A911BF732CDC04A06FE992E29F9AB7349E753844
          EA377153666645027247CE65BCDB60037D000E7D1C1B7DFAEAE5BF7E224AFB11
          33C722CA15B95F062277009C9C9A187FF0207019370D3D533A0010C33457E416
          17CAE767A62703E1FE6E5839880329146543AEBEAEFACADDEB97A0CD4CE7243E
          CF201B722FFE7B7BA4C1D3D21DBE7B6D811370E29911B9E9D9D90BEEF2CAF7DB
          7C270654D7BAAC580F3F09C40C6C62A805BCFFC6D0E33F45896BD456F50A7262
          CF9DE01F1D04AA03C051DB5696B94B2E8E8E4F28EECADAB6A2CA9D1D241C19B1
          968B97FBA5F29D9B31B477ADEB85FCB9C1A2C92E56A99A9887172D153D35AAD4
          58F5C1D2A2911130333E8D8F02908F0BE3D32D08476586890944BE62D902791F
          F6BA24D93948445B535BD034FD91AE69BBFE3ED939ABFE138154206347EB61AC
          FCA1F6E8BEE64D57B260CD8F875E4942929DA793C595461F3333EBBA0ECB343D
          C221CE54F97F040058A68EBFEEF5614D45C9B54C77152FB76C4202D09EBC5920
          04E9BACEA6617E1D9FDA17AD5E712EFE5E9B9986AE7E4C749D5CA96B00904054
          1DEFBC40080280FB9E8364DA516E0EF7828055E960C98675CC80791844756DCF
          03307483073D076847A89BE91B846FE629E78875CC00E861E673866EC0300C32
          ED28CFD5E21EEDFFB179FACCACF4074373304D8A88995961664876347AD1B0AC
          16CB303D00E00DF72612B16D7EC484AE91C0E01C83D0EF41B8DD657E64F993DE
          FF6D0054E1F3A2E6D4CF8542500740ED045433300C708FCDDC15B9AACC8C74DF
          CE9644DAFA02D26688A31ECE49BF0000000049454E44AE426082}
        OptionsImage.Spacing = 7
        TabOrder = 4
        OnMouseEnter = BtAgregarTablaMouseEnter
        OnMouseLeave = BtAgregarTablaMouseLeave
        OnClick = BtNuevoJoinClick
      end
    end
    object cxTabSheet3: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Columnas'
      ImageIndex = 1
      object GridColumnas: TcxGrid
        Left = 53
        Top = 53
        Width = 1417
        Height = 780
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmClassic
        LookAndFeel.SkinName = 'Blue'
        object cxGrid1TableView1: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 11
          FixedDataRows.SeparatorWidth = 11
          NewItemRow.SeparatorWidth = 11
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.NavigatorOffset = 88
          OptionsView.FixedColumnSeparatorWidth = 4
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Preview.LeftIndent = 35
          Preview.RightIndent = 9
          RowLayout.MinValueWidth = 140
          Styles.Inactive = Seleccionado
          Styles.Selection = Seleccionado
          object cxGrid1TableView1Column1: TcxGridColumn
            Caption = 'Tabla'
            MinWidth = 35
            Options.Editing = False
            Width = 438
          end
          object cxGrid1TableView1Column2: TcxGridColumn
            Caption = 'Alias Tabla'
            MinWidth = 35
          end
          object cxGrid1TableView1Column3: TcxGridColumn
            Caption = 'Columna'
            MinWidth = 35
            Options.Editing = False
            Width = 473
          end
          object cxGrid1TableView1Column4: TcxGridColumn
            Caption = 'Alias de la Columna'
            MinWidth = 35
            Width = 210
          end
          object cxGrid1TableView1Column5: TcxGridColumn
            Caption = 'Mostrar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            MinWidth = 35
            Width = 123
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGrid1TableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1470
        Height = 53
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Color = 16773091
        ParentBackground = False
        TabOrder = 1
        object CkbTodos: TcxCheckBox
          Left = 1323
          Top = 9
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabStop = False
          Caption = 'Todos'
          ParentFont = False
          State = cbsChecked
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'VS2010'
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'VS2010'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'VS2010'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'VS2010'
          TabOrder = 0
          Transparent = True
          OnClick = CkbTodosClick
        end
        object cxLabel7: TcxLabel
          Left = 53
          Top = 9
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Cantidad de Campos :'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlue
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object EdCantidadColSelect: TcxCalcEdit
          Left = 266
          Top = 5
          Hint = 'Cantidad de campos por linea que saldr'#225'n en el query.'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          EditValue = 0.000000000000000000
          ParentShowHint = False
          ShowHint = True
          Style.HotTrack = True
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.ScrollbarMode = sbmClassic
          Style.LookAndFeel.SkinName = 'MoneyTwins'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
          StyleDisabled.LookAndFeel.SkinName = 'MoneyTwins'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
          StyleFocused.LookAndFeel.SkinName = 'MoneyTwins'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
          StyleHot.LookAndFeel.SkinName = 'MoneyTwins'
          TabOrder = 2
          Width = 88
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 53
        Width = 53
        Height = 780
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        TabOrder = 2
        object BtMoverArriba: TcxButton
          Left = 4
          Top = 58
          Width = 43
          Height = 44
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000473424954080808087C086488000001C249444154388DB5914F48D3
            6118C73FCFFBFB3973C8DA045BA1C36A05CD0E2E285B44B9D4A2164987FE1CC4
            83D0A1283C88748EBA8AD70E1E3AA40751BA4514D1213A785010FFA0501BFD33
            4373D3F6A34DD1BD1D36E79C9B79E97BFC3EDFE7C3F7795FD841557521AAFCD7
            768A60141BD45EEE20D0D6FD68AF3778D12C2D7FF7EBE387DD038E36B473F2D6
            E3874AA927C944F29CABE6440A65BC8F4686FF0D3878FA0681B69EBBA2548F80
            2412498060C5A15371BDBE321CFB3C5A1C50ED0F71F6CED356A554AF8828800C
            40042E5578CFFC5CB51647976727B703F6FB1A387FEF598B6194F48B88B9E167
            006988C895CA63C14822F67D223E37B309A8F4D673E1415F93692B7B2122A5B9
            AD7200004A9016776DE3A4351F99B1E63F6138DC4768EE1C0A9494395E8A883D
            FF4DF2006988A8EB6E5FD348F4CB48D87456FBB0D99D5745E4554E280078F216
            BF01D96F50A62DE4F4F85F8BB9A71CC7BEC3D994DD7580E0FDE703C04D80E8E2
            D2C668706CA0EBB6B510DE6C17FB81B996B4887E1DCF9AAB7F96F32B67652D84
            F93D3BB5F59EA2E95DEAFF00347ABBA735056CCC22C1375A00AD331E006F0BEC
            23852C97E738220A0DA4D6536928109F9B46EBD496F45F5D37933ACE687DED00
            00000049454E44AE426082}
          OptionsImage.Spacing = 7
          TabOrder = 0
          OnMouseEnter = BtAgregarTablaMouseEnter
          OnMouseLeave = BtAgregarTablaMouseLeave
          OnClick = BtMoverArribaClick
        end
        object BtMoverAbajo: TcxButton
          Left = 4
          Top = 112
          Width = 43
          Height = 44
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000473424954080808087C086488000001C249444154388DA5923D6853
            6114869FF736D5DA42113B54AC1129E82288E82201411C82084A293A886E199C
            A4AB430787561C1C2C7432BA3974521029459D8C562945107F6E893FC1546B6D
            49D334859BC434C72149BDE98D15F1DDBE97F73C9C73BE239AA8A32B8CE46018
            5631CCAABE97FD0A584356CD8AFBAE4DC790A298915DCA6106064F9E8FF6C5F3
            73EF1BF2A18D00C901880ACE21D53CC00CA1F8C6BCD36C0429D058D50BDACD01
            FFA2FF06849CD056DAB7EF5C37DA77F4FC31DCD6D9CD4F6F65FD5D5ACDA03D87
            4F73ECD2ED2149FB7CD9A340186029B35CF7668197BECCFCCCC48D81D0CA8F8F
            944B8589D096B601491D9B741BAE438192552AFDF9EF2ECEF23797C4ADD8B3B5
            72F1AC9915FF36B3616533BBF0EEC1D5F1C564821680FCC267F28BA94FBB0F9D
            7225F5AB760C009E57F0D7578462EEF8F5B12F2FEE02540100B9B919BCDCBCDB
            73309A463A53FF751FC00C2E271FDDBC937AFAFB9E5AF0299B7E43C95B7DBDEB
            C0F1ACA493806A0033E34A2A111FF9F078A461A406004026350D30D5BD3FB226
            E9440D30949E1A1B761F0E07761200002C242769DDD699E8EA3DD25A28142767
            5FDD1F7C7B6FB059743389DEC879F6462EE2DB6940BF00D579A833E871B6F500
            00000049454E44AE426082}
          OptionsImage.Spacing = 7
          TabOrder = 1
          OnMouseEnter = BtAgregarTablaMouseEnter
          OnMouseLeave = BtAgregarTablaMouseLeave
          OnClick = BtMoverAbajoClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 833
        Width = 1470
        Height = 72
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alBottom
        Color = 16773091
        ParentBackground = False
        TabOrder = 3
        object CkbGenerarArchivo: TcxCheckBox
          Left = 154
          Top = 18
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Generar Archivo'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'VS2010'
          Style.TransparentBorder = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'VS2010'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'VS2010'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'VS2010'
          TabOrder = 0
          Transparent = True
        end
        object BtNativoDelphi: TcxButton
          Left = 826
          Top = 9
          Width = 289
          Height = 52
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Nativo para Delphi'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000097048597300000EC400000EC401952B0E1B0000029A49444154388D
            65935B48944118869FF9F777315D53534C114C33D3544CCC5502ADAC30E840D9
            855709261EBA894508EC22BAEABEBA8A92CC82CA8BF2A220432D4A24CA4C723D
            52D9EA4A9EF284FF7A62DD992EDC95757B6160BE99EF7D67BE99EF154A29FCE1
            4ACBCB016A806220C1BB3C0AB403F596E1AE6EFF7CE11370A5E55980DB4005A0
            0110208E101268006A2DC35D2E7C895E720B5009680881A9A810D3B102425A9B
            D9F1F4015A5606E6ABD59A8889AEB41BAE96C6C8248BF71085916AAD3752ADCA
            48B52A637FAE72B77F5072C950EB4F9A94524AADDEB8A53C3F4794524ACD7CEA
            528FA292554344E243A514C248B5E6025F008DD010CC1597D08B8B506B6B6036
            8347E2F9D68BB9AC14E79B363ED6D4B2E15A069040BE0654F94A093A7F1ABDF4
            02F2EF1C727C02A4424D4E61CACEA4FFCE3DDE975DF1917DE55769C04900B12B
            7273E83A6A620A53CE414C6929E8278E62CA3C405044383BF7ED2500C51A9008
            405828FAC5736CBCEB40DBBB072D36068440BADDCCF6F69370F6144925670205
            1274DF4C3F7E044FCF7708D211F171002C4F4CB2363B4F54560642D3084F49DE
            FC5A21B61474C009247AEC836899E9B0BA82080D65656A86F9BE21D61716F9F5
            FC2573BD03CC0F0C6D23034E1D6805AA85C98408B3A0A464D53E4070FE21A4DB
            CDF4E76E7E343E0B24FAD0AA01F701E9F9DA0342E09C9E61716383F9BE41CC11
            E1A4D794935D67FBBF2B410AA8D72CC35D3D400352D26BBB4EC7B59B8C343513
            1C1D458C3507C33146769D8DD8C2C381028DE50B8E6ECD1BD40EAFAC76DA1D4E
            108290B8DD8CBD7E8BB3A58DDF2F5E618C3A492E2DF127770AB0819F991E4726
            5924DC05CAF136966F2FBEA880A591515CE37F24D028C056BEE0706D13D8BA57
            6452AEDAEC4E7F3B3BBD8F5D7F79C1B1CDCEFF0091FF119CC18DC6D500000000
            49454E44AE426082}
          OptionsImage.Spacing = 7
          TabOrder = 1
          OnMouseEnter = BtAgregarTablaMouseEnter
          OnMouseLeave = BtAgregarTablaMouseLeave
          OnClick = BtNativoDelphiClick
        end
        object BtGenerarSQL: TcxButton
          Left = 1222
          Top = 9
          Width = 210
          Height = 52
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Generar SQL'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
            0D0000000473424954080808087C0864880000033349444154388DADD24F4CDB
            751CC6F1F7E7D77F94D20AA3458165B48DA5D884B9A1805A088A26D26D666CD9
            F4A03120D1C464172F4463BC79F0A0F166A2A6CCC8C544BDE0E2E64C5898952D
            361B9B7F9874CBDC98298D386C29F4CF8FB65F0F15B34911B3F85C3FC92B4F9E
            EF17FEE788635B031D7DFB2D8E6DAE7E11CD985D593E1BBB185974357A68D8EE
            ED305759BD6B7AFECA6FBF5EBD10BFF633FEDD3D01148BA7278E2EAEE9B98D60
            E7138764BB37700650C00AF0872A959E164DFB101800A24097824F0B7AFE1593
            B96A12D47B13636F7D562CE81B40A3D962AD031E544AD5ACA49672E9E4EF34B9
            FD5DC0FE52B1D8F6CBA5734B2DFE5DF5469339663459C2A010112A61009A9E5B
            5D02A64464CA5E5BFF8CBDD6A9015DC037577E38BBF4FDF409E6662237813322
            3CB4D586DADC4C844C3A1502DE07DEB0D7D68F0302940A8535000AE53625C0B0
            25E86C7493988FE90BD76363280E004F01E780E0BDEDDD359E4027ADF7071D40
            B72AEF0940B33740B337C03D3B7CB781D2B3EF799FABC93D0EFC08EC042E2BA5
            9E15914F805DC0B7400F1029158B239AC13029222E605129453EBB7AE4CBF177
            66D74143634B6BCA5EE79AA7FCC213ABE9D4DBE7A72694CD51FFB9D556330B54
            0321947A39793391B0DAEC9781F3221205894A4DF345EFE0BBEDDEBE974AE944
            6C4500CC162B8800A0E7327FD73759AAD8F948881DBEF61781C717E3D79E8B1C
            FBB8B07EF7F48ED0161AED0726801BE944AC5BB61A59348D16FF6E4484DC6A9A
            85EB731B3011A9564A1D5F8E5F1AAC089AAC77D1B6F7553198AC86AB531F1496
            E3B3B7DD3DBD23F843A38F097CB18EE9D9D4C16878285F11EC1C1E33387DC18F
            10BC6B99E4C077E1E1F43AFA57B347296336A5D4093D9B3C100D0FE797E3B368
            95408BA3E16E608F200F9BAA6B8F778E1CB53B9A02B87B5FC01F1AEDBB05FBAA
            DCAC8C41F9036F883B38C47D7B5F7B00382922754AA9E9829E0D19CCD60E8163
            226253A8937A2635180D0FE56E9DA4E2CF4FDEB84051CF2E387DC149E09088B4
            6A06E380C01111A9D90CDB140448CECF50D4B371A72F780A382C221E11312BD4
            D79B61FF0AFE039D040E239CD233A9839B61FF399EDE119E7CF32777FFEBD366
            4753E0CEA13BC99F0064638D8E70DF420000000049454E44AE426082}
          OptionsImage.Spacing = 7
          TabOrder = 2
          OnMouseEnter = BtAgregarTablaMouseEnter
          OnMouseLeave = BtAgregarTablaMouseLeave
          OnClick = BtGenerarSQLClick
        end
      end
    end
  end
  object MdTablas: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 144
    Top = 96
    object MdTablasNombreTabla: TStringField
      FieldName = 'NombreTabla'
      Size = 50
    end
    object MdTablasAliasTabla: TStringField
      FieldName = 'AliasTabla'
      Size = 50
    end
  end
  object DsTablas: TDataSource
    DataSet = MdTablas
    Left = 144
    Top = 145
  end
  object cxGridStyles: TcxStyleRepository
    Left = 408
    Top = 116
    PixelsPerInch = 168
    object Seleccionado: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 549808689
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
  end
end
