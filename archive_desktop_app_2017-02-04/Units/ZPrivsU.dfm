inherited ZPrivsf: TZPrivsf
  Width = 1049
  Height = 737
  inherited JFTitle: TJPanel
    Width = 1049
    Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1571#1583#1608#1575#1585
    ExplicitWidth = 451
    inherited JTitleImg: TImage
      Left = 1017
      ExplicitLeft = 743
    end
  end
  inherited JPnlHead: TJPanel
    Width = 1049
    Height = 706
    inherited AmjSplitter1: TAmjSplitter
      Top = 313
      Width = 1049
      ExplicitTop = 291
      ExplicitWidth = 716
    end
    inherited JGrid1: TJazDBGrid
      Width = 1049
      Height = 313
      TitleParams.MultiTitle = True
      Columns = <
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'ROLEID'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1575#1604#1583#1608#1585
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANMANAGEPRIV'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1578#1593#1583#1610#1604' '#1575#1604#1573#1593#1583#1575#1583#1575#1578' '#1575#1604#1581#1575#1604#1610#1577
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANREAD'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1606#1583'|'#1602#1585#1575#1569#1577
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANINS'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1606#1583'|'#1573#1590#1575#1601#1577
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANUPDT'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1606#1583'|'#1578#1593#1583#1610#1604
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANDEL'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1606#1583'|'#1581#1584#1601
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANADDFILES'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1606#1583'|'#1573#1590#1575#1601#1577' '#1605#1604#1601#1575#1578
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANSCAN'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1606#1583'|SCAN'
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANANNOT'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1606#1583'|'#1581#1575#1588#1610#1577
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANOCR'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1606#1583'|OCR'
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANPRINT'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1604#1601#1575#1578'|'#1591#1576#1575#1593#1577
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'FILEREAD'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1604#1601#1575#1578'|'#1602#1585#1575#1569#1577
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'FILEINS'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1604#1601#1575#1578'|'#1573#1590#1575#1601#1577
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'FILEUPDT'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1604#1601#1575#1578'|'#1578#1593#1583#1610#1604
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'FILEDEL'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1604#1601#1575#1578'|'#1581#1584#1601
          Width = 75
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'FILEADDFOLDER'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1604#1601#1575#1578'|'#1573#1590#1575#1601#1577' '#1605#1580#1604#1583
          Width = 75
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'FIELDADDALL'
          Footers = <>
          Title.Caption = #1573#1605#1603#1575#1606#1610#1577' '#1573#1590#1575#1601#1577' '#1580#1605#1610#1593' '#1581#1602#1608#1604' '#1575#1604#1605#1587#1578#1606#1583' '#1605#1593' '#1589#1604#1575#1581#1610#1575#1578' '#1602#1585#1575#1569#1577' '#1608#1603#1578#1575#1576#1577
          Title.SortIndex = 1
          Title.SortMarker = smUpEh
          Width = 75
        end>
    end
    inherited JBodyPnl: TJPanel
      Left = 401
      Top = 319
      Width = 648
      Height = 387
      Align = alRight
      ExplicitTop = 313
      ExplicitWidth = 780
      ExplicitHeight = 495
      inherited JTitle2: TJPanel
        Width = 648
        Caption = #1575#1604#1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1582#1575#1589#1577' '#1576#1600
        ExplicitWidth = 500
        inherited Image1: TImage
          Left = 616
          ExplicitLeft = 769
        end
      end
      inherited JGrid2: TJazDBGrid
        Width = 648
        Height = 362
        TitleParams.MultiTitle = True
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'FIELDNAME'
            Footers = <>
            Title.Caption = #1575#1604#1581#1602#1604
            Width = 125
          end
          item
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'CANREAD'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            Title.Caption = #1602#1585#1575#1569#1577
            Title.SortIndex = 1
            Title.SortMarker = smUpEh
            Width = 125
          end
          item
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'CANWRITE'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            Title.Caption = #1603#1578#1575#1576#1577
            Width = 125
          end>
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 319
      Width = 401
      Height = 387
      Align = alLeft
      Caption = 'Panel1'
      TabOrder = 2
      ExplicitLeft = 648
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 399
        Height = 25
        Align = alTop
        Caption = #1575#1604#1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1582#1575#1589#1577' '#1576#1600
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 231
      end
      object JazDBGrid1: TJazDBGrid
        Left = 1
        Top = 26
        Width = 399
        Height = 360
        Align = alClient
        DataSource = DQ3
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'FIELDNAME'
            Footers = <>
            Title.Caption = #1575#1604#1581#1602#1604
            Width = 125
          end
          item
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'CANREAD'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            Title.Caption = #1602#1585#1575#1569#1577
            Width = 125
          end
          item
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'CANWRITE'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            Title.Caption = #1603#1578#1575#1576#1577
            Width = 125
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited JRActions: TAmjActionList
    ParentDraw = Owner
    Left = 362
    Top = 84
    inherited AmjActionRefresh: TAmjAction
      Visible = False
    end
    object AmjAction2: TAmjAction
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
    Left = 536
    Top = 120
  end
  inherited JQ: TAmjSet
    CommandText = 
      'select 1 ISCHECKED ,JPROJ_ROLES.*'#13#10'From Jdms.JPROJ_ROLES'#13#10'where ' +
      'projid = :pid'#13#10#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    AfterInsert = JQAfterInsert
    BeforeDelete = JQBeforeDelete
    AfterDelete = JQAfterDelete
    AfterScroll = JQAfterScroll
    SQL.Strings = (
      'select 1 ISCHECKED ,JPROJ_ROLES.*'
      'From Jdms.JPROJ_ROLES'
      'where projid = :pid'
      '')
    AmjExcludFlds.Strings = (
      'ISCHEKED')
    AmjTblName = 'JPROJ_ROLES'
    AmjUser = 'jdms'
    Left = 464
  end
  inherited JQ2: TAmjSet
    CommandText = 
      ' select 1 ISCHECKED,JPROJ_ROLES_FIELDS.*'#13#10'from JDMS.JPROJ_ROLES_' +
      'FIELDS'#13#10'where JPROJ_ROLES_FIELDS.PROJ_ROLEID = :pROLLID'#13#10#13#10#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pROLLID'
        ParamType = ptUnknown
      end>
    BeforeOpen = JQ2BeforeOpen
    AfterInsert = JQ2AfterInsert
    SQL.Strings = (
      ' select 1 ISCHECKED,JPROJ_ROLES_FIELDS.*'
      'from JDMS.JPROJ_ROLES_FIELDS'
      'where JPROJ_ROLES_FIELDS.PROJ_ROLEID = :pROLLID'
      ''
      '')
    AmjExcludFlds.Strings = (
      'ISCHECKED')
    AmjTblName = 'JPROJ_ROLES_FIELDS'
    AmjUser = 'jdms'
    Left = 440
    Top = 440
  end
  inherited Dq2: TDataSource
    Left = 512
    Top = 448
  end
  inherited JRActions2: TAmjActionList
    Left = 378
    Top = 468
    inherited AmjActionRefresh2: TAmjAction
      Visible = False
    end
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
  object JQ3: TAmjSet
    Aggregates = <>
    CommandText = 
      'select 1 ISCHECKED,JPROJ_ROLES_DTL_FIELDS.*'#13#10'from JDMS.JPROJ_ROL' +
      'ES_DTL_FIELDS'#13#10'where JPROJ_ROLES_DTL_FIELDS.PROJ_ROLEID = :pROLL' +
      'ID'#13#10#13#10#13#10#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pROLLID'
        ParamType = ptUnknown
      end>
    BeforeOpen = JQ3BeforeOpen
    AfterInsert = JQ3AfterInsert
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select 1 ISCHECKED,JPROJ_ROLES_DTL_FIELDS.*'
      'from JDMS.JPROJ_ROLES_DTL_FIELDS'
      'where JPROJ_ROLES_DTL_FIELDS.PROJ_ROLEID = :pROLLID'
      ''
      ''
      '')
    AmjExcludFlds.Strings = (
      'ISCHECKED')
    AmjTblName = 'JPROJ_ROLES_DTL_FIELDS'
    AmjUser = 'jdms'
    Left = 168
    Top = 488
  end
  object DQ3: TDataSource
    DataSet = JQ3
    Left = 240
    Top = 496
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
    Left = 472
    Top = 200
  end
  object JQMetaName: TAmjSet
    Aggregates = <>
    CommandText = 
      ' Select T_METADATA.*'#13#10' from jdms.T_METADATA'#13#10' where T_METADATA.i' +
      'd = :pID'#13#10'  order by parentid desc'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pID'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      ' Select T_METADATA.*'
      ' from jdms.T_METADATA'
      ' where T_METADATA.id = :pID'
      '  order by parentid desc')
    AmjTblName = 'T_METADATA'
    AmjUser = 'jdms'
    Left = 216
    Top = 168
  end
  object jqMetaID: TAmjSet
    Aggregates = <>
    CommandText = 
      ' Select id,parentid'#13#10' from jdms.T_METADATA'#13#10' where T_METADATA.pa' +
      'rentid = :pparentid'#13#10' order by parentid desc'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pparentid'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      ' Select id,parentid'
      ' from jdms.T_METADATA'
      ' where T_METADATA.parentid = :pparentid'
      ' order by parentid desc')
    AmjTblName = 'T_METADATA'
    AmjUser = 'jdms'
    Left = 208
    Top = 224
  end
  object JQgetFieldName: TAmjSet
    Aggregates = <>
    CommandText = 
      ' Select T_METADATA_FLDS.* '#13#10' from  jdms.T_METADATA_FLDS'#13#10'where m' +
      'etaid = :pmetaid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pmetaid'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      ' Select T_METADATA_FLDS.* '
      ' from  jdms.T_METADATA_FLDS'
      'where metaid = :pmetaid')
    AmjTblName = 'T_METADATA_FLDS'
    AmjUser = 'JDMS'
    Left = 368
    Top = 208
  end
  object JRAction3: TAmjActionList
    FilterVisible = False
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = Panel1
    Left = 88
    Top = 424
    object AmjAction3: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AEdit_EDit
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      ShortCut = 112
    end
  end
end
