inherited zprojectdocBackUp3f: TzprojectdocBackUp3f
  Width = 875
  Height = 748
  object Splitter1: TSplitter [0]
    Left = 721
    Top = 31
    Width = 8
    Height = 717
    ExplicitHeight = 494
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 31
    Width = 721
    Height = 717
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 273
    object JPnlHead: TJPanel
      Left = 0
      Top = 0
      Width = 721
      Height = 717
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 273
      object AmjSplitter1: TAmjSplitter
        Left = 0
        Top = 146
        Width = 721
        Height = 16
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 2
        ExplicitTop = 177
      end
      object JBodyPnl: TJPanel
        Left = 0
        Top = 162
        Width = 721
        Height = 555
        Align = alClient
        Caption = #1608#1579#1575#1574#1602' '#1575#1604#1605#1588#1585#1608#1593
        TabOrder = 0
        ExplicitHeight = 111
        object AmjSplitter2: TAmjSplitter
          Left = 0
          Top = 225
          Width = 721
          Height = 8
          Cursor = crVSplit
          Align = alTop
        end
        object JMainPages: TJPages
          AlignWithMargins = True
          Left = 3
          Top = 236
          Width = 715
          Height = 316
          ActivePage = PictsTS
          Align = alClient
          BoldCurrentTab = True
          FlatColor = 10263441
          HotTrackStyle = htsTabBar
          ShowCloseButton = True
          ShowCloseButtonOnActiveTab = True
          ShowMenuButton = True
          TabColors.HighlightBar = 1350640
          TabIndex = 1
          TabOrder = 0
          TabSequence = tsReverse
          TabStyle = tsBackSlant
          UseGradients = False
          ExplicitHeight = 405
          FixedDimension = 19
          object BillTS: TRzTabSheet
            Caption = #1605#1593#1604#1608#1605#1575#1578' '#1575#1604#1605#1604#1601
            ExplicitHeight = 384
            object JazDBGrid3: TJazDBGrid
              Left = 0
              Top = 0
              Width = 713
              Height = 295
              Align = alClient
              DataSource = dq3
              DynProps = <>
              FooterParams.Color = clWindow
              IndicatorOptions = [gioShowRowIndicatorEh]
              EmptyDataInfo.Active = True
              EmptyDataInfo.Text = #1604#1575' '#1610#1608#1580#1583' '#1576#1610#1575#1606#1575#1578
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              Columns = <
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'prjname'
                  Footers = <>
                  Title.Caption = #1575#1587#1605' '#1575#1604#1605#1588#1585#1608#1593
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FILENAME'
                  Footers = <>
                  Title.Caption = #1575#1587#1605' '#1575#1604#1605#1604#1601
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FILELINK'
                  Footers = <>
                  Title.Caption = #1585#1575#1576#1591' '#1575#1604#1605#1604#1601
                  Title.SortIndex = 1
                  Title.SortMarker = smUpEh
                  Width = 69
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FILEFORMAT'
                  Footers = <>
                  Title.Caption = #1589#1610#1594#1577' '#1575#1604#1605#1604#1601
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VIEWCO'
                  Footers = <>
                  Title.Caption = #1593#1583#1583' '#1605#1585#1575#1578' '#1575#1604#1605#1588#1575#1607#1583#1577
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DOWNLOADCO'
                  Footers = <>
                  Title.Caption = #1593#1583#1583' '#1605#1585#1575#1578' '#1575#1604#1578#1581#1605#1610#1604
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ISDELETED'
                  Footers = <>
                  Title.Caption = #1605#1581#1584#1608#1601#1577#1567
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ISACTIVE'
                  Footers = <>
                  Title.Caption = #1601#1593#1575#1604#1577#1567
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NOTE'
                  Footers = <>
                  Title.Caption = #1605#1604#1575#1581#1592#1575#1578
                  Width = 75
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object PictsTS: TRzTabSheet
            Caption = #1589#1608#1585' '#1575#1604#1608#1579#1575#1574#1602
            object ImageScrollBox: TImageScrollBox
              Left = 0
              Top = 0
              Width = 412
              Height = 295
              HorzScrollBar.Tracking = True
              HorzScrollBar.Visible = False
              VertScrollBar.Tracking = True
              VertScrollBar.Visible = False
              ZoomMode = zmFitWidth
              ZoomPercent = 100.000000000000000000
              MouseHandlerOwnership = True
              Align = alClient
              TabOrder = 0
            end
            object Panel2: TPanel
              Left = 412
              Top = 0
              Width = 301
              Height = 295
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              object JPanel2: TJPanel
                Left = 0
                Top = 71
                Width = 301
                Height = 224
                Align = alBottom
                TabOrder = 0
                Visible = False
                object JPanel3: TJPanel
                  Left = 0
                  Top = 0
                  Width = 301
                  Height = 25
                  Align = alTop
                  Alignment = taRightJustify
                  Color = clActiveCaption
                  TabOrder = 0
                  object Image1: TImage
                    Left = 196
                    Top = 0
                    Width = 105
                    Height = 25
                    Align = alRight
                    ExplicitLeft = 560
                    ExplicitTop = -2
                    ExplicitHeight = 81
                  end
                end
                object ProgressBar: TProgressBar
                  Left = 30
                  Top = 72
                  Width = 150
                  Height = 17
                  TabOrder = 1
                  Visible = False
                end
                object DBMemo1: TDBMemo
                  Left = 0
                  Top = 25
                  Width = 301
                  Height = 199
                  Align = alClient
                  DataField = 'NOTE'
                  DataSource = DqDOCFILES
                  TabOrder = 2
                end
              end
              object JazDBGrid2: TJazDBGrid
                Left = 0
                Top = 0
                Width = 301
                Height = 71
                Align = alClient
                DataSource = DqDOCFILES
                DynProps = <>
                FooterParams.Color = clWindow
                ImeMode = imDisable
                IndicatorOptions = [gioShowRowIndicatorEh]
                TabOrder = 1
                TitleParams.MultiTitle = True
                Columns = <
                  item
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'FILENAME'
                    Footers = <>
                    Title.Caption = #1575#1587#1605' '#1575#1604#1605#1604#1601
                    Width = 75
                  end
                  item
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'FILELINK'
                    Footers = <>
                    Title.Caption = #1585#1575#1576#1591' '#1575#1604#1605#1604#1601
                    Width = 75
                  end
                  item
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'FILEFORMAT'
                    Footers = <>
                    Title.Caption = #1589#1610#1594#1577' '#1575#1604#1605#1604#1601
                    Title.SortIndex = 1
                    Title.SortMarker = smUpEh
                    Width = 75
                  end
                  item
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'NOTE'
                    Footers = <>
                    Title.Caption = #1605#1604#1575#1581#1592#1575#1578
                    Width = 75
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
          object SubCtrctTS: TRzTabSheet
            Caption = #1573#1589#1583#1575#1585#1575#1578' '#1575#1604#1605#1604#1601' '#1575#1604#1581#1575#1604#1610
            object JazDBGrid1: TJazDBGrid
              Left = 0
              Top = 0
              Width = 713
              Height = 295
              Align = alClient
              DataSource = DataSource2
              DynProps = <>
              FooterParams.Color = clWindow
              IndicatorOptions = [gioShowRowIndicatorEh]
              ReadOnly = True
              TabOrder = 0
              Columns = <
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'prjname'
                  Footers = <>
                  Title.Caption = #1575#1587#1605' '#1575#1604#1605#1588#1585#1608#1593
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'filen'
                  Footers = <>
                  Title.Caption = #1575#1587#1605' '#1575#1604#1581#1602#1604
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FILENAME'
                  Footers = <>
                  Title.Caption = #1575#1587#1605' '#1575#1604#1605#1604#1601
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FILELINK'
                  Footers = <>
                  Title.Caption = #1585#1575#1576#1591' '#1575#1604#1605#1604#1601
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FILEFORMAT'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1589#1610#1594#1577' '#1575#1604#1605#1604#1601
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VIEWCO'
                  Footers = <>
                  Title.Caption = #1593#1583#1583' '#1605#1585#1575#1578' '#1575#1604#1605#1588#1575#1607#1583#1577
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DOWNLOADCO'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1593#1583#1583' '#1605#1585#1575#1578' '#1575#1604#1578#1581#1605#1610#1604
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ISDELETED'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1605#1581#1584#1608#1601#1577#1567
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ISACTIVE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1601#1593#1575#1604#1577#1567
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NOTE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1605#1604#1575#1581#1592#1575#1578
                  Width = 75
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object JSonMemo: TMemo
          Left = 16
          Top = -10
          Width = 185
          Height = 89
          Lines.Strings = (
            'JSonMemo')
          TabOrder = 1
          Visible = False
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 721
          Height = 225
          Align = alTop
          Caption = 'Panel5'
          TabOrder = 2
          object JazDBGrid4: TJazDBGrid
            Left = 1
            Top = 31
            Width = 719
            Height = 193
            Align = alClient
            DataSource = DQFolders
            DynProps = <>
            IndicatorOptions = [gioShowRowIndicatorEh]
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.Caption = #1575#1587#1605' '#1575#1604#1605#1604#1601' '#1571#1608' '#1575#1604#1605#1580#1604#1583
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'ISFOLDER'
                Footers = <>
                Title.Caption = #1607#1604' '#1607#1608' '#1605#1604#1580#1583
                Title.SortIndex = 1
                Title.SortMarker = smUpEh
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'PATH'
                Footers = <>
                Title.Caption = #1605#1587#1575#1585' '#1575#1604#1605#1604#1601' '#1571#1608' '#1575#1604#1605#1580#1604#1583' '#1593#1604#1609' '#1606#1592#1575#1605' '#1575#1604#1605#1604#1601#1575#1578
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRNT'
                Footers = <>
                Title.Caption = #1575#1604#1571#1576
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'NOTES'
                Footers = <>
                Title.Caption = #1605#1604#1575#1581#1592#1575#1578
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'JCRT_USER'
                Footers = <>
                Title.Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1579#1605#1585' '#1575#1604#1584#1610' '#1571#1606#1588#1571' '#1575#1604#1587#1580#1604
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'JCRT_DAT'
                Footers = <>
                Title.Caption = #1578#1575#1585#1610#1582' '#1573#1606#1588#1575#1569' '#1575#1604#1587#1580#1604
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'JUPDT_USER'
                Footers = <>
                Title.Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1579#1605#1585' '#1575#1604#1584#1610' '#1593#1583#1604' '#1575#1604#1587#1580#1604' '#1570#1582#1585' '#1605#1585#1607
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'FILE_OR_LOB'
                Footers = <>
                Title.Caption = #1605#1603#1575#1606' '#1575#1604#1578#1582#1586#1610#1606
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'FILE_MIME'
                Footers = <>
                Title.Caption = #1606#1608#1593' '#1575#1604#1605#1604#1601' '#1575#1604#1605#1582#1586#1606
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'FILE_EXT'
                Footers = <>
                Title.Caption = #1575#1604#1604#1575#1581#1602#1607
                Width = 75
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 719
            Height = 30
            Align = alTop
            Caption = #1575#1604#1605#1580#1604#1583#1575#1578
            Color = clActiveCaption
            ParentBackground = False
            TabOrder = 1
          end
          object ImageScrollBox1: TImageScrollBox
            Left = 192
            Top = 120
            Width = 57
            Height = 65
            HorzScrollBar.Tracking = True
            HorzScrollBar.Visible = False
            VertScrollBar.Tracking = True
            VertScrollBar.Visible = False
            ZoomPercent = 100.000000000000000000
            MouseHandlerOwnership = True
            TabOrder = 2
            Visible = False
          end
        end
      end
      object JGrid1: TJazDBGrid
        Left = 0
        Top = 25
        Width = 721
        Height = 121
        Align = alTop
        DataSource = dq2
        DynProps = <>
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        EmptyDataInfo.Active = True
        EmptyDataInfo.Text = #1604#1575' '#1610#1608#1580#1583' '#1576#1610#1575#1606#1575#1578
        ReadOnly = True
        TabOrder = 1
        TitleParams.MultiTitle = True
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Caption = #1575#1604#1575#1587#1605
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NO'
            Footers = <>
            Title.Caption = #1585#1602#1605' '#1575#1604#1605#1587#1578#1606#1583
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1605#1604#1575#1581#1592#1575#1578
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'prjname'
            Footers = <>
            Title.Caption = #1575#1587#1605' '#1575#1604#1605#1588#1585#1608#1593
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'stsname'
            Footers = <>
            Title.Caption = #1581#1575#1604#1577' '#1575#1604#1608#1579#1610#1602#1577
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'secname'
            Footers = <>
            Title.Caption = #1605#1587#1578#1608#1609' '#1575#1604#1587#1585#1610#1577
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ISDELETED'
            Footers = <>
            Title.Caption = #1605#1581#1584#1608#1601#1577#1567
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ISACTIVE'
            Footers = <>
            Title.Caption = #1601#1593#1575#1604#1577#1567
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'JCRT_USER'
            Footers = <>
            Title.Caption = #1605#1606#1588#1574' '#1575#1604#1605#1604#1601
            Width = 65
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'JCRT_DAT'
            Footers = <>
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1606#1588#1575#1569
            Width = 52
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'JUPDT_USER'
            Footers = <>
            Title.Caption = #1605#1593#1583#1604' '#1575#1604#1605#1587#1578#1606#1583
            Width = 65
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'JUPDT_DAT'
            Footers = <>
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1578#1593#1583#1610#1604
            Width = 52
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'FILE_CO'
            Footers = <>
            Title.Caption = #1593#1583#1583' '#1575#1604#1605#1604#1601#1575#1578
            Title.SortIndex = 1
            Title.SortMarker = smUpEh
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'VIEWCO'
            Footers = <>
            Title.Caption = #1593#1583#1583' '#1605#1585#1575#1578' '#1575#1604#1605#1588#1575#1607#1583#1577
            Width = 75
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZTMPLTID'
            Footers = <>
            Title.Caption = #1575#1587#1605' '#1575#1604#1602#1575#1604#1576
            Visible = False
            Width = 75
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object JPanel1: TJPanel
        Left = 0
        Top = 0
        Width = 721
        Height = 25
        Align = alTop
        Alignment = taRightJustify
        Caption = #1605#1587#1578#1606#1583#1575#1578' '#1575#1604#1605#1588#1585#1608#1593
        Color = clActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -18
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Image2: TImage
          Left = 689
          Top = 0
          Width = 32
          Height = 25
          Align = alRight
          ExplicitLeft = 719
          ExplicitTop = 1
          ExplicitHeight = 29
        end
      end
    end
  end
  inherited JFTitle: TJPanel
    Width = 875
    Caption = #1605#1580#1604#1583#1575#1578' '#1575#1604#1605#1588#1585#1608#1593
    inherited JTitleImg: TImage
      Left = 843
      ExplicitLeft = 732
    end
  end
  object Panel3: TPanel [3]
    Left = 729
    Top = 31
    Width = 146
    Height = 717
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitWidth = 48
    ExplicitHeight = 273
    object AmjDbTree1: TAmjDbTree
      Left = 1
      Top = 25
      Width = 144
      Height = 691
      Align = alClient
      CheckImageKind = ckXP
      DragMode = dmAutomatic
      Header.AutoSizeIndex = 0
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Header.MainColumn = -1
      IncrementalSearch = isAll
      IncrementalSearchTimeout = 500
      NodeDataSize = 28
      TabOrder = 0
      TabStop = False
      TreeOptions.AnimationOptions = [toAnimatedToggle]
      TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoSpanColumns, toAutoTristateTracking]
      TreeOptions.MiscOptions = [toAcceptOLEDrop, toEditable, toInitOnSave, toToggleOnDblClick, toWheelPanning]
      TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toShowVertGridLines, toThemeAware, toUseBlendedImages]
      TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect, toRightClickSelect]
      TreeOptions.StringOptions = [toSaveCaptions, toShowStaticText, toAutoAcceptEditChange]
      DBOpt.IDName = 'ID'
      DBOpt.IDParent = 'prntid'
      DBOpt.ViewName = 'NodeName'
      DBOpt.ImgIdxName = 'ID'
      DBOpt.InitParent = '0'
      DBOpt.DataSource = DQ
      DBOptions = [dboAlwaysStructured, dboCheckDBStructure, dboParentStructure, dboReadOnly, dboTrackActive, dboTrackCursor, dboViewAll, dboWriteLevel, dboWriteSecondary]
      ExplicitWidth = 46
      ExplicitHeight = 247
      Columns = <>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 144
      Height = 24
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 46
      object Label1: TLabel
        Left = 76
        Top = 1
        Width = 67
        Height = 22
        Align = alRight
        Caption = #1575#1587#1605' '#1575#1604#1605#1588#1585#1608#1593
        ExplicitLeft = -22
        ExplicitHeight = 13
      end
      object zproject: TDMZEditFind
        Left = -85
        Top = 1
        Width = 161
        Height = 22
        Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
        Align = alRight
        Color = clInfoBk
        ParentShowHint = False
        TabOrder = 0
        TableName = 'jdms.Jprojects'
        IDField = 'id'
        NameField = 'NAME'
        NoField = 'id'
        OnFind = zprojectFind
        IDMustBeNumber = False
        Delimater = ' - '
        ChildsOnly = False
        ExplicitLeft = -183
        ExplicitHeight = 21
      end
    end
  end
  inherited JRActions: TAmjActionList
    AmjActionBar.Enabled = False
    ParentDraw = Owner
    Left = 738
    Top = 100
    object AmjAction1: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = ATree_Trees
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjAction1'
      ShortCut = 112
    end
    object AmjAction3: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjAction2'
      ShortCut = 112
    end
    object AmjAction4: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_Refresh
      ConfirmNeed = False
      Imageid = data_refresh
      BtnShowCaption = False
      Caption = 'AmjAction2'
      Hint = #1578#1581#1583#1610#1579' '#1575#1604#1576#1610#1575#1606#1575#1578
      ShortCut = 119
    end
    object AmjAction17: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Aed_Delete
      ConfirmNeed = True
      ConfirmMsg = #1607#1604' '#1578#1585#1610#1583' '#1581#1584#1601' '#1575#1604#1587#1580#1604' '#1575#1604#1605#1581#1583#1583#1567
      Imageid = REC_del
      BtnShowCaption = False
      Caption = #1581#1584#1601' '#1575#1604#1587#1580#1604
      Hint = #1581#1584#1601' '#1575#1604#1587#1580#1604
      ShortCut = 112
    end
    object NewFolder: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 75
      Caption = #1605#1580#1604#1583' '#1580#1583#1610#1583
      Visible = False
      OnHandle = NewFolderHandle
    end
    object EditFolder: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 75
      Caption = #1578#1593#1583#1610#1604' '#1605#1580#1604#1583
      Visible = False
      OnHandle = EditFolderHandle
    end
    object PrivShow: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 120
      Caption = #1573#1592#1607#1575#1585'  '#1575#1604#1589#1604#1575#1581#1610#1575#1578
      OnHandle = PrivShowHandle
    end
    object AddSun: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 120
      Caption = #1573#1590#1575#1601#1577' '#1575#1576#1606
      OnHandle = AddSunHandle
    end
  end
  inherited DQ: TDataSource
    Left = 744
    Top = 176
  end
  inherited JQ: TAmjSet
    CommandText = 
      'select JPROJECTS.*,'#13#10' ID || '#39' - '#39' || name NodeName,'#13#10' nvl(prnt,0' +
      ') prntid'#13#10'from jdms.JPROJECTS'#13#10#13#10
    BeforeOpen = JQBeforeOpen
    BeforeInsert = JQBeforeInsert
    AfterInsert = JQAfterInsert
    BeforeDelete = JQBeforeDelete
    AfterScroll = JQAfterScroll
    SQL.Strings = (
      'select JPROJECTS.*,'
      ' ID || '#39' - '#39' || name NodeName,'
      ' nvl(prnt,0) prntid'
      'from jdms.JPROJECTS'
      '')
    AmjExcludFlds.Strings = (
      'NodeName')
    AmjTblName = 'JPROJECTS'
    AmjUser = 'jdms'
    Left = 736
    Top = 272
  end
  object dq2: TDataSource
    DataSet = jq2
    Left = 192
    Top = 104
  end
  object JRActions2: TAmjActionList
    FilterVisible = False
    DbGrid = JGrid1
    DataSource = dq2
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = JPnlHead
    Left = 402
    Top = 108
    object AmjAction5: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjAction2'
      ShortCut = 112
    end
    object AmjAction11: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_Refresh
      ConfirmNeed = False
      Imageid = data_refresh
      BtnShowCaption = False
      Caption = 'AmjAction2'
      Hint = #1578#1581#1583#1610#1579' '#1575#1604#1576#1610#1575#1606#1575#1578
      ShortCut = 119
    end
    object new: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 75
      Caption = #1580#1583#1610#1583
      ShortCut = 112
      OnHandle = newHandle
    end
    object edit: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 75
      Caption = #1578#1593#1583#1610#1604
      ShortCut = 112
      OnHandle = editHandle
    end
    object AmjAction10: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Aed_Delete
      ConfirmNeed = True
      ConfirmMsg = #1607#1604' '#1578#1585#1610#1583' '#1581#1584#1601' '#1575#1604#1587#1580#1604' '#1575#1604#1605#1581#1583#1583#1567
      Imageid = REC_del
      BtnShowCaption = False
      Caption = #1581#1584#1601' '#1575#1604#1587#1580#1604
      Hint = #1581#1584#1601' '#1575#1604#1587#1580#1604
      ShortCut = 112
    end
  end
  object dq3: TDataSource
    DataSet = jq3
    Left = 640
    Top = 624
  end
  object jq2: TAmjSet
    Aggregates = <>
    CommandText = 
      'select JPROJ_DOCS.*, JPROJECTS.NAME||'#39'-'#39'||JPROJECTS.id prjname,'#13 +
      #10'ZDOC_STATUS.NAME stsname,ZDOC_SECRET.NAME secname'#13#10'from jdms.JP' +
      'ROJ_DOCS,jdms.JPROJECTS,JDMS.ZDOC_STATUS,JDMS.ZDOC_SECRET'#13#10'where' +
      ' JPROJ_DOCS.PROJID = JPROJECTS.id(+)'#13#10'and JPROJ_DOCS.ZSTATUSID =' +
      ' ZDOC_STATUS.id(+)'#13#10'and JPROJ_DOCS.ZSECRETID = ZDOC_SECRET.id(+)' +
      #13#10'and JPROJ_DOCS.PROJID = :pid'#13#10#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = jq2BeforeOpen
    BeforeInsert = jq2BeforeInsert
    AfterInsert = jq2AfterInsert
    BeforeDelete = jq2BeforeDelete
    AfterScroll = jq2AfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select JPROJ_DOCS.*, JPROJECTS.NAME||'#39'-'#39'||JPROJECTS.id prjname,'
      'ZDOC_STATUS.NAME stsname,ZDOC_SECRET.NAME secname'
      
        'from jdms.JPROJ_DOCS,jdms.JPROJECTS,JDMS.ZDOC_STATUS,JDMS.ZDOC_S' +
        'ECRET'
      'where JPROJ_DOCS.PROJID = JPROJECTS.id(+)'
      'and JPROJ_DOCS.ZSTATUSID = ZDOC_STATUS.id(+)'
      'and JPROJ_DOCS.ZSECRETID = ZDOC_SECRET.id(+)'
      'and JPROJ_DOCS.PROJID = :pid'
      '')
    AmjTblName = 'JPROJ_DOCS'
    AmjUser = 'jdms'
    Left = 272
    Top = 104
  end
  object jq3: TAmjSet
    Aggregates = <>
    CommandText = 
      'select jdms.JPROJ_DOCS_FILES_VERSION.*, JPROJECTS.NAME prjname'#13#10 +
      'from jdms.JPROJ_DOCS_FILES_VERSION,jdms.JPROJECTS'#13#10'where JPROJ_D' +
      'OCS_FILES_VERSION.PROJID= JPROJECTS.id'#13#10'and JPROJ_DOCS_FILES_VER' +
      'SION.fileid = :Fid'#13#10'and JPROJ_DOCS_FILES_VERSION.DOCID=:Did'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Did'
        ParamType = ptUnknown
      end>
    BeforeOpen = jq3BeforeOpen
    AfterOpen = jq3AfterOpen
    AfterInsert = jq3AfterInsert
    AfterScroll = jq3AfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select jdms.JPROJ_DOCS_FILES_VERSION.*, JPROJECTS.NAME prjname'
      'from jdms.JPROJ_DOCS_FILES_VERSION,jdms.JPROJECTS'
      'where JPROJ_DOCS_FILES_VERSION.PROJID= JPROJECTS.id'
      'and JPROJ_DOCS_FILES_VERSION.fileid = :Fid'
      'and JPROJ_DOCS_FILES_VERSION.DOCID=:Did')
    AmjTblName = 'JPROJ_DOCS_FILES_VERSION'
    AmjUser = 'jdms'
    Left = 648
    Top = 568
  end
  object JRActions3: TAmjActionList
    FilterVisible = False
    DbGrid = JazDBGrid3
    DataSource = dq3
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = BillTS
    Left = 642
    Top = 476
    object AmjAction8: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjAction2'
      ShortCut = 112
    end
    object AmjAction6: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_Refresh
      ConfirmNeed = False
      Imageid = data_refresh
      BtnShowCaption = False
      Caption = 'AmjAction2'
      Hint = #1578#1581#1583#1610#1579' '#1575#1604#1576#1610#1575#1606#1575#1578
      ShortCut = 119
    end
    object newf: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 75
      Caption = #1580#1583#1610#1583
      ShortCut = 112
    end
    object editf: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 75
      Caption = #1578#1593#1583#1610#1604
      ShortCut = 112
    end
    object AmjAction2: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Aed_Delete
      ConfirmNeed = True
      ConfirmMsg = #1607#1604' '#1578#1585#1610#1583' '#1581#1584#1601' '#1575#1604#1587#1580#1604' '#1575#1604#1605#1581#1583#1583#1567
      Imageid = REC_del
      BtnShowCaption = False
      Caption = #1581#1584#1601' '#1575#1604#1587#1580#1604
      Hint = #1581#1584#1601' '#1575#1604#1587#1580#1604
      ShortCut = 112
    end
  end
  object DataSource1: TDataSource
    DataSet = docjq
    Left = 208
    Top = 488
  end
  object docjq: TAmjSet
    Aggregates = <>
    CommandText = 
      'select jedms.DOC_FILES.*, ZPROJ.NAME prjname'#13#10'from jedms.DOC_FIL' +
      'ES,jedms.ZPROJ'#13#10'where DOC_FILES.PROJID=zproj.id'#13#10'and DOC_FILES.D' +
      'OCID=:pid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = docjqBeforeOpen
    AfterInsert = docjqAfterInsert
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select jedms.DOC_FILES.*, ZPROJ.NAME prjname'
      'from jedms.DOC_FILES,jedms.ZPROJ'
      'where DOC_FILES.PROJID=zproj.id'
      'and DOC_FILES.DOCID=:pid')
    AmjExcludFlds.Strings = (
      'fdata')
    AmjTblName = 'DOC_FILES'
    AmjUser = 'jedms'
    Left = 208
    Top = 440
  end
  object AmjActionList1: TAmjActionList
    FilterVisible = False
    DbGrid = JazDBGrid2
    DataSource = DqDOCFILES
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = PictsTS
    Left = 338
    Top = 569
    object AmjAction7: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionVav'
      ShortCut = 112
    end
    object AmjAction9: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_seprator
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionsep1'
      ShortCut = 112
    end
    object AmjAction12: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_Refresh
      ConfirmNeed = False
      Imageid = data_refresh
      BtnShowCaption = False
      Caption = 'AmjActionRefresh'
      Hint = #1578#1581#1583#1610#1579' '#1575#1604#1576#1610#1575#1606#1575#1578
      ShortCut = 116
    end
    object ImageNewact: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 60
      Caption = #1580#1583#1610#1583
      Hint = #1580#1583#1610#1583
      OnHandle = ImageNewactHandle
    end
    object ImageOpAct: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 60
      Caption = #1593#1605#1604#1610#1575#1578
      Hint = #1593#1605#1604#1610#1575#1578
      OnHandle = ImageOpActHandle
    end
    object ImageViewAct: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 60
      Caption = #1593#1585#1590
      Hint = #1593#1585#1590
      OnHandle = ImageViewActHandle
    end
    object EditPict: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 52
      ShortCut = 112
      OnHandle = EditPictHandle
    end
  end
  object DqDOCFILES: TDataSource
    DataSet = qDOCFILES
    Left = 304
    Top = 635
  end
  object qDOCFILES: TAmjSet
    Aggregates = <>
    CommandText = 
      'select jdms.JPROJ_DOCS_FILES_VERSION.*'#13#10'from jdms.JPROJ_DOCS_FIL' +
      'ES_VERSION'#13#10'where JPROJ_DOCS_FILES_VERSION.DOCID=:Did'#13#10'and JPROJ' +
      '_DOCS_FILES_VERSION.fileid=:Fid'#13#10#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'Did'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fid'
        ParamType = ptUnknown
      end>
    BeforeOpen = qDOCFILESBeforeOpen
    AfterOpen = qDOCFILESAfterOpen
    AfterInsert = qDOCFILESAfterInsert
    AfterScroll = qDOCFILESAfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select jdms.JPROJ_DOCS_FILES_VERSION.*'
      'from jdms.JPROJ_DOCS_FILES_VERSION'
      'where JPROJ_DOCS_FILES_VERSION.DOCID=:Did'
      'and JPROJ_DOCS_FILES_VERSION.fileid=:Fid'
      '')
    AmjExcludFlds.Strings = (
      'FDATA')
    AmjTblName = 'JPROJ_DOCS_FILES_VERSION'
    AmjUser = 'jdms'
    Left = 262
    Top = 564
  end
  object AmjActionList2: TAmjActionList
    FilterVisible = False
    DataSource = DqDOCFILES
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = JPanel2
    Left = 226
    Top = 628
    object AmjAction14: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      ShortCut = 112
    end
    object AmjAction26: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_Refresh
      ConfirmNeed = False
      Imageid = data_refresh
      BtnShowCaption = False
      Caption = #1578#1581#1583#1610#1579' '#1575#1604#1576#1610#1575#1606#1575#1578
      Hint = #1578#1581#1583#1610#1579' '#1575#1604#1576#1610#1575#1606#1575#1578
      ShortCut = 119
    end
  end
  object ImageNew: TPopupMenu
    AutoHotkeys = maManual
    Left = 376
    Top = 448
    object N5: TMenuItem
      Caption = #1575#1582#1578#1610#1575#1585' '#1605#1575#1587#1581
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N7: TMenuItem
      Caption = #1605#1587#1581' '#1589#1608#1585#1577
      OnClick = N7Click
    end
    object N8: TMenuItem
      Caption = #1605#1587#1581' '#1605#1580#1605#1608#1593#1577' '#1589#1608#1585
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = #1578#1581#1605#1610#1604' '#1605#1606' '#1605#1604#1601
      OnClick = N9Click
    end
  end
  object ImageView: TPopupMenu
    AutoHotkeys = maManual
    Left = 320
    Top = 448
    object N1: TMenuItem
      Caption = #1575#1604#1581#1580#1605' '#1575#1604#1591#1576#1610#1593#1610
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1603#1575#1605#1604' '#1575#1604#1589#1601#1581#1577
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1593#1585#1590' '#1575#1604#1589#1601#1581#1577
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1591#1608#1604' '#1575#1604#1589#1601#1581#1577
      OnClick = N4Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object d1: TMenuItem
      Caption = #1578#1603#1576#1610#1585
      OnClick = d1Click
    end
    object N15: TMenuItem
      Caption = #1578#1589#1594#1610#1585
      OnClick = N15Click
    end
  end
  object ImageOp: TPopupMenu
    AutoHotkeys = maManual
    Left = 440
    Top = 472
    object N10: TMenuItem
      Caption = #1581#1601#1592' '#1601#1610' '#1605#1604#1601
      OnClick = N10Click
    end
    object N11: TMenuItem
      Caption = #1581#1584#1601
    end
    object N12: TMenuItem
      Caption = #1591#1576#1575#1593#1577
      OnClick = N12Click
    end
    object N13: TMenuItem
      Caption = #1578#1583#1608#1610#1585
      OnClick = N13Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 518
    Top = 503
  end
  object DataSource2: TDataSource
    DataSet = AmjSet1
    Left = 129
    Top = 488
  end
  object AmjSet1: TAmjSet
    Aggregates = <>
    CommandText = 
      'select jedms.DOC_FILES_VERSION.*, ZPROJ.NAME prjname, ZFIELD.NAM' +
      'E filen'#13#10'from jedms.DOC_FILES_VERSION,jedms.ZPROJ,JEDMS.ZFIELD'#13#10 +
      'where DOC_FILES_VERSION.PROJID=zproj.id(+)'#13#10'and DOC_FILES_VERSIO' +
      'N.FILEID=ZFIELD.id(+)'#13#10'and DOC_FILES_VERSION.DOCID=:pid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = AmjSet1BeforeOpen
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      
        'select jedms.DOC_FILES_VERSION.*, ZPROJ.NAME prjname, ZFIELD.NAM' +
        'E filen'
      'from jedms.DOC_FILES_VERSION,jedms.ZPROJ,JEDMS.ZFIELD'
      'where DOC_FILES_VERSION.PROJID=zproj.id(+)'
      'and DOC_FILES_VERSION.FILEID=ZFIELD.id(+)'
      'and DOC_FILES_VERSION.DOCID=:pid')
    AmjExcludFlds.Strings = (
      '')
    AmjTblName = 'DOC_FILES_VERSION'
    AmjUser = 'jedms'
    Left = 136
    Top = 432
  end
  object AmjActionList3: TAmjActionList
    FilterVisible = False
    DbGrid = JazDBGrid1
    DataSource = DataSource2
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = SubCtrctTS
    Left = 138
    Top = 372
    object AmjAction13: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionVav'
      ShortCut = 112
    end
    object AmjAction15: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_seprator
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionsep1'
      ShortCut = 112
    end
    object AmjAction16: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_Refresh
      ConfirmNeed = False
      Imageid = data_refresh
      BtnShowCaption = False
      Caption = 'AmjActionRefresh'
      Hint = #1578#1581#1583#1610#1579' '#1575#1604#1576#1610#1575#1606#1575#1578
      ShortCut = 116
    end
  end
  object JQMetaIdSEt: TAmjSet
    Aggregates = <>
    CommandText = 
      '        select metaid, min(lvl) minlvl'#13#10'        from ( '#13#10'       ' +
      '     Select level lvl , (select max(M.ID) from jdms.T_METADATA M' +
      ' where M.projid = p.id) Metaid'#13#10'            From jdms.jprojects ' +
      'P'#13#10'            Start With id= :Pprojid'#13#10'            Connect By i' +
      'd = Prior prnt'#13#10'        )'#13#10'        where metaid is not null'#13#10'   ' +
      '     group by metaid '#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'Pprojid'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      '        select metaid, min(lvl) minlvl'
      '        from ( '
      
        '            Select level lvl , (select max(M.ID) from jdms.T_MET' +
        'ADATA M where M.projid = p.id) Metaid'
      '            From jdms.jprojects P'
      '            Start With id= :Pprojid'
      '            Connect By id = Prior prnt'
      '        )'
      '        where metaid is not null'
      '        group by metaid ')
    AmjTblName = 'jprojects'
    AmjUser = 'jdms'
    Left = 96
    Top = 232
  end
  object JQMetBLOB: TAmjSet
    Aggregates = <>
    CommandText = 
      'Select T_METADATA.*'#13#10'from jdms.T_METADATA'#13#10'where T_METADATA.id =' +
      ':pid'#13#10#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'Select T_METADATA.*'
      'from jdms.T_METADATA'
      'where T_METADATA.id =:pid'
      '')
    AmjTblName = 'T_METADATA'
    AmjUser = 'JDMS'
    Left = 32
    Top = 184
  end
  object JQFolders: TAmjSet
    Aggregates = <>
    CommandText = 
      'select JPROJ_DOCS_FOLDERS.*  from jdms.JPROJ_DOCS_FOLDERS'#13#10'where' +
      ' docid = :pid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = JQFoldersBeforeOpen
    AfterInsert = JQFoldersAfterInsert
    AfterScroll = JQFoldersAfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select JPROJ_DOCS_FOLDERS.*  from jdms.JPROJ_DOCS_FOLDERS'
      'where docid = :pid')
    AmjExcludFlds.Strings = (
      'BIN_ON_DB')
    AmjTblName = 'JPROJ_DOCS_FOLDERS'
    AmjUser = 'jdms'
    Left = 440
    Top = 328
  end
  object DQFolders: TDataSource
    DataSet = JQFolders
    Left = 512
    Top = 328
  end
  object FolderAction: TAmjActionList
    FilterVisible = False
    DbGrid = JazDBGrid4
    DataSource = DQFolders
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = Panel6
    Left = 320
    Top = 320
    object EditFilePict: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 100
      Caption = #1578#1581#1585#1610#1585' '#1589#1608#1585#1577
      OnHandle = EditFilePictHandle
    end
    object AddPictAction2: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 120
      Caption = #1573#1590#1575#1601#1577' '#1589#1608#1585#1577
      OnHandle = AddPictAction2Handle
    end
    object FolderScanOnePict: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 120
      Caption = #1605#1587#1581' '#1589#1608#1585#1577
      OnHandle = FolderScanOnePictHandle
    end
  end
  object JQCheck: TAmjSet
    Aggregates = <>
    CommandText = 
      'select JPROJECTS.*,'#13#10'         nvl(prnt,0) prntid'#13#10'from jdms.JPRO' +
      'JECTS'#13#10#13#10
    Params = <>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select JPROJECTS.*,'
      '         nvl(prnt,0) prntid'
      'from jdms.JPROJECTS'
      '')
    AmjExcludFlds.Strings = (
      'NodeName')
    AmjTblName = 'JPROJECTS'
    AmjUser = 'jdms'
    Left = 736
    Top = 336
  end
end
