object AddSunForm: TAddSunForm
  Left = 0
  Top = 0
  Caption = #1573#1590#1575#1601#1577' '#1575#1576#1606
  ClientHeight = 244
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 204
    Top = 20
    Width = 61
    Height = 23
    BiDiMode = bdRightToLeft
    Caption = #1575#1604#1575#1587#1605':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 49
    Width = 177
    Height = 27
    DataField = 'NAME'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DataSource1: TDataSource
    DataSet = AmjSet1
    Left = 216
    Top = 120
  end
  object AmjSet1: TAmjSet
    Aggregates = <>
    CommandText = ' Select JPROJECTS.*'#13#10' from jdms.JPROJECTS'#13#10' where id = :pid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      ' Select JPROJECTS.*'
      ' from jdms.JPROJECTS'
      ' where id = :pid')
    AmjTblName = 'JPROJECTS'
    AmjUser = 'jdms'
    Left = 120
    Top = 120
  end
  object AmjActionList1: TAmjActionList
    FilterVisible = False
    DataSource = DataSource1
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = Owner
    Left = 24
    Top = 9
    object AmjAction1: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = True
      BtnWidth = 80
      Caption = #1578#1582#1586#1610#1606
      OnHandle = AmjAction1Handle
    end
  end
end
