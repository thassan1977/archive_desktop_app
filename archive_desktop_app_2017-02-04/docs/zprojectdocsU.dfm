inherited zprojectdocsf: Tzprojectdocsf
  Width = 1088
  Height = 627
  object Splitter1: TSplitter [0]
    Left = 780
    Top = 31
    Width = 8
    Height = 596
    Align = alRight
    ExplicitLeft = 721
    ExplicitHeight = 494
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 31
    Width = 780
    Height = 596
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 143
    ExplicitHeight = 273
    object JPnlHead: TJPanel
      Left = 0
      Top = 0
      Width = 780
      Height = 596
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 143
      ExplicitHeight = 273
      object AmjSplitter1: TAmjSplitter
        Left = 0
        Top = 146
        Width = 780
        Height = 7
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 604
      end
      object JBodyPnl: TJPanel
        Left = 0
        Top = 153
        Width = 780
        Height = 443
        Align = alClient
        Caption = #1608#1579#1575#1574#1602' '#1575#1604#1605#1588#1585#1608#1593
        TabOrder = 0
        ExplicitWidth = 143
        ExplicitHeight = 120
        object AmjSplitter2: TAmjSplitter
          Left = 0
          Top = 192
          Width = 780
          Height = 7
          Cursor = crVSplit
          Align = alTop
          ExplicitWidth = 604
        end
        object JMainPages: TJPages
          AlignWithMargins = True
          Left = 3
          Top = 202
          Width = 774
          Height = 238
          ActivePage = docFileVersions
          Align = alClient
          BoldCurrentTab = True
          FlatColor = 10263441
          HotTrackStyle = htsTabBar
          ShowCloseButton = True
          ShowCloseButtonOnActiveTab = True
          ShowMenuButton = True
          TabColors.HighlightBar = 1350640
          TabIndex = 0
          TabOrder = 0
          TabSequence = tsReverse
          TabStyle = tsBackSlant
          UseGradients = False
          ExplicitWidth = 137
          ExplicitHeight = 414
          FixedDimension = 19
          object docFileVersions: TRzTabSheet
            Caption = #1573#1589#1583#1575#1585#1575#1578' '#1575#1604#1605#1604#1601' '#1575#1604#1581#1575#1604#1610
            ExplicitWidth = 135
            ExplicitHeight = 393
            object JazDBGrid1: TJazDBGrid
              Left = 0
              Top = 0
              Width = 772
              Height = 217
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
                  FieldName = 'FILENAME'
                  Footers = <>
                  Title.Caption = #1575#1587#1605' '#1575#1604#1605#1604#1601
                  Width = 184
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FILELINK'
                  Footers = <>
                  Title.Caption = #1585#1575#1576#1591' '#1575#1604#1605#1604#1601
                  Width = 157
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FILEFORMAT'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1589#1610#1594#1577' '#1575#1604#1605#1604#1601
                  Width = 63
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'jcrt_user'
                  Footers = <>
                  Title.Caption = #1575#1587#1605' '#1605#1606#1588#1574' '#1575#1604#1573#1589#1583#1575#1585
                  Width = 102
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'jcrt_dat'
                  Footers = <>
                  Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1573#1606#1588#1575#1569
                  Width = 75
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VIEWCO'
                  Footers = <>
                  Title.Caption = #1593#1583#1583' '#1605#1585#1575#1578' '#1575#1604#1605#1588#1575#1607#1583#1577
                  Width = 109
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DOWNLOADCO'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1593#1583#1583' '#1605#1585#1575#1578' '#1575#1604#1578#1581#1605#1610#1604
                  Width = 106
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
          Width = 780
          Height = 192
          Align = alTop
          Caption = 'Panel5'
          TabOrder = 2
          ExplicitWidth = 143
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 778
            Height = 190
            Align = alClient
            Caption = 'Panel8'
            TabOrder = 0
            ExplicitWidth = 141
            object ImageScrollBox1: TImageScrollBox
              Left = 128
              Top = -24
              Width = 57
              Height = 65
              HorzScrollBar.Tracking = True
              HorzScrollBar.Visible = False
              VertScrollBar.Tracking = True
              VertScrollBar.Visible = False
              ZoomPercent = 100.000000000000000000
              MouseHandlerOwnership = True
              TabOrder = 0
              Visible = False
            end
            object Panel6: TPanel
              Left = 1
              Top = 1
              Width = 776
              Height = 30
              Align = alTop
              Caption = #1575#1604#1605#1580#1604#1583#1575#1578
              Color = clActiveCaption
              ParentBackground = False
              TabOrder = 1
              ExplicitWidth = 139
            end
            object Panel10: TPanel
              Left = 1
              Top = 31
              Width = 776
              Height = 158
              Align = alClient
              Caption = 'Panel10'
              TabOrder = 2
              ExplicitWidth = 139
              object JazDBGrid4: TJazDBGrid
                Left = 1
                Top = 1
                Width = 591
                Height = 156
                Align = alClient
                DataSource = DQFolders
                DynProps = <>
                IndicatorOptions = [gioShowRowIndicatorEh]
                ReadOnly = True
                TabOrder = 0
                TitleParams.MultiTitle = True
                Columns = <
                  item
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                    Title.Caption = #1575#1587#1605' '#1575#1604#1605#1604#1601' '#1571#1608' '#1575#1604#1605#1580#1604#1583
                    Width = 69
                  end
                  item
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'ISFOLDER'
                    Footers = <>
                    Title.Caption = #1607#1604' '#1607#1608' '#1605#1604#1580#1583
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
                    Width = 69
                  end
                  item
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'NOTES'
                    Footers = <>
                    Title.Caption = #1605#1604#1575#1581#1592#1575#1578
                    Title.SortIndex = 1
                    Title.SortMarker = smUpEh
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
              object AmjDbTree2: TAmjDbTree
                Left = 592
                Top = 1
                Width = 183
                Height = 156
                Align = alRight
                ButtonFillMode = fmShaded
                CheckImageKind = ckXP
                DragMode = dmAutomatic
                Enabled = False
                Header.AutoSizeIndex = 0
                Header.Font.Charset = DEFAULT_CHARSET
                Header.Font.Color = clWindowText
                Header.Font.Height = -11
                Header.Font.Name = 'Tahoma'
                Header.Font.Style = []
                Header.MainColumn = -1
                Images = ImageList1
                IncrementalSearch = isAll
                IncrementalSearchTimeout = 500
                NodeDataSize = 28
                TabOrder = 1
                TabStop = False
                TreeOptions.AnimationOptions = [toAnimatedToggle]
                TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoSpanColumns, toAutoTristateTracking]
                TreeOptions.MiscOptions = [toAcceptOLEDrop, toEditable, toInitOnSave, toToggleOnDblClick, toWheelPanning]
                TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toShowVertGridLines, toThemeAware, toUseBlendedImages]
                TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect, toRightClickSelect]
                TreeOptions.StringOptions = [toSaveCaptions, toShowStaticText, toAutoAcceptEditChange]
                DBOpt.IDName = 'ID'
                DBOpt.IDParent = 'PRNT'
                DBOpt.ViewName = 'NAME'
                DBOpt.ImgIdxName = 'ISFOLDER'
                DBOpt.InitParent = '0'
                DBOpt.DataSource = DQFolders
                DBOptions = [dboAlwaysStructured, dboCheckDBStructure, dboParentStructure, dboReadOnly, dboTrackActive, dboTrackCursor, dboViewAll, dboWriteLevel, dboWriteSecondary]
                ExplicitLeft = -45
                Columns = <>
              end
            end
          end
        end
      end
      object JGrid1: TJazDBGrid
        Left = 0
        Top = 25
        Width = 780
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
        Width = 780
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
        ExplicitWidth = 143
        object Image2: TImage
          Left = 748
          Top = 0
          Width = 32
          Height = 25
          Align = alRight
          ExplicitLeft = 719
          ExplicitTop = 1
          ExplicitHeight = 29
        end
      end
      object eFileName: TEdit
        Left = -78
        Top = 272
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'eFileName'
        Visible = False
      end
    end
  end
  inherited JFTitle: TJPanel
    Width = 1088
    Caption = #1605#1580#1604#1583#1575#1578' '#1575#1604#1605#1588#1585#1608#1593
    ExplicitWidth = 451
    inherited JTitleImg: TImage
      Left = 1056
      ExplicitLeft = 732
    end
  end
  object Panel3: TPanel [3]
    Left = 788
    Top = 31
    Width = 300
    Height = 596
    Align = alRight
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitLeft = 151
    ExplicitHeight = 273
    object AmjDbTree1: TAmjDbTree
      Left = 1
      Top = 25
      Width = 298
      Height = 570
      Align = alClient
      AnimationDuration = 20
      AutoExpandDelay = 50
      AutoScrollDelay = 50
      CheckImageKind = ckXP
      DragMode = dmAutomatic
      EditDelay = 500
      Header.AutoSizeIndex = -1
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Header.MainColumn = -1
      Images = ImageList1
      IncrementalSearch = isAll
      IncrementalSearchTimeout = 500
      LineMode = lmBands
      NodeDataSize = 28
      TabOrder = 0
      TabStop = False
      TreeOptions.AnimationOptions = [toAnimatedToggle, toAdvancedAnimatedToggle]
      TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoSpanColumns, toAutoTristateTracking]
      TreeOptions.MiscOptions = [toAcceptOLEDrop, toEditable, toInitOnSave, toToggleOnDblClick, toWheelPanning]
      TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toShowVertGridLines, toThemeAware, toUseBlendedImages]
      TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect, toRightClickSelect]
      TreeOptions.StringOptions = [toSaveCaptions, toShowStaticText, toAutoAcceptEditChange]
      DBOpt.IDName = 'ID'
      DBOpt.IDParent = 'prntid'
      DBOpt.ViewName = 'NodeName'
      DBOpt.ImgIdxName = 'lvl'
      DBOpt.InitParent = '0'
      DBOpt.DataSource = DQ
      DBOptions = [dboAlwaysStructured, dboCheckDBStructure, dboParentStructure, dboReadOnly, dboTrackActive, dboTrackCursor, dboViewAll, dboWriteLevel, dboWriteSecondary]
      ExplicitHeight = 247
      Columns = <>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 298
      Height = 24
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 230
        Top = 1
        Width = 67
        Height = 22
        Align = alRight
        Caption = #1575#1587#1605' '#1575#1604#1605#1588#1585#1608#1593
        ExplicitHeight = 13
      end
      object zproject: TDMZEditFind
        Left = 69
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
        ExplicitHeight = 21
      end
    end
    object ImageScrollBox: TImageScrollBox
      Left = 24
      Top = 121
      Width = 100
      Height = 100
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
  inherited JRActions: TAmjActionList
    AmjActionBar.Enabled = False
    ParentDraw = Owner
    Left = 610
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
    Left = 848
    Top = 232
  end
  inherited JQ: TAmjSet
    CommandText = 'select * from jdms.V_PROJECTS'#13#10
    AfterOpen = JQAfterOpen
    AfterInsert = JQAfterInsert
    BeforeDelete = JQBeforeDelete
    AfterScroll = JQAfterScroll
    SQL.Strings = (
      'select * from jdms.V_PROJECTS')
    AmjExcludFlds.Strings = (
      'NodeName')
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
    object AmjAction19: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Aed_Edit
      ConfirmNeed = False
      Imageid = REC_edit
      BtnShowCaption = False
      Caption = #1578#1593#1583#1610#1604
      Hint = #1578#1593#1583#1610#1604' '#1575#1604#1587#1580#1604
      ShortCut = 112
    end
    object AmjAction20: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Aed_Post
      ConfirmNeed = False
      Imageid = REC_post
      BtnShowCaption = False
      Caption = #1581#1601#1592
      Hint = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      ShortCut = 121
    end
  end
  object dq3: TDataSource
    DataSet = jq3
    Left = 528
    Top = 472
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
    AfterOpen = jq2AfterOpen
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
    AmjExcludFlds.Strings = (
      'FULLTEXT')
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
    Left = 560
    Top = 472
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
    Left = 264
    Top = 488
  end
  object DqDOCFILES: TDataSource
    DataSet = qDOCFILES
    Left = 200
    Top = 539
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
    Left = 366
    Top = 524
  end
  object ImageNew: TPopupMenu
    AutoHotkeys = maManual
    Left = 408
    Top = 472
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
    end
    object N15: TMenuItem
      Caption = #1578#1589#1594#1610#1585
      OnClick = N15Click
    end
  end
  object ImageOp: TPopupMenu
    AutoHotkeys = maManual
    Left = 352
    Top = 384
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
    Left = 318
    Top = 503
  end
  object DataSource2: TDataSource
    DataSet = qVersions
    Left = 65
    Top = 456
  end
  object qVersions: TAmjSet
    Aggregates = <>
    CommandText = 
      'SELECT'#13#10'ID, PROJID, DOCID,'#13#10'   FILEID, FILENAME, NOTE,'#13#10'   FILEL' +
      'INK, FILEFORMAT, VIEWCO,'#13#10'   DOWNLOADCO, ISDELETED, ISACTIVE,FIL' +
      'E_MIME,'#13#10'  JCRT_USER,JCRT_DAT, JUPDT_USER, JUPDT_DAT'#13#10'FROM JDMS.' +
      'JPROJ_DOCS_FILES_VERSION'#13#10'WHERE JDMS.JPROJ_DOCS_FILES_VERSION.FI' +
      'LEID=:pid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = qVersionsBeforeOpen
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'SELECT'
      'ID, PROJID, DOCID,'
      '   FILEID, FILENAME, NOTE,'
      '   FILELINK, FILEFORMAT, VIEWCO,'
      '   DOWNLOADCO, ISDELETED, ISACTIVE,FILE_MIME,'
      '  JCRT_USER,JCRT_DAT, JUPDT_USER, JUPDT_DAT'
      'FROM JDMS.JPROJ_DOCS_FILES_VERSION'
      'WHERE JDMS.JPROJ_DOCS_FILES_VERSION.FILEID=:pid')
    AmjExcludFlds.Strings = (
      '')
    AmjTblName = 'DOC_FILES_VERSION'
    AmjUser = 'jedms'
    Left = 120
    Top = 448
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
    ParentDraw = docFileVersions
    Left = 482
    Top = 524
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
    object AmjAction2: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 100
      ShortCut = 112
      OnHandle = AmjAction2Handle
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
    Left = 32
    Top = 104
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
    Left = 120
    Top = 112
  end
  object JQFolders: TAmjSet
    Aggregates = <>
    CommandText = 
      'SELECT'#13#10'ID, PROJID, DOCID,'#13#10'   ISFOLDER, NAME, PATH,'#13#10'  nvl( PRN' +
      'T,0) PRNT, NOTES, JCRT_USER,'#13#10'   JCRT_DAT, JUPDT_USER, JUPDT_DAT' +
      ','#13#10'   FILE_ON_SERVER, FILE_OR_LOB,'#13#10'   FILE_MIME, FILE_EXT'#13#10'FROM' +
      ' JDMS.JPROJ_DOCS_FOLDERS'#13#10'where docid = :pid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = JQFoldersBeforeOpen
    AfterOpen = JQFoldersAfterOpen
    AfterInsert = JQFoldersAfterInsert
    AfterScroll = JQFoldersAfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'SELECT'
      'ID, PROJID, DOCID,'
      '   ISFOLDER, NAME, PATH,'
      '  nvl( PRNT,0) PRNT, NOTES, JCRT_USER,'
      '   JCRT_DAT, JUPDT_USER, JUPDT_DAT,'
      '   FILE_ON_SERVER, FILE_OR_LOB,'
      '   FILE_MIME, FILE_EXT'
      'FROM JDMS.JPROJ_DOCS_FOLDERS'
      'where docid = :pid')
    AmjExcludFlds.Strings = (
      'BIN_ON_DB'
      'FILE_ON_SERVER')
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
    Left = 280
    Top = 296
    object actnAddFolder: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 100
      Caption = #1573#1590#1575#1601#1577' '#1605#1580#1604#1583
      OnHandle = actnAddFolderHandle
    end
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
    object FolderMultiScan: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 120
      Caption = #1605#1587#1581' '#1593#1583#1577' '#1589#1608#1585
      OnHandle = FolderMultiScanHandle
    end
    object FolderUpdateFile: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 120
      Caption = #1578#1576#1583#1610#1604' '#1605#1581#1578#1608#1609' '#1575#1604#1605#1604#1601
      OnHandle = FolderUpdateFileHandle
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
    Left = 656
    Top = 304
  end
  object jqFoldersScan: TAmjSet
    Aggregates = <>
    CommandText = 
      'begin'#13#10' insert  into jdms.JPROJ_DOCS_FOLDERS (id,PROJID,docid,IS' +
      'FOLDER,NAME,path) values (:pid,:pPROJID,:pdocid,:pISFOLDER,:pNAM' +
      'E,:ppath);'#13#10'end'#13#10' commit;'#13#10#13#10
    Params = <
      item
        DataType = ftString
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPROJID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pdocid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pISFOLDER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ppath'
        ParamType = ptInput
      end>
    BeforeOpen = jqFoldersScanBeforeOpen
    AfterInsert = jqFoldersScanAfterInsert
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'begin'
      
        ' insert  into jdms.JPROJ_DOCS_FOLDERS (id,PROJID,docid,ISFOLDER,' +
        'NAME,path) values (:pid,:pPROJID,:pdocid,:pISFOLDER,:pNAME,:ppat' +
        'h);'
      'end'
      ' commit;'
      '')
    AmjExcludFlds.Strings = (
      'BIN_ON_DB'
      'FILE_ON_SERVER')
    Left = 368
    Top = 264
  end
  object jq2scan: TAmjSet
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
    BeforeOpen = jq2scanBeforeOpen
    AfterInsert = jq2scanAfterInsert
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
    AmjExcludFlds.Strings = (
      'FULLTEXT')
    AmjTblName = 'JPROJ_DOCS'
    AmjUser = 'jdms'
    Left = 336
    Top = 104
  end
  object AmjSet2: TAmjSet
    Aggregates = <>
    Params = <>
    AfterScroll = AmjSet2AfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    Left = 496
    Top = 96
  end
  object ImageList1: TImageList
    Left = 63
    Top = 181
    Bitmap = {
      494C01011D002200880010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00FFFFFF000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BDBDBD00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000007B7B7B007B7B7B0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00000000000000000000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD007B7B7B00000000007B7B7B00000000000000000000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400BDBDBD00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008484000084840000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000084840000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008484000084840000FFFF000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000000084840000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000007B7B7B000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008484000084840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      000000000000FFFF0000BDBDBD0000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000084840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000008484000084840000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF000000000000BDBDBD000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000008484000084840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF000000
      0000000000000084840000FFFF0000FFFF00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      84000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000007B7B7B007B7B7B0000FFFF000000
      0000000000000084840000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF00000000000000000000000000000000000000FFFF0000FF
      FF00008484000084840000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B000000000000000000000000007B7B7B000000
      000000000000000000007B7B7B000000000000000000000084000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000007B7B7B000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B0000000000000000000000
      FF000000FF000000FF00000000007B7B7B000000000000000000000000000000
      000000000000FFFFFF007B7B7B000000FF007B7B7B00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF000000FF000000FF000000FF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF007B7B7B000000FF007B7B7B00FFFFFF0000FFFF00FFFF
      FF0000FFFF00000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF00000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000FF007B7B7B0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
      FF000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000008484000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FFFF00000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000000000FF
      FF0000000000008484000000000000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000FFFF0000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF007B7B7B007B7B7B0000FFFF00FFFFFF007B7B7B000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000848400000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF000000
      000000FFFF00000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF000000FF000000FF00FFFFFF0000FFFF007B7B7B000000FF000000FF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF000084840000848400000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF000000FF000000FF007B7B7B00FFFFFF007B7B7B000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008484000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000BDBDBD00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD000000000000000000000000000000000000000000000000000000FF000000
      FF0000000000000000007B7B7B00000000007B7B7B00000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000084000000FF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000084000000FF000000FF00000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD0000000000000000000000000000000000000000000000FF00000000000000
      FF000000FF000000FF007B7B7B00000000007B7B7B0000000000000000000000
      00000000FF000000FF00000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000084000000FF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF0000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000007B7B7B00000000007B7B7B0000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000840000000000000084000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000FF000000FF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007B7B7B00000000007B7B7B0000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000FFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000FFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000FFFF000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF007B7B7B0000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000007B7B7B0000000000000000007B7B7B007B7B7B00FFFFFF00BDBD
      BD00FFFFFF000000FF00FFFFFF00BDBDBD00FFFFFF007B7B7B007B7B7B000000
      0000000000000000000000000000000000007B7B7B007B7B7B00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00BDBDBD00FFFF
      FF00BDBDBD000000FF00BDBDBD00FFFFFF00BDBDBD007B7B7B00000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF007B7B7B00000000000000
      000000000000000000000000000000000000000000007B7B7B00BDBDBD000000
      FF000000FF000000FF000000FF000000FF00BDBDBD007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      00007B7B7B00000000000000000000000000000000007B7B7B00BDBDBD00FFFF
      FF00BDBDBD000000FF00BDBDBD00FFFFFF00BDBDBD007B7B7B00000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00FFFFFF00BDBD
      BD00FFFFFF000000FF00FFFFFF00BDBDBD00FFFFFF007B7B7B007B7B7B000000
      0000000000000000000000000000000000007B7B7B007B7B7B00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF007B7B7B0000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000FF007B7B7B0000000000000000007B7B7B000000FF000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000007B7B7B0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000FFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000FFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      00000000FF000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B0000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      00007B7B7B000000FF000000000000000000000000007B7B7B00000000000000
      00007B7B7B007B7B7B0000000000000000007B7B7B0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007B7B7B007B7B
      7B0000000000000000007B7B7B007B7B7B0000FFFF0000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000FFFF0000FFFF007B7B
      7B0000000000000000007B7B7B0000FFFF0000FFFF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000FF007B7B7B000000000000000000000000007B7B7B000000
      FF00000000000000FF0000000000000000007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B
      7B007B7B7B0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF000000000000000000FF000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B0000000000000000007B7B7B0000000000FF00000000000000FF000000FF00
      000000000000000000000000000000000000000000007B7B7B007B7B7B000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007B7B7B007B7B7B0000FFFF0000000000FF00000000000000000000000000
      0000FF0000000000000000000000000000007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007B7B7B0000FFFF0000FFFF0000000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FFFF0000FFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000FF0000000000000000007B7B7B0000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000000000FF00
      000000000000FF000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000FF0000000000
      000000000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BDBDBD00FFFFFF0000000000FFFFFF000000000000FF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000FF0000000000
      000000000000FF000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000BDBD
      BD00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000BDBD
      BD00FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B000000
      FF000000FF000000FF000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF0000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000FFFF0000FFFF000000
      00007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B
      7B007B7B7B0000FFFF0000FFFF00000000000000000000FFFF00000000000000
      00000000000000000000FF000000FF00000000000000000000000000FF000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF00000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000FFFF007B7B7B007B7B
      7B000000000000000000FF000000FF00000000000000000000000000FF000000
      00000000000000000000FFFF000000000000000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000007B7B7B007B7B7B0000FFFF000000
      00000000000000000000FF000000FF00000000000000000000000000FF000000
      00000000000000000000FFFF0000000000000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000FFFF000000
      00000000000000000000FF000000FF00000000000000000000000000FF000000
      00000000000000000000FFFF00000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000FFFF007B7B
      7B007B7B7B0000000000FF000000FF00000000000000000000000000FF000000
      00000000000000000000FFFF00000000000084000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFF
      FF00FFFFFF0000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000000000000000007B7B7B007B7B7B0000FF
      FF000000000000000000FF000000FF00000000000000000000000000FF000000
      00000000000000000000FFFF000000000000FF00000084000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF0000000000000000000000000000FF
      FF000084840000000000FF000000FF00000000000000000000000000FF000000
      00000000000000000000000000000000000000000000FF00000084000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000084840000000000000000000000000000000000000000000000FF000000
      00000000000000000000FFFF0000000000000000000000000000FF0000008400
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000FF000000FF00000000000000000000000000FF000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000084000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000084000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000084000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000084000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B
      7B00000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF00424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0080010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E007000000000000E007000000000000
      E007000000000000E007000000000000E00F000000000000E01F000000000000
      E03F000000000000E07F000000000000FFF8FC7FE408C003FFF8F83FFFF0C003
      FFE0F01FFFE0C003FFE0F01FFFC1C003FF81F01FFF83C003FF03F01FFF07C003
      FF07F01FFE0FC003840FF01FFC1FC003001FF83FF83FC003003FFEC3F07FC003
      007FFEB9E0FFC003003FFF7DC1FFC003003FFF3D83FFC003803FFC9907FFC003
      C03FF9C30FFFC003E07FF3FF9FFFC003FFFF847FFFFFFFFF000000EF0162F83F
      000031BFFFE3E00F000039FFFE63C0070000993FFC0380030000CA1FF8038003
      0000F40FF003000100009C07F003000100009603E00300010000CB01C0030001
      0000FF80800300010000F7C0000380030000FFE0000380030000EFF001E3C007
      0000FFF883F7E00F0000FFFCC7F7F83FFFFFFFFFC01FC007F83FFE3FE02FC007
      E00FF81FFFE3C007CC47F40FFF31C0078463E007FFF0C007A0738003FFF0C007
      31F94001FFF0C00738F90000FFE1C0073C790000FFC3C0073C398001FF83C007
      3C19C003FE07C0079C0BE00FFC0FC0078C43F07FF03FC007C467F8FFE0FFC007
      E00FFFFF83FFC007F83FFFFF0FFFC007FFFFFFFFFFFDFFFDFFFFFFFFFFF8FFF8
      20202030FFF1FFF172717379FFE3FFE303030379FFC7FFC7A723A701E08FE08F
      A7A7A7B3C01FC01F878787B3803F803FCF8FCF93001F001FCFCFCFC7001F001F
      FFFFF2C7001F001FE7E7FC67001F001FE3C7FC2F001F001FE7E7FFFF803F803F
      E997FFFFC07FC07FFC3FFFFFE0FFE0FFFC00FFFFFFFFFFFFFC00F83FFFFFFFFF
      FC00E00FF18321180000CFC7FBC77399000187E3F9C703C10003A3F3F807A7E9
      000731F9FD8FA7F1000738F9FC8F87F900233C79FC8FCFF900013E39FE1FCFFD
      00003F19FE1FFFFF00239F8BFE1FE7F300238FC3FF3FE3E30023C7E7FF7FE7F3
      0007E00FFFFFE9CB003FF83FFFFFFC1FFF7EFC00FFFFFFDF9001FC00FFE7FFCF
      C003FC00FFC7FFC7E003FC008F8F0003E003000007000001E003000032000000
      E003000000000001000100008000000380000023F9000007E0070001E100000F
      E00F0000C900001FE00F0023C900007FE0270063C30000FFC07300C3E30001FF
      9E790107FF0103FF7EFE03FFFF03FFFFFFFFFFFFF007FF7E1808FDFFC0039001
      1808F8FF8003C0031808F07F8003E0030808E03F8003E0030808C01F8003E003
      8808800F8003E00380080007800300018008000380038000C00880018003E007
      C008C0038003E00FC008E00F8003E00FF80FF00F8003E027FF8FF81FB007C073
      FF8FFC7FD0079E79FF8FFFFFEAAF7EFE00000000000000000000000000000000
      000000000000}
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 424
    Top = 184
  end
  object getBlob: TAmjSet
    Aggregates = <>
    CommandText = 
      'SELECT  ID, BIN_ON_DB from JDMS.JPROJ_DOCS_FOLDERS '#13#10'WHERE ID=:p' +
      'id'#13#10
    Params = <
      item
        DataType = ftString
        Name = 'pid'
        ParamType = ptUnknown
      end>
    AfterInsert = JQAfterInsert
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'SELECT  ID, BIN_ON_DB from JDMS.JPROJ_DOCS_FOLDERS '
      'WHERE ID=:pid')
    AmjUser = 'jdms'
    Left = 368
    Top = 309
  end
  object copyFileToversions: TAmjSet
    Aggregates = <>
    CommandText = 'BEGIN'#13#10'  JDMS.UTILS.copyDocFileToVersions(:pid, :puser);'#13#10'End;'#13#10
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptUnknown
      end>
    AfterInsert = JQAfterInsert
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'BEGIN'
      '  JDMS.UTILS.copyDocFileToVersions(:pid, :puser);'
      'End;')
    AmjUser = 'jdms'
    Left = 488
    Top = 277
  end
end
