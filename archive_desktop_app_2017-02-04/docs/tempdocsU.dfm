inherited tempdocsf: Ttempdocsf
  Width = 699
  Height = 387
  object AmjSplitter1: TAmjSplitter [0]
    Left = 0
    Top = -9
    Width = 699
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 31
    ExplicitWidth = 178
  end
  inherited JFTitle: TJPanel
    Width = 699
    Caption = #1608#1579#1575#1574#1602' '#1575#1604#1605#1588#1585#1608#1593
    inherited JTitleImg: TImage
      Left = 667
      ExplicitLeft = 686
    end
  end
  inherited JDBGrid1: TJazDBGrid
    Top = 61
    Width = 699
    Height = 116
    ReadOnly = True
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'prjname'
        Footers = <>
        Title.Caption = #1575#1587#1605' '#1575#1604#1605#1588#1585#1608#1593
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NO'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1585#1602#1605' '#1575#1604#1608#1579#1610#1602#1577
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DAT'
        Footers = <>
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1608#1579#1610#1602#1577
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'dstname'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1605#1589#1583#1585
        Title.SortIndex = 1
        Title.SortMarker = smUpEh
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1575#1587#1605
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'stsname'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1581#1575#1604#1577' '#1575#1604#1608#1579#1610#1602#1577
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ISDELETED'
        Footers = <>
        Title.Caption = #1605#1581#1584#1608#1601#1577#1567
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ISACTIVE'
        Footers = <>
        Title.Caption = #1601#1593#1575#1604#1577#1567
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'VIEWCO'
        Footers = <>
        Title.Caption = #1593#1583#1583' '#1605#1585#1575#1578' '#1575#1604#1605#1588#1575#1607#1583#1577
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'tmpname'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1575#1587#1605' '#1575#1604#1602#1575#1604#1576
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'secname'
        Footers = <>
        Title.Caption = #1605#1587#1578#1608#1609' '#1575#1604#1587#1585#1610#1577
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOTE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1605#1604#1575#1581#1592#1575#1578
        Width = 90
      end>
  end
  object Det_Band: TPanel [3]
    Left = 0
    Top = -6
    Width = 699
    Height = 19
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = -89
    ExplicitWidth = 451
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 31
    Width = 699
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitWidth = 451
    object Panel3: TPanel
      Left = -95
      Top = 0
      Width = 794
      Height = 30
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = -343
      object Label1: TLabel
        Left = 714
        Top = 6
        Width = 67
        Height = 13
        Caption = #1575#1587#1605' '#1575#1604#1605#1588#1585#1608#1593
      end
      object zproject: TDMZEditFind
        Left = 539
        Top = 3
        Width = 161
        Height = 21
        Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
        Color = clInfoBk
        ParentShowHint = False
        TabOrder = 0
        TableName = 'jedms.ZPROJ'
        IDField = 'id'
        NameField = 'NAME'
        NoField = 'id'
        OnFind = zprojectFind
        IDMustBeNumber = False
        Delimater = ' - '
        ChildsOnly = False
      end
    end
  end
  object JMainPages: TJPages [5]
    AlignWithMargins = True
    Left = 3
    Top = 16
    Width = 693
    Height = 368
    ActivePage = PictsTS
    Align = alBottom
    BoldCurrentTab = True
    FlatColor = 10263441
    HotTrackStyle = htsTabBar
    ShowCloseButton = True
    ShowCloseButtonOnActiveTab = True
    ShowMenuButton = True
    TabColors.HighlightBar = 1350640
    TabIndex = 1
    TabOrder = 4
    TabSequence = tsReverse
    TabStyle = tsBackSlant
    UseGradients = False
    ExplicitTop = -67
    ExplicitWidth = 445
    FixedDimension = 19
    object TaminTS: TRzTabSheet
      Caption = #1605#1593#1604#1608#1605#1575#1578' '#1575#1604#1605#1604#1601
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JazDBGrid3: TJazDBGrid
        Left = 0
        Top = 0
        Width = 813
        Height = 347
        Align = alClient
        DataSource = DSUBJ_TAMIN
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
            Width = 83
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
      ExplicitWidth = 443
      object ImageScrollBox: TImageScrollBox
        Left = 0
        Top = 0
        Width = 390
        Height = 347
        HorzScrollBar.Tracking = True
        HorzScrollBar.Visible = False
        VertScrollBar.Tracking = True
        VertScrollBar.Visible = False
        ZoomMode = zmFitWidth
        ZoomPercent = 100.000000000000000000
        MouseHandlerOwnership = True
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 142
      end
      object Panel2: TPanel
        Left = 390
        Top = 0
        Width = 301
        Height = 347
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 142
        object JPanel1: TJPanel
          Left = 0
          Top = 123
          Width = 301
          Height = 224
          Align = alBottom
          TabOrder = 0
          object JPanel2: TJPanel
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
          object JGrid2: TJazDBGrid
            Left = 0
            Top = 25
            Width = 301
            Height = 199
            Align = alClient
            DataSource = DqDOCFILES
            DynProps = <>
            FooterParams.Color = clWindow
            ImeMode = imDisable
            IndicatorOptions = [gioShowRowIndicatorEh]
            TabOrder = 2
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'FILENAME'
                Footers = <>
                Title.Caption = #1575#1587#1605' '#1575#1604#1605#1604#1601
                Visible = False
                Width = 91
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'ORDR'
                Footers = <>
                Title.Caption = #1575#1604#1578#1585#1578#1610#1576
                Visible = False
                Width = 92
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'NOTE'
                Footers = <>
                Title.Caption = #1605#1604#1575#1581#1592#1575#1578
                Width = 235
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object ProgressBar: TProgressBar
            Left = 78
            Top = 200
            Width = 150
            Height = 17
            TabOrder = 1
            Visible = False
          end
        end
        object JazDBGrid2: TJazDBGrid
          Left = 0
          Top = 0
          Width = 301
          Height = 123
          Align = alClient
          DataSource = dq1
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
              Width = 75
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NOTE'
              Footers = <>
              Title.Caption = #1605#1604#1575#1581#1592#1575#1578
              Title.SortIndex = 1
              Title.SortMarker = smUpEh
              Width = 75
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object SubCtrctTS: TRzTabSheet
      Caption = #1573#1589#1583#1575#1585#1575#1578' '#1575#1604#1605#1604#1601' '#1575#1604#1581#1575#1604#1610
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JazDBGrid1: TJazDBGrid
        Left = 0
        Top = 0
        Width = 813
        Height = 347
        Align = alClient
        DataSource = DqSubSubjs
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
  inherited JRActions: TAmjActionList
    ParentDraw = Owner
    object new: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = REC_edit
      BtnShowCaption = True
      BtnWidth = 80
      Caption = #1580#1583#1610#1583
      Hint = #1580#1583#1610#1583
      OnHandle = newHandle
    end
    object CtrctEdit: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = REC_edit
      BtnShowCaption = True
      BtnWidth = 80
      Caption = #1578#1593#1583#1610#1604
      Hint = #1578#1593#1583#1610#1604
      OnHandle = CtrctEditHandle
    end
  end
  inherited DQ: TDataSource
    Left = 256
    Top = 112
  end
  inherited JQ: TAmjSet
    AggregatesActive = True
    CommandText = 
      'select jedms.DOC.*, ZPROJ.NAME prjname, ZDEST.NAME dstname,'#13#10'ZST' +
      'ATUS.NAME stsname,ZTMPLT.NAME tmpname,zsecret.NAME secname'#13#10'from' +
      ' jedms.DOC,jedms.ZPROJ,JEDMS.ZDEST,JEDMS.ZSTATUS,JEDMS.ZTMPLT,JE' +
      'DMS.zsecret,JEDMS.FOLDERS'#13#10'where DOC.ZPROJID=:pid'#13#10'and DOC.ZSRCI' +
      'D=zdest.id(+)'#13#10'and DOC.ZSTATUSID=zstatus.id(+)'#13#10'and DOC.ZTMPLTID' +
      '=ztmplt.id(+)'#13#10'and DOC.ZSECRETID=zsecret.id(+)'#13#10'and DOC.folderid' +
      '=FOLDERS.id'#13#10'and doc.ZPROJID = ZPROJ.ID(+)'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = JQBeforeOpen
    AfterScroll = JQAfterScroll
    SQL.Strings = (
      'select jedms.DOC.*, ZPROJ.NAME prjname, ZDEST.NAME dstname,'
      'ZSTATUS.NAME stsname,ZTMPLT.NAME tmpname,zsecret.NAME secname'
      
        'from jedms.DOC,jedms.ZPROJ,JEDMS.ZDEST,JEDMS.ZSTATUS,JEDMS.ZTMPL' +
        'T,JEDMS.zsecret,JEDMS.FOLDERS'
      'where DOC.ZPROJID=:pid'
      'and DOC.ZSRCID=zdest.id(+)'
      'and DOC.ZSTATUSID=zstatus.id(+)'
      'and DOC.ZTMPLTID=ztmplt.id(+)'
      'and DOC.ZSECRETID=zsecret.id(+)'
      'and DOC.folderid=FOLDERS.id'
      'and doc.ZPROJID = ZPROJ.ID(+)')
    AmjTblName = 'DOC'
    AmjUser = 'jedms'
    Top = 104
  end
  object SUBJ_TAMINAct: TAmjActionList
    FilterVisible = False
    DataSource = DSUBJ_TAMIN
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = TaminTS
    Left = 138
    Top = 391
    object AmjAction20: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionVav'
      ShortCut = 112
    end
    object AmjAction21: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_seprator
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionsep1'
      ShortCut = 112
    end
    object AmjAction22: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_Refresh
      ConfirmNeed = False
      Imageid = data_refresh
      BtnShowCaption = False
      Caption = 'AmjActionRefresh'
      Hint = #1578#1581#1583#1610#1579' '#1575#1604#1576#1610#1575#1606#1575#1578
      ShortCut = 119
    end
    object AmjAction23: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_Filter
      ConfirmNeed = False
      Imageid = data_filter
      BtnShowCaption = False
      Caption = 'AmjActionRefresh'
      Hint = #1573#1592#1607#1575#1585' '#1608#1573#1582#1601#1575#1569' '#1588#1585#1608#1591' '#1575#1604#1601#1604#1578#1585#1577
      ShortCut = 118
    end
    object AmjAction24: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AData_PrintOpt
      ConfirmNeed = False
      Imageid = PRNT_SETUP
      BtnShowCaption = False
      Caption = 'AmjAction5'
      Hint = #1573#1593#1583#1575#1583#1575#1578' '#1575#1604#1591#1576#1575#1593#1577
      ShortCut = 120
    end
  end
  object qSUBJ_TAMIN: TAmjSet
    Aggregates = <>
    AggregatesActive = True
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
    BeforeOpen = qSUBJ_TAMINBeforeOpen
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select jedms.DOC_FILES.*, ZPROJ.NAME prjname'
      'from jedms.DOC_FILES,jedms.ZPROJ'
      'where DOC_FILES.PROJID=zproj.id'
      'and DOC_FILES.DOCID=:pid')
    AmjTblName = 'DOC_FILES'
    AmjUser = 'jedms'
    Left = 184
    Top = 472
  end
  object DSUBJ_TAMIN: TDataSource
    DataSet = qSUBJ_TAMIN
    Left = 248
    Top = 464
  end
  object DqSubSubjs: TDataSource
    DataSet = qSubSubjs
    Left = 248
    Top = 392
  end
  object qSubSubjs: TAmjSet
    Aggregates = <>
    AggregatesActive = True
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
    BeforeOpen = qSubSubjsBeforeOpen
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      
        'select jedms.DOC_FILES_VERSION.*, ZPROJ.NAME prjname, ZFIELD.NAM' +
        'E filen'
      'from jedms.DOC_FILES_VERSION,jedms.ZPROJ,JEDMS.ZFIELD'
      'where DOC_FILES_VERSION.PROJID=zproj.id(+)'
      'and DOC_FILES_VERSION.FILEID=ZFIELD.id(+)'
      'and DOC_FILES_VERSION.DOCID=:pid')
    AmjTblName = 'DOC_FILES_VERSION'
    AmjUser = 'jedms'
    Left = 200
    Top = 392
  end
  object ImageNew: TPopupMenu
    AutoHotkeys = maManual
    Left = 216
    Top = 208
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
  object OpenDialog1: TOpenDialog
    Left = 30
    Top = 215
  end
  object ImageOp: TPopupMenu
    AutoHotkeys = maManual
    Left = 192
    Top = 176
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
  object ImageView: TPopupMenu
    AutoHotkeys = maManual
    Left = 128
    Top = 200
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
  object dq1: TDataSource
    AutoEdit = False
    DataSet = jq1
    Left = 312
    Top = 208
  end
  object jq1: TAmjSet
    Aggregates = <>
    CommandText = 
      'select jedms.DOC_FILES.*, ZPROJ.NAME prjname'#13#10'from jedms.DOC_FIL' +
      'ES,jedms.ZPROJ'#13#10'where DOC_FILES.PROJID=zproj.id'#13#10'and DOC_FILES.D' +
      'OCID=:pid'#13#10'order by DOC_FILES.id desc'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = jq1BeforeOpen
    BeforeInsert = jq1BeforeInsert
    AfterInsert = jq1AfterInsert
    AfterScroll = jq1AfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select jedms.DOC_FILES.*, ZPROJ.NAME prjname'
      'from jedms.DOC_FILES,jedms.ZPROJ'
      'where DOC_FILES.PROJID=zproj.id'
      'and DOC_FILES.DOCID=:pid'
      'order by DOC_FILES.id desc')
    AmjExcludFlds.Strings = (
      'fdata')
    AmjTblName = 'DOC_FILES'
    AmjUser = 'jedms'
    Left = 264
    Top = 208
  end
  object AmjActionList1: TAmjActionList
    FilterVisible = False
    DbGrid = JazDBGrid2
    DataSource = dq1
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = PictsTS
    Left = 362
    Top = 212
    object AmjAction6: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionVav'
      ShortCut = 112
    end
    object AmjAction7: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_seprator
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionsep1'
      ShortCut = 112
    end
    object AmjAction8: TAmjAction
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
    object AmjAction9: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AEdit_EDit
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      ShortCut = 112
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
  end
  object DqDOCFILES: TDataSource
    AutoEdit = False
    DataSet = qDOCFILES
    Left = 240
    Top = 328
  end
  object qDOCFILES: TAmjSet
    Aggregates = <>
    CommandText = 
      'select *'#13#10'from jfiles.DOCFILES'#13#10'where DOCID =:pid'#13#10'order by DOCF' +
      'ILES. id desc'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = qDOCFILESBeforeOpen
    AfterOpen = qDOCFILESAfterOpen
    BeforeInsert = qDOCFILESBeforeInsert
    AfterInsert = qDOCFILESAfterInsert
    AfterScroll = qDOCFILESAfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select *'
      'from jfiles.DOCFILES'
      'where DOCID =:pid'
      'order by DOCFILES. id desc')
    AmjExcludFlds.Strings = (
      'FDATA')
    AmjTblName = 'DOCFILES'
    AmjUser = 'jfiles'
    Left = 192
    Top = 331
  end
  object JRActions2: TAmjActionList
    FilterVisible = False
    DataSource = DqDOCFILES
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = JPanel1
    Left = 130
    Top = 332
    object AmjAction10: TAmjAction
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
  object AmjActionList2: TAmjActionList
    FilterVisible = False
    DbGrid = JazDBGrid1
    DataSource = DqSubSubjs
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = SubCtrctTS
    Left = 122
    Top = 460
    object AmjAction1: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionVav'
      ShortCut = 112
    end
    object AmjAction2: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_seprator
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionsep1'
      ShortCut = 112
    end
    object AmjAction3: TAmjAction
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
end
