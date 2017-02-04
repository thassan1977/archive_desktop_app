object TemplateForm: TTemplateForm
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdRightToLeft
  Caption = 'TemplateForm'
  ClientHeight = 532
  ClientWidth = 779
  Color = clBtnFace
  Constraints.MaxHeight = 570
  Constraints.MaxWidth = 795
  Constraints.MinHeight = 570
  Constraints.MinWidth = 795
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 779
    Height = 13
    Align = alTop
    ExplicitLeft = 813
    ExplicitWidth = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 13
    Width = 779
    Height = 242
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 816
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 777
      Height = 240
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 0
      ExplicitWidth = 814
      object Panel4: TPanel
        Left = 1
        Top = 81
        Width = 775
        Height = 19
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 812
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 775
        Height = 80
        Align = alTop
        Caption = 'Panel6'
        TabOrder = 1
        ExplicitWidth = 812
        object GroupBox1: TGroupBox
          Left = 204
          Top = 1
          Width = 570
          Height = 78
          Align = alRight
          Caption = '  '#1576#1610#1575#1606#1575#1578' '#1593#1575#1605#1577' '#1604#1604#1605#1587#1578#1606#1583' '
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          ExplicitLeft = 241
          object Label3: TLabel
            Left = 479
            Top = 28
            Width = 29
            Height = 13
            Caption = #1575#1604#1575#1587#1605
          end
          object Label4: TLabel
            Left = 159
            Top = 28
            Width = 41
            Height = 13
            Caption = #1605#1604#1575#1581#1592#1575#1578
          end
          object DBEdit2: TDBEdit
            Left = 304
            Top = 30
            Width = 121
            Height = 21
            DataField = 'NAME'
            DataSource = dqDocs
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 32
            Top = 25
            Width = 121
            Height = 21
            DataField = 'NOTES'
            DataSource = dqDocs
            TabOrder = 1
          end
        end
      end
      object masterBox: TGroupBox
        Left = 1
        Top = 100
        Width = 775
        Height = 139
        Align = alClient
        Caption = '  '#1576#1610#1575#1606#1575#1578' '#1575#1604#1606#1605#1608#1584#1580' template '
        TabOrder = 2
        ExplicitWidth = 812
        object Label2: TLabel
          Left = 718
          Top = 22
          Width = 31
          Height = 13
          Caption = 'Label2'
          Visible = False
        end
        object DBEdit1: TDBEdit
          Left = 512
          Top = 19
          Width = 200
          Height = 21
          DataSource = MasterDQ
          TabOrder = 0
          Visible = False
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 255
    Width = 779
    Height = 20
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 816
  end
  object Panel3: TPanel
    Left = 0
    Top = 275
    Width = 779
    Height = 257
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitWidth = 816
    ExplicitHeight = 173
    object DetailGrid: TJazDBGrid
      Left = 1
      Top = 1
      Width = 777
      Height = 255
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
    BeforePost = MasterSetBeforePost
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
    DataSource = MasterDQ
    AmjActionBar.BtnLayout = blGlyphLeft
    AmjActionBar.BtnShowCaption = False
    AmjActionBar.Visible = False
    AmjActionBar.Enabled = False
    AmjActionBar.ToolHeight = 28
    AmjActionBar.ShowShortCut = False
    ParentDraw = Panel1
    Left = 384
    Top = 80
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
    Left = 184
    Top = 152
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
  object jqDOCS: TAmjSet
    Aggregates = <>
    CommandText = 
      'select JPROJ_DOCS.*'#13#10'from jdms.JPROJ_DOCS'#13#10'where   JPROJ_DOCS.ID' +
      ' = :pid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    AfterPost = jqDOCSAfterPost
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'select JPROJ_DOCS.*'
      'from jdms.JPROJ_DOCS'
      'where   JPROJ_DOCS.ID = :pid')
    AmjTblName = 'JPROJ_DOCS'
    AmjUser = 'jdms'
    Left = 472
    Top = 152
  end
  object dqDocs: TDataSource
    DataSet = jqDOCS
    Left = 512
    Top = 128
  end
end