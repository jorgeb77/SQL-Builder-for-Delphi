object FRSelectQueryBuilder: TFRSelectQueryBuilder
  Left = 0
  Top = 0
  CustomHint = BalloonHint1
  BorderIcons = []
  Caption = 'Select Query Builder'
  ClientHeight = 1126
  ClientWidth = 2051
  Color = 16119028
  Constraints.MaxHeight = 1190
  Constraints.MaxWidth = 2075
  Constraints.MinHeight = 1190
  Constraints.MinWidth = 2075
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  StyleName = 'Windows'
  OnCreate = FormCreate
  PixelsPerInch = 168
  TextHeight = 23
  object dxBevel1: TdxBevel
    Left = 1073
    Top = 15
    Width = 955
    Height = 140
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
  end
  object LbTablaPrincipal: TcxLabel
    Left = 362
    Top = 6
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Caption = 'Tabla Principal'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
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
  object Label1: TcxLabel
    Left = 1185
    Top = 27
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Caption = 'Tipo de Join :'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object Label2: TcxLabel
    Left = 1133
    Top = 68
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Caption = 'Tabla Secundaria :'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object Label3: TcxLabel
    Left = 1088
    Top = 110
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Caption = 'Campo Union del Join :'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object TreeView1: TcxTreeView
    Left = 5
    Top = 15
    Width = 350
    Height = 592
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
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
    Indent = 33
    OnChange = TreeView1Change
  end
  object CbTipoJoin: TcxComboBox
    Left = 1327
    Top = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'INNER JOIN'
      'LEFT JOIN'
      'RIGHT JOIN'
      'FULL JOIN'
      'CROSS JOIN')
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    Style.LookAndFeel.ScrollMode = scmClassic
    Style.LookAndFeel.SkinName = 'MoneyTwins'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollMode = scmClassic
    StyleDisabled.LookAndFeel.SkinName = 'MoneyTwins'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollMode = scmClassic
    StyleFocused.LookAndFeel.SkinName = 'MoneyTwins'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollMode = scmClassic
    StyleHot.LookAndFeel.SkinName = 'MoneyTwins'
    TabOrder = 3
    Width = 400
  end
  object CbTablaSecundaria: TcxComboBox
    Left = 1327
    Top = 66
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsEditFixedList
    Properties.OnChange = CbTablaSecundariaPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    Style.LookAndFeel.ScrollMode = scmClassic
    Style.LookAndFeel.SkinName = 'MoneyTwins'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollMode = scmClassic
    StyleDisabled.LookAndFeel.SkinName = 'MoneyTwins'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollMode = scmClassic
    StyleFocused.LookAndFeel.SkinName = 'MoneyTwins'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollMode = scmClassic
    StyleHot.LookAndFeel.SkinName = 'MoneyTwins'
    TabOrder = 4
    Width = 400
  end
  object CbCampoTablaSecundaria: TcxComboBox
    Left = 1327
    Top = 107
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsFixedList
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    Style.LookAndFeel.ScrollMode = scmClassic
    Style.LookAndFeel.SkinName = 'MoneyTwins'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollMode = scmClassic
    StyleDisabled.LookAndFeel.SkinName = 'MoneyTwins'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollMode = scmClassic
    StyleFocused.LookAndFeel.SkinName = 'MoneyTwins'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollMode = scmClassic
    StyleHot.LookAndFeel.SkinName = 'MoneyTwins'
    TabOrder = 5
    Width = 400
  end
  object BtnAgregarJoin: TcxButton
    Left = 1753
    Top = 36
    Width = 249
    Height = 80
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Caption = 'Agregar Join'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
      F40000000473424954080808087C08648800000537494441545885AD96596C54
      5518C77F67E67696DB99B6D38D5208B52DB29A06A8DACA0301637C1225111323
      840731316824BC999810DCC283FA004FFA40220FA08110512921A4096A630820
      14A8B50D5A69295DE836DD66BB7766EEE7C34CB79981765AFFC94CE69CF32DFF
      F9CEFF7CE7289608CDE9A17AC77B682E0F0A487CCD8FDEDB3F33DA75136DA904
      AA771CA072DB7E9F82234099520B62706CBCF7AF6BFF0B01CDE545C111A5D407
      59B89D9BFA615B2A8124CA16EBB864024AC102CB9E115AD1EAAD0BB3140160A2
      AF8D68787C8640629105AB0FB0A9C40740ABDB7F72F7BCB913040C842B81E1FB
      C1DF8FEF44AC1800256E83CABC200EA74B7CF97969BEFD0343CA5790272EA773
      9AA143530C17683C0034E0CC7C0412C74B21C86F9EE2CA17ED0E9D58640280F2
      DC30F5657E569517515B5392E6DBD0D8CE969A12CA97CDACF903316E9F73702D
      4960E1506A5BEA944BB3C8B14B56610A3D1ABA3321BFAC44A84025549755BE34
      589685243595751F785CEE70C4A06F6028E3DAE8D8C49C713C1E27180A2F8E40
      893B32A76C4EB70711616C7C5235B7B467F4E9ECEE559DDDBDD3E3225F3E8611
      4D10387BB0628E714363135B6AD6CB6CD100F40D0CD1DCD2AE1E4EBAB0AB44F9
      56D7D463F796AAC960B8746DF52AA9ADD99096BCA1B14925E34D176F6C6212DD
      ED0216D188567A22D894B0FCA9756C7CFE25FA06FC1F8D4F86D2C4F924E47B3D
      B85DCEC511500A7CA52BA8DDFE1A369BEDCDB8251F2BA5FCD9C5981172D6042C
      4BA8DDBE8B9C1CE756E084EE721CCBF7B87FC926C6642084619800680D8D4D69
      06CD2DEDAA99CC821A0F04B13B5C5522F2037039DFAB7FE8723ABEEB1F185699
      62658A57EC2B9839055B6AD6A71A53B96A85F80AE6B6D5D1B1093ABB7B55DF80
      DF07FC043C10917D85055E4BD3EC14E47BA5AA6265C6E4C978D32234CD289A96
      38805AAADA9B69C7579047EA3C4067772F1DDDFD6745C483F0B219090527861E
      A29EAEC0ED7266F289DFB5FF7D2FCF9BFB6F5969B1B229550DAC8DC7E37873F5
      04818C357B020C33FA2CB03D1E8FF65FBB7C86F2D733DE65B1A8657DDD15183D
      3EB2C2DDF563A08BFC81114A9DB954BBF22B97E5E809352F86407969E15B3D8F
      86EF36375DC03FD803C8745B051011BF3F16D97D79B4EBFA6F133DEF8C4864AF
      65C906C60651A836DDA69DCAB5E59C18DA558BFEEB65B45B2D6D6949EE3FE8A1
      3FA5AD862306009BD6575DBA72E93C3D1DADB3971F8D8E4D70ABA52DE62AF2EE
      BE643DEAB8111CB81A4736C39C074B5DC88AD505E3D1B7C34579AF567F7EB037
      EB0A7874170FDA6F4E8FA3D128C027E188417070B8B335D67FFD8E1EBA6AC1E6
      299BD5EE0201E8088F291111C33036454DF362EEF2E27A2DB57D3634365155B1
      324D50C9569C46E8C2F9B3F80A8B47755D3F147B6E35ED4EDE9F9D1CE08D656B
      1420473BAF8B611844CDA8B2295523C8BB4B7E15FB478639F6C5A700ECB8F22D
      3936CF1E95E9CE14612AF9CC1C7B1641E0498F0F05A88D90287BF29FB34E2F44
      44385CFD820238FDB055EE05FC4A29F58C96E90E4FBDBFA7E64424323FB99407
      AA88244E4966E25AA67D4DBDBF93710CE0E8EC23F718B401751DE13195D87393
      C3D5F50870A47DBA5527194AAB06D8E78B388B04B76FDD20140A665C0FF70D92
      93E73905D48988988649D434A7CA91C65CE0B4CACDF52C343F00A15090C755A1
      62EF4ED61CDAE75470D534CC4DA66902A8B59E4201B817F04FEF8D25D202D42F
      F179391736A783FAEFBFC2BEAC7045D4302FDA94AAC9646789B45822AF98E3C1
      9E05977F2190789CE13FFE44AFDD30E9F0E827516A18A458A10A81982077407D
      091C30C603FE7F3EFB86FF00FCF347FA8E896E790000000049454E44AE426082}
    OptionsImage.Spacing = 7
    TabOrder = 6
    OnMouseEnter = BtnAgregarJoinMouseEnter
    OnMouseLeave = BtnAgregarJoinMouseLeave
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BtnAgregarJoinClick
  end
  object BtnConstruir: TcxButton
    Left = 10
    Top = 1040
    Width = 250
    Height = 77
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Caption = 'Construir SQL'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
      F40000000473424954080808087C0864880000059C494441545885B5976D6C9D
      6519C77FD77D9EF3D2F69CD36EAC3D5B715DD74A9930CC8AA130BA01CB88284A
      A621C4B98933A2A21F9428083AE6B20D92C1A689640904F8A21184850E933AE3
      22C1C528208CC5645018769B63C5757D5D7B4E4FCFCBF33CF7E587B6B33D2FB4
      1BDBFFE3755F2FFFFB7A7BEE4728C0CEC77FC9C6BB37DD20D021228B0ACFE782
      E3277BDE18183C7BFBF1E3DDC947B7FE9454325956D7140A0441E007171A1CC0
      75BD95AEE7ED6F58B234B665FB2E62F1F8DC092000842F34F8393722ED027F6A
      686C8A6DD9BEBB2C89620213C69F34FE94A37660FF92C6F2992849E062424456
      21B2BFA1B1295A2A13979CC02456017F6C685C1A7D78FB2E62B1FF93B8240444
      444BC86E02F62F696C8E6E796437B178F5A523B028514B30E89422B1DA18E96C
      6D5D115B7BEBE701702E058178AC4ADA5A976B369B53CFF70B8F6FCAE5F2B739
      814007807359F3CAC9D19BE8FCAC53CBC8B8FD753040C785123042D8E07FD1F3
      FDAF9D733C0DA15010311362A7ED9EDFD421AC1230201CCEC3FB9DA3841C29B6
      9C0344A0322443D7D4CBA6954DF26124681E2AD6995C778083F057413E3375E8
      2BA4B20A1495F0BCD097E4918679CE13CD751411980E03B26CBA2012145D58E3
      684568662757868CD6CF0BCE908BA09521539269D6D5654369ED9F8DA823D36A
      D4DE52A53FBABD0E018201E1F1CE3E7DB33BCDB76E99CF97AFAD26EF294E40E8
      F8E759DDFBC6885CB3B88287D625D8B0E7A44A41AD15C19F4312674CC19DD7D7
      F0E26BC3BC7C689405B100E9ACE5E6ABA2AC5D1EE7BEDF7E44CF90CBD2BA103B
      D7D7D37D26A7BE0553A651E6DA3F33F6C099518FEB9AAB68AA0B3194F225EBAA
      5C7F451507BB52F40CB900FCA73FCFEBFF4E73634B748E21CE83C0537F19A077
      C465F7C6CBD971D722ADA90C683C62184ECF9CE5B3699F78C5C5D96133BCA4B2
      56F61C1890EF3C7D8A7050F86A5B3543633E0BAB67EEAB44B5C3F058D182F964
      0414B4ADB9526BE38E060C783E580B07BB52ACB93AC6754D95C422861B5BAAB8
      61B22C0046844F27C23427C27C6A7EF0BC6777C6D5BED256C3B2FA8808E8BF4E
      8EF3874323243396675F1DE47B6B1790A87604D027FEDCCF07BD39B9B23EACC9
      8C2F3F5B9700A06FD4952D7B7B0B63F8C64B6E05E2D6893F48417F9E2320209B
      5F383D998C29D1045E7927C52BEFA4885518DDBDF1723EBBA48283EF8DE907A7
      73F2DD674E95B99B4E4C88758FD60C3ED707FAE170E2FBFD4820315DCB28A40A
      2CA590E51452192BDB3A7AE91974E5B268F9EF9860FB12E1819716860723C68E
      1D0BB93D6D41F7BFD78ACD9C109B7B3B983DD1B5A1DD9BCC80EA3715D68B4C7C
      0B66C399118F7D6F8D7CAC4E5D78F0A51F373EBB62818D67BC74EB53C64B3E80
      90AE187BFBD170F6683832DEB5A1B57EF41700CEE0B1D73B81CEA967E08AABAF
      E473572D261A16CA3D0DAD557CDFC7B796C26F8611488482915A1BCB4473EFEE
      B3F9EE9D46F357208CD70CBDB0DA68EE7EE036DF7527B35580C776FD8A6FDCBD
      E945E0AE723754554D8F67502D6A7A1F9B3F62EC5877E5D8A1A7AB87F7DD6C70
      B715D86E46F5B181119797FFD177610F927CDE2D151CE3251FAE19FA7D6F307F
      AA2DE08F3E28B82D25CCEF416475EDBCD0B17BEF58FC569975567E9CADB59A9F
      4C5F9195C8025047D4C204C1599BAA640654D172F5CFE5F3659D6920F6C070DD
      BDC36233272AD287B7D70C3EDF1E20BFB940EB77AAB22399F678F3BDD1128FD2
      89CBFF9D1269F07C5F3D6F96152C663EE210CEBCEF18CDDDAFAA9B55B547558F
      AAEA36909F8BB0369DF5B873EB91E20CF47C740A559E043D022C9CFA4B5255D4
      5A44A464FDA7C3C99FEE8A64DEDD007C41D1BF09722B9056D51D22BCA6CA2DE1
      A079154AD4C818C397EE58472C1A2B1A436B2DD65A6689CFD7DB7D5AEBFBF1BD
      1C8E11E6C743CF0063C3C9FC4FB2799F70C8D0D39763F50F0F7FBCA38B813DF7
      B5903AB0E6DBA9036BD6EFDDB6BCE8FC7FAFE43F27A3E37C220000000049454E
      44AE426082}
    OptionsImage.Spacing = 7
    TabOrder = 9
    OnMouseEnter = BtnAgregarJoinMouseEnter
    OnMouseLeave = BtnAgregarJoinMouseLeave
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BtnConstruirClick
  end
  object BtnAgregarCampos: TcxButton
    Left = 716
    Top = 535
    Width = 350
    Height = 72
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Caption = 'AGREGAR CAMPOS'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
      F40000000473424954080808087C086488000004EB494441545885DD97CB6F54
      7514C73F67E67666FA9ABEED03A894A22062A5B2A06C488861A121AEEC465C29
      09C1A80BF78485C68D6E70030B635C40FC03845424219100A1412A29A59487D0
      222D940E7D3FE6BE7EC7C59D99CE30C308B42B4F726F6ECE3D8FEF39BF73CEEF
      F7132B5A41FBEECFB062150810BC02329E83E7CC62FC248548C211AC489C7038
      96A38782AA41D5E42AA8A2C0D2D418C3177E0255ACF6DD0769DBF5698DC061A0
      4964D992311E0B933751F50A0240C254D46C424216D97AAA8AAA8F9A2C3D050D
      109C5338BA34F580F1EBA7B1AC5825028745E48BA7ED874216AA1E91585CAD92
      68CE3FCFB57192B322E11295DCF81111D4A8E68205095E1FAA31FD56ACE20280
      95FADD5438C480E2B56B298F37E4F0166627488C0D3E53272FFD39F8A4398D38
      24424EFA5683548D823EF3BF044E5300029515782B08A0A88AA0484AD16A28B5
      698B2F1089C6B4A62A9E277CDA5449694384CA7828876FA211D4AE62E76B6579
      3012934F50E36B75017B8F1E27242C86FB91A040AD96F225BA9A26696DA9637B
      47439EC26FD24A4D6B9CA6EA480E3F341D67A4BC95AFDE6B50B28A5055F5D29F
      0F50A0736B7D9EBD9EB3432CBA21AE459DC04ECC32948457B0044F91A67ABD18
      95952CFB0CFD87EC0B93EFFB2F249F6E4396923663E3132FEC706C7C22A7855C
      C72199B40178F838F1FC00A667E6A4AFFF46019175450DA4740482F5775D2703
      E8EAC0D0F303686EACD7ED1D5BF2047EE8B9577448ECDDB32BB3E4BEEFABE338
      FC9572DCB975739E7CCFD9F339F656B5068C29DEFF85E8FF034055F56500646A
      E0E178424E9E395740A478119E3C734E0031C6C7F372B7ED9EB3E79F1F407555
      A56E78756DBE44DF7CD1227CA7E30D00F55C57BDD40C18BE3F0AC0FAD63579F2
      57078672EC650094C6A2B434E68F62982FE69F96C660142793493475047894EA
      FFE657EA7D6008B80B8831660390D31A16AB401A5036CBB33DF7D8ED99C491D1
      903D3CEE2DA24064C947AB226DE1399BF4FEB52A00B2C7AFAA4EC6EA2ABBFF98
      1EE9BD35F564FF9C781F1BD52D0888325852C3F1489C1FE5C0FB94FD7D7D19C0
      D4F42C57FA0B9D704A8B3ABFD23F289EEBAA1F748017ABABECFE5D26EEF4952E
      5E344227641D78841D6E981D4E483FF19AEB3E68FFE6CBD195B7A12EF7BFEDB9
      C74E4F8FF45E49267E4D3B07D8585AAD1B4BAB1582E5B26D7B9BEB38A7CA9BEB
      63990CD454C729348A19BD57D47FE75B9BD5B66D00FFF64CE2C8ADA927FBB39D
      037437BE2E807E7BAF576DDBC6755C098974287A60C519C81A3E43A3217B784E
      BC7D050555493B5FE6B1CF4A7FBD2CA50B5055EF8EBB8B18E54D9120EDA9C8D9
      5C568BAA72A87DA7009CF867406FCE4F8A886CB552D705BBD879607AD179266F
      ECD16314506398B1E753C164CD9A4C8B160ED24AF18F4E4DCFBEDB3773A3395F
      641DC3890581858206FA0686084EF6D2BE58AF50C920B0E3CED2B4046BEE70A8
      BD0B050EDFC88CFA14421D085DEEBD80EDD897145DABAA6120F38C9A48783D8B
      61C8E5A79F465D0A8F5056A260A9EADBC676018EA703776C07D77184A76E4E99
      E4C009018846635856FE4C32808FE017D627841246335B6A4BF71EDA3EFF282A
      70D1B19D6D8EE300C8A68A5A05B8393F99316454FB81AE55BD1285A211BA7EF9
      9E7063ED1AD7764E85443A0AC919D57EA3BAD7995978105E4D00EAFB242E5FA3
      6CFB96B94845D9CF882440EB05A9053C45AF827C071CB467E6276F7F7D8C7F01
      50446850E57F35C60000000049454E44AE426082}
    OptionsImage.Spacing = 7
    TabOrder = 8
    OnMouseEnter = BtnAgregarJoinMouseEnter
    OnMouseLeave = BtnAgregarJoinMouseLeave
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BtnAgregarCamposClick
  end
  object BtnSalir: TcxButton
    Left = 1816
    Top = 1040
    Width = 212
    Height = 77
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Caption = 'Salir'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
      F40000000473424954080808087C0864880000043E494441545885B5965D4C1C
      5514C7FF677628CC205D5A3EEC2EABD100BB6CD905A1126BAA44D398A6F1416A
      B01A53ED8BC457936A624D63C42F1263A23E581F4CC4076C9AA69AC60763627C
      10B0D096BA85A2B6D22D4D6C6B0D080B6560773EEEF181B2D9657798D912FEC9
      4E72F79E73CF6FCE3973EF2514A0AD15950886B7C3EBDD0266819B37AE637C34
      56C81239929D0C2A2AAAD0D4B203D1875AB1CDE743722919324DB3D3B2CC49AF
      B7FCD8860054565523DAD48AE69687E10F0440A010089D003A75496F22227824
      4F9F24798EAD2B3A00CA1C3CF6C46EB4B63D829A9AFB40A020117502788E88A2
      002400989B4BB01002CCDC27CBF24159764C2200E0FBEF4E60E4EC50CEFF59DE
      4FED791AAA5A7A08C001226A5A0D28846021447A5C5454044551059CB55F96E5
      93F92672F089E8A3D58157645956D6B8B2622BB4C5A48BF8F6CA022022D8055F
      0630336C818660ADB77DD74EB6B31F387D0E23B131DBF5803B75752BD3CCCC00
      A1DCBBB910F7F50130336766A01015176F825DB3BA6BE165006436A01B35046B
      716F75251616B4A99F7E3895D7C675065637608668F52FD53F8CD9575F47F9D4
      3482750F221CAAD3CABDDE0D03C8526A6098B52FBE0627E669E1B32F0100B2EC
      8124E5EF45D7257053FFD4C019D68EF602820912417DBEC3D1C73540F6179027
      F860467000EA2B07B8F8C95D04009CD211DCA4A0BDDA9FE5F3B776DB1D0033B3
      1079007825F859D63EEF05842000286A89B0A42AA40F8D2CCFFF7E7977D792F4
      4057FBDE95F50020D6FFEF8DB82B00BBFAB3B0608CFDC1DAD1AFD2C101C0888D
      93111BCF34EDC91C10118410C74DCB7AD1158069DAD49F018305661209C0A144
      AB251191619AEE4A60D780E4F1408D6EA76D875FE35B1F7ECAB02C0280926898
      CB9FD99BCEC8C2B9D861ED97D3714EA6D2BE8279D4740F60F3767742DCF3F84E
      F2BD7D886FBDFF09B36150F2E29FA43735F29697F71311416E0CFDFCEDA58B23
      833F0E65B812E28B2E9A70790B764E6FE9A36DE47BE70DFEA7FB63665DA7996F
      4E92D075AEEC7A893C9BCBF09BD071E2E6B51C3FC78DC8ED0604006A5B0BF9DE
      7B13A49430006883671C7D5C00147600A92D51F27FF016D41DCDECEF39020058
      BE41E5B7772C81E5DCDD394B2B9130949E23989A9EC1EC95492453A9D2B9F9F9
      BB0330EFF20806804B7FC531121B83AA2A5533B389BC366B96C06D033A697171
      09BA6EE49D5B330379B7DFB41889B9DB9C98CB9F5A0048E9BA235C3600A79F04
      AC7D0031039727E2F3E72F8CAF79E72B0880C160E67701BC404421A72F606AFA
      3F288A7AD5451CCD15C0E885F3686E6EED56D4D26E2144C4B2AC7DCCFC2C8122
      A0DC7E310C03CC5A9D0B00DBF324277D1E8F07B5F50D083746505B1742714909
      88A89E401D00EF03511B008959F45DBD3271F0785FAF9BF8B65AFBCE2E49A809
      DC8F50388270631465659B017080883A04F3F5C9F8C4A90D05C8322482BF2680
      FA50183E7F00CC8C6B93710CFFDABF2E80FF014DD0D2F7C3D00A5A0000000049
      454E44AE426082}
    OptionsImage.Spacing = 7
    TabOrder = 10
    OnMouseEnter = BtnAgregarJoinMouseEnter
    OnMouseLeave = BtnAgregarJoinMouseLeave
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BtnSalirClick
  end
  object MmJoin: TcxRichEdit
    Left = 1073
    Top = 162
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    ParentFont = False
    Properties.OnChange = MmJoinPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    Style.LookAndFeel.ScrollMode = scmClassic
    Style.LookAndFeel.SkinName = 'Blue'
    Style.IsFontAssigned = True
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
    TabOrder = 7
    OnKeyUp = MmJoinKeyUp
    Height = 445
    Width = 955
  end
  object cxPageControl1: TcxPageControl
    Left = 10
    Top = 612
    Width = 2023
    Height = 419
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 15
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.ScrollMode = scmClassic
    LookAndFeel.SkinName = 'Blue'
    ClientRectBottom = 414
    ClientRectLeft = 2
    ClientRectRight = 2018
    ClientRectTop = 50
    object cxTabSheet1: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      CustomHint = BalloonHint1
      Caption = 'Campos Agregados'
      ImageIndex = 0
      object ListBox1: TcxListBox
        Left = 0
        Top = 0
        Width = 2016
        Height = 364
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        CustomHint = BalloonHint1
        Align = alClient
        ItemHeight = 30
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.LookAndFeel.ScrollMode = scmClassic
        Style.LookAndFeel.SkinName = 'Blue'
        Style.IsFontAssigned = True
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
      end
    end
    object cxTabSheet2: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      CustomHint = BalloonHint1
      Caption = 'SQL'
      ImageIndex = 1
      object Memo1: TAdvMemo
        Left = 0
        Top = 0
        Width = 1625
        Height = 364
        Cursor = crIBeam
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        CustomHint = BalloonHint1
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Align = alLeft
        AutoCompletion.Font.Charset = DEFAULT_CHARSET
        AutoCompletion.Font.Color = clWindowText
        AutoCompletion.Font.Height = -21
        AutoCompletion.Font.Name = 'Segoe UI'
        AutoCompletion.Font.Style = []
        AutoCompletion.StartToken = '(.'
        AutoCorrect.Active = True
        AutoHintParameterPosition = hpBelowCode
        BkColor = clWindow
        BookmarkGlyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
          2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
          2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
          B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
          B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
          BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
          BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
          BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
          25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
        BorderStyle = bsSingle
        CharCase = ecUpperCase
        ClipboardFormats = [cfText]
        CodeFolding.Enabled = False
        CodeFolding.LineColor = clGray
        Ctl3D = False
        DelErase = True
        EnhancedHomeKey = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -21
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.GutterWidth = 79
        Gutter.GutterMargin = 79
        Gutter.GutterColorTo = clBtnFace
        Gutter.LineNumberTextColor = clWindowText
        Gutter.ShowLineNumbers = False
        Gutter.Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -28
        Font.Name = 'Consolas'
        Font.Style = []
        HiddenCaret = False
        Lines.Strings = (
          '')
        MarkerList.UseDefaultMarkerImageIndex = False
        MarkerList.DefaultMarkerImageIndex = -1
        MarkerList.ImageTransparentColor = 33554432
        OleDropTarget = []
        PrintOptions.MarginLeft = 0
        PrintOptions.MarginRight = 0
        PrintOptions.MarginTop = 0
        PrintOptions.MarginBottom = 0
        PrintOptions.PageNr = False
        PrintOptions.PrintLineNumbers = False
        RightMarginColor = 14869218
        ScrollHint = False
        SelColor = clHighlightText
        SelBkColor = clHighlight
        ShowRightMargin = False
        SmartTabs = False
        SyntaxStyles = AdvSQLMemoStyler1
        TabOrder = 0
        TabStop = True
        TrimTrailingSpaces = False
        UILanguage.ScrollHint = 'Row'
        UILanguage.Undo = 'Undo'
        UILanguage.Redo = 'Redo'
        UILanguage.Copy = 'Copy'
        UILanguage.Cut = 'Cut'
        UILanguage.Paste = 'Paste'
        UILanguage.Delete = 'Delete'
        UILanguage.SelectAll = 'Select All'
        UrlStyle.TextColor = clBlue
        UrlStyle.BkColor = clWhite
        UrlStyle.Style = [fsUnderline]
        UseStyler = True
        Version = '3.9.1.2'
        WordWrap = wwNone
      end
      object BtnFormatearConAlias: TcxButton
        Left = 1639
        Top = 210
        Width = 365
        Height = 99
        Hint = 'Agregar el alias de la tabla a los campos.'
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        CustomHint = BalloonHint1
        Caption = 'Formatear con Alias'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Silver'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000473424954080808087C08648800000379494441545885ED955F681C
          5514C6BF73677666BAC9EE26DD6CD334694913948698964A244F2DBA12105254
          3048843E492BE2AB4F7D16F5A54FFA221629A81850B0258A16296D34FE09C6B6
          2A1253A34D2A529BEC26BB9BDD49F6CFCC7C3E64135C776A128BD187FDC1C070
          CF9DFB7D73EE39F702356AD4F88F91A67B8FE0E0E0CB50BA01816C8B2841D0F3
          70FDC269E8CDDDFD3043B14701BC2D90FA6D32900370BCE5D0C0882A8F0D6D97
          380094B58600409593AEF94D34746124A831A0097DC20C9A8A91A04625F08B6F
          8406007AD95145440978221E45FFC130AC809242C9E3D59965BE747E0E00A4AB
          D5E2C978141DCD26944052B6CB7313699E9FC800801CEDAAE7B3FD4D72EA9D5B
          BC992CFA1696945575BF60FCBE108EDD1F910FAE6638FD7B816D3B0D98010100
          698F197CE1C91624B20ECE5C4AC2CE7B7CA03388A71F8C4A4013BE379EC60E43
          49C8D2A06B1B17B5AF81BD510345873C3BBA00C7AD4CCF605F033C02A7866F21
          65BB0080CB9339684A38D8D788912B19029B6F27E537387D3B0F33A0E4B9FE18
          7685F58AFDEDD9B703D76697D7C5D7189DCC21682AB967B7B9596D0077C8C017
          5336DEDF9DE663BD113CD41DC2D73FDB3C736901C9AC8348509385AC5B55748B
          390700D058E75BCF77C4370304E4ECE8823CF3FAAF383791C6E1FD41BC38D402
          5D0185126919D519B68CD5A50AA5AD3584AF8135E6971C79F3B34579E372127B
          1A0D69DD69E0C67C01DDAD56D52677B759208999F9E2DD1BE8D967B12D1AA0AE
          815640D8B1CB84EB914B2B2E3EBA96414B63404EC4A3A8B714021AD0DB11C4E3
          BD0DF8E6C632135967DDDBDE68009DCD263A9B4DB4C70C02D5E7856F0D3C7228
          22470ED4A1E8904A09740579F7AB1453B683B1291BEDB1349FE86BC0C0E1085C
          8F307425BFCC15F8EA8544C53ACF1F6B5E3743124FBD320BBBE06D6CE0B58B09
          8E4FDB680A69283AC4E46F79CE248AB2D65D6F8D2DE2E36F333CB0C7426F4710
          0FF78471F18725A46C5700607CDAE6ED74A962974860A5E85569E928E7E5CFB3
          B32B9E8C4DE5FCBCAD93CCBAF2F9751B5FFE64B3DED27832DE24B9158F9FFE98
          93CCB22BDFDD5CF9EB279586D60CACBED0DBC2D9518147C8E90FE778B4AB1EA5
          EAEEFC1BE8116B5B400C5338F04F6FC47C89F2C9F75960937F51BE8E870140A5
          66AF809E3B02224C5261B533FEC5870A4098F446166726561D6B661D446DED04
          BB6B4838F9ECF66AD6A8F1BFE40F782E5FA1FE572A960000000049454E44AE42
          6082}
        OptionsImage.Spacing = 7
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnMouseEnter = BtnAgregarJoinMouseEnter
        OnMouseLeave = BtnAgregarJoinMouseLeave
        OnClick = BtnFormatearConAliasClick
      end
      object cxLabel1: TcxLabel
        Left = 1638
        Top = 11
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        CustomHint = BalloonHint1
        AutoSize = False
        Caption = 
          'Nota : Para agregar el alias a los '#13#10'campos simplemente escriba ' +
          'el '#13#10'alias delante del nombre de la '#13#10'tabla y luego haga clic en' +
          ' el boton "Formatear con Alias".'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -23
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.WordWrap = True
        Transparent = True
        Height = 153
        Width = 362
      end
    end
  end
  object CheckListBox1: TcxCheckListBox
    Left = 362
    Top = 47
    Width = 350
    Height = 560
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Columns = 1
    EditValueFormat = cvfCaptions
    Items = <>
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    Style.LookAndFeel.ScrollMode = scmClassic
    Style.LookAndFeel.SkinName = 'VS2010'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollMode = scmClassic
    StyleDisabled.LookAndFeel.SkinName = 'VS2010'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollMode = scmClassic
    StyleFocused.LookAndFeel.SkinName = 'VS2010'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollMode = scmClassic
    StyleHot.LookAndFeel.SkinName = 'VS2010'
    TabOrder = 1
  end
  object CheckListBox2: TcxCheckListBox
    Left = 716
    Top = 15
    Width = 350
    Height = 516
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CustomHint = BalloonHint1
    Columns = 1
    EditValueFormat = cvfCaptions
    Items = <>
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    Style.LookAndFeel.ScrollMode = scmClassic
    Style.LookAndFeel.SkinName = 'VS2010'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollMode = scmClassic
    StyleDisabled.LookAndFeel.SkinName = 'VS2010'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollMode = scmClassic
    StyleFocused.LookAndFeel.SkinName = 'VS2010'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollMode = scmClassic
    StyleHot.LookAndFeel.SkinName = 'VS2010'
    TabOrder = 2
  end
  object DataBase: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 154
    Top = 72
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    ODBCDriver = 'ODBC Driver 17 for SQL Server'
    Left = 154
    Top = 229
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 744
    Top = 152
  end
  object AdvSQLMemoStyler1: TAdvSQLMemoStyler
    AutoCompletion.Strings = (
      'SELECT'
      'WHERE')
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    LineComment = '--'
    MultiCommentLeft = '/*'
    MultiCommentRight = '*/'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'Proc'
          'Procedure'
          'Begin'
          'End'
          'While'
          'BEGIN'
          'END'
          'FOR'
          'TO'
          'DO'
          'NOT'
          'IF'
          'ELSE'
          'WHILE'
          'REPEAT'
          'UNTIL'
          'BREAK'
          'CONTINUE'
          'EXEC'
          'Insert'
          'Values'
          'Update'
          'From'
          'Delete'
          'Declare'
          'Set'
          'Open'
          'Fetch'
          'Close'
          'Deallocate'
          'Return'
          'Rollback'
          'Transaction'
          'Trans'
          'and'
          'or'
          'Order'
          'By'
          'Group'
          'Having'
          'Where'
          'Left'
          'Right'
          'Join'
          'Inner'
          'Outer'
          'On'
          'Create'
          'Delete'
          'Select'
          'Like'
          'Into'
          'As')
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -28
        Font.Name = 'Consolas'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'SQL Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Single Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.(){}[]=-+*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql'
    DefaultExtension = '.sql'
    StylerName = 'SQL'
    Extensions = 'sql'
    Left = 708
    Top = 754
  end
  object BalloonHint1: TBalloonHint
    Left = 482
    Top = 186
  end
end
