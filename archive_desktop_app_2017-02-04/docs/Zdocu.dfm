inherited Zdocf: TZdocf
  Width = 784
  Height = 407
  inherited JFTitle: TJPanel
    Width = 784
    Height = 0
    Caption = #1605#1593#1575#1604#1580#1577' '#1589#1608#1585#1577
    ExplicitWidth = 451
    ExplicitHeight = 0
    inherited JTitleImg: TImage
      Left = 752
      Height = 0
      ExplicitLeft = 601
      ExplicitHeight = 1
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 784
    Height = 407
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 451
    ExplicitHeight = 304
    object ImageScrollBox: TImageScrollBox
      Left = 0
      Top = 25
      Width = 732
      Height = 382
      HorzScrollBar.Tracking = True
      HorzScrollBar.Visible = False
      VertScrollBar.Tracking = True
      VertScrollBar.Visible = False
      ZoomMode = zmFitWidth
      ZoomPercent = 100.000000000000000000
      OnZoomChange = ImageScrollBoxZoomChange
      OnBeforeSave = ImageScrollBoxBeforeSave
      OnRedraw = ImageScrollBoxRedraw
      OnQuickSelect = ImageScrollBoxQuickSelect
      OnRubberbandChange = ImageScrollBoxRubberbandChange
      MouseHandlerOwnership = True
      Align = alClient
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 399
      ExplicitHeight = 279
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 784
      Height = 25
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 451
      object BandLabel: TLabel
        Left = 520
        Top = 5
        Width = 3
        Height = 13
      end
      object XLbl: TLabel
        Left = 460
        Top = 5
        Width = 3
        Height = 13
        Alignment = taRightJustify
      end
      object YLbl: TLabel
        Left = 477
        Top = 5
        Width = 3
        Height = 13
      end
      object ZoomLbl: TLabel
        Left = 200
        Top = 5
        Width = 44
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '&Zoom'
        ParentShowHint = False
        ShowHint = True
      end
      object PageLbl: TLabel
        Left = 311
        Top = 6
        Width = 44
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '&Page'
        ParentShowHint = False
        ShowHint = True
      end
      object ZoomEdit: TEdit
        Left = 248
        Top = 0
        Width = 41
        Height = 21
        MaxLength = 3
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '100'
        OnChange = ZoomEditChange
      end
      object ZoomUpDown: TUpDown
        Left = 289
        Top = 0
        Width = 16
        Height = 24
        Min = 5
        Max = 999
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 1
      end
      object PageEdit: TEdit
        Left = 359
        Top = 2
        Width = 49
        Height = 21
        MaxLength = 5
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '1'
        OnChange = PageEditChange
      end
      object PageUpDown: TUpDown
        Left = 408
        Top = 2
        Width = 16
        Height = 21
        Associate = PageEdit
        Min = 1
        Max = 1
        ParentShowHint = False
        Position = 1
        ShowHint = True
        TabOrder = 3
        Wrap = True
      end
      object ProgressBar: TProgressBar
        Left = 696
        Top = 1
        Width = 87
        Height = 23
        Align = alRight
        Step = 100
        TabOrder = 4
        Visible = False
        ExplicitLeft = 363
      end
    end
    object pnlToolBar: TPanel
      Left = 732
      Top = 25
      Width = 52
      Height = 382
      Align = alRight
      TabOrder = 2
      ExplicitLeft = 399
      ExplicitHeight = 279
      object sbLine: TSpeedButton
        Left = 0
        Top = 49
        Width = 25
        Height = 25
        Hint = #1585#1587#1605' '#1582#1591' '#1605#1587#1578#1602#1610#1605
        GroupIndex = 1
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333333333333333300300003333333333333333003300003333
          3333333333300333000033333333333333003333000033333333333330033333
          0000333333333333003333330000333333333330033333330000333333333300
          3333333300003333333330033333333300003333333300333333333300003333
          3330033333333333000033333300333333333333000033333003333333333333
          0000333300333333333333330000333003333333333333330000330033333333
          3333333300003003333333333333333300003033333333333333333300003333
          33333333333333330000}
      end
      object sbRectangle: TSpeedButton
        Tag = 1
        Left = 31
        Top = 42
        Width = 25
        Height = 25
        Hint = #1585#1587#1605' '#1605#1587#1578#1591#1610#1604
        GroupIndex = 1
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003000000000000000000300003033333333333333330300003033
          3333333333333303000030333333333333333303000030333333333333333303
          0000303333333333333333030000303333333333333333030000303333333333
          3333330300003033333333333333330300003033333333333333330300003033
          3333333333333303000030333333333333333303000030333333333333333303
          0000303333333333333333030000303333333333333333030000303333333333
          3333330300003033333333333333330300003000000000000000000300003333
          33333333333333330000}
      end
      object sbEllipse: TSpeedButton
        Tag = 2
        Left = 0
        Top = 73
        Width = 25
        Height = 25
        Hint = #1585#1587#1605' '#1602#1591#1593' '#1606#1575#1602#1589
        GroupIndex = 1
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          3333330000003333003333330033330000003330333333333303330000003303
          3333333333303300000030333333333333330300000030333333333333330300
          0000033333333333333330000000033333333333333330000000033333333333
          3333300000000333333333333333300000000333333333333333300000000333
          3333333333333000000030333333333333330300000030333333333333330300
          0000330333333333333033000000333033333333330333000000333300333333
          003333000000333333000000333333000000}
      end
      object sbRoundRect: TSpeedButton
        Tag = 3
        Left = 25
        Top = 73
        Width = 25
        Height = 25
        Hint = #1585#1587#1605' '#1605#1587#1578#1591#1610#1604' '#1605#1587#1578#1583#1610#1585' '#1575#1604#1586#1608#1575#1610#1575
        GroupIndex = 1
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
          0033330000003300333333333300330000003033333333333333030000003033
          3333333333330300000003333333333333333000000003333333333333333000
          0000033333333333333330000000033333333333333330000000033333333333
          3333300000000333333333333333300000000333333333333333300000000333
          3333333333333000000003333333333333333000000003333333333333333000
          0000303333333333333303000000303333333333333303000000330033333333
          330033000000333300000000003333000000}
      end
      object sbRectSelect: TSpeedButton
        Tag = 4
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = #1578#1581#1583#1610#1583
        GroupIndex = 1
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003003030303030303030300003033333333333333333300003333
          3333333333333303000030333333333333333333000033333333333333333303
          0000303333333333333333330000333333333333333333030000303333333333
          3333333300003333333333333333330300003033333333333333333300003333
          3333333333333303000030333333333333333333000033333333333333333303
          0000303333333333333333330000333333333333333333030000303333333333
          3333333300003333333333333333330300003030303030303030300300003333
          33333333333333330000}
        OnClick = sbLineClick
      end
      object sbFreeForm: TSpeedButton
        Tag = 5
        Left = 25
        Top = 24
        Width = 25
        Height = 25
        Hint = #1585#1587#1605' '#1582#1591' '#1605#1587#1578#1602#1610#1605
        GroupIndex = 1
        Down = True
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F003000010170000101700000000000000000000B3C4D37D90A6
          AEAFB8DED4D5F6EEEDFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005B86A7023B710647792F5A828E96
          A6EBE0DEFCFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000CFDDE600558B006CA005609304467878869BECE0DEFE
          FEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000DCE6ED06679A0182B60B8BBB1372A203477B9096A5F2E8E6FDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000EEF2F6508FB1
          0187BB0AAFE00DA3D2016DA1255E88BCA8AAE7DFDEFDFDFDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFD3DFE8127BAB05A5D900C0
          F4008AC04B5B74A26C6DBEA2A2EFEAEAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFE0E9EF2C91BC30A2CE4386A4C39492C6
          9291A87C7CCEBEBEF1EDEDFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFF5F8FA989EABDAB6B5FEE2E1D5A3A3B884859A6D6D
          B8A4A4ECE6E6FCFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFF2E6E5BE9090EBC9CAE7C4C7A77068923813803822A5898BE4DC
          DDFBFAF9FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF1E9E9C8A3A4BE938DB77D63AA50209830017E2F149F8081E4DCDDFCFBFBFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFB93
          5E50D0A288E4C3AEC8855AB4643682351BA28688E9E3E4FDFCFCFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE5E5905544D8AC93
          EACCB3D6A17ABE7246853C25AA8F92EDE7E8FEFEFEFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7C9CA96573FDEB395F3D6B8E2B3
          88BC7145864433B7A2A5F2EEEEFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCAB7B69A5C43E1B694F8E0C0DEAA7EAE5D3081
          473DCDBFC1F8F7F70000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE2D7D7975C46D39D76DFAD85C77F4F9645219B736DEBE6E7
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFD6C8CA925643C07D54D09164BC6D3E823921D6CBCE0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE3DA
          DC9A6B609D4A219D4213874D3FEEE9EB0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE8E8C2AAA9A3
          7E79E5DCDCFFFFFF0000}
      end
      object sbpaint: TSpeedButton
        Tag = 6
        Left = 0
        Top = 24
        Width = 25
        Height = 25
        Hint = #1585#1587#1605' '#1582#1591
        GroupIndex = 1
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C007C007C007C007C007C007C007C007C007C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C007C007C007C007C1F7C00001F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00000000
          007C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C1F7C1F7C0000
          0040007C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
          0040007C007C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
          0040007C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
          FF7F007C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00000000
          000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000FF7FFF7F
          00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00000000F75EFF7F
          00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3D00000000000000000000
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3D0000000000000000EF3D1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3D0000000000000000EF3D1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7CEF3D000000000000EF3D1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7CEF3D000000000000EF3D1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C000000000000EF3D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
      end
      object SpeedButton1: TSpeedButton
        Tag = 7
        Left = 31
        Top = 5
        Width = 25
        Height = 25
        Hint = #1605#1605#1581#1575#1577
        GroupIndex = 1
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F003000010170000101700000000000000000000F8F5F5E7DEDE
          E4DBDBE4DBDBE4DBDBE4DBDBE4DBDBE4DBDBE4DBDBE8E2E1E7E0DFE2D8D8E0D6
          D6DFD5D5DDD1D1DBCECFDED3D4F0ECEC0000FDFBFAFAF6F4F9F7F6F9F7F7F9F7
          F7F9F7F7F9F7F7F9F7F7F9F7F7D6C1BDB6928F9D6E6E986667A07171B38C8AC9
          ACA6DCC7C0E1D7D60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC7ABAAA77A78C3A39FDCC6C0F2E5DBFCF3E9FFFFF2FFFAECE3D9D8
          0000EDE3E2D4BBB6B48E8BE3D5D5FFFFFFFFFEFCFFFEFCFFFEFCFFFEFCFDFBF9
          FDF6EDFFFFF7FFFFF7FFFFF6FFFFF2FFF8EBEEDED3E1D6D50000AF88889A6768
          AB807FE3D4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF6FFF8ECF0E3
          D9DDC7BEC2A09BA77B799C6B6BDBCECE0000EBDEDAF2E8E4FFFDF7FFFFFBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFEEB085829A6767976363A67976BC
          9792D5BBB2E2D7D70000FFFFFFFFFFFFFFFFFBFBF3EAF0E7E4FBFAFBF5F3F4F6
          F4F6ECE9EAD2CBCBBCACAD977171D8C0B6EEDED1FDF3E4FFFFEEFFF9E8E4DAD9
          0000F2E8E4DBC6C1BF9C99A27371A57777CFBDBCB29287A88274B7957DBC9875
          C19665A0693AC3B1A8FFFCECFFFFEEFFFAE9F3E4D6E2D7D60000AF88889A6767
          A77B79C2A29FC4A8A2B99074EDD1A7F9DEB4FFE6BCFFEFC7FFE3B1E29F479667
          49C1ADAACCADA5B48C87A07170DBCECE0000E6D7D2EFE1D9FFF9EEFFFFF9E6D9
          CFCCA584FFF3CFFFEBC9FFE8C2FFE7BFFDDFB1EAAC58C07F34814F4B996969A6
          7D79CCADA3E2D7D60000FFFFF8FFFFF5FFFFF4FFFDF1E2D2CBB5886BFFECC4FF
          E9C5FFE6BFFFE6BBFEE0B4E9B267DC912F97603EB2A69ED2C9B8D7CCBCE1D7D6
          0000F9F0E7E4D1C7CAADA6B28A87936164A9775AFFE8BCFFE8C3FFE5BBFFE4B8
          FFE6BBF1C88FDD912DCA802D957161C2BAABBFB5A6DED4D30000B38D8D996666
          9E6E6DB68F8CCCAFAAB58D77F6DAB3FFEECEFFEDCFFFF1D9FFF9EAF9E7CFDF9C
          47DE8E28AD6930A08A82AC9990E7DFDE0000DEC8C4E7D4CAFAEEE2FFF9EBFFFF
          F7BC9C8EE7D1BDFFFFFCFFFDFAFFFBF8FFF8F1FFF5ECF8DBBBDB8F2ED3802182
          4C3AB49EA1FAF9F90000FFFFF4FFFCEEFFF9EBFFFBECFFFFF8D5BEB2BF9679FF
          FBF2FFFAF5FFF5EBFFF2E5FFF0E2FFEFDEE6AE6BD88018AC6426B29C9DF2EEEF
          0000FFFFF4FFF8E9FAEEDEE5D3C5CBB3A7BDA29B90645ADCB897FFFFF9FFF5EC
          FFF2E4FFEEDEFFEEDCFDE5CBDD933BD3780F975E37D8CDD20000CFBBB4BAA098
          B09390BBA2A0D1C2C1E9E2E2E9E2E4A97E66F3DDC2FFF8EEFFF1E2FFEDDCFFEA
          D4FFECD8F0C491D57A14C36E1BDCCECB0000E5DEDEEAE4E4FAF9FAFFFFFFFFFF
          FFFFFFFFFFFFFFCFBEBBD5B191FFF8ECFFF4E8FFF1E2FFEEDDFFEDDAFEE9D4E4
          AB6ADD974CF6EEE80000}
      end
      object SpeedButton2: TSpeedButton
        Tag = 8
        Left = 0
        Top = 97
        Width = 25
        Height = 25
        Hint = #1573#1590#1575#1601#1577' '#1606#1589
        GroupIndex = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00D2D2
          D200929292009292920092929200929292009292920092929200939393009292
          920093939300939393009393930092929200CACACA00FF00FF00C5C5C500B6B6
          B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6B6B600C5C5C5009C9C9C00F3F3
          F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F3009D9D9D0092929200FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009292920092929200FFFF
          FF008A8A8A002C2C2C00FFFFFF00FFFFFF009B9B9B00101010007A7A7A003C3C
          3C00FFFFFF00FFFFFF000F0F0F00EEEEEE00FFFFFF009292920092929200FFFF
          FF00DDDDDD000F0F0F00FFFFFF00FFFFFF005B5B5B005A5A5A007A7A7A003C3C
          3C00FFFFFF00FFFFFF002C2C2C008A8A8A00FFFFFF009393930092929200FFFF
          FF00FFFFFF002C2C2C00101010000F0F0F00101010009A9A9A007B7B7B003C3C
          3C00FFFFFF00FFFFFF003C3C3C007B7B7B00FFFFFF009393930093939300FFFF
          FF00FFFFFF0089898900FFFFFF009B9B9B0010101000FFFFFF007A7A7A003B3B
          3B00FFFFFF00FFFFFF0010101000DDDDDD00FFFFFF009393930093939300FFFF
          FF00FFFFFF00DDDDDD00FFFFFF005A5A5A005A5A5A00FFFFFF007A7A7A000F0F
          0F00101010000F0F0F00BBBBBB00FFFFFF00FFFFFF009393930092929200FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00101010009A9A9A00FFFFFF007A7A7A003B3B
          3B00FFFFFF00FFFFFF006A6A6A00FFFFFF00FFFFFF009292920092929200FFFF
          FF00FFFFFF00FFFFFF00BBBBBB0010101000FFFFFF00FFFFFF007A7A7A003C3C
          3C00FFFFFF00FFFFFF0010101000FFFFFF00FFFFFF009292920092929200FFFF
          FF00FFFFFF00FFFFFF005B5B5B005A5A5A00FFFFFF00FFFFFF007A7A7A003C3C
          3C00FFFFFF00FFFFFF000F0F0F00FFFFFF00FFFFFF009292920093939300FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0092929200A2A2A200EDED
          ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDED00A2A2A200CACACA00B5B5
          B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6B6B600CACACA00FF00FF00D1D1
          D100929292009393930092929200929292009292920092929200939393009292
          920092929200929292009393930093939300CACACA00FF00FF00}
      end
      object pnlColors: TPanel
        Left = 2
        Top = 193
        Width = 45
        Height = 174
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel1: TBevel
          Left = 3
          Top = 28
          Width = 39
          Height = 46
          Shape = bsTopLine
        end
        object pnlFgBgBorder: TPanel
          Left = 3
          Top = 6
          Width = 39
          Height = 20
          BevelOuter = bvNone
          Color = clBlack
          TabOrder = 0
          object pnlFgBgInner: TPanel
            Left = 3
            Top = 3
            Width = 33
            Height = 14
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
          end
        end
        object cgDrawingColors: TColorGrid
          Left = 3
          Top = 32
          Width = 40
          Height = 136
          Hint = #1578#1594#1610#1610#1585' '#1575#1604#1571#1604#1608#1575#1606
          ClickEnablesColor = True
          GridOrdering = go2x8
          ForegroundEnabled = False
          BackgroundEnabled = False
          TabOrder = 1
          OnChange = cgDrawingColorsChange
        end
      end
      object pnlFillStyle: TPanel
        Tag = 1
        Left = 4
        Top = 137
        Width = 40
        Height = 53
        BevelOuter = bvLowered
        TabOrder = 1
        object RB1: TRadioButton
          Left = 3
          Top = 3
          Width = 34
          Height = 17
          Caption = 'F'
          TabOrder = 0
          OnClick = RB1Click
        end
        object RB2: TRadioButton
          Left = 4
          Top = 19
          Width = 33
          Height = 17
          Caption = 'NF'
          TabOrder = 1
        end
        object RB3: TRadioButton
          Left = 4
          Top = 33
          Width = 33
          Height = 17
          Caption = 'NB'
          TabOrder = 2
        end
      end
    end
  end
  inherited JRActions: TAmjActionList
    AmjActionBar.Enabled = False
    ParentDraw = ImageScrollBox
    Left = 322
    Top = 177
    object openFile: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = file_new
      BtnShowCaption = True
      BtnWidth = 75
      Caption = #1605#1604#1601
      Hint = #1605#1604#1601
      OnHandle = openFileHandle
    end
    object Blur_Menu: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = file_new
      BtnShowCaption = True
      BtnWidth = 100
      Caption = #1601#1604#1575#1578#1585' '#1575#1604#1589#1608#1585#1577
      Hint = 'Blur'
      OnHandle = Blur_MenuHandle
    end
    object image_menu: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = file_new
      BtnShowCaption = True
      BtnWidth = 100
      Caption = #1575#1604#1589#1608#1585#1577
      Hint = #1575#1604#1589#1608#1585#1577
      OnHandle = image_menuHandle
    end
    object annotation: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = file_new
      BtnShowCaption = True
      BtnWidth = 100
      Caption = 'annotation'
      Hint = 'annotation'
      OnHandle = annotationHandle
    end
    object undo: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = act_run
      BtnShowCaption = True
      BtnWidth = 75
      Caption = #1578#1585#1575#1580#1593
      Hint = #1578#1585#1575#1580#1593
      ShortCut = 16474
      OnHandle = undoHandle
    end
    object AppendtoTIFFMenu: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = act_run
      BtnShowCaption = True
      BtnWidth = 30
      Caption = 'A&ppend to TIFF file ...'
      Hint = 'A&ppend to TIFF file ...'
      Visible = False
      OnHandle = AppendtoTIFFMenuHandle
    end
    object AppendtoDCXMenu: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = act_run
      BtnShowCaption = True
      BtnWidth = 30
      Caption = 'App&end to DCX file ...'
      Hint = 'App&end to DCX file ...'
      Visible = False
      OnHandle = AppendtoDCXMenuHandle
    end
    object OpenThumbnailMenu: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = REC_ADD
      BtnShowCaption = True
      BtnWidth = 30
      Caption = #1601#1578#1581' '#1605#1604#1601
      Hint = #1601#1578#1581' '#1605#1604#1601
      Visible = False
      OnHandle = Open
    end
  end
  inherited DQ: TDataSource
    Left = 104
    Top = 205
  end
  inherited JQ: TAmjSet
    CommandText = 'Select DOC_FILE_ANNOTATION.*'#13#10'from jedms.DOC_FILE_ANNOTATION'#13#10
    BeforeOpen = JQBeforeOpen
    AfterInsert = JQAfterInsert
    SQL.Strings = (
      'Select DOC_FILE_ANNOTATION.*'
      'from jedms.DOC_FILE_ANNOTATION')
    AmjTblName = 'DOC_FILE_ANNOTATION'
    AmjUser = 'jedms'
    Left = 216
    Top = 125
  end
  object OpenDialog1: TOpenDialog
    Filter = '|.txt'
    Left = 248
    Top = 344
  end
  object fileMenu: TPopupMenu
    Left = 456
    Top = 160
    object open1: TMenuItem
      Caption = #1601#1578#1581
      OnClick = open1Click
    end
    object save1: TMenuItem
      Caption = #1581#1601#1592
      OnClick = save1Click
    end
    object saveas1: TMenuItem
      Caption = #1581#1601#1592' '#1576#1575#1587#1605
      OnClick = saveas1Click
    end
  end
  object blurMenu: TPopupMenu
    Left = 504
    Top = 160
    object BlurBartlett: TMenuItem
      Caption = #1590#1576#1575#1576#1610#1577' '#1576#1575#1585#1578#1604#1610#1578
      OnClick = BlurBartlettClick
    end
    object BlurGaussian: TMenuItem
      Caption = #1590#1576#1575#1576#1610#1577' '#1594#1608#1589
      OnClick = BlurGaussianClick
    end
    object BlurSoftly: TMenuItem
      Caption = #1590#1576#1575#1576#1610#1577' '#1606#1575#1593#1605#1577
      OnClick = BlurSoftlyClick
    end
    object BlurMore: TMenuItem
      Caption = #1571#1603#1579#1585' '#1590#1576#1575#1576#1610#1577
      OnClick = BlurMoreClick
    end
    object BlurAverage: TMenuItem
      Caption = #1590#1576#1575#1576#1610#1577' '#1605#1578#1608#1587#1591#1577
      OnClick = BlurAverageClick
    end
    object Blur: TMenuItem
      Caption = #1590#1576#1575#1576#1610#1577
      OnClick = BlurClick
    end
    object Glow: TMenuItem
      Caption = #1578#1608#1607#1580
      OnClick = GlowClick
    end
    object IncreassBrightness: TMenuItem
      Caption = #1586#1610#1575#1583#1577' '#1575#1604#1587#1591#1608#1593
      OnClick = IncreassBrightnessClick
    end
    object DecreaseBrightness: TMenuItem
      Caption = #1573#1606#1602#1575#1589' '#1575#1604#1587#1591#1608#1593
      OnClick = DecreaseBrightnessClick
    end
    object ConvertToGray: TMenuItem
      Caption = #1578#1581#1608#1610#1604' '#1573#1604#1609' '#1585#1605#1575#1583#1610
      OnClick = ConvertToGrayClick
    end
    object IncreaseContrast: TMenuItem
      Caption = #1586#1610#1575#1583#1577' '#1575#1604#1578#1576#1575#1610#1606
      OnClick = IncreaseContrastClick
    end
    object DecreaseContrast: TMenuItem
      Caption = #1573#1606#1602#1575#1589' '#1575#1604#1578#1576#1575#1610#1606
      OnClick = DecreaseContrastClick
    end
    object EmbossColor: TMenuItem
      Caption = #1573#1576#1585#1575#1586' '#1575#1604#1571#1604#1608#1575#1606
      OnClick = EmbossColorClick
    end
    object EmbossLight: TMenuItem
      Caption = #1573#1576#1585#1575#1586' '#1575#1604#1573#1590#1575#1569#1577
      OnClick = EmbossLightClick
    end
    object EmbossMedium: TMenuItem
      Caption = #1573#1576#1585#1575#1586' '#1605#1578#1608#1587#1591
      OnClick = EmbossMediumClick
    end
    object EmbossDark: TMenuItem
      Caption = #1573#1576#1585#1575#1586' '#1594#1575#1605#1602
      OnClick = EmbossDarkClick
    end
    object FlipHorizontalMenu: TMenuItem
      Caption = #1605#1585#1570#1577' '#1571#1601#1602#1610#1577
      OnClick = FlipHorizontalMenuClick
    end
    object FlipVerticalMenu: TMenuItem
      Caption = #1605#1585#1570#1577' '#1593#1605#1608#1583#1610#1577
      OnClick = FlipVerticalMenuClick
    end
    object ShearHorzMenu: TMenuItem
      Caption = #1602#1589' '#1575#1604#1589#1608#1585#1577' '#1593#1605#1608#1583#1610#1575#1611
      OnClick = ShearHorzMenuClick
    end
    object ShearVertMen: TMenuItem
      Caption = #1602#1589' '#1575#1604#1589#1608#1585#1577' '#1571#1601#1602#1610#1575#1611
      OnClick = ShearVertMenClick
    end
  end
  object imageMenu: TPopupMenu
    Left = 152
    Top = 112
    object FormatConversion: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1575#1604#1589#1610#1594#1577
      OnClick = FormatConversionClick
    end
    object Resize: TMenuItem
      Caption = #1590#1576#1591' '#1575#1604#1581#1580#1605
      OnClick = ResizeClick
    end
    object Encrypt: TMenuItem
      Caption = #1578#1588#1601#1610#1585
      OnClick = EncryptClick
    end
    object AddWatermark: TMenuItem
      Caption = #1573#1590#1575#1601#1577' '#1589#1608#1585#1577
      OnClick = AddWatermarkClick
    end
    object ActualSizeMenu: TMenuItem
      Caption = #1575#1604#1581#1580#1605' '#1575#1604#1591#1576#1610#1593#1610
      OnClick = ActualSizeMenuClick
    end
    object FullPageMenu: TMenuItem
      Caption = #1603#1575#1605#1604' '#1575#1604#1589#1601#1581#1577
      OnClick = FullPageMenuClick
    end
    object FitWidthMenu: TMenuItem
      Caption = #1593#1585#1590' '#1575#1604#1589#1601#1581#1577
      OnClick = FitWidthMenuClick
    end
    object FitHeightMenu: TMenuItem
      Caption = #1591#1608#1604' '#1575#1604#1589#1601#1581#1577
      OnClick = FitHeightMenuClick
    end
    object FitToPageMenu: TMenuItem
      Caption = #1575#1604#1589#1601#1581#1577
      OnClick = FitToPageMenuClick
    end
  end
  object AnnotationMenu: TPopupMenu
    Left = 552
    Top = 256
    object AddNote: TMenuItem
      Caption = #1573#1590#1575#1601#1577' '#1605#1604#1575#1581#1592#1577
      OnClick = AddNoteClick
    end
    object AddRectangle: TMenuItem
      Caption = #1573#1590#1575#1601#1577' '#1605#1587#1578#1591#1610#1604
      OnClick = AddRectangleClick
    end
    object AddLine: TMenuItem
      Caption = #1573#1590#1575#1601#1577' '#1582#1591
      OnClick = AddLineClick
    end
    object AddText: TMenuItem
      Caption = #1573#1590#1575#1601#1577' '#1606#1589
      OnClick = AddTextClick
    end
    object AddImage: TMenuItem
      Caption = #1573#1590#1575#1601#1577' '#1589#1608#1585#1577
      OnClick = AddImageClick
    end
    object getAnnotation: TMenuItem
      Caption = #1581#1601#1592
      OnClick = getAnnotationClick
    end
    object setAnnotation: TMenuItem
      Caption = #1593#1585#1590
      OnClick = setAnnotationClick
    end
  end
end
