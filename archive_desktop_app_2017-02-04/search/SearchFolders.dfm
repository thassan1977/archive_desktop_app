inherited FSearchFolders: TFSearchFolders
  Width = 785
  Height = 399
  inherited JFTitle: TJPanel
    Width = 785
    Alignment = taLeftJustify
    Caption = #1575#1604#1576#1581#1579' '#1593#1606' '#1605#1604#1601#1575#1578' '#1605#1588#1575#1585#1610#1593' '#1575#1604#1571#1585#1588#1601#1577
    ParentBiDiMode = False
    ExplicitWidth = 451
    inherited JTitleImg: TImage
      Left = 753
      ExplicitLeft = 601
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 31
    Width = 785
    Height = 368
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 451
    ExplicitHeight = 273
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 785
      Height = 368
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 451
      ExplicitHeight = 273
      object Panel3: TPanel
        Left = 0
        Top = 137
        Width = 785
        Height = 231
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 451
        ExplicitHeight = 136
        object JGrid1: TJazDBGrid
          Left = 0
          Top = 0
          Width = 785
          Height = 231
          Align = alClient
          DataSource = DQ
          DynProps = <>
          FooterParams.Color = clWindow
          HorzScrollBar.VisibleMode = sbAlwaysShowEh
          IndicatorOptions = [gioShowRowIndicatorEh]
          EmptyDataInfo.Active = True
          EmptyDataInfo.Text = #1604#1575' '#1610#1608#1580#1583' '#1576#1610#1575#1606#1575#1578
          ReadOnly = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          VertScrollBar.SmoothStep = True
          VertScrollBar.VisibleMode = sbAlwaysShowEh
          OnDblClick = JGrid1DblClick
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 137
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 451
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 783
          Height = 135
          Align = alClient
          Caption = #1582#1610#1575#1585#1575#1578' '#1576#1581#1579' '#1593#1575#1605#1577
          TabOrder = 0
          ExplicitWidth = 449
          object Label1: TLabel
            Left = 772
            Top = 35
            Width = 104
            Height = 13
            Caption = #1575#1587#1605' '#1605#1588#1585#1608#1593' '#1575#1604#1571#1585#1588#1601#1577':'
          end
          object Label2: TLabel
            Left = 772
            Top = 60
            Width = 68
            Height = 13
            Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1606#1583':'
          end
          object Label3: TLabel
            Left = 772
            Top = 84
            Width = 87
            Height = 13
            Caption = #1605#1604#1575#1581#1592#1575#1578' '#1575#1604#1605#1587#1578#1606#1583':'
          end
          object Label4: TLabel
            Left = 772
            Top = 108
            Width = 100
            Height = 13
            Caption = #1575#1587#1605' '#1575#1604#1605#1604#1601' '#1571#1608' '#1575#1604#1605#1580#1604#1583':'
          end
          object Label5: TLabel
            Left = 467
            Top = 35
            Width = 103
            Height = 13
            Caption = #1605#1587#1575#1585' '#1575#1604#1605#1604#1601' '#1571#1608' '#1575#1604#1605#1580#1604#1583':'
          end
          object Label6: TLabel
            Left = 467
            Top = 60
            Width = 63
            Height = 13
            Caption = #1605#1604#1601' '#1571#1605' '#1605#1580#1604#1583':'
          end
          object Label7: TLabel
            Left = 467
            Top = 84
            Width = 120
            Height = 13
            Caption = #1605#1582#1586#1606' '#1590#1605#1606' '#1602#1575#1593#1583#1577' '#1575#1604#1576#1610#1575#1606#1575#1578':'
          end
          object DMZProj: TDMZEditFind
            Left = 600
            Top = 32
            Width = 169
            Height = 21
            Hint = 
              #1604#1604#1576#1581#1579' '#1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER .     '#1604#1604#1576#1581#1579' '#1593#1606' '#1585#1602#1605' ' +
              #1601#1602#1591' '#1575#1603#1578#1576' '#1575#1604#1585#1602#1605' '#1605#1578#1576#1608#1593#1575#1611' '#1576#1573#1588#1575#1585#1577' - .     '#1593#1606' '#1603#1578#1575#1576#1577' '#1575#1604#1605#1581#1585#1601' '#1601#1585#1575#1594' space' +
              ' '#1610#1578#1605' '#1575#1604#1576#1581#1579' '#1593#1606' '#1575#1610' '#1581#1585#1601' '
            Color = clInfoBk
            ParentShowHint = False
            TabOrder = 0
            TableName = 'JDMS.JPROJECTS'
            IDField = 'ID'
            NameField = 'NAME'
            NoField = 'ID'
            IDMustBeNumber = False
            ChildsOnly = False
          end
          object ename: TEdit
            Left = 600
            Top = 57
            Width = 169
            Height = 21
            TabOrder = 1
          end
          object enote: TEdit
            Left = 600
            Top = 81
            Width = 169
            Height = 21
            TabOrder = 2
          end
          object eFileName: TEdit
            Left = 600
            Top = 105
            Width = 169
            Height = 21
            TabOrder = 3
          end
          object eFilePath: TEdit
            Left = 279
            Top = 32
            Width = 185
            Height = 21
            TabOrder = 4
          end
          object BitBtn1: TBitBtn
            Left = 88
            Top = 32
            Width = 185
            Height = 43
            Caption = #1576#1581#1579
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 5
            OnClick = BitBtn1Click
          end
          object combo_isfolder: TComboBox
            Left = 279
            Top = 57
            Width = 185
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 6
            Text = #1575#1604#1603#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1604
            Items.Strings = (
              #1575#1604#1603#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1604
              #1575#1604#1605#1604#1601#1600#1600#1575#1578' '#1601#1602#1591
              #1575#1604#1605#1580#1604#1583#1575#1578' '#1601#1602#1591)
          end
          object JSonMemo: TMemo
            Left = 0
            Top = 37
            Width = 82
            Height = 40
            Lines.Strings = (
              'JSonMemo')
            TabOrder = 7
            Visible = False
            WordWrap = False
          end
          object combo_onDB: TComboBox
            Left = 279
            Top = 81
            Width = 185
            Height = 21
            ItemHeight = 13
            TabOrder = 8
            Text = #1575#1604#1603#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1604
            Items.Strings = (
              #1575#1604#1603#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1604
              #1603#1604#1575#1548' '#1605#1582#1586#1606' '#1593#1604#1609' '#1606#1592#1575#1605' '#1575#1604#1605#1604#1601#1575#1578
              #1606#1593#1605#1548' '#1605#1582#1586#1606' '#1590#1605#1606' '#1602#1575#1593#1583#1577' '#1575#1604#1576#1610#1575#1606#1575#1578)
          end
          object BitBtn2: TBitBtn
            Left = 88
            Top = 83
            Width = 185
            Height = 43
            Caption = #1601#1578#1581' '#1575#1604#1605#1604#1601' '#1575#1604#1605#1581#1583#1583
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 9
            OnClick = actnShowPictureExecute
          end
        end
      end
    end
  end
  inherited JRActions: TAmjActionList
    DbGrid = JGrid1
    AmjActionBar.Enabled = False
    ParentDraw = Owner
    Left = 338
    Top = 129
    object AmjAction1: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = REC_ADD
      BtnShowCaption = True
      BtnWidth = 80
      Caption = #1580#1583#1610#1583
      Hint = #1580#1583#1610#1583
    end
    object AmjAction2: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Aed_Edit
      ConfirmNeed = False
      Imageid = REC_edit
      BtnShowCaption = True
      BtnWidth = 80
      Caption = #1578#1593#1583#1610#1604
      Hint = #1578#1593#1583#1610#1604
      ShortCut = 112
    end
    object AmjAction3: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Aed_Cancel
      ConfirmNeed = False
      Imageid = REC_cancel
      BtnShowCaption = True
      BtnWidth = 80
      Caption = #1573#1604#1594#1575#1569
      Hint = #1573#1604#1594#1575#1569
      ShortCut = 112
    end
    object AmjAction4: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Aed_Post
      ConfirmNeed = False
      Imageid = REC_post
      BtnShowCaption = True
      BtnWidth = 80
      Caption = #1581#1601#1592
      Hint = #1581#1601#1592
      ShortCut = 121
    end
    object actnShowPicture: TAction
      Category = 'th'
      Caption = #1573#1592#1607#1575#1585' '#1575#1604#1589#1608#1585#1577
      OnExecute = actnShowPictureExecute
    end
  end
  inherited DQ: TDataSource
    Left = 256
    Top = 117
  end
  inherited JQ: TAmjSet
    CommandText = 'SELECT  * from JDMS.V_SEARCHDOCS'#13#10
    AfterInsert = JQAfterInsert
    SQL.Strings = (
      'SELECT  * from JDMS.V_SEARCHDOCS')
    AmjUser = 'jdms'
    Left = 208
    Top = 125
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
    Left = 104
    Top = 101
  end
end
