inherited ZFoldersF: TZFoldersF
  inherited JFTitle: TJPanel
    Caption = #1605#1580#1605#1608#1593#1575#1578' '#1575#1604#1605#1580#1604#1583#1575#1578
    ExplicitWidth = 451
    inherited JTitleImg: TImage
      Left = 419
      ExplicitLeft = 753
    end
  end
  inherited JDBGrid1: TJazDBGrid
    Top = 52
    Height = 252
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Caption = #1575#1604#1585#1605#1586
        Width = 121
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1575#1604#1575#1587#1605
        Width = 166
      end
      item
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRNTID'
        Footers = <>
        Title.Caption = #1575#1604#1593#1575#1574#1583#1610#1577
        Title.SortIndex = 1
        Title.SortMarker = smDownEh
        Width = 85
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'prjname'
        Footers = <>
        Title.Caption = #1575#1604#1605#1588#1585#1608#1593
        Visible = False
        Width = 74
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOTE'
        Footers = <>
        Title.Caption = #1605#1604#1575#1581#1592#1575#1578
        Width = 250
      end>
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 31
    Width = 451
    Height = 21
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 408
      Top = 1
      Width = 42
      Height = 19
      Align = alRight
      Caption = #1575#1604#1605#1588#1585#1608#1593
      ExplicitLeft = 611
      ExplicitHeight = 13
    end
    object zproj: TDMZEditFind
      Left = 287
      Top = 1
      Width = 121
      Height = 19
      Hint = 
        #1604#1604#1576#1581#1579' '#1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER .     '#1604#1604#1576#1581#1579' '#1593#1606' '#1585#1602#1605' ' +
        #1601#1602#1591' '#1575#1603#1578#1576' '#1575#1604#1585#1602#1605' '#1605#1578#1576#1608#1593#1575#1611' '#1576#1573#1588#1575#1585#1577' - .     '#1593#1606' '#1603#1578#1575#1576#1577' '#1575#1604#1605#1581#1585#1601' '#1601#1585#1575#1594' space' +
        ' '#1610#1578#1605' '#1575#1604#1576#1581#1579' '#1593#1606' '#1575#1610' '#1581#1585#1601' '
      Align = alRight
      Color = clInfoBk
      ParentShowHint = False
      TabOrder = 0
      TableName = 'jedms.ZPROJ'
      IDField = 'ID'
      NameField = 'NAME'
      NoField = 'ID'
      OnFind = zprojFind
      IDMustBeNumber = False
      ChildsOnly = False
      ExplicitHeight = 21
    end
  end
  inherited JRActions: TAmjActionList
    ParentDraw = Owner
    Left = 386
    Top = 100
    object AmjAction1: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AEdit_EDit
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      ShortCut = 112
    end
  end
  inherited DQ: TDataSource
    Left = 272
    Top = 168
  end
  inherited JQ: TAmjSet
    CommandText = 
      'select jedms.FOLDERS.*,'#13#10' FOLDERS.ID || '#39' - '#39' || FOLDERS.name No' +
      'deName'#13#10' ,ZPROJ.name prjname'#13#10'from jedms.FOLDERS,jedms.ZPROJ'#13#10'wh' +
      'ere FOLDERS.PROJID=:pid'#13#10'and ZPROJ.id = PROJID'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = JQBeforeOpen
    AfterOpen = JQAfterOpen
    BeforeInsert = JQBeforeInsert
    AfterInsert = JQAfterInsert
    SQL.Strings = (
      'select jedms.FOLDERS.*,'
      ' FOLDERS.ID || '#39' - '#39' || FOLDERS.name NodeName'
      ' ,ZPROJ.name prjname'
      'from jedms.FOLDERS,jedms.ZPROJ'
      'where FOLDERS.PROJID=:pid'
      'and ZPROJ.id = PROJID')
    AmjExcludFlds.Strings = (
      'prjname')
    AmjTblName = 'FOLDERS'
    AmjUser = 'jedms'
    Top = 200
  end
end
