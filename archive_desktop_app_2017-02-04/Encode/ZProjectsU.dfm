inherited ZProjectsF: TZProjectsF
  Width = 916
  Height = 585
  inherited JFTitle: TJPanel
    Width = 916
    Caption = #1575#1604#1605#1588#1575#1585#1610#1593
    ExplicitTop = -5
    ExplicitWidth = 654
    inherited JTitleImg: TImage
      Left = 884
      ExplicitLeft = 753
    end
  end
  inherited JDBGrid1: TJazDBGrid
    Width = 916
    Height = 554
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
        DynProps = <>
        EditButtons = <>
        FieldName = 'MGR'
        Footers = <>
        Title.Caption = #1575#1604#1605#1583#1610#1585
        Width = 75
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PHONE'
        Footers = <>
        Title.Caption = #1585#1602#1605' '#1575#1604#1607#1575#1578#1601
        Width = 75
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'FAX'
        Footers = <>
        Title.Caption = #1575#1604#1601#1575#1603#1587
        Width = 75
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'EMAIL'
        Footers = <>
        Title.Caption = #1575#1604#1576#1585#1610#1583' '#1575#1604#1575#1604#1603#1578#1585#1608#1606#1610
        Width = 85
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DAT'
        Footers = <>
        Title.Caption = #1575#1604#1578#1575#1585#1610#1582
        Width = 65
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ISDELETED'
        Footers = <>
        PickList.Strings = (
          #1606#1593#1605
          #1604#1575)
        Title.Caption = #1605#1581#1584#1608#1601
        Width = 65
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ISACTIVE'
        Footers = <>
        PickList.Strings = (
          #1606#1593#1605
          #1604#1575)
        Title.Caption = #1601#1593#1575#1604
        Title.SortIndex = 1
        Title.SortMarker = smUpEh
        Width = 65
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
    CommandText = 'select zproj.*'#13#10'from jedms.ZPROJ'#13#10#13#10
    AfterInsert = JQAfterInsert
    SQL.Strings = (
      'select zproj.*'
      'from jedms.ZPROJ'
      '')
    AmjExcludFlds.Strings = (
      'prjname')
    AmjTblName = 'zproj'
    AmjUser = 'jedms'
    Top = 200
  end
end
