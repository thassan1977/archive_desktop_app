object TemplateForm: TTemplateForm
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'TemplateForm'
  ClientHeight = 557
  ClientWidth = 587
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
    Left = 0
    Top = 0
    Width = 587
    Height = 13
    Align = alTop
    ExplicitWidth = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 13
    Width = 587
    Height = 196
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object MasterGrid: TJazDBGrid
      Left = 1
      Top = 1
      Width = 585
      Height = 194
      Align = alClient
      DataSource = MasterDQ
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 209
    Width = 587
    Height = 35
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 244
    Width = 587
    Height = 412
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel3'
    TabOrder = 2
    object DetailGrid: TJazDBGrid
      Left = 1
      Top = 1
      Width = 585
      Height = 410
      Align = alClient
      DataSource = DetailDQ
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object MasterSet: TAmjSet
    Aggregates = <>
    Params = <>
    AfterOpen = MasterSetAfterOpen
    AfterInsert = MasterSetAfterInsert
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    Left = 240
    Top = 104
  end
  object DetailSet: TAmjSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    BeforeOpen = DetailSetBeforeOpen
    AfterOpen = DetailSetAfterOpen
    AfterInsert = DetailSetAfterInsert
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    Left = 232
    Top = 336
  end
  object MasterDQ: TDataSource
    DataSet = MasterSet
    Left = 40
    Top = 104
  end
  object DetailDQ: TDataSource
    DataSet = DetailSet
    Left = 72
    Top = 416
  end
  object AmjActionList1: TAmjActionList
    FilterVisible = False
    DbGrid = DetailGrid
    DataSource = MasterDQ
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = Panel1
    Left = 56
    Top = 40
    object AmjAction7: TAmjAction
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
  object AmjActionList2: TAmjActionList
    FilterVisible = False
    DbGrid = DetailGrid
    DataSource = DetailDQ
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = Panel2
    Left = 136
    Top = 368
    object AmjAction2: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = Anv_nav
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      ShortCut = 112
    end
    object AmjAction3: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_seprator
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      ShortCut = 112
    end
    object AmjAction4: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = AEdit_EDit
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      ShortCut = 112
    end
  end
  object AmjSet1: TAmjSet
    Aggregates = <>
    Params = <>
    AfterScroll = AmjSet1AfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    Left = 120
    Top = 104
  end
end
