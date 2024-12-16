object FRBuilder: TFRBuilder
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'SQL QUERY BUILDER PARA DELPHI'
  ClientHeight = 1336
  ClientWidth = 1429
  Color = clWhite
  Constraints.MaxHeight = 1400
  Constraints.MaxWidth = 1453
  Constraints.MinHeight = 1400
  Constraints.MinWidth = 1453
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  StyleName = 'Windows'
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 168
  TextHeight = 23
  object cxPageControl1: TcxPageControl
    Left = 2
    Top = 9
    Width = 1419
    Height = 1283
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
    TabStop = False
    Properties.ActivePage = cxTabSheet5
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    OnChange = cxPageControl1Change
    ClientRectBottom = 1278
    ClientRectLeft = 2
    ClientRectRight = 1414
    ClientRectTop = 39
    object cxTabSheet5: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Query'
      ImageIndex = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Ruta del archivo y nombre de la tabla'
        PanelStyle.CaptionIndent = 4
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -23
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 347
        Width = 1412
        object dxBevel1: TdxBevel
          Left = 14
          Top = 42
          Width = 1374
          Height = 198
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
        end
        object cxLabel1: TcxLabel
          Left = 25
          Top = 145
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'NOMBRE DE LA TABLA'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object TxtTabla: TcxTextEdit
          Left = 25
          Top = 180
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Blue'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Blue'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Blue'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Blue'
          TabOrder = 1
          Width = 778
        end
        object BtBuscar: TcxButton
          Left = 1111
          Top = 56
          Width = 263
          Height = 79
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          CustomHint = BalloonHint1
          Caption = 'Buscar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C086488000003F0494441545885C597DB6B5C
            5514C67FEB9C33266A92499AC69AA61151421B72E9E486C5AA54D24AA53E5830
            0FA12248E98B15A9FF814F3E0956105450501F2484121115A5B6B450906AAB26
            D5D0D4C41A9A4962A8EDCC6446DBF45C960F7326CD64CE5C72C12C18CE99BDBF
            F5AD6F9DBDF7DA7B0B456C536D1DCD6D1DFE3FF19F0AC0D5F131166EDF2AD83F
            3B7DAD20BF554C40736B073B5A223DC0B1257807385E59557D21998817EC5FB3
            003FA96322D2BFB45955010E15ED2F6281022A2AAB3870B09F50A80C2B64E5C3
            59F50D0F51DFD098B77F4B7D037D878EB070FB5FCE9D3D49ECC6F51C901124A0
            2A5C434565B8A9ACBC7CCEB2429E88F42DC788489F699A9E695A79FB2D2BE48A
            C85C59D9BD4DD5D5B541A10A0EC14E11A90388B4B768A4AD45E28979FDFCCB6F
            02C1B59B6A38B07F2F005F7F7B8A9BB1B8B8AE03AA9BD35C8C07F9057E013F83
            C5F7485B8B44DA5BD9F3E4E3920FDFB86D2B5D9176E98AB44BE3B606005CDBC9
            E15A6E595F60EFB30779706B238661A028E2CFB078625E01F19F81964CA6703D
            4F0192A914008E63DF4DA26B176D911E52C90467BEFB0ACFF3D2E29692BC78F8
            35CACACB4F22F40A05649760EA799A4CC4B39A54F58C2AFBBE38F129B67D0708
            980322D2BB5CD86ACC719C006A791A348BDD5A862013DCB22C6DDEDE04C0E52B
            E3D8B64D29F6E8230F53555121E3E313DCFA27152422AB21EF2A68DEDEC4E197
            FA05E0A34F3ED34BA3974B1270F4C8CB98A6C10F3F5EE4830F3F2E8ACFBB0A4C
            C358946A987961B97E66DACF304AF3B14CD3624B7D7AD948894E6BB5BA07EA71
            1C9BD8CDBFB13A1F7B82F68E9E4A905E960CC9B5E8B4FE347C0980A9E84CC9E4
            67CF7DAF15F7DFC7C59F87F3415ED8FDD43E07F474746A3229BBF73CC38E96C8
            BB22F2CA1A925A3455D554229ED98C0AE1DE9B9B9D7ED5F0277DDD7A0407F05C
            B76870DF36236009D9A5F2F9E7F66B75B84A867F1DD55F467ECBE7FC36703EE3
            E707DC05BCEE38B6F674774A776784583CCEC0E0502081882048EE32CCD47B05
            0A08383F7165F4C4DC6C1480704D2DAD3BBB01706C9BEECE083DDD9D02303038
            E451A0B0AD7ADAFF3513656C7484B1D111A626FF00D2E3EFE656C082B66EEB4E
            5571DD95055F57017077FBDD10019EE7656DBFFFAB0055C5B56D3CD7DD20019E
            C79D858555F9AE8B004F15556FE304646E42EB222073EE4B24E6574D1A8BA78F
            62B158BCA8324B494FA24C597DE3CDB732552BE7F492B1A05AAF80F8156F6070
            8881C1A10C289044FD9FE17FBE952EE05CBCEACA38541D502C7FF88EFB595985
            CEF03EE6BA2AA7B23B40554F03EF03B585387C1E07780705EBEAC41895E1EA0B
            F817C91204E0791E33D1C9C5F658EC06D3D1C9642874CF5160F13E9197C7CF7A
            F2CFDFF90FA57A927F16751B0A0000000049454E44AE426082}
          OptionsImage.Spacing = 7
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnMouseEnter = BtRutaArchivoMouseEnter
          OnMouseLeave = BtRutaArchivoMouseLeave
          OnClick = BtBuscarClick
        end
        object cxLabel9: TcxLabel
          Left = 25
          Top = 51
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'RUTA DE GRABACION DEL ARCHIVO TXT'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object EdRutaArchivo: TcxTextEdit
          Left = 25
          Top = 86
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Blue'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Blue'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Blue'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Blue'
          TabOrder = 0
          Width = 778
        end
        object BtRutaArchivo: TcxButton
          Left = 809
          Top = 56
          Width = 291
          Height = 79
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          CustomHint = BalloonHint1
          Caption = 'Seleccionar Ruta'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C08648800000201494441545885C597BD6B14
            4118C67FEFDCDE1DDE792146081731101452888DAD88A085205AD9D96AE11F10
            3B0BC1DA5AB4F16F100B4B0B8D163642B012BFD0229CD8442E87D98F792C5641
            E56ED98F39F3C036BB33F3FE9E997776E6857D9699C1C9B583B423FBFDAAA0B9
            90E0CDC73149A62000D1D57343AE5F3C1A997101E899CD0090108C81A71FB627
            F1C6FDB7ECECA6CD01864B5DCCB86D66B70A5B9A6180A4CD632BBDCB776FAC7F
            BFF9A03944940FCE7AD90E667646D293E32B072E3DDC38B1F3FAFD98C95E5639
            B09778F4E26B0E6085EB3E15E2B460EBD042E7D5F9534B7EE6B24D9590D805EE
            2C2F763E459522FF0DB10AACD6E8891948A2DD72D75C5D8000EA63E05AAD9CE8
            7FCB39237246B4D06FB176A48B7373A1D05EECA77EF05E7AB7DD221AF4230E2F
            B6A99648E514279E6E67FAB89218F41CCE39E6125C929274BA7BC8639A33E696
            8471323BF89F9A0B80F7525AF2AC080E204965DDCF0520F322F3E54FCAA00055
            DD070748B3FCBEB02F0075DC0705A8133C1840956D171CA0EED40703F015B75D
            5080A6EE1B03A4996860BE198024250DDD370248524F13F312207052EEA64A67
            EFA5246D5A1949201CB98F6794FC894A525C70D128195AA04D80E8F3E80748F7
            846D818645B72349F9D320F3944FF90878FE6534C19CC195B3CB0C7ABF4A84E2
            DA1429CFFC8AABF60F04C449C6E397DF6A8F114C3F012EDA00DC7E9209FD0000
            000049454E44AE426082}
          OptionsImage.Spacing = 7
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnMouseEnter = BtRutaArchivoMouseEnter
          OnMouseLeave = BtRutaArchivoMouseLeave
          OnClick = BtRutaArchivoClick
        end
        object BtEstructuraTabla: TcxButton
          Left = 809
          Top = 149
          Width = 291
          Height = 79
          Hint = 'Obtener Tipos de datos de la tabla'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          CustomHint = BalloonHint1
          Caption = 'Estructura Tabla'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C086488000002E3494441545885C557CF4F13
            4114FEA6B4850AA9C582C44A6820C61443AAD6A3E2C1C483897F0B7F8E57FF08
            9B7868E2A190986028B569680F06905ACA8F0A058D76BBBBF33CCC6E5D98DD6D
            17C6F81D9ADDF7E6CDFBFAE6CBDB79C07F06B31F6289146E24D3969579AD1F1E
            64FF10882407B8D143A751461800C612293C5D7987C8D8C43C801C63D7674044
            001138D7FB496D3B110E00ACEDACBE1504C693694446C7E7017C668C4D5C3739
            0030C6ACFF4E929D3110E7B4124F65DE841C9E9CAAE43688B81FBF65C61842D6
            AB3029860F018B834D000E352A4B4E041F028C89A42100888638E2515D35035F
            773464E266B42744381131B09C3A4632A6E3F5CBE752E446650B00F024FB40DA
            285F28B25C76915233D317EC8D668B3E95BFB0572F9E49FB6D56EBD86E9E60FD
            E497A8C0E888895B636A2B6072BFF30762618EA958CFA10185222022E20308D8
            F942BEABAE8841C99D085F36E40B45CF5AE40B45577BA9526325D4FAEF866180
            731300F0FEC39A6F6D2502B9ECA2249AEDAFDF00000BE959D7E4F37377693211
            EFDB344DA3D3CE19761BFBECD15246DA6F77AF89CEF90F770297D50C00ADC363
            4F5F09354C26E27D1F1151B7DB15DF82C63EEEDC9E92620E8EDA804540B9064C
            D30CB45E39812002045C8EC06E3A4E9C76CE3D7D80D0887D4C3D4D0301E87635
            00A2E95C46E7ECBCFFACB402C409FE0D58865401B7763BA01563213D8BD4CC34
            0CC3205D171DB575D446B95AC7E3A58C14B359AD0B21427105820A50298161DA
            AF1BA423D8B7C4E4C46F4B506E3E40889438675AAFD797802DB496556A276C81
            BA1228556A9EADB354A9B9DA77F69ACC340D324D538A2D57EBC15AF155EF03C9
            44FCC2115822F4BC0FA81521056F40369410B86AF20B0488065CE27C09988163
            C99A509C1A2811D1CF7CA1E8391B78DD07362A5BCC8BBFEB7D4034CC558225C2
            93EF6D1886B133121E79080A369A052DBF73346B1F1FFE1D07EEDDCF602EBD00
            B06033821801F9F0DF00AB52BAAE63FDE35A804CFF087F00736D7FF2C4F8400E
            0000000049454E44AE426082}
          OptionsImage.Spacing = 7
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnMouseEnter = BtRutaArchivoMouseEnter
          OnMouseLeave = BtRutaArchivoMouseLeave
          OnClick = BtEstructuraTablaClick
        end
        object BtFieldByName: TcxButton
          Left = 1111
          Top = 149
          Width = 263
          Height = 79
          Hint = 'Obtener los Campos FieldByName para Delphi'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          CustomHint = BalloonHint1
          Caption = 'FieldByName'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C08648800000381494441545885C557DD6E13
            4714FECE7ABD89E310884D4071111651455344539A5CF4A2C005522F90FA2C48
            BC03CFC02D0F011248484885484854C4AE658185AA040871821D9C38A478D7BB
            33878B5D3B6BCFEC2686459C0B6B77E6FC7C73CEE7B37380EF2CD47BC89C2860
            225F0C56E9408325A470C1D205C05A1794B26018E921BBDE0F8307CCFC17E975
            B1BB5E860900E3270AF8E3C65DA4C727CF0158243AF024A507E7FF2DB8764B0F
            800C8C4DCCC2CAE440641C84610698218780333398B1056079EDC91D1F40365F
            447A2C7B0EC0BF443419F66F182698BD88D3FB193252261319145E26A2E0EC83
            76440422B0947C63AA307FDB0CED2C0E070FCBC4B1199EF9E182B2FEA6F63769
            D483D3CAA82D22C21522BA6D04AFFE52C2120320C040E817EDABA26BAAC3CC8C
            1800447E5003002C4362CA72BF06820E41ECB665081CB7BA3E0927D31EAE149A
            C8675CFCF5E755C5F2562983571D819F8AE38AA3B5DC2FB879E914AECE6607EC
            D63736F99FF27F74FDDA65C55FA95AC3EA460BCF5A9FFC0C8CA50472E3C96640
            C8B8FA031953E264A61BE24082146466968700E8C53362B5BE500E0B1E167378
            E1DEC3C74A2EEA220F4CE52259F5BCF2027BD54EDFCEF33C48290000F71F2DC7
            E65601B0B8F0B312E8E9AA8DFD1852CF15CF6071DAEC6B388EC33BBB6DBC5EAF
            D3A58BF38AE5EBB71BD8DDFBA80750383DA304C8D41B40474402983E3E85C2E9
            2C00BFFEB66DFBDF82F53A664F9D54F4B71ADB400020710E08110D5427890318
            858080A604CF2B2F14A59DB60558D94827AB6FDF21DBF44FDE751C3000DB7600
            F84D675876DB7BFDE74433C092A33EDA91A264606941FDE4DE2F35D08C21E1DC
            D933589ACDC2F33C765DBFA36E36B651AED6F0DBC57945BF54ADF94444C21918
            95808902384AFBD5895282FAFBA6A2D4B11D9D6A5F76DA7BA8639F9C6EB74F81
            1ED136835487A547502D8095CA4BA575EE1CD28A57DFBC03F82384108A6DB95A
            1BAD15EBEE03E55203AF6248B8B47001BFE7CC811204248CBC0F244A42068FDC
            807A92080029E5A87F7F1500F32197B8780023DB7030A18439B0C2CCFBF71E3E
            566683BAC8638B27F0A052D73A5BA9BCA436F6B57BDAFB80DF309F300212B63E
            6CC3F3BCB59499FA153C389AD94CC840200509A1A998C5021D18F040308FD088
            C3A3D976F3FDC138F0E3F9799C2DCE01343823B8207CE0345A9C86D44C0F2624
            72E8621ADDA3112AA8B4EBBA78F674F92816DF563E0302DBA4C0D071407C0000
            000049454E44AE426082}
          OptionsImage.Spacing = 7
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnMouseEnter = BtRutaArchivoMouseEnter
          OnMouseLeave = BtRutaArchivoMouseLeave
          OnClick = BtFieldByNameClick
        end
        object RgFormatoSalida: TcxRadioGroup
          Left = 14
          Top = 247
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Formato de Salida'
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'PortaPapeles'
            end
            item
              Caption = 'Archivo de Texto'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 7
          Height = 79
          Width = 1169
        end
        object dxToggleSwitch1: TdxToggleSwitch
          Left = 1216
          Top = 267
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Checked = False
          ParentBackground = False
          ParentColor = False
          Properties.StateIndicator.Kind = sikGlyph
          Properties.StateIndicator.OffGlyph.SourceDPI = 96
          Properties.StateIndicator.OffGlyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000473424954080808087C08648800000009704859730000006F000000
            6F01F1A2DC430000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A000001D149444154388D8D933F481B511CC7BFEF3C
            CF0BF1358ABA385442BC1C4DE3DFC94550B0106B116E6DA7829B5D9AEEBD9E22
            0E829382EEA65BD1213A389462962C1D0A498A4648B38885D6903C24E14EFB3A
            E48277DE45FCC15B7EBFFBFEDEEFBEEFF3239C73B40D43990200E8C56CBB4F04
            B7202EC150938E4CCD3E765D4DC2884B2E0DE7DC7D3E455F7A720FD408E7BC79
            B39E335B4D6735AD47191056A9CCC7FB8256C7759D944ECEE9BB4C3A55714DAB
            E74CBB819A04E1A7F8787688EF2F42DBC7C16F33A3D678ECE92D080158D542EA
            6BE755F9B7BCB4BE75B08F95E8023851A19F6E12A789B39AD6B338C94FDE6B8D
            118F5BA689DDA3CEEA5EB63FEC9CC46562A44F589B9BB0BC62009024BC9E62A1
            69856D3BD3A2FD5435E8C542B7CCE3F1A15B5F3D00502AA09FDE8C353D506200
            9EB82608CAFC9A90B67ADF109D90FCAD91335627F334E00F1763FFF087893F00
            007AB100DCF3207F1130768EBAF2BE6AD3C4E72CAD668A74D9996E3630D4248C
            E144269DAAFC2C8B1F36BEC87956BFFB1756B5B073285DFDBA0CBCCDA4531518
            C38916B1360761197AA9D1124CBF7AD3FB7CB0AE0F84F8B3807843FD41B2355E
            5C2389F6287B6BDE6522C21D078612B39FAB194418B9BF4C2E123DF18875FE0F
            E3780B8B440F78DB0000000049454E44AE426082}
          Properties.StateIndicator.OnGlyph.SourceDPI = 96
          Properties.StateIndicator.OnGlyph.Data = {
            89504E470D0A1A0A0000000D494844520000000C00000010080600000022619E
            07000000097048597300000EBF00000EBF01380553240000001974455874536F
            667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000013669
            545874584D4C3A636F6D2E61646F62652E786D700001005554462D3800584D4C
            3A636F6D2E61646F62652E786D700018956590C14E84301445F726FE036116AC
            4A2984280D308B991837A3899AB86E7965A619290D9450F935177E92BF606BC8
            98E8EEBEDB97DEFB4EB9B59A356761022E8E5255D1D7C7671448A8A2D7FC901C
            F44E9CE4FD3288E7E5E1A559CE4D01D1B6BEBE2A2DB59DEE846181EDDED4486D
            1532E8B9A04E7B1B877539404B9FF677EB869BAAF0648CA618CFF31CCF59DC0F
            474C8AA2C0498AD314B90D34BE2BC32C52E366FD602FC66690DAC85E057E66BC
            9F4C154E9304DAB236E70039E22C03440830C4202308B20C6E72729BB684876B
            BC91ED6FBE1AE39FB671D377D8BF601227BEB2D7F47190C2B5F0913529F13FAF
            C47F8AAD8EBBD5A90B198FE9425728877476ECBE01986C7C5D0C93A7AD000000
            2574455874646174653A63726561746500323032342D31302D31375430303A34
            373A32342B30303A3030AB6AB6170000002574455874646174653A6D6F646966
            7900323032342D31302D31375430303A34373A32342B30303A3030DA370EAB00
            00002874455874646174653A74696D657374616D7000323032342D31302D3137
            5430303A34373A32342B30303A30308D222F7400000145494441542891959231
            8A02311846DFC48D336021228C8A58C5429CD103D8D969A307B0B4F01ADEC053
            780A6BCB29448295750A1B15844C21D962D9D9D575844D9797EF913FE1F366B3
            99E31FEBE3F7C6F33C7CDF278E63C23064BBDD72B95C5E0B4208C6E331D3E914
            2925ABD58AEBF5FAFA8642A1C062B160301800B05EAFD9EFF738F7775A01301A
            8DB2F0F97C66B3D9BC0C03882008984C2619D8ED76DCEFF7DC478B388E29954A
            19389D4EB9610051AFD71F80EFFBEF8567A0947A2F18631E40A7D3A1D96CE60B
            5A6B6EB7DB0F1082F97C4EB1587C2914BADDEED23947AFD7CB60B55AA5DD6EA3
            B5264DD347A1DFEF2F8FC723B55A8D56AB951D8461C87038A452A9100401E572
            99344DBF04E71C499260AD45298594120029254A29A228C218C3E170C0FBDDD6
            EFF2455144A3D100C01883D61A6B2DF0D456E71CD65A9224C9FDA54F6B026CB7
            8831BF870000000049454E44AE426082}
          Properties.StateIndicator.Position = sipInside
          Style.BorderColor = clNone
          Style.BorderStyle = ebsNone
          Style.Color = clNone
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'MoneyTwins'
          Style.TransparentBorder = False
          StyleDisabled.BorderColor = clNone
          StyleDisabled.Color = clNone
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'MoneyTwins'
          StyleFocused.BorderStyle = ebsNone
          StyleFocused.Color = clNone
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'MoneyTwins'
          StyleHot.BorderStyle = ebsNone
          StyleHot.Color = clNone
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'MoneyTwins'
          TabOrder = 9
          OnClick = dxToggleSwitch1Click
        end
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 347
        Width = 1412
        Height = 892
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        TabOrder = 1
        TabStop = False
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Blue'
        ClientRectBottom = 887
        ClientRectLeft = 2
        ClientRectRight = 1407
        ClientRectTop = 39
        object cxTabSheet1: TcxTabSheet
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'SELECT'
          ImageIndex = 0
          object Image1: TImage
            Left = 206
            Top = 10
            Width = 43
            Height = 49
            Cursor = crHandPoint
            Hint = 'Construir SQL Joins'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            ParentShowHint = False
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              0020000000200806000000737A7AF40000000473424954080808087C08648800
              00049B494441545885AD965B6C936518C77FEFFA6D5FDB6DED36D61DD890380E
              110A55B7E011A6A2C40B96A02186841B138217728377245E89C47843BCC170E3
              29DEA0104F7153421613AD40667453ABA1E261DDC6BAAD5B4B4BA5E7F67BBC28
              EDE806DBEAFABFFB9EC3F7FCDFE77DDE7F1E4585B06EC7016C1D4E00945A2250
              4000239BC6E77E17AD12C5ED9DDB713E771CA5D411A057A9BB5310118019E035
              B3AD255C11029A5E8752EC44A9530A963A3F056E22229AB9FE95AA4A10A83109
              763DDBB65CF1DB61D68CF6463D53992BA8ABCEB26B6D9035960C7D7B7A4B7C03
              836EBA5D5B646DABA3486ED87345FE99BCCE502846453AA09B7234993365E558
              3483664BBA321D80F9C99F0ACC2DF28523D192EF44328552F99C0A1050B4DFEB
              249DC95253AD31E2F12E8AF04DF8F14DF84B936E61D504B63FF62C4D9D9B4D7F
              8EF90F6CDBB4FE6E33C0DA5647D136ECB922D381E03C017BA70B4DAFCD135B52
              4404806434406C6E94FBBA7BD9B0ED2195CE64DF8EDE4CEC2F8F7AFE5FDABA1D
              07703EFF3A0A76026D4B6808925791112397F5F9BF79838D9B36A0E08452EA50
              AD457F077869A53320424A44D06C1D4E141C514A9D62052222C8CD2AA5EEDFB0
              ED619F4A878E823A061CB69AF54F4464F388C7DBBBF03F0B6740446680D3005A
              8DC9C05425BD862CA9E0F3245075D5C68DEEAA5CFC71E024C831113E34721944
              E4A902D1BB4144102097CB3174C98DD65E9BE491B6EBCAD1584FD7FA8EF9B6DD
              88323AEEA7C7B5456E3FD1B0C72BE3E3A37B0346F2A0C0491179EBDADFBFD1FF
              FE9BE8BABE923300903372241309B4566B922E7B8C8E160B3D9B6A8B01538138
              4638CEA3B7D900426371A6B2E11745E43D115E9DF58FF2B37B002397259B2D4F
              8C00AA4C0AAA56ACE079D8EAAC5F58CDFACB91E0940C5D388B91CB965DB880A2
              0E4C07820C0CBA1705DCC9B6F19EF68F2627277397CF9F5955F112020DF67ABA
              D677161DE14814DF849F6ED7969284118F9750E4DF2EA559685BB79989BF7EA9
              0C018B592F512BC83F9F85B611BC8C4FCD9E88DE8CFFFE60EFDEAFD3E90433E3
              575743400A02B362546BDA9821F2B13299F6F4ECDEFF436CCD93689606402DB9
              8E15CAC4C37E7EFAE030E958A8D801F77420F8C2C0A07B51FAC2191091587363
              7DDF987FF6A46118FDD566DB2E6B9DAD516AEC9F2AA5DA97E12E22E2B6996D7D
              AD5B9F8E5DFBF11CDADC6C00114E0BE2512B90621119B198751FC841E0823252
              5F29C98EB27C7100A5947A4229D9AD14FD00DA979F9D251098C16AB55E5CEE35
              16EE29140CD2DCD513AB6F72EC539273B7D4449E697034D168B7156393A914E1
              4894F6564789904D07E6C4A4449FA8C9BF1E4D4418BAF8ED0AC897C27CF50F7A
              F71D0AB5B5B6ED75B5C4BFEF76A63A7A5CF3033B159863C413A46FCFD692BC81
              412FF14C15BFEA6980FFBF9225635186CE9FC161378FB534D92E97936BAD36A8
              3119C02A17926878961B81314C0F380947A20C7BAE147D89640AA0C476275464
              295D0D2AB6943636D8E871CDDF777E06BC253658FCAC2BD001A14C1D2B89AF54
              07A6CB9C819902855513C8643200C713C9944ACCCC2D12B2C2F60BC59DD20D5C
              BC95B77A02FD9F9FA3B1A9396CB55A8FC2F2EB18C0ECEC0C4397BE03E03F236A
              149635A3A21D0000000049454E44AE426082}
            ShowHint = True
            OnClick = Image1Click
          end
          object ListCamposWhereSelect: TcxCheckListBox
            Left = 471
            Top = 72
            Width = 402
            Height = 765
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            EditValueFormat = cvfCaptions
            Items = <>
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.ScrollMode = scmClassic
            Style.LookAndFeel.SkinName = 'SkinAzul'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollMode = scmClassic
            StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollMode = scmClassic
            StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollMode = scmClassic
            StyleHot.LookAndFeel.SkinName = 'SkinAzul'
            TabOrder = 1
            OnDrawItem = ListCamposSelectDrawItem
          end
          object BtGenerar_SELECT: TcxButton
            Left = 926
            Top = 767
            Width = 402
            Height = 70
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'GENERAR SELECT SQL'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000473424954080808087C086488000004A0494441545885BD975B6C14
              6514C77F6766BADB2DDD9652E8C5405B8AB1A54001F5415B8A01F5450289092A
              2831C61825263E20628ADC42D598808924F2428C2410852826462DC4A062E225
              F0220DD710835A4229F4420BBB6DE9CCEECCF1617BEFCEDA0BF27FDB6FFEF39D
              FF9E39E77FBE4FF0C10BEB5E64C1824A10F1A3F84315271EE7D6AD089FECDB4B
              3412F1A526DD7DE1A2C57C77F43822BC0E2C15199F0A55A5F37624D2D4DCB2F1
              DCD9B391F776BCED2BC24AB6180E87116189887CEC2732154404CFF58844BBE7
              1695943EB5AD6E77E4DDED9B928A3052EC533091E0235005D4CF2A9E1DDEB273
              17E1ACECB10B1867D67D21224B8063C525A5E16D75BB0867658D4DC0DD848854
              8BC8904C0C8AB82702FA5003D4179794666EADDB3D20E25E0A40446A80FAA2E2
              D2CCFE4CFC6F0232A764A861189A44C452A0BEAC6C6EE686B7B6246FC3BB81F4
              F4A02C5E50AE9168973A4E6CE4E31A11F9F04641DEFA54029A80231309AEAA00
              467A3050A69A31CF75BD649CA9696916D6F4076AA85CFD01861540FADA3E1848
              63CFF1C8A9EC0CE339CB98583B062D9895233227D7DB1C0A481D233C45441031
              B0F2E73D49303C6315F0992099001E70B1393EA1C083503760B27F65A5B5FED1
              52F37911999B8CD55F846BFA83DF3D8869BBBC7CB9CD53552EFAB1ACBEBC98FD
              0BA681AEAD9EC683B343F4C694DF2F7571B4212253334C5D539D43F97DE9DC71
              3C4E5C88F2C3D9280AD4AECAE78B939D34B639C3D38C98BD89FA1B5D04FD02FA
              88030BCBE785595691C9BE9FDAC90818C45DC510B4EED942DAA3710EFEDA4176
              C8E0A5C772095842FDE9088B4A427C7FC67FE4A69A28A3BA203DCDA0DBF6387F
              B5971EDB138085C521CDCBB6D8F4F9357A6389D61611D656E5507F3A45E03160
              94119DB810A5C7F6F8F4B5225E599EABE174430B73D268EE8C0D0407F8A7D526
              3FDB127392336B94806EDB93DAC3CDBCFFF50DE6E40779E7E9026CC72323309C
              1A0A18C45C556F94D74D528069A00A9CBBDACB91539D14E50638DFD44B5E761A
              F367A60FF09E981FE6CC953B4C32FEE81A78F5F1E9541685E8E876993D23C0B1
              86DBB445E2B2FFE776DDB1BA90BF5A6CB24226C13461FB97D707DE7B73451E4E
              5C5160E757D7F55A476C4C1FC70250060BF5C02F1D94150699123468EA88D1D8
              E600507F3A2227FFECD6FB0B82ACAB99C6A56B36D76F257AACF6503396397882
              69BD1D1F1E7C68809102122954AF9FD1637BD2D0782729F966972B372FF7F077
              8BA31B57E6B1AC22931317BAE44ABB9394AFE006120EE33B75AD3EE661155D31
              56376C8BC6A5F650F37FB0D4B50CF617E79A222215BE023A1BFF60D643ABBF15
              C3CC521411C110C8CF32C80A1998BEC348F13C4535B9C9054CA138D790878B8C
              5A11CA7D0534377C43CBC51F1163C08DA9AAAA66EF81838F88B0C13F3C384E4C
              9D58ACEFD7888760884885403929BCD00270EDEE618B9ED38D65CA4CE019BF17
              55555D3746224123F61F87394DF848663B4EC23026095F019A6277CFF334169B
              DC79A17FFB5419B8C1A88F9B487DAF9DBCEDC68956559FBBA1633BA8F21BE81B
              0CB99CAA2AAA8AE74D7C02F4FDF3566067CC7192978B1806B59BB726AEE70CBD
              A629AEA7C4E371921D34C723C2716CF67CB49B7F014FC5C29654EB3346000000
              0049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 5
            OnMouseEnter = BtRutaArchivoMouseEnter
            OnMouseLeave = BtRutaArchivoMouseLeave
            OnClick = BtGenerar_SELECTClick
          end
          object cxLabel3: TcxLabel
            Left = 5
            Top = 52
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'LISTA DE CAMPOS'
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 471
            Top = 42
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'LISTA DE CAMPOS WHERE'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object CkbListTodoSelect: TcxCheckBox
            Left = 362
            Top = 40
            Hint = 'Seleccionar Todo'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            Caption = 'Todo'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'VS2010'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'VS2010'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'VS2010'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'VS2010'
            TabOrder = 0
            Transparent = True
            OnClick = CkbListTodoSelectClick
          end
          object CkbListWhereSelect: TcxCheckBox
            Left = 819
            Top = 35
            Hint = 'Seleccionar Todo'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            Caption = 'Todo'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'VS2010'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'VS2010'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'VS2010'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'VS2010'
            TabOrder = 2
            Transparent = True
            OnClick = CkbListWhereSelectClick
          end
          object cxLabel7: TcxLabel
            Tag = 1
            Left = 509
            Top = 2
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Cantidad de Campos :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -23
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
          object cxLabel11: TcxLabel
            Left = 926
            Top = 42
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'LISTA DE CAMPOS ORDER BY'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object ListCamposOrderBy: TcxCheckListBox
            Left = 926
            Top = 72
            Width = 402
            Height = 574
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            EditValueFormat = cvfCaptions
            Items = <>
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.ScrollMode = scmClassic
            Style.LookAndFeel.SkinName = 'SkinAzul'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollMode = scmClassic
            StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollMode = scmClassic
            StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollMode = scmClassic
            StyleHot.LookAndFeel.SkinName = 'SkinAzul'
            TabOrder = 3
            OnDrawItem = ListCamposSelectDrawItem
          end
          object CkbListOrderBy: TcxCheckBox
            Left = 1274
            Top = 35
            Hint = 'Seleccionar Todo'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            Caption = 'Todo'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'VS2010'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'VS2010'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'VS2010'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'VS2010'
            TabOrder = 4
            Transparent = True
            OnClick = CkbListOrderByClick
          end
          object EdBusquedaCampo: TcxTextEdit
            Left = 5
            Top = 806
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Properties.OnChange = EdBusquedaCampoPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.SkinName = 'Blue'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.BorderColor = clRed
            StyleFocused.BorderStyle = ebsThick
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.SkinName = 'Blue'
            TabOrder = 10
            OnKeyPress = EdBusquedaCampoKeyPress
            Width = 403
          end
          object EdCantidadColSelect: TcxCalcEdit
            Left = 742
            Top = 2
            Hint = 'Cantidad de campos por linea que saldr'#225'n en el query.'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            EditValue = 1.000000000000000000
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
            TabOrder = 11
            Width = 88
          end
          object cxButton1: TcxButton
            Left = 412
            Top = 79
            Width = 35
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
              610000000473424954080808087C0864880000018C49444154388DC5D1BF4BD4
              711CC7F1E7EBFB55145CEC941CBE2A4205812E0AD952B87CFF80E3727376D041
              CBC2D9A944C83B6A14A41C94A8B123E8073488B89E4E6A74876677C819DE60DF
              C4BB7B379C17477ED5A2A1D7F879BF5F0FF8F0867F8C7BDED0BB3342FBE0C835
              2B1E7F0B763EFD1DD0393441C7E068A2B1AD633E72D35F0FB2998D6067EBCF80
              CEA109BCE87042D298241747B148BFBF16869C024ECA7149E3D53721172916E9
              F7534136B3598BB821E5594977CDEC3B9091D4626629495E18E2FE567E2CE99E
              99054014F0247503E3C01749B79062911B7E2AF85A411C80E6DEDB78D1E187D5
              B2954BD1EDA5C47B49001CEDED5AEEED8BFB661697D420D77D79756CC6AF6F6E
              AD00563C06C856CB5B4F26DFE59793359F33D273539C20B3C00FCAA50333A30E
              A0B0BE4AFAD9A3A797FA0696F63EBCCAEFAFBCA1E172FBA9EBA4E7A6281D161E
              345DE999CEBE7E9E2F16F62B00402EB9402EB9900F3B6B6DB617E300BFF69C8B
              0A17E5FF0375E70DCDEC2380619FCFDAD1996DC7A1A9EB3A20CA4701C16EB8F1
              132A94B3BAEBAF2C700000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 12
            OnClick = cxButton1Click
          end
          object cxButton2: TcxButton
            Left = 412
            Top = 127
            Width = 35
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
              610000000473424954080808087C086488000001A749444154388DBDD13D481B
              7118C7F1DFEFCEB71C492F42AAE4C5246842940AE945086A6B4397422962C114
              94BE5841C48283A5B44B068714BA780EA28BE87660D32CA6A44BC86897BA74CB
              E2721652A150716B31F4DF21110DA609E9E033FE79BE1F1EF81375A6BDCB0D80
              F873FA1BA7C73FEAADD68A3D1849171646D28594B69ED3FEB5273570EE927C44
              B2EFBF00920DFCC6175C21E0B83381E0CB5555BD79BB6ED07D6F0A81A515D51A
              8A9C03B6FE210416DFCD3B46EF7FEB7FB311B36BB19AB1EBE11C7AE79793D76F
              3D3818486C865BAC6A1968B1D9417280A4556A6DCB865EAFC53A23D588737201
              BEC7AF9204130054D9A278A4B676C800F0EBC84487D39F53BC4117C9614A72DC
              AE8D7D06102579838A357D6D303A2D4B7242085112423C310D7DF7E4EB5E1980
              10F8B99F4787CBFF49E909BA490E038803B0907400F0C9923C2D204A02E2A969
              E81FBE7FDC06800A70867CC9C3E2F467156F19A9C420E9164294003C3B34F4D4
              595C0D5CB8A482784846CACFA20460C634F4F7C5CC7655520D5C465C00C2009E
              9B86BE53CC6CD5FC9DDA2349E87DF196DA7A6ED0393EDB44D8E4FC05F95276A6
              745EBD230000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 13
            OnClick = cxButton2Click
          end
          object cxButton3: TcxButton
            Left = 873
            Top = 72
            Width = 35
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
              610000000473424954080808087C0864880000018C49444154388DC5D1BF4BD4
              711CC7F1E7EBFB55145CEC941CBE2A4205812E0AD952B87CFF80E3727376D041
              CBC2D9A944C83B6A14A41C94A8B123E8073488B89E4E6A74876677C819DE60DF
              C4BB7B379C17477ED5A2A1D7F879BF5F0FF8F0867F8C7BDED0BB3342FBE0C835
              2B1E7F0B763EFD1DD0393441C7E068A2B1AD633E72D35F0FB2998D6067EBCF80
              CEA109BCE87042D298241747B148BFBF16869C024ECA7149E3D53721172916E9
              F7534136B3598BB821E5594977CDEC3B9091D4626629495E18E2FE567E2CE99E
              99054014F0247503E3C01749B79062911B7E2AF85A411C80E6DEDB78D1E187D5
              B2954BD1EDA5C47B49001CEDED5AEEED8BFB661697D420D77D79756CC6AF6F6E
              AD00563C06C856CB5B4F26DFE59793359F33D273539C20B3C00FCAA50333A30E
              A0B0BE4AFAD9A3A797FA0696F63EBCCAEFAFBCA1E172FBA9EBA4E7A6281D161E
              345DE999CEBE7E9E2F16F62B00402EB9402EB9900F3B6B6DB617E300BFF69C8B
              0A17E5FF0375E70DCDEC2380619FCFDAD1996DC7A1A9EB3A20CA4701C16EB8F1
              132A94B3BAEBAF2C700000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 14
            OnClick = cxButton3Click
          end
          object cxButton4: TcxButton
            Left = 873
            Top = 121
            Width = 35
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
              610000000473424954080808087C086488000001A749444154388DBDD13D481B
              7118C7F1DFEFCEB71C492F42AAE4C5246842940AE945086A6B4397422962C114
              94BE5841C48283A5B44B068714BA780EA28BE87660D32CA6A44BC86897BA74CB
              E2721652A150716B31F4DF21110DA609E9E033FE79BE1F1EF81375A6BDCB0D80
              F873FA1BA7C73FEAADD68A3D1849171646D28594B69ED3FEB5273570EE927C44
              B2EFBF00920DFCC6175C21E0B83381E0CB5555BD79BB6ED07D6F0A81A515D51A
              8A9C03B6FE210416DFCD3B46EF7FEB7FB311B36BB19AB1EBE11C7AE79793D76F
              3D3818486C865BAC6A1968B1D9417280A4556A6DCB865EAFC53A23D588737201
              BEC7AF9204130054D9A278A4B676C800F0EBC84487D39F53BC4117C9614A72DC
              AE8D7D06102579838A357D6D303A2D4B7242085112423C310D7DF7E4EB5E1980
              10F8B99F4787CBFF49E909BA490E038803B0907400F0C9923C2D204A02E2A969
              E81FBE7FDC06800A70867CC9C3E2F467156F19A9C420E9164294003C3B34F4D4
              595C0D5CB8A482784846CACFA20460C634F4F7C5CC7655520D5C465C00C2009E
              9B86BE53CC6CD5FC9DDA2349E87DF196DA7A6ED0393EDB44D8E4FC05F95276A6
              745EBD230000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 15
            OnClick = cxButton4Click
          end
          object cxButton5: TcxButton
            Left = 1328
            Top = 72
            Width = 35
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
              610000000473424954080808087C0864880000018C49444154388DC5D1BF4BD4
              711CC7F1E7EBFB55145CEC941CBE2A4205812E0AD952B87CFF80E3727376D041
              CBC2D9A944C83B6A14A41C94A8B123E8073488B89E4E6A74876677C819DE60DF
              C4BB7B379C17477ED5A2A1D7F879BF5F0FF8F0867F8C7BDED0BB3342FBE0C835
              2B1E7F0B763EFD1DD0393441C7E068A2B1AD633E72D35F0FB2998D6067EBCF80
              CEA109BCE87042D298241747B148BFBF16869C024ECA7149E3D53721172916E9
              F7534136B3598BB821E5594977CDEC3B9091D4626629495E18E2FE567E2CE99E
              99054014F0247503E3C01749B79062911B7E2AF85A411C80E6DEDB78D1E187D5
              B2954BD1EDA5C47B49001CEDED5AEEED8BFB661697D420D77D79756CC6AF6F6E
              AD00563C06C856CB5B4F26DFE59793359F33D273539C20B3C00FCAA50333A30E
              A0B0BE4AFAD9A3A797FA0696F63EBCCAEFAFBCA1E172FBA9EBA4E7A6281D161E
              345DE999CEBE7E9E2F16F62B00402EB9402EB9900F3B6B6DB617E300BFF69C8B
              0A17E5FF0375E70DCDEC2380619FCFDAD1996DC7A1A9EB3A20CA4701C16EB8F1
              132A94B3BAEBAF2C700000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 16
            OnClick = cxButton5Click
          end
          object cxButton6: TcxButton
            Left = 1328
            Top = 121
            Width = 35
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
              610000000473424954080808087C086488000001A749444154388DBDD13D481B
              7118C7F1DFEFCEB71C492F42AAE4C5246842940AE945086A6B4397422962C114
              94BE5841C48283A5B44B068714BA780EA28BE87660D32CA6A44BC86897BA74CB
              E2721652A150716B31F4DF21110DA609E9E033FE79BE1F1EF81375A6BDCB0D80
              F873FA1BA7C73FEAADD68A3D1849171646D28594B69ED3FEB5273570EE927C44
              B2EFBF00920DFCC6175C21E0B83381E0CB5555BD79BB6ED07D6F0A81A515D51A
              8A9C03B6FE210416DFCD3B46EF7FEB7FB311B36BB19AB1EBE11C7AE79793D76F
              3D3818486C865BAC6A1968B1D9417280A4556A6DCB865EAFC53A23D588737201
              BEC7AF9204130054D9A278A4B676C800F0EBC84487D39F53BC4117C9614A72DC
              AE8D7D06102579838A357D6D303A2D4B7242085112423C310D7DF7E4EB5E1980
              10F8B99F4787CBFF49E909BA490E038803B0907400F0C9923C2D204A02E2A969
              E81FBE7FDC06800A70867CC9C3E2F467156F19A9C420E9164294003C3B34F4D4
              595C0D5CB8A482784846CACFA20460C634F4F7C5CC7655520D5C465C00C2009E
              9B86BE53CC6CD5FC9DDA2349E87DF196DA7A6ED0393EDB44D8E4FC05F95276A6
              745EBD230000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 17
            OnClick = cxButton6Click
          end
          object RgTipoScriptSELECT: TcxRadioGroup
            Left = 926
            Top = 656
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Tipo de Script'
            ParentFont = False
            Properties.Items = <
              item
                Caption = 'Navito para Delphi'
              end
              item
                Caption = 'Nativo para SQL Server'
              end>
            ItemIndex = 0
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 18
            Height = 104
            Width = 402
          end
          object ListCamposSelect: TcxCheckListBox
            Left = 5
            Top = 79
            Width = 403
            Height = 722
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            EditValueFormat = cvfCaptions
            Items = <>
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.ScrollMode = scmClassic
            Style.LookAndFeel.SkinName = 'SkinAzul'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollMode = scmClassic
            StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollMode = scmClassic
            StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollMode = scmClassic
            StyleHot.LookAndFeel.SkinName = 'SkinAzul'
            TabOrder = 19
            OnClickCheck = ListCamposSelectClickCheck
            OnDrawItem = ListCamposSelectDrawItem
          end
          object LbQueryBuilder: TcxLabel
            Tag = 1
            Left = 5
            Top = 12
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Select Query Builder'
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clGreen
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Transparent = True
          end
        end
        object cxTabSheet2: TcxTabSheet
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'INSERT'
          ImageIndex = 1
          object ListCamposInsert: TcxCheckListBox
            Left = 5
            Top = 42
            Width = 613
            Height = 630
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            EditValueFormat = cvfCaptions
            Items = <>
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.ScrollMode = scmClassic
            Style.LookAndFeel.SkinName = 'SkinAzul'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollMode = scmClassic
            StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollMode = scmClassic
            StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollMode = scmClassic
            StyleHot.LookAndFeel.SkinName = 'SkinAzul'
            TabOrder = 0
            OnClickCheck = ListCamposInsertClickCheck
            OnDrawItem = ListCamposSelectDrawItem
          end
          object BtGenerar_INSERT: TcxButton
            Left = 467
            Top = 756
            Width = 438
            Height = 70
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'GENERAR INSERT SQL'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000473424954080808087C08648800000571494441545885B597798855
              6514C07FE7BEFBDE9B7933EFCDB8CD8CA38EB3D834A9A5168D6B1BB6A02DB620
              4953D846118141100669618A835A9004952451A0502005A3510415156A22214C
              2EA9232E63AE33E39BCDB9CBBBF7F4C79BD1795B4D2EE7CFF37DDF39BFB37CE7
              7E574893C635EFD1F0CCE219025B446474FAFA50E4C8B1D69DE7DB2ECC3F72E4
              70D7AAB7DFA0BBAB2BE75E235D210802AF5CA97300D74DCC7413896D15E3ABA2
              CB56AC251A8B0D1D0001207CA5CE2F9911992DF06D45657574D98A7539213201
              9287AFD6FF80A1D9C0B6F195B9339115E05A8A88CC41645B45657561B64C5C77
              807E99036CADA8AC2A7C6BC55AA2D1CB10D7054044348BEE4E60DBF8CA9AC265
              2BD7118D155D3F80D1A5A30806CD6C10771886344D9B36353AF7DEFB0130AF07
              402C5A20F5D326AB65D99AF0BCF4E53B6DDB79C00C04B60098236A66F65FBD64
              E75BE628E217FD0F8201B65C298021840DBC7909CF7BF292E141120A051123A9
              36EB5FF8BC04618E8001C21F0E1C68EA24644AE6C92188084442D27E73B92C9E
              592DC7F382C6D2CC3DFDE30E30117E12E4A681454FA1DB5220A384FF4BCE76B1
              B26298B9BEA6840C80C16280D40D56E40545CB8A4DCD0FA57672246468F9B060
              8A5E048D848CACA496AB75EDBD7AEEBF404D1954A3D9B505BA647E09020403C2
              9AA6B3BAEB702FCFDE3D9C876E2DC249286640D8F2FB05FD6A675C6E1E97CFD2
              05A53CF5E13195B45A2B82378424A6DC8227A617F3E5F60EBEDEDDC9C868805E
              CBE7AE8985CC9D1CE3B52F4ED2DAEE525512A271513987CFD8EAF960E46894A1
              F64FCA1C38D399E0F69A02AA4B42B4777B62B92AD36F28E0E77DDDB4B6BB001C
              3DE7B0E3502FB36A0B87E8E27F007CFCC3794EC75DD6358CE1DD85A3B53812D0
              589E41476FEA5DBED0EB11CBBF36332CC54AB7E5CB87DF9F9717379C201C141E
              AB2FA2BDC7A3AC28755E95169974F4640C98AB0350D0FA9A888E8A991A3020E1
              81EFC3CFFBBAB9675294DBAB2344F30C66D51630A3BF2C008608134AC3D49486
              193B3C98D2764E02807D4013B015D80FA490A784F6687D3175E57922A07B8E5D
              E49BDD71BAFA7C3EFDB18D97E68EA4B4C81440D77F778E83A76DB9B13CAC5D7D
              9EBCB9A01480B39DAE2CFBEA3440420D7F670B3DD89635C5C147816112625CA0
              A06A841146FBE78CCC6F3C949ECB8128321A399A6FE8BA8631FC75CA62FD77E7
              51CDDCA3680721F709BFA26D978EED7891A0F73430110151D99F27C6A608818D
              6D274EDADB5F6F44E6351E8A0B44FFA54C2952566CEAECDA42F9E5408FB67527
              D201121A72EEF36A4FB750D6B9550CA665B3A1AA7BFA2CFB91F8F1537FCBBCD5
              071F01168924BF0557236AF83BFDEA339F6865DB8EC1CE27E4172B404B5F5C54
              556DDBC6B69D3F8119665BCB8E26A069E0193875D28DDC36711C856121D7D3D0
              F715CFF3F07C9F818A390968D11E9A4774BC9A1EF9C2D25A0174F5D15D6ADB36
              AEE38A21728BA22F9BBB3F7B2EC5F8E36BDFE7C129B55F020B7346AAAABD17FB
              504D21DC675BD69466DB6BC89A4955069C5FD6D170450F12C77151CD18F4471C
              7C40264132EDFD915317198EAAB2BC66A6006C6EDDAB077B3A444426E71867B9
              BF22BEEFABE3BAD99624EB594D4A2E9B5933A08AE6AABFED38B9D8AA87490841
              F603D35BFAE292ACB9C3F29A1928F0CE815FD361F766662009FA5B662890F03C
              4D24728EE0BAB18182AA3C3136258350756C07D771841CD74B617346065A4F9E
              40958F409B81B281BF2455457D1F11C9567F0046186122626EECF3EDE71DDB99
              EAF4676B73EBDE8C03BE6A33B02183CC300C1E7C7801D1C268C635F47D1FDFF7
              C9E11F45892FBA03AB2436C6B59D6F0D915BB2EDF3559B7DD5879CCEDE93D7E8
              27F0B2E4578F65C2AA2514948DCC139197411B0499DC0FB81764B3AA6EB0E2DD
              D6E1959FF00F5BBF45D143B24C500000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 1
            OnMouseEnter = BtRutaArchivoMouseEnter
            OnMouseLeave = BtRutaArchivoMouseLeave
            OnClick = BtGenerar_INSERTClick
          end
          object cxLabel2: TcxLabel
            Left = 5
            Top = 12
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'LISTA DE CAMPOS'
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Transparent = True
          end
          object CkbListInsert: TcxCheckBox
            Left = 537
            Top = 9
            Hint = 'Seleccionar Todo'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            Caption = 'Todo'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'VS2010'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'VS2010'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'VS2010'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'VS2010'
            TabOrder = 3
            Transparent = True
            OnClick = CkbListInsertClick
          end
          object cxLabel14: TcxLabel
            Tag = 1
            Left = 658
            Top = 2
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Cantidad de Campos :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -23
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
          object EdCantidadColInsert: TcxCalcEdit
            Left = 891
            Top = 2
            Hint = 'Cantidad de campos por linea que saldr'#225'n en el query.'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            EditValue = 1.000000000000000000
            ParentShowHint = False
            ShowHint = True
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
            TabOrder = 5
            Width = 87
          end
          object ListCamposInsertSel: TcxListBox
            Left = 760
            Top = 42
            Width = 572
            Height = 630
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ItemHeight = 28
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.ScrollMode = scmClassic
            Style.LookAndFeel.SkinName = 'SkinAzul'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollMode = scmClassic
            StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollMode = scmClassic
            StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollMode = scmClassic
            StyleHot.LookAndFeel.SkinName = 'SkinAzul'
            TabOrder = 6
          end
          object BtAddItem: TcxButton
            Left = 628
            Top = 187
            Width = 132
            Height = 44
            Hint = 'A'#241'adir Elemento a la Lista'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D0000000473424954080808087C086488000001E949444154388D6366200058
              D8B91978C5141918199918FEFCFA46483961A06A9FC0103DF3654A48DF0D7E51
              157382EA99082960646464606060C867E716DCE398B742445CDD9A3203618632
              32321AB3B273ED77CC5B2129A3EF41998148066B33B3B01DB24D9BA3206F164C
              B9815043959958580F59274D5157B28AC490676160606070AFD8CEC52322EFC1
              C8886901332B07030303031F9AA1320C0C4C072DE2FBDDD9B8052FDED83D0DD5
              401E11790F4E3E913524BA548CE13FC33EE3907A6F5636CE1397B7F632303040
              BD8CCD65441A2AC8C0C0B053CFAFD4D130B80E61E0BF7FFFC9310F66282F0303
              E31675E74C37712D6788973F7FFAC2F0E30F2BD986FE67606066626264FFCFC4
              0473E13FB20D636060F8C1C0C010F2E4E2F6CDAFAFED87B8106209192EFBFFFF
              2B232363C0D3B3EBF65E5A53C9C0C0F01F62E0EF5FDF77B0FD670865646460C4
              A1B797818141164DEC232323A3CF8313CB8E5EDBD80877132E03E040CE228A41
              C7BFE1320303833692CBDE3230327A3E383CF7CCF56D9D28EA59D00D2002BC64
              646474BBB967F2E5BB7B2763489264E0FFFFFF9F303030BADCDCD975EBDEC139
              58D59062E03D064606D72B1B1AEE3F3EB90CA72222720823C37F068665FFFEFF
              B3BFB2B61AAF6110D5040007BF2483809C3EC3F78F2F193E3E3A4FD07A00C3EB
              87AF9BE9ED070000000049454E44AE426082}
            OptionsImage.Spacing = 7
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BtAddItemClick
          end
          object BtRemoveItem: TcxButton
            Left = 1334
            Top = 252
            Width = 35
            Height = 44
            Hint = 'Quitar Elemento de la Lista'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
              F80000000473424954080808087C08648800000342494441544889ED94DF6F53
              651CC69FEF7B4E7B76B0950E4A4FBB860277BA30B0DD8C092E5C78C3A6312172
              E19DC4A41B60885C190701FF05132FD42D3236BC203181986C10BD306A627409
              1B0802257233465CD9BAD575A5EB8F73DEEFEB05B4F66CA7E31FE0B93CEFF77D
              3E79DEF3BC2FF042CF91E6F5B12B18426730048642C1B13735B08C36BC1E0A63
              BBDF40B65A7E3EE0838E3DF8A2EB0DEBDD58E2E8E158627A2A9FC362ADE269BE
              DB0CE052F7417A3FBEE7A3F7A289391328FDBEB2D41AB03718C2E77B7B2C4DE8
              3F91A0A38610F13E2B3EE905D96D06F06DAA972CC31C26A2B300DEDE1F6ABF9C
              29164AB3E552634E346F0AFB0DE89A7E840475020088D241DD373C9A7C93BA82
              ED2EF38BA95EDA6198C3204A030009EAD4847E246CB4B54EC0000EC7764DFB85
              D84944C9A70C4AF985E8E8B7E257A7F2396CD1745C4CF552C430BF26A281FA5E
              A5D46895E56723B37FBBD2D2FA73ED0AB6E37CF2000574FD1B8DB40F9B0C468A
              8E7DA22C1D440CF32B221AACAF49252FD458A54FDE9E52BFE5175B270080C55A
              05370BCB38148E4EFA482488C46BCF9274FB8588BEA4FBDE21A2638DD42CC76C
              690F7C726F5AFDB2BCB0DECEBBA6F39532EE145654DF8EF884469420A23AA487
              887AFE37E731962A3D74EF06FFB094F5B2F20600C0A3EA1A6EAFE6D5A148C784
              2EC4AE3AA42EA5D4B8644E0F6566F8EAD27C2B1B778B3624A95650925201703C
              969DAA62F5B0B2B69945EB04CD55A467556C1611A57C42C4FB5BDC934D017573
              8F2A9E07F067AB0A7B4136009ACC5D5564A5466B2C07CB524EF8DCF7A4DB2F44
              AC15C405B08C365CEA3E4811C3FCB2B98A92E5859AB2074FFD755D7D373F8B3E
              2B36A983760A12CD9068BF15BFF6F3521679BBD6F074FDE457035B1131CCE3EE
              9EF3987478E0CCDD19FE757901B756FFC5C7B7A6B85AB3079879AC3E4744C782
              BAEF78F2E56DAE042E40D1B1A198AF28A53200A098C71D29D3A7EFDFE06BB9C7
              8DB93F56F23879F73A976D3BCDCCE300A094CA28E62B4FD63DEFAE23CA56CB30
              499492A1ED97013C9450E78632333C99FB07EBF5A8B2863BC515D517894F6824
              728AD5A7DF67E71646E61E4035CD6D788B00E0AD7014617F1B1E945671B390F7
              1A69E895C056EC0B8650746CFC989B076F3AFD421EFA0FF2326B955E2F789200
              00000049454E44AE426082}
            OptionsImage.Spacing = 7
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            OnClick = BtRemoveItemClick
          end
          object BtItemUp: TcxButton
            Left = 1334
            Top = 42
            Width = 35
            Height = 44
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D0000000473424954080808087C0864880000020C49444154388DED934D4814
              611CC69FE79D19F763DA6127B7D61537CDD4DD920D3F206208323782BC84ADD8
              0774D083501DC2EEDD3D7409C963D02DB2439185966697E810541045B61046F6
              215A1BBB6CA32ECE742869581B76B36BCFEDFD3FCFFFF73EEFE105CA905EDB0A
              BDAE1D004B66A55281E6AEF330FA470E87771F892B6AE8CDC2CCF4C681B1E400
              DA52170E0AC15BDFF3E6B16034F14CF1F8D38BE9477F0FAC378E63CFC92183E4
              1849DF92B92C11E80E6E6B7B6C59D66C66F649F9C09A962E18FD232D42880992
              1A0098E61200282452A186BD0F570BE65CE6DDD3D2C0487312FB4F5F8909499E
              2259B936FF0504800A00297D87716F393BFF39FBF1953B706B93818E33576B25
              C5FB8064B5D3730001C02BC8A3E19D9D77F299B9C5DCA7D7EB817A3481CE73D7
              AA14EFA66992DB8B9B17010140B5C1EE70FCC0CDDCFC4C26BFF01600200040AB
              6A4472707473854F9B20D950BCE92602D54292275B4F5CAA0935EEFB09AC5075
              240747031E55BF4B32512ECCA13A4ACAFDF65397C381480CB257DB027F30D20B
              4205F0D211D400445D20EF01641D4D2129BE3E35543F44C5A7219E1C0008D0F1
              B5761D3ADB237BFCD7D7CE5FBF7C73027BD393C3378A6FF9F0FC36E48299C58B
              B18BEB2A3475F441F6F85DDF999E1AFEE35CB86E6C50FF81BF65DBB0DC3DDB76
              F36437A360E6C6BD81CA1E92C25AB52084806559B06DD82B2BE678F99DFF513F
              002CA391782794D9A10000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 9
            OnClick = BtItemUpClick
          end
          object BtItemDown: TcxButton
            Left = 1334
            Top = 91
            Width = 35
            Height = 44
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D0000000473424954080808087C0864880000020F49444154388DE5944F48D3
              6118C73FEFDC5AAEA108064A9944104448D0213C75C8D4411DBAD8A053414137
              2F1D220A3A041D3C44A78A886E52D82C22302B5233FA0BCE863862A3FCB735FC
              F77373BA3FFDF67B3AD8ECE7DC6F5974EBB93DEFF7F97E9EF77D1E78E11F87B2
              125ACFF7B8DCD5F51EA5B01986B098486218068064B3A9A7831D87968AF9EC56
              407775BDA7BCA2FA413E4FEB8E556D93481BE02BE6B3595E5D95D294E5CB2C4D
              7F1BFF21D06E776E6167631B85732E736C2E69DCD178A2E044311D7C89AAACDD
              CDD1CB83A781F602680550974FE6E716CCDA24902820760E75B65FB567921A99
              A4D6E574579D05F66FE459E646000221C9E977535A045B7A718657374FC5F5CC
              B24744821B049A634221CD01DF85587C2AB0B294E9D05B066E9C9CCDE9D91611
              F9FA07B06F3991C381EE8B1351FF23C0B4E5587080D7B7CF448C9CDE2C22D1DF
              9104E680D6506F4778EA63D7EA7999B928110BB3AC45B5EDFB5A7B41799552AE
              BC964AA5CDA571A0E5F3B3EB9FBEF4DF5AD3680D10409B1C219D5C98D9D6D0D4
              077895524E335084251447C606EFBC0F3DBFB6EEE6EB8000F3637E727A265AB3
              E7E01BE0B852CAF11398568A63E3EFEEF5079F5C293A8AA2408099F007EC4ED7
              F8D65D07FC405B3A95310C116F64A8BB67E4E1252B9B35105616555E5913AEAA
              6B18FE9ED57DB1D1178F87EF9F03C4D263F9AFFDAA50D4EE6D0214B1D13EC4D0
              4B96FF00F52CD06CDD2515F90000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 10
            OnClick = BtItemDownClick
          end
          object RgTipoScriptINSERT: TcxRadioGroup
            Left = 5
            Top = 676
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Tipo de Script'
            ParentFont = False
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = 'Navito para Delphi'
              end
              item
                Caption = 'Nativo para SQL Server'
              end>
            ItemIndex = 0
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 11
            Height = 73
            Width = 1327
          end
        end
        object cxTabSheet3: TcxTabSheet
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'UPDATE'
          ImageIndex = 2
          object BtGenerar_UPDATE: TcxButton
            Left = 467
            Top = 756
            Width = 438
            Height = 70
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'GENERAR UPDATE SQL'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000473424954080808087C086488000005BF494441545885B5976B6C5B
              7715C07FE7FA5E3B4EECC44B9B388F354FC8429BADC9A665ED5A06A82BA85D59
              81693011A65136314D48EC130C8968A20C51D66E12552546C7404CDAA44D5443
              4A3B0D21B16A42B44C052A95A5A1CDD28526D0479EB69BD4BEAFC3073B6D1CDB
              22EBE37CF3397F9FF3BBE775FF575822BB9E7F81BE471F5B27704044EA97DA97
              2323A36347272667B68E8C0C277FF2ECF748259325CF1A4B158220F0D4B50607
              701C77BDE3BA879A9A5BA3FD3B7713ADAC5C3E000240E85A835F7123B241E0ED
              A696B668FFCE3D25210A01B27FBEDEF80B8E3600879A5B4A67A228C08D1411D9
              88C8A1A696B648B14CDC74809C6C040E36B5B4467EB87337D1E855889B022022
              5A44771F70A8B9A53DD2FFDC1EA29555370FA03E5E836599C5203E6D1832D0D3
              D31DDD74FFE701306F064065B4427A7BBA349DCEA8EB794BCDF76532F617CC40
              E00080B9A27D7D6EF4B29D9F366B989DF77F6E053870AD00861032F0B6B89EF7
              B52B8E174930682146566DF63EFEDB5A848D0206087FB761682041D094C27F2E
              4344A03C2853B737C863EBDBE4DF6596F14CE199DCBA034C847705F9D482D153
              48A5152828E1C7920B499E6BBAC5DCDB5E4B01C06231403A172BCA2CD1BA98A9
              E1607E2797070D6DB8C5CAD38BA0E541A32869DAD1CEA939BDF8FF404D5954A3
              0D1D15FADDADB508600584E7072EE8FBC3737CF3B3D56CBBB30ADB55CC8070E0
              AF33FAE6D159B97D559867B6C7F9FABE519525B556046F1949CC9B8287EE89F1
              C65FA679EB588295D10073699FCFAC8EB0A9AB92A75F1D676CCAA1B536C8AE47
              1A183E9F51CF07A344A32CB77FF2F6C0F984CBDDED15B4D506994A79927654EE
              F964058707538C4D39007C74D1E6C8E939EEED882C33C4C70078E98F139C9B75
              D8D3D7C88F1FAED75879402BCB0CA6E7F2677966CEA3327C6376589E9754DA97
              7D7F989027F69F2564095FEEAD62EA92475D55FEBE8A57994C5F2A5830D707A0
              A0BDEDE55A53696AC000D703DF87C383293EB726CADD6DE544CB0CEEEDA8605D
              AE2C0086089F8887688F87B8B5DACA6B3BDB05601018000E0227813CF2BC47FB
              526F8CCE863211D0E3A3F3FCFED82CC9CB3EBFFAD324DFDEB49278952980EE7D
              E722A7CE65E4B68690262F7BF283ED71002E241CE97FF31C808B70F48C23B809
              596BE7B06201680C6AEB0AF3EA9691ADBB4E2FCDE515DBD27445C386EEE96BE4
              5FFF4DB3F79D09548B36FB34160F49DC7ADFA8B59EC0946F20ACCE393C5926BC
              16167D6572EC4CE6BDFEC7912DBB4ECF0A448B382A2A753153377444E4BDA14B
              3A99729702B8586C9655C10F8D15D64131A4A7980F553D6EDBF6831363A3FF91
              2D3F3DF520F08848F65D705D221C9546EB97467DF0C842F0867040EFAA0E6108
              FC633A4377758874C6E17723B3FF5458674E7E7864001858B80676AFB98DBB56
              AF2212124A5D0D7D5FF13C0FCFF759A898EDC21947180A5BDF5908BEB92EAC3B
              DA231C9FB1F114BEDA5C41CA55DE1D4F8988DC21E893E6B1DFECC873FE95DD2F
              F2C0DA8E3780874B3DA8AAEADCFC6554F30807DD84AC1D4A481F40BC2CA03BDA
              233C7B6286E194CBA3AD1134AB971CB528F45DD385C4B61D540B16FD88A380B0
              06B2C5DC772AC970CA05550646131C1E4B00E885F9EC7C0AD255629D957E8BF8
              BEAFB6E31433C9E2A1C8F8CAB4EDD35969110B28679319066732AC0C050805AE
              9E2B0AA05A9A2063DBA54C6DB18022CA49806D8DE5FCACA75AFABBAAD85C1F06
              A03316E4FBDD35579C2B7C500890B5FE992269703D4F5DB7E40AEE6C0C6A6BC8
              E0B5DC6F393FEFA820D4874D7E74672D2FAEABE7A593539C9B77172E81AF17F4
              C0D8F85954F905E809A06EE12B495551DF47448AD51F801526941BFA4ADAE55B
              17E79DEEB73E4AF3B7C9CBF4D684F1157E7D6A9AF1B96C705FF584C0FE824133
              0C8307BEB89D68245A3086BEEFE3FB3E25E2A3C0FCB6A77057DEDA98B6DDB741
              EE287A4EF584AFBACD4ECD8EDFA08FC0AB52D1DCC1EAFE9709D7349689C893A0
              7D205DB9D01F80BCAEAAFB33C999F4D00B4FF33F675D32D80CEB730B00000000
              49454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 0
            OnMouseEnter = BtRutaArchivoMouseEnter
            OnMouseLeave = BtRutaArchivoMouseLeave
            OnClick = BtGenerar_UPDATEClick
          end
          object cxLabel5: TcxLabel
            Left = 14
            Top = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'LISTA DE CAMPOS'
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Transparent = True
          end
          object ListCamposUpdate: TcxCheckListBox
            Left = 14
            Top = 61
            Width = 604
            Height = 613
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            EditValueFormat = cvfCaptions
            Items = <>
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.ScrollMode = scmClassic
            Style.LookAndFeel.SkinName = 'SkinAzul'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollMode = scmClassic
            StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollMode = scmClassic
            StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollMode = scmClassic
            StyleHot.LookAndFeel.SkinName = 'SkinAzul'
            TabOrder = 2
            OnClickCheck = ListCamposUpdateClickCheck
            OnDrawItem = ListCamposSelectDrawItem
          end
          object cxLabel6: TcxLabel
            Left = 739
            Top = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'LISTA DE CAMPOS WHERE'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object ListCamposWhereUpdate: TcxCheckListBox
            Left = 739
            Top = 61
            Width = 603
            Height = 613
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            EditValueFormat = cvfCaptions
            Items = <>
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.ScrollMode = scmClassic
            Style.LookAndFeel.SkinName = 'SkinAzul'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollMode = scmClassic
            StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollMode = scmClassic
            StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollMode = scmClassic
            StyleHot.LookAndFeel.SkinName = 'SkinAzul'
            TabOrder = 4
            OnDrawItem = ListCamposSelectDrawItem
          end
          object CkbListUpdate: TcxCheckBox
            Left = 564
            Top = 30
            Hint = 'Seleccionar Todo'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            Caption = 'Todo'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'VS2010'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'VS2010'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'VS2010'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'VS2010'
            TabOrder = 5
            Transparent = True
            OnClick = CkbListUpdateClick
          end
          object CkbListWhereUpdate: TcxCheckBox
            Left = 1288
            Top = 30
            Hint = 'Seleccionar Todo'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            Caption = 'Todo'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'VS2010'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'VS2010'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'VS2010'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'VS2010'
            TabOrder = 6
            Transparent = True
            OnClick = CkbListWhereUpdateClick
          end
          object cxLabel10: TcxLabel
            Tag = 1
            Left = 208
            Top = 5
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Cantidad de Campos :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -23
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
          object EdCantidadColUpdate: TcxCalcEdit
            Left = 438
            Top = 5
            Hint = 'Cantidad de campos por linea que saldr'#225'n en el query.'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            EditValue = 1.000000000000000000
            ParentShowHint = False
            ShowHint = True
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
            TabOrder = 8
            Width = 87
          end
          object cxButton7: TcxButton
            Left = 618
            Top = 61
            Width = 35
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
              610000000473424954080808087C0864880000018C49444154388DC5D1BF4BD4
              711CC7F1E7EBFB55145CEC941CBE2A4205812E0AD952B87CFF80E3727376D041
              CBC2D9A944C83B6A14A41C94A8B123E8073488B89E4E6A74876677C819DE60DF
              C4BB7B379C17477ED5A2A1D7F879BF5F0FF8F0867F8C7BDED0BB3342FBE0C835
              2B1E7F0B763EFD1DD0393441C7E068A2B1AD633E72D35F0FB2998D6067EBCF80
              CEA109BCE87042D298241747B148BFBF16869C024ECA7149E3D53721172916E9
              F7534136B3598BB821E5594977CDEC3B9091D4626629495E18E2FE567E2CE99E
              99054014F0247503E3C01749B79062911B7E2AF85A411C80E6DEDB78D1E187D5
              B2954BD1EDA5C47B49001CEDED5AEEED8BFB661697D420D77D79756CC6AF6F6E
              AD00563C06C856CB5B4F26DFE59793359F33D273539C20B3C00FCAA50333A30E
              A0B0BE4AFAD9A3A797FA0696F63EBCCAEFAFBCA1E172FBA9EBA4E7A6281D161E
              345DE999CEBE7E9E2F16F62B00402EB9402EB9900F3B6B6DB617E300BFF69C8B
              0A17E5FF0375E70DCDEC2380619FCFDAD1996DC7A1A9EB3A20CA4701C16EB8F1
              132A94B3BAEBAF2C700000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 9
            OnClick = cxButton7Click
          end
          object cxButton8: TcxButton
            Left = 618
            Top = 110
            Width = 35
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
              610000000473424954080808087C086488000001A749444154388DBDD13D481B
              7118C7F1DFEFCEB71C492F42AAE4C5246842940AE945086A6B4397422962C114
              94BE5841C48283A5B44B068714BA780EA28BE87660D32CA6A44BC86897BA74CB
              E2721652A150716B31F4DF21110DA609E9E033FE79BE1F1EF81375A6BDCB0D80
              F873FA1BA7C73FEAADD68A3D1849171646D28594B69ED3FEB5273570EE927C44
              B2EFBF00920DFCC6175C21E0B83381E0CB5555BD79BB6ED07D6F0A81A515D51A
              8A9C03B6FE210416DFCD3B46EF7FEB7FB311B36BB19AB1EBE11C7AE79793D76F
              3D3818486C865BAC6A1968B1D9417280A4556A6DCB865EAFC53A23D588737201
              BEC7AF9204130054D9A278A4B676C800F0EBC84487D39F53BC4117C9614A72DC
              AE8D7D06102579838A357D6D303A2D4B7242085112423C310D7DF7E4EB5E1980
              10F8B99F4787CBFF49E909BA490E038803B0907400F0C9923C2D204A02E2A969
              E81FBE7FDC06800A70867CC9C3E2F467156F19A9C420E9164294003C3B34F4D4
              595C0D5CB8A482784846CACFA20460C634F4F7C5CC7655520D5C465C00C2009E
              9B86BE53CC6CD5FC9DDA2349E87DF196DA7A6ED0393EDB44D8E4FC05F95276A6
              745EBD230000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 10
            OnClick = cxButton8Click
          end
          object cxButton9: TcxButton
            Left = 1342
            Top = 61
            Width = 35
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
              610000000473424954080808087C0864880000018C49444154388DC5D1BF4BD4
              711CC7F1E7EBFB55145CEC941CBE2A4205812E0AD952B87CFF80E3727376D041
              CBC2D9A944C83B6A14A41C94A8B123E8073488B89E4E6A74876677C819DE60DF
              C4BB7B379C17477ED5A2A1D7F879BF5F0FF8F0867F8C7BDED0BB3342FBE0C835
              2B1E7F0B763EFD1DD0393441C7E068A2B1AD633E72D35F0FB2998D6067EBCF80
              CEA109BCE87042D298241747B148BFBF16869C024ECA7149E3D53721172916E9
              F7534136B3598BB821E5594977CDEC3B9091D4626629495E18E2FE567E2CE99E
              99054014F0247503E3C01749B79062911B7E2AF85A411C80E6DEDB78D1E187D5
              B2954BD1EDA5C47B49001CEDED5AEEED8BFB661697D420D77D79756CC6AF6F6E
              AD00563C06C856CB5B4F26DFE59793359F33D273539C20B3C00FCAA50333A30E
              A0B0BE4AFAD9A3A797FA0696F63EBCCAEFAFBCA1E172FBA9EBA4E7A6281D161E
              345DE999CEBE7E9E2F16F62B00402EB9402EB9900F3B6B6DB617E300BFF69C8B
              0A17E5FF0375E70DCDEC2380619FCFDAD1996DC7A1A9EB3A20CA4701C16EB8F1
              132A94B3BAEBAF2C700000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 11
            OnClick = cxButton9Click
          end
          object cxButton10: TcxButton
            Left = 1342
            Top = 110
            Width = 35
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
              610000000473424954080808087C086488000001A749444154388DBDD13D481B
              7118C7F1DFEFCEB71C492F42AAE4C5246842940AE945086A6B4397422962C114
              94BE5841C48283A5B44B068714BA780EA28BE87660D32CA6A44BC86897BA74CB
              E2721652A150716B31F4DF21110DA609E9E033FE79BE1F1EF81375A6BDCB0D80
              F873FA1BA7C73FEAADD68A3D1849171646D28594B69ED3FEB5273570EE927C44
              B2EFBF00920DFCC6175C21E0B83381E0CB5555BD79BB6ED07D6F0A81A515D51A
              8A9C03B6FE210416DFCD3B46EF7FEB7FB311B36BB19AB1EBE11C7AE79793D76F
              3D3818486C865BAC6A1968B1D9417280A4556A6DCB865EAFC53A23D588737201
              BEC7AF9204130054D9A278A4B676C800F0EBC84487D39F53BC4117C9614A72DC
              AE8D7D06102579838A357D6D303A2D4B7242085112423C310D7DF7E4EB5E1980
              10F8B99F4787CBFF49E909BA490E038803B0907400F0C9923C2D204A02E2A969
              E81FBE7FDC06800A70867CC9C3E2F467156F19A9C420E9164294003C3B34F4D4
              595C0D5CB8A482784846CACFA20460C634F4F7C5CC7655520D5C465C00C2009E
              9B86BE53CC6CD5FC9DDA2349E87DF196DA7A6ED0393EDB44D8E4FC05F95276A6
              745EBD230000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 12
            OnClick = cxButton10Click
          end
          object RgTipoScriptUPDATE: TcxRadioGroup
            Left = 14
            Top = 677
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Tipo de Script'
            ParentFont = False
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = 'Navito para Delphi'
              end
              item
                Caption = 'Nativo para SQL Server'
              end>
            ItemIndex = 0
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 13
            Height = 74
            Width = 1327
          end
        end
        object cxTabSheet4: TcxTabSheet
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'DELETE'
          ImageIndex = 3
          object BtGenerar_DELETE: TcxButton
            Left = 467
            Top = 742
            Width = 438
            Height = 70
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'GENERAR DELETE SQL'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000473424954080808087C086488000005B0494441545885B5976D8C54
              6715C77FE7CE9D979D979D01615FDB655F748BB015D074B774B1B642AB4015B5
              521BB748D5A6A931B17E31359198604D4841134913A5D218496942132CBAD0AE
              3196C61841C4A66A16AA0BB4D84581DD9D65769765EECCDCFB1C3FCC4ED979B3
              5B0AFF8FCFCB39BFE79CF39CFB5CA144DB9EFA117D9B36DF2EB05F441A4BE7E7
              A23367878F8E8E5D5A77E6CCA9C91F7EFF3B4C4D4E565D6B950E0882C037AED5
              39402EE7AECCB9EEA196456DB12D5BB713ABAD9D3B000240F05A9DBF6346A457
              E0A596D6F6D896AD3BAA429403E437BF5FFF0543BDC0A145ADD5235111E07A4A
              44562172A8A5B53D5A2912371C6046AB80832DAD6DD1EF6DDD4E2C7615E28600
              88885618BB1338B4A8B523BAE5C91DC46AE3370EA0B17E217EBF5D09E2E39625
              FD2B562C8FAD5E732F00F68D00A88D45A47B45973A4E465DCF2B9DBE3393C97E
              CAF6F9F603D81FE8583973F5F295EFD80B495D313FF1FBD87FAD009610B4F0D6
              BA9EF7A5770CCF5220E047ACFCB0DDFDF55FD621AC12B040782D0B6FF44F10B0
              A57CE71C2402E180246F6D92CD2BDBE5DF21BFF544F99A997607D8088705F970
              61D253987214284BE17BD2C5499E6C9967EFECA8A30C60B62C90C5B307427ED1
              8684AD3581E24A0E072C6D9AE72F1A1741C301AB22A993D3C5C9691D7937505B
              66E5A8B733A2DF5A5787007E9FF054FF453D766A9A87EF9ACF7D1F8D937515DB
              27ECFFF3257DE1684A6EBDB9862736D4F3E5A7CFAA94E45A11BC3904B1E816DC
              DF9360DF9FC679F1F8040B623EA61DC327964459DD55CBE37BCE319CCCD15617
              60DB834D9CBA9051CF8055A550E65A3F457DE0C284CB6D1D11DAEB0224A73C71
              722A3D1F8AF0EA892986933900DE1AC97264689A3B3AA37374F11E007EF6BB51
              CEA772ECE86BE6071B1B3511F6696DC8627CBAF82E5F9AF6A8ADB93E3DACC8CA
              9463E4E9DF8ECA23CFBC4DD02F7CBE3B4EF2B24743BCB85FD5C76DC62F973598
              F707A0A0DD1D615D586BABCF02D70363E0D51353DCBD34C66DED6162218B3B3A
              23DC3E9316004B840FD607E9A80F72D37C7F51D9655D004E00FDC041E0245044
              5E74B4CF752758DC1412017DFDEC150E1C4F319936EC7E658C47572FA03E6E0B
              A03B0746F8D7F98CDCD214D4C9B427DFDD500FC0C5899C6C79E13C80EB37B9A3
              D1D36F123A37BA4CB2F9FA3189386E73639B993F8F429F9175DB864A63593845
              5921C76A2CDDD1D7CC3FFFEBB0736014D50AC5AE3A9EC85DBE7FCDC86BC7EE1E
              FDDB2311CF79085892B728273518DC6B6A42CF9E1D1BC93CFCFB83C8DA6D4329
              8158A5FC545243C2D6DECEA8FCE18DCB3A36E59602B889ECD43D0F0C1F3EDD93
              1A3A68635654B2A1AAAF3BE9F467DF1A4FFEC746F52B0A0F8AE4BF05EFA60B29
              975FFD255571CE6F7247D75CFCEBB19ED4D091FFE35CD3E9F472C771061A6A22
              3DF6D8E923FD407FE119B87CE92D7C6CC9CD448342B5A7A1318AE77978C650C8
              58D685E8E937E91DFBFB370BCE43F7DDA3EA7A64065E0120B87635393538FB0E
              08225DA08FD9C77FF1D522E35FD8FE63D62FEBDC076CAC160555D5E92B69548B
              084F84CE8D2E8B784E5F815C3D8FF0E607042BFFFD086FDA2863BBF65CBD2922
              7DD7F420C96673A89635FA3392CB012C2D0C64060E8BF87C1ADEB4510092BBF7
              EAC4AF5F9E4DDD55A59D55FF8A1863349B77542AA9B44D6785494B4206559E64
              AA68B5FC67B2D96A6CED2611079193400F40F0D39FD4F0435F94E4CF9F538005
              8F6E123C4F277E3350B03E580E903FC51FC9D7401186EB79EABA555BF062B7B9
              B14D83C1BD92C9F4A8AAE6D430F6CC1E9D78F1A599831915FF2C976A9E2F0318
              3EF736AAFC14F41F4043E12F4955516310914AF907C0CC9F87A9093D2B8EF3B5
              B4E32C77F61DC86F9EB13171E0E559CE7510D8551668CBB258FF990DC4A2B1B2
              6B688CC1184315FF80F2B8637153CE343B196700A4ABF2321D44599FCA6686AF
              D34FE0557546E3ECFE480F0DA1480DE86388D50714400651F33CB06B229B4D7F
              7BF038FF0331B34BB95D35B2D00000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 0
            OnMouseEnter = BtRutaArchivoMouseEnter
            OnMouseLeave = BtRutaArchivoMouseLeave
            OnClick = BtGenerar_DELETEClick
          end
          object cxLabel8: TcxLabel
            Left = 14
            Top = 12
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'LISTA DE CAMPOS WHERE'
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Transparent = True
          end
          object ListCamposWhereDelete: TcxCheckListBox
            Left = 9
            Top = 42
            Width = 1323
            Height = 597
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            EditValueFormat = cvfCaptions
            Items = <>
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            Style.LookAndFeel.ScrollMode = scmClassic
            Style.LookAndFeel.SkinName = 'SkinAzul'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollMode = scmClassic
            StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollMode = scmClassic
            StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollMode = scmClassic
            StyleHot.LookAndFeel.SkinName = 'SkinAzul'
            TabOrder = 2
            OnDrawItem = ListCamposSelectDrawItem
          end
          object CkbListWhereDelete: TcxCheckBox
            Left = 1050
            Top = 9
            Hint = 'Seleccionar Todo'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            CustomHint = BalloonHint1
            Caption = 'Todo'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'VS2010'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'VS2010'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'VS2010'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'VS2010'
            TabOrder = 3
            Transparent = True
            OnClick = CkbListWhereDeleteClick
          end
          object cxButton11: TcxButton
            Left = 1334
            Top = 42
            Width = 35
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
              610000000473424954080808087C0864880000018C49444154388DC5D1BF4BD4
              711CC7F1E7EBFB55145CEC941CBE2A4205812E0AD952B87CFF80E3727376D041
              CBC2D9A944C83B6A14A41C94A8B123E8073488B89E4E6A74876677C819DE60DF
              C4BB7B379C17477ED5A2A1D7F879BF5F0FF8F0867F8C7BDED0BB3342FBE0C835
              2B1E7F0B763EFD1DD0393441C7E068A2B1AD633E72D35F0FB2998D6067EBCF80
              CEA109BCE87042D298241747B148BFBF16869C024ECA7149E3D53721172916E9
              F7534136B3598BB821E5594977CDEC3B9091D4626629495E18E2FE567E2CE99E
              99054014F0247503E3C01749B79062911B7E2AF85A411C80E6DEDB78D1E187D5
              B2954BD1EDA5C47B49001CEDED5AEEED8BFB661697D420D77D79756CC6AF6F6E
              AD00563C06C856CB5B4F26DFE59793359F33D273539C20B3C00FCAA50333A30E
              A0B0BE4AFAD9A3A797FA0696F63EBCCAEFAFBCA1E172FBA9EBA4E7A6281D161E
              345DE999CEBE7E9E2F16F62B00402EB9402EB9900F3B6B6DB617E300BFF69C8B
              0A17E5FF0375E70DCDEC2380619FCFDAD1996DC7A1A9EB3A20CA4701C16EB8F1
              132A94B3BAEBAF2C700000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 4
            OnClick = cxButton11Click
          end
          object cxButton12: TcxButton
            Left = 1334
            Top = 91
            Width = 35
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
              610000000473424954080808087C086488000001A749444154388DBDD13D481B
              7118C7F1DFEFCEB71C492F42AAE4C5246842940AE945086A6B4397422962C114
              94BE5841C48283A5B44B068714BA780EA28BE87660D32CA6A44BC86897BA74CB
              E2721652A150716B31F4DF21110DA609E9E033FE79BE1F1EF81375A6BDCB0D80
              F873FA1BA7C73FEAADD68A3D1849171646D28594B69ED3FEB5273570EE927C44
              B2EFBF00920DFCC6175C21E0B83381E0CB5555BD79BB6ED07D6F0A81A515D51A
              8A9C03B6FE210416DFCD3B46EF7FEB7FB311B36BB19AB1EBE11C7AE79793D76F
              3D3818486C865BAC6A1968B1D9417280A4556A6DCB865EAFC53A23D588737201
              BEC7AF9204130054D9A278A4B676C800F0EBC84487D39F53BC4117C9614A72DC
              AE8D7D06102579838A357D6D303A2D4B7242085112423C310D7DF7E4EB5E1980
              10F8B99F4787CBFF49E909BA490E038803B0907400F0C9923C2D204A02E2A969
              E81FBE7FDC06800A70867CC9C3E2F467156F19A9C420E9164294003C3B34F4D4
              595C0D5CB8A482784846CACFA20460C634F4F7C5CC7655520D5C465C00C2009E
              9B86BE53CC6CD5FC9DDA2349E87DF196DA7A6ED0393EDB44D8E4FC05F95276A6
              745EBD230000000049454E44AE426082}
            OptionsImage.Spacing = 7
            TabOrder = 5
            OnClick = cxButton12Click
          end
          object RgTipoScriptDELETE: TcxRadioGroup
            Left = 9
            Top = 649
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Tipo de Script'
            ParentFont = False
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = 'Navito para Delphi'
              end
              item
                Caption = 'Nativo para SQL Server'
              end>
            ItemIndex = 0
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -23
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 6
            Height = 74
            Width = 1323
          end
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Store Procedure'
      ImageIndex = 1
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 
          'Obtenci'#243'n de los parametros del Store Procedure y generaci'#243'n del' +
          ' codigo para la ejecuci'#243'n'
        PanelStyle.CaptionIndent = 4
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -23
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 347
        Width = 1412
        object dxBevel2: TdxBevel
          Left = 14
          Top = 39
          Width = 954
          Height = 197
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
        end
        object dxBevel3: TdxBevel
          Left = 1008
          Top = 39
          Width = 380
          Height = 197
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
        end
        object dxActivityIndicator2: TdxActivityIndicator
          Left = 558
          Top = 88
          Width = 123
          Height = 131
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          PropertiesClassName = 'TdxActivityIndicatorElasticCircleProperties'
          Properties.ArcThickness = 5
          Visible = False
        end
        object cxLabel13: TcxLabel
          Left = 25
          Top = 84
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'NOMBRE DEL PROCEDURE'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object EdNombreProcedimiento: TcxTextEdit
          Left = 301
          Top = 82
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Blue'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Blue'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Blue'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Blue'
          TabOrder = 0
          Width = 618
        end
        object BtBuscar1: TcxButton
          Left = 1022
          Top = 56
          Width = 350
          Height = 79
          Hint = 'Buscar el Store Procedure en la Base de datos'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          CustomHint = BalloonHint1
          Caption = 'Buscar Store Procedure'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C08648800000607494441545885B5966B6C1C
            5715C77FE7CECEAED76F3B8E1F79D88EE33869A8A3109C36A62DA4B482483852
            BE5001914A05A5C18240408E848AF8C217242A28080882006D8578A81045A1A5
            AA4868D43A4D02ADEBC679387E36F52371EDEC7A776DAF1F3B33870FEBB5EC6A
            376EEAF42FCDEA5ECDECF9FDCFB9F7DC19E1434844585F554D65550D25AB4BB1
            2C6BC9FDC9588C1B23C3F4757731353579EB58B703F6D936F7DDBF9BC6077653
            5CBCCA00BB44E493201B8102600674106857D5575CD7895DBED8C17F4EBEC48D
            E1A19519A8A9ADE38BFB1FA3A8A8381F916F01CD22B236D3F3AA3A0D1C037EAC
            AA9DAFB79EE65F278EE138CE92E7ACB4FF7E9F1AEE69E4D1AF7E83ECEC9CCF21
            F2B288EC13917C00CB325A50904F417E3E595959789E8BEBBA2222B6886C031E
            1791C0FAAAEAD76AEBB668C7DB6FE12E32B16C053EB173178FECFF0A46CC2181
            A710B1005DB7A682BA4D1BB5AC74F5C21E1049868B44A3F4F55F939EDE7E128E
            23F3157939128D3DD279E5F2E40BC7FE422231B7BC81F28AB51CFCDEF7F1FBFD
            4F88C86F00C90E06B5F1DE06AD282F03C0E7F3E1F3F9B08C5930A0AA004C4C4E
            D2FAFA79191CBE2EE391A8DE0C854FABB2A7A7F3A273FAE48BCB2FC1638F37B3
            AA647503C2F382F8F2F3F2F4B30FEDD6E2A2422CCB229895856DDB9845F05425
            44844020406DCD06466F86E8B8D429AABA4184AC92D2B25323C3834CC4A2984C
            F0CD5BB65255BD5180238204FC7EBF3EF8E9FB343B3B886DDB640502186364BE
            8A192F638CEC79F8335A575BA3009EA78754A96F687C0020B3819D8DF783F079
            116900D8B1BD5EF37273B16D9B80DF8F2C4E79195996912F7D611F7EBF5F015B
            559F2CAF58474151717A03C61836DFB515E06B00B939395A535D853106BF6DC3
            6D9E1F00458585ECDAB9030055DDA75054B9A136BD8192925202FEAC00F020C0
            86EA4A8C31B79DF9FB754FC3C753C380C2C3A5A5E5E90D14141622229B52BD5E
            56BA5A8D31189371C53E90D656946B3098956C116547309893790F88B03E35CE
            CBCDC567F956947D32A6C8AAE2A2D4B452553319104002A999655958D6CAB24F
            29E0F703A0AA1664EC02455563A9D95C628E1526BFA0A9A9380022124724BD01
            4DFEF4A7869148F48EC01389848E85C2A9690F6430101A1B45D101551D0218BE
            3122A9E37525EAEEED17D775054044CE4D4E643809C7C7C3C4A7A63CE004C0BB
            03434CCFCCAC08AEAA7AE6DCFF001018F554CF8C8E5CCFDC051D6FB7011C5170
            1DC791B6F60B2BAAC2D5EE5EE9ECEA494E447E2BAACE3BFD3D990D9C3FDBCAAC
            6BAEBA9E3C0BD0D9D543FFB5773F147C3C12E5AF7F3F0EC9F61A1178FA5A7F37
            33F1C9CC067236EFE1CD892A698FAD91B8EB5355E56FFF38415B7B876AB2141F
            E81ABB19D223479F213631298067440E78EA45DE3CDF0A64781DD737B550DFD4
            22D3B373BF8E27F87A782E883D3540381C928E4B578846635255B96EA1A7D3C9
            755DCEBFD1C6737F7E5EA2B1090154911F18237F7CEBBF67E8EFED225592A5F0
            BD87D9D6D422C02F5C67F69BE3EFF5937012623B51AD98BE884F6704C0B66DDD
            5EBF95BBB6D469457919B939D9CCCECE110A8FD3D3F78EB4B55F603C124DC54F
            88488BA7FCB2B7BB93D74EFE73E1A3658981FAA616B6ED3D2CC0D322F26D55D5
            89689858781050C9F662CF54CC5CB0C54B7C995BBCCA174B443A446816E45C57
            E7455E3DF512AADEC2FD8525A8DF7B3805FF790A1E8FCF90487862D9413C3771
            54710FE4B9A1E33E9CE3F306D602B9692A1917E19431F2A408DF4DCCCE0E9E79
            F5DF24D77D6927492AF3FABD8745E0A7227228099F6676662E15F877AE33D33C
            DAF58A8EB5FE8ABBB76D677DD546C4180BA841B5D653CD111147440640AF0AC4
            276211AE5EEEE0D28536E6E666D357A8F6538F72EFFEA704F899887C271D1C68
            0EF59DD5379E3D80E72403F96C9BD2B20A0A0A8B1191F9354D7E0B4E4F4F11BE
            394634124E0B5D2C5F71653D080785B4F0DF27E1E796C0019C4482EB43035C1F
            1A5816722B253792F2B134F0A3C08164E64F2C81DF4919CF75F03CEF27F1F8F4
            7B8BE07F2043E6775A563C32C29AED4DE3AE2B2FAA920DFC09F861A8EFACF751
            C361BE0B0AD6DDCDA6870E627C0150888F0F73E5851F7DE47080FF035369BFE1
            B1ECDB950000000049454E44AE426082}
          OptionsImage.Spacing = 7
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnMouseEnter = BtRutaArchivoMouseEnter
          OnMouseLeave = BtRutaArchivoMouseLeave
          OnClick = BtBuscar1Click
        end
        object BtGenerar: TcxButton
          Left = 1022
          Top = 145
          Width = 350
          Height = 79
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          CustomHint = BalloonHint1
          Caption = 'Generar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C086488000004E6494441545885C5966B6C15
            5510C77FB3175A8102F29644085285D0628C3C024A20C8A31602250846528310
            54201088C69082811402698428424CB088281A2546111411891F0A188404814A
            1B0A05A1954781168B85FBDCBB7BC60F6D6F5FF7DEB616E37CD99C3D33E7F73F
            3367670FFCCF26AD0DB004C60DEF85C76A3E545D831AB76E5CF3ACB86B73AED4
            F7EF046C589ACACAF983DB83A40389224D97505554152710C00D861ABC078A0E
            E7571665AC3A0B40BBD6C047A67663C52B8300D928226FC4F213115055376443
            BD4D8A4800980614D5BEB35A0A4F4CB0F878CD703C96350E5816CF5755D5F6FA
            40350257F0021946397CE0F89D886F8B33B07E490A2903BB7402768A88279EAF
            1B0A61C2E1C6F0E90A47576EBFC4473FDC88F8B62803639FEEC1F2CC274064A3
            8824C7F3358EA3619F3F3256B40A986A548F66E55E62DBBE6B0DFC9B3D849D1E
            F270EACB8924F74F9A68891C1262EF5E553554750F755D0130AA558A992A2227
            B2722FF3612338B4A00439CB87F278BFA4CE82EC88070770FC81081CB8ABAA53
            C2AE7BF2ED1D97F9E8FB9B5163E20A1837AC278B67252322EF8AC88078BE6E38
            AC4E30583BAC04D28DCAA9859B8AD9FB4B45CCB8982548EAE0E1F4EE49243F9A
            948E70409098E7458DA94EBD31025420A4DB8EE6CFCF39C7FE63E5F174C716F0
            41D6532C9E9DDC55900211E91713AEAA61AF0FD7B6052807D28002C755EEFB9D
            5A2F14F8ECA732D6ECBCD2203E6A099E7FB6370B670D04644B3C38806BDBB570
            80DEC0EF00ED3C42B7CEED6BF018D08C2E9DDA1D6C1CDF24AD5D93DAB16DD530
            4464BAC0DC7870E3BA0D3EB968A6A84F3199AA1CBCF997DD64BE490656CC1B4C
            FF3E1DBB0B922B12A7EE35A9AFDFED9AC2B9AA30D318F2B7EC2965D3EED2E605
            F4E89A8088AC1091BE713686130C629CB0C43A468A1E0766076D736BC9E6F3EC
            391CFD3036D9A13100AC5255AB66DE52554B55872BEA4275B773FC0162C055D1
            5D0A13CAEE046F4D7EF34C4C38D156484CB0E89058D76F863CD699233BC6E3B1
            649F88CC68DCED1A99A39005FAFEC90B55CC5D7F8EB23BA1286E75D6A40421DB
            10B24D64FCD6BC41782C1921420640D8EF8F0A57F4AE2A2F0387BECABBCD92F7
            CEE3B8DAD8AD7901F56D44CAC34C1BFB080AD982886B87B5FE05A30ECE454567
            3886E2F5BBAEB0E5EBAB348F6E8180EC45295822A345648A1AA3B6CF0B8DCAA6
            E821A39A79CFEFFCFDEA3B45FC7CB2B285E866048C1ADA8DB4D17DB0B0B25115
            DBE703D3E0935345B72ABAE2CACD803B27BB80E2AB8156C1E30A58FDFA102C4B
            C68890E6046D8CDDE08211045D0A7C9A975FC9829C222AEF39B1966ABD8091A9
            DD487FA62F026B8D6B08FB7DF5A76F2B3A1BF83577FF75566EBB846969C15B2A
            60EDA21444180F4CA8EE76D57557E58CA23383B6B9B672FB453EF931FA3FBE4D
            02463DD99DC9A3FB00643B8120C671AAE1E8370A0B2AAAC2BEB91B0A395E58D5
            663844E9846B17A5600913D571C739810080ABE85A555E2A2CF1FAC62FFBED81
            C1A15106268DEEC573237B8A2AD9B6D78B820F743EB0F7BB63E52CDD7C81FB7E
            37FA4A6D1520C0EAD786806A9A13088C31C6942AFA82AA9EDDB8FB4F723E2F79
            A0E0FA5C00520776E1F417E341F544D8EBB3155EF4FA9DF2655BCFF3ED91D877
            BAB65A2403890916A8E9EE06437988ACBB7E3B60CF595740C11FDEFF0C0E10F9
            ED5916A40EE81828B9E1CF3B535CE566AE2BA4A42C182FF681D83F94926418DF
            5FE1FF0000000049454E44AE426082}
          OptionsImage.Spacing = 7
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnMouseEnter = BtRutaArchivoMouseEnter
          OnMouseLeave = BtRutaArchivoMouseLeave
          OnClick = BtGenerarClick
        end
        object RgFormatoSalida1: TcxRadioGroup
          Left = 14
          Top = 247
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Formato de Salida'
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'PortaPapeles'
            end
            item
              Caption = 'Archivo de Texto'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 5
          Height = 79
          Width = 1374
        end
        object CkbQuitarArroba: TcxCheckBox
          Left = 567
          Top = 135
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Quitar Arroba a los parametros'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'VS2010'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'VS2010'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'VS2010'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'VS2010'
          TabOrder = 6
          Transparent = True
        end
        object BtScriptStoreProcedure: TcxButton
          Left = 25
          Top = 135
          Width = 439
          Height = 70
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Crear Script Store Procedure'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C086488000006B0494441545885B5977D8C94
            D515C67FE7CE3BB35F338B200206587681DA543E4AA569C4154C496A15454A5A
            6BC24AC116B4DA98465A88B148211041A1454CC1B4496348438DBA35B660D114
            342256293501A421292E6E0B8B503E77669799F7E3DED33F66869DDD99A52B6D
            CF7FEFFD38CF739EF7DC73EE15FAD8DAA737D0327FC1CD02AD22727DDFF98158
            5BFBF1F7CF9CBD30ABADED687ACD8AA564D2E97ED79ABE038220F0F0D5820384
            61342D8CA21D0D639A52CB573D43AABE7EE0041000AAAE16FCB21B916681D71B
            1AC7A696AF5ADF2F897202F9CDFF2D7ED15133B0634C63FF4A5424F0BF3411B9
            15911D0D8D63939594F8BF1328D8ADC0F686C6A6E44F563D432AD543C2EB67C3
            0757F2A6AA003160A288DCD0775E44946236F58CCD50D51D631AC7DDBD7CF5FA
            AE352B9691497722D5558627177D81B1A3924C1A5F4F434323A66E0CCED4E57D
            A8E2AC45235B04CE9330D544D54D1226277E9758FD6644E2C5B974A65B8F1C3D
            46184665C92422EF0CBE263567CBA60D99D75E7D05EF678F4DE6C16F8EAD1364
            25B00BCEDF28D90BEBF3A7115455D55AC24B59502D751839F15E0FEA6FF9CEA5
            E1F306E1D5AF2F4ED4A7EAE42B5F9AA8B99CAF91B57D39CCF0FDE0EB5E2CD60A
            60E6DDD900C846115902BC061C50F4D512C6623C4FE2B535005AE2C8331ACD49
            A4DF7F369EFEEB73AAFA8F52146B1D15C0014824E288C9C76292B55E42E0DE02
            5802D8ACAA4F9749178B21A63C678D862D55997D4371FECBC53155553FF02B82
            17708A02E309D488902C99BC0118A2AA074568EA19078999845ADB37718D893A
            27888687A11A80308C704E1988790A19940E114617B1801F008FAB820BC3848B
            224F5551EBD07C84E731F13DAE6A24363E94203555D4546F9342F441100C081C
            C03B7D2EE7865F5BFDA220CB4A54980DCC2E7CAA2BC96611012172B1D4C8CCA8
            C7A6B9C4D01630E344E426003F081858EC7933ADBB4F80F2ACAA76575CE079D0
            3BF910C413CDB5C4825307C07CA3086EADD3308C3E033C984DBF6D2388DC69E0
            E7155788544C3E71B94713E93F9F160D5E8462E20D5CFACB043EE9E8E6172FB5
            A1AAEB55B5BD1C5FC4C4CB0BA64053A2FBE0FDB1ECB1A75435B0D662FB397657
            B218C0BE8FCEF3C03D8D61B2D63B2122DFAEB4D08561798B74FE44853541DDA4
            C6AC1F4DA9B02D42ED3A21D86C3468150D5B45835663BB3EF8F4E3F7D2C63FD9
            53AFEF9FD5C00B2BBF8C88BC2D22334ABDA8AA06E94C21F03E08B1FA85E7873D
            B23F1B1F77883ECD4DD47F7C90BF774B7D78E00EA33903A036C2652F225117AA
            2EEB2D9ADB08085E4CB8D815724D2AB14A60572998888818A3EA5CB98436FDE3
            AACCFE29D9C18DEF22B1DB7A58BBDDC9E0E0C621FEEECD1EFE83970987BE12E5
            44516B355AE43DFFC4D4FB046A118AB9BE47554F8AC8C85E4846A01C1F8109D5
            FED12F8ACBFD516375B715243B5B654F3C30D87FEB1E8FDCE2622CCE5AB5B91C
            0A4E95EF1BCC564F60B5888C2B7A53D559C0456064395C459398EB1A2BCEEFD0
            581D8033DAF5D0E0DC6E53A5677E99AFA1F9DF1865B314C27C14E1D7DBDE3C85
            51F4379755533DA3683B50D6E3B9426975123F85F186E59D84BF1A14ECDB9EB4
            47B60A0C2DAEB14180E64FC912D0E773BEC3BA7CD23CA7AAED8566BF44906552
            D2DB01D4B98AFF3F4F9AF6203166BF939A19A8FEBD263AB67490BF77A9C17EF5
            32C182F4C005A01978A9BACAAC983FEB7ACCD98B7E27F03585858A5E27220BFA
            82D820840A2740554F87F1EBE67525A77F1E13BF1BD899B09F4A5CBB26AAEA2B
            AA7AB8447A018600DF026A557553E652884CFADC20D63C328159CD2310916690
            E12A0983C40041D511E57C5C1441E146A4804AC2F7E3A3F764523387FBD537FE
            0131E3516DF7DCF93B92E1A18F87F8BB24A6D9BFD820B8C9E67245F2EAD0A750
            561EEDE8B2F37E7AA827AA963B475353ED31F7DE054C6D9E73B39AAA51790214
            80155588AC2508421CB1849A9A6695AAF988D496A6443CEA983EAA7BCBB531DB
            BD3DECEA021045D3C0F754F5776FEE3FC7C2D51F91B9647B2EA5DB761E0760FC
            B41493E3A37ED85F450C72398DBC2B945C756FD54647F719CDED2D4AAFD0A630
            17F4F0BA6D9FB076EB316C21A5CA8B7C5EE577C9DF927AFDF7C85A8DA22BD67B
            8DB9CEB5F5C1873335F0A7A9B5A2F086A22DE96E7BE1E10D7FE3F77BFED56B43
            1981E327FE892A5B400F01238AAF2455459D43447ADD8E7BC3DB20157CF84E22
            3AB92BCAE5546183C213C74E66ED7D4F1EE0487B79C72FCB6C630C77CD9E432A
            99A2EF0BCD3987738EFEF07FD43282C9C33A6ED15CE74E67C3C5282FBFB1EF1C
            8BD71DE642E6B3DD13AECADE7B613AD9BD776DEC7EFBF6299D7F9AC99A879A30
            FFE199F96FC9B54CA34B5F694B0000000049454E44AE426082}
          OptionsImage.Spacing = 7
          TabOrder = 7
          OnMouseEnter = BtRutaArchivoMouseEnter
          OnMouseLeave = BtRutaArchivoMouseLeave
          OnClick = BtScriptStoreProcedureClick
        end
        object EdCantidadColProc: TcxCalcEdit
          Left = 831
          Top = 179
          Hint = 'Cantidad de campos por linea que saldr'#225'n en el query.'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          CustomHint = BalloonHint1
          EditValue = 0.000000000000000000
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.ScrollbarMode = sbmClassic
          Style.LookAndFeel.SkinName = 'MoneyTwins'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
          StyleDisabled.LookAndFeel.SkinName = 'MoneyTwins'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
          StyleFocused.LookAndFeel.SkinName = 'MoneyTwins'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
          StyleHot.LookAndFeel.SkinName = 'MoneyTwins'
          TabOrder = 8
          Width = 88
        end
      end
      object MmoListParams: TcxMemo
        Left = 0
        Top = 347
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        ParentFont = False
        Properties.ScrollBars = ssVertical
        Properties.WantReturns = False
        Properties.WordWrap = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -23
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.LookAndFeel.SkinName = 'Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.SkinName = 'Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.SkinName = 'Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.SkinName = 'Blue'
        TabOrder = 1
        Height = 892
        Width = 1412
      end
    end
  end
  object StbBarraEstado: TdxStatusBar
    Left = 0
    Top = 1301
    Width = 1429
    Height = 35
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 613
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsUseLookAndFeel
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object BalloonHint1: TBalloonHint
    Delay = 0
    HideAfter = 1000
    Left = 191
    Top = 628
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    FolderLabelCaption = 'Ruta seleccionada'
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.ScrollMode = scmClassic
    LookAndFeel.SkinName = 'Blue'
    Root.BrowseFolder = bfDrives
    Title = 'Seleccione el Directorio'
    Left = 197
    Top = 761
  end
  object DataBase: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL')
    Left = 998
    Top = 725
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    ODBCDriver = 'ODBC Driver 17 for SQL Server'
    Left = 625
    Top = 826
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 628
    Top = 956
  end
  object QryPrimaryKeys: TFDQuery
    Connection = DataBase
    SQL.Strings = (
      
        'SELECT O.NAME AS '#39'TABLE_NAME'#39', I.NAME AS '#39'PRIMARY_KEY'#39', C.NAME A' +
        'S '#39'COLUMN_NAME'#39', '
      
        'CASE WHEN ISC.DATA_TYPE IN ('#39'float'#39', '#39'uniqueidentifier'#39', '#39'dateti' +
        'me'#39', '#39'bit'#39', '#39'bigint'#39', '#39'int'#39', '#39'image'#39', '#39'money'#39', '#39'xml'#39', '#39'varbinary' +
        #39', '#39'tinyint'#39', '#39'text'#39', '#39'ntext'#39', '#39'smallint'#39', '#39'smallmoney'#39') THEN UP' +
        'PER(ISC.DATA_TYPE)'
      
        'WHEN ISC.DATA_TYPE IN ('#39'decimal'#39', '#39'numeric'#39') THEN UPPER(ISC.DATA' +
        '_TYPE) + '#39'('#39' + CAST( ISC.NUMERIC_PRECISION AS VARCHAR(4) ) + '#39', ' +
        #39' + CAST( ISC.NUMERIC_SCALE AS VARCHAR(4)) + '#39')'#39
      
        'ELSE UPPER(ISC.DATA_TYPE) + '#39'('#39'+ CAST( ISC.CHARACTER_MAXIMUM_LEN' +
        'GTH AS VARCHAR(4)) + '#39')'#39
      'END AS DATA_TYPE, IC.KEY_ORDINAL, I.TYPE_DESC AS '#39'INDEX_TYPE'#39
      'FROM SYS.INDEXES I'
      
        'INNER JOIN SYS.INDEX_COLUMNS IC ON I.OBJECT_ID = IC.OBJECT_ID AN' +
        'D I.INDEX_ID = IC.INDEX_ID'
      
        'INNER JOIN SYS.COLUMNS C ON IC.OBJECT_ID = C.OBJECT_ID AND IC.CO' +
        'LUMN_ID = C.COLUMN_ID'
      'INNER JOIN SYS.OBJECTS O ON I.OBJECT_ID = O.OBJECT_ID'
      'INNER JOIN SYS.SCHEMAS SC ON O.SCHEMA_ID = SC.SCHEMA_ID'
      
        'INNER JOIN INFORMATION_SCHEMA.COLUMNS ISC ON ISC.TABLE_NAME = O.' +
        'NAME AND ISC.COLUMN_NAME = C.NAME'
      'WHERE I.IS_PRIMARY_KEY = 1'
      'AND O.NAME = :TABLE_NAME'
      'ORDER BY O.NAME, I.NAME, IC.KEY_ORDINAL')
    Left = 1089
    Top = 560
    ParamData = <
      item
        Name = 'TABLE_NAME'
        ParamType = ptInput
      end>
  end
  object QryProcedure: TFDQuery
    Connection = DataBase
    SQL.Strings = (
      
        'SELECT SCHEMA_NAME(SCHEMA_ID) AS [Schema], SO.Name AS [ObjectNam' +
        'e], SO.Type_Desc AS [ObjectType (UDF/SP)],'
      'PM.Parameter_ID AS [ParameterID],'
      
        'CASE WHEN PM.Parameter_ID = 0 THEN '#39'Returns'#39' ELSE PM.Name END AS' +
        ' [ParameterName],'
      'TYPE_NAME(PM.User_Type_ID) AS [ParameterDataType],'
      
        'CASE WHEN TYPE_NAME(PM.User_Type_ID) IN ('#39'float'#39', '#39'uniqueidentif' +
        'ier'#39', '#39'datetime'#39', '#39'bit'#39', '#39'bigint'#39', '#39'int'#39', '#39'image'#39', '#39'money'#39', '#39'xml' +
        #39', '#39'varbinary'#39', '#39'tinyint'#39', '#39'text'#39', '#39'ntext'#39', '#39'smallint'#39', '#39'smallmo' +
        'ney'#39') THEN '#39#39
      
        'WHEN TYPE_NAME(PM.User_Type_ID) IN ('#39'decimal'#39', '#39'numeric'#39') THEN '#39 +
        '('#39' + CAST( Precision AS VARCHAR(4) ) + '#39', '#39' + CAST( Scale AS VAR' +
        'CHAR(4)) + '#39')'#39
      'ELSE CAST( PM.Max_Length AS VARCHAR(4))'
      'END AS [Size],'
      'CASE WHEN PM.Is_Output = 1 THEN '#39'Output'#39
      'ELSE '#39'Input'#39
      'END AS [Direction]'
      'FROM sys.objects AS SO'
      'INNER JOIN sys.parameters AS PM ON SO.OBJECT_ID = PM.OBJECT_ID'
      'WHERE TYPE IN ('#39'P'#39','#39'FN'#39')'
      'AND SO.Name = :ProcedureName'
      'ORDER BY [Schema], SO.Name, PM.parameter_id')
    Left = 1125
    Top = 686
    ParamData = <
      item
        Name = 'PROCEDURENAME'
        ParamType = ptInput
      end>
  end
  object QryDatasetStructure: TFDQuery
    Connection = DataBase
    SQL.Strings = (
      
        'SELECT COLUMN_NAME, UPPER(DATA_TYPE) AS DATA_TYPE, CHARACTER_MAX' +
        'IMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE,'
      
        'CASE WHEN DATA_TYPE IN ('#39'float'#39', '#39'uniqueidentifier'#39', '#39'datetime'#39',' +
        ' '#39'bit'#39', '#39'bigint'#39', '#39'int'#39', '#39'image'#39', '#39'money'#39', '#39'xml'#39', '#39'varbinary'#39', '#39 +
        'tinyint'#39', '#39'text'#39', '#39'ntext'#39', '#39'smallint'#39', '#39'smallmoney'#39') THEN UPPER(' +
        'DATA_TYPE)'
      
        'WHEN DATA_TYPE IN ('#39'decimal'#39', '#39'numeric'#39') THEN UPPER(DATA_TYPE) +' +
        ' '#39'('#39' + CAST(NUMERIC_PRECISION AS VARCHAR(4) ) + '#39', '#39' + CAST(NUME' +
        'RIC_SCALE AS VARCHAR(4)) + '#39')'#39
      
        'ELSE UPPER(DATA_TYPE) + '#39'('#39'+ CAST(CHARACTER_MAXIMUM_LENGTH AS VA' +
        'RCHAR(4)) + '#39')'#39
      'END AS DATA_TYPE_2'
      'FROM INFORMATION_SCHEMA.COLUMNS '
      'WHERE TABLE_NAME = :TABLE_NAME'
      'ORDER BY ORDINAL_POSITION')
    Left = 1075
    Top = 832
    ParamData = <
      item
        Name = 'TABLE_NAME'
        ParamType = ptInput
      end>
  end
  object QryConsulta: TFDQuery
    Connection = DataBase
    Left = 616
    Top = 628
  end
  object QryUtils: TFDQuery
    Connection = DataBase
    Left = 739
    Top = 719
  end
  object dxSkinController1: TdxSkinController
    Left = 1139
    Top = 964
  end
end
