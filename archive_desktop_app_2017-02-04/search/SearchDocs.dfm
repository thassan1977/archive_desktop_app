inherited FSearchDocs: TFSearchDocs
  Width = 803
  Height = 418
  inherited JFTitle: TJPanel
    Width = 803
    Caption = #1575#1604#1576#1581#1579' '#1593#1606' '#1605#1587#1578#1606#1583#1575#1578' '#1581#1587#1576' '#1605#1588#1585#1608#1593' '#1575#1604#1571#1585#1588#1601#1577
    inherited JTitleImg: TImage
      Left = 771
      ExplicitLeft = 601
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 31
    Width = 803
    Height = 387
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 451
    ExplicitHeight = 273
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 803
      Height = 387
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 451
      ExplicitHeight = 273
      object Splitter1: TSplitter
        Left = 0
        Top = 105
        Width = 803
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 31
        ExplicitWidth = 492
      end
      object Panel3: TPanel
        Left = 0
        Top = 137
        Width = 803
        Height = 250
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 23
        ExplicitWidth = 451
        object JGrid1: TJazDBGrid
          Left = 0
          Top = 0
          Width = 803
          Height = 313
          Align = alTop
          DataSource = DQ
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
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 803
        Height = 105
        Align = alTop
        Caption = #1582#1610#1575#1585#1575#1578' '#1576#1581#1579' '#1593#1575#1605#1577
        TabOrder = 1
        ExplicitWidth = 451
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
          Left = 524
          Top = 62
          Width = 87
          Height = 13
          Caption = #1605#1604#1575#1581#1592#1575#1578' '#1575#1604#1605#1587#1578#1606#1583':'
        end
        object DMZEditFind1: TDMZEditFind
          Left = 400
          Top = 32
          Width = 369
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
          OnFind = DMZEditFind1Find
          IDMustBeNumber = False
          ChildsOnly = False
        end
        object ename: TEdit
          Left = 645
          Top = 57
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object enote: TEdit
          Left = 400
          Top = 59
          Width = 121
          Height = 21
          TabOrder = 2
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 108
        Width = 803
        Height = 29
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 2
        ExplicitWidth = 451
        ExplicitHeight = 104
        object masterBox: TGroupBox
          Left = 186
          Top = 1
          Width = 616
          Height = 27
          Align = alClient
          Caption = #1582#1610#1575#1585#1575#1578' '#1575#1604#1576#1581#1579' '#1575#1604#1582#1575#1589#1577' '#1576#1606#1608#1593' '#1575#1604#1605#1587#1578#1606#1583' '
          TabOrder = 0
          ExplicitWidth = 264
          ExplicitHeight = 102
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 185
          Height = 27
          Align = alLeft
          TabOrder = 1
          ExplicitHeight = 102
          object BitBtn1: TBitBtn
            Left = 47
            Top = 32
            Width = 122
            Height = 48
            Caption = #1576#1581#1579
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
            OnClick = BitBtn1Click
          end
        end
      end
    end
  end
  object JSonMemo: TMemo [2]
    Left = 16
    Top = 63
    Width = 82
    Height = 40
    Lines.Strings = (
      'JSonMemo')
    TabOrder = 2
    Visible = False
    WordWrap = False
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
  end
  inherited DQ: TDataSource
    Left = 256
    Top = 117
  end
  inherited JQ: TAmjSet
    CommandText = 'SELECT *  JDMS.JPROJ_DOCS'#13#10
    ReadOnly = True
    SQL.Strings = (
      'SELECT *  JDMS.JPROJ_DOCS')
    AmjUser = 'jdms'
    Left = 208
    Top = 125
  end
  object JQMetBLOB: TAmjSet
    Aggregates = <>
    CommandText = 
      'Select T_METADATA.*'#13#10'from jdms.T_METADATA'#13#10'where (T_METADATA.PAR' +
      'ENTID IS NULL) AND '#13#10'          (T_METADATA.id =:pid)'#13#10
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
      'where (T_METADATA.PARENTID IS NULL) AND '
      '          (T_METADATA.id =:pid)')
    AmjTblName = 'T_METADATA'
    AmjUser = 'JDMS'
    Left = 176
    Top = 288
  end
  object JQMetaIdSEt: TAmjSet
    Aggregates = <>
    CommandText = 
      '        select metaid, min(lvl) minlvl'#13#10'        from ( '#13#10'       ' +
      '     Select level lvl , (select min(M.ID) from jdms.T_METADATA M' +
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
      
        '            Select level lvl , (select min(M.ID) from jdms.T_MET' +
        'ADATA M where M.projid = p.id) Metaid'
      '            From jdms.jprojects P'
      '            Start With id= :Pprojid'
      '            Connect By id = Prior prnt'
      '        )'
      '        where metaid is not null'
      '        group by metaid ')
    AmjTblName = 'jprojects'
    AmjUser = 'jdms'
    Left = 112
    Top = 96
  end
  object AmjSet1: TAmjSet
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
    Left = 136
    Top = 176
  end
  object AmjSet2: TAmjSet
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
    Left = 104
    Top = 272
  end
  object JQMetData_Dtl: TAmjSet
    Aggregates = <>
    CommandText = 
      'Select T_METADATA_FLDS.*'#13#10'from jdms.T_METADATA_FLDS'#13#10'where T_MET' +
      'ADATA_FLDS.metaid =:pid'#13#10#13#10
    Params = <
      item
        DataType = ftString
        Name = 'pid'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'Select T_METADATA_FLDS.*'
      'from jdms.T_METADATA_FLDS'
      'where T_METADATA_FLDS.metaid =:pid'
      '')
    AmjTblName = 'T_METADATA'
    AmjUser = 'JDMS'
    Left = 224
    Top = 232
  end
end
