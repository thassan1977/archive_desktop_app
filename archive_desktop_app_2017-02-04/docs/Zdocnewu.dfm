inherited Zdocnewf: TZdocnewf
  Width = 675
  Height = 414
  inherited JFTitle: TJPanel
    Width = 675
    Caption = #1573#1583#1582#1575#1604' '#1608#1579#1610#1602#1577
    ExplicitWidth = 451
    inherited JTitleImg: TImage
      Left = 643
      ExplicitLeft = 601
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 31
    Width = 675
    Height = 383
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 451
    ExplicitHeight = 273
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 675
      Height = 585
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 451
      object Panel3: TPanel
        Left = -187
        Top = 0
        Width = 862
        Height = 585
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = -411
        object GroupBox2: TGroupBox
          Left = 91
          Top = 6
          Width = 755
          Height = 315
          Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1608#1579#1610#1602#1577
          TabOrder = 0
          object Label12: TLabel
            Left = 692
            Top = 16
            Width = 50
            Height = 13
            Caption = #1585#1602#1605' '#1575#1604#1608#1579#1610#1602#1577
          end
          object Label4: TLabel
            Left = 713
            Top = 43
            Width = 29
            Height = 13
            Caption = #1575#1604#1575#1587#1605
          end
          object Label2: TLabel
            Left = 717
            Top = 80
            Width = 25
            Height = 13
            Caption = #1575#1604#1581#1575#1604#1577
          end
          object Label8: TLabel
            Left = 386
            Top = 16
            Width = 42
            Height = 13
            Caption = #1575#1604#1605#1588#1585#1608#1593
          end
          object Label17: TLabel
            Left = 678
            Top = 186
            Width = 64
            Height = 13
            Caption = #1578#1608#1589#1610#1601' '#1575#1604#1608#1579#1610#1602#1577
          end
          object Label3: TLabel
            Left = 400
            Top = 40
            Width = 28
            Height = 13
            Caption = #1575#1604#1578#1575#1585#1610#1582
          end
          object Label5: TLabel
            Left = 396
            Top = 80
            Width = 32
            Height = 13
            Caption = #1575#1604#1605#1589#1583#1585
          end
          object Label6: TLabel
            Left = 712
            Top = 112
            Width = 30
            Height = 13
            Caption = #1575#1604#1605#1580#1604#1583
          end
          object Label10: TLabel
            Left = 356
            Top = 112
            Width = 72
            Height = 13
            Caption = #1605#1587#1578#1608#1609' '#1575#1604#1587#1585#1610#1577
          end
          object Label1: TLabel
            Left = 714
            Top = 152
            Width = 28
            Height = 13
            Caption = #1575#1604#1602#1575#1604#1576
          end
          object DBEdit6: TDBEdit
            Left = 434
            Top = 13
            Width = 230
            Height = 21
            DataField = 'NO'
            DataSource = DQ
            TabOrder = 0
          end
          object ZPROJID: TDMZEditFind
            Left = 72
            Top = 13
            Width = 268
            Height = 21
            Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
            Color = clInfoBk
            ParentShowHint = False
            TabOrder = 1
            TableName = 'jedms.ZPROJ'
            IDField = 'ID'
            NameField = 'NAME'
            NoField = 'ID'
            OnFind = ZPROJIDFind
            IDMustBeNumber = False
            Delimater = ' - '
            ChildsOnly = False
          end
          object DBMemo1: TDBMemo
            Left = 50
            Top = 183
            Width = 614
            Height = 106
            DataField = 'NOTE'
            DataSource = DQ
            TabOrder = 9
          end
          object DBEdit3: TDBEdit
            Left = 434
            Top = 40
            Width = 230
            Height = 21
            DataField = 'NAME'
            DataSource = DQ
            TabOrder = 2
          end
          object ZSRCID: TDMZEditFind
            Left = 72
            Top = 82
            Width = 268
            Height = 21
            Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
            Color = clInfoBk
            ParentShowHint = False
            TabOrder = 5
            TableName = 'jedms.ZDEST'
            IDField = 'ID'
            NameField = 'NAME'
            NoField = 'ID'
            OnFind = ZSRCIDFind
            IDMustBeNumber = False
            Delimater = ' - '
            ChildsOnly = False
          end
          object DBEdit1: TDBEdit
            Left = 72
            Top = 40
            Width = 268
            Height = 21
            DataField = 'DAT'
            DataSource = DQ
            TabOrder = 3
          end
          object ZSECRETID: TDMZEditFind
            Left = 72
            Top = 109
            Width = 268
            Height = 21
            Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
            Color = clInfoBk
            ParentShowHint = False
            TabOrder = 7
            TableName = 'jedms.ZSECRET'
            IDField = 'ID'
            NameField = 'NAME'
            NoField = 'ID'
            OnFind = ZSECRETIDFind
            IDMustBeNumber = False
            Delimater = ' - '
            ChildsOnly = False
          end
          object FOLDERID: TDMZEditFind
            Left = 434
            Top = 104
            Width = 230
            Height = 21
            Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
            Color = clInfoBk
            ParentShowHint = False
            TabOrder = 6
            TableName = 'jedms.FOLDERS'
            IDField = 'ID'
            NameField = 'NAME'
            NoField = 'ID'
            OnFind = FOLDERIDFind
            IDMustBeNumber = False
            Delimater = ' - '
            ChildsOnly = False
          end
          object ZSTATUSID: TDMZEditFind
            Left = 434
            Top = 77
            Width = 230
            Height = 21
            Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
            Color = clInfoBk
            ParentShowHint = False
            TabOrder = 4
            TableName = 'jedms.ZSTATUS'
            IDField = 'ID'
            NameField = 'NAME'
            NoField = 'ID'
            OnFind = ZSTATUSIDFind
            IDMustBeNumber = False
            Delimater = ' - '
            ChildsOnly = False
          end
          object ZTMPLTID: TDMZEditFind
            Left = 434
            Top = 156
            Width = 230
            Height = 21
            Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
            Color = clInfoBk
            ParentShowHint = False
            TabOrder = 8
            TableName = 'jedms.ZTMPLT'
            IDField = 'ID'
            NameField = 'NAME'
            NoField = 'ID'
            OnFind = ZTMPLTIDFind
            IDMustBeNumber = False
            Delimater = ' - '
            ChildsOnly = False
          end
        end
      end
    end
  end
  inherited JRActions: TAmjActionList
    AmjActionBar.Enabled = False
    ParentDraw = Owner
    Left = 10
    Top = 89
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
    Left = 32
    Top = 253
  end
  inherited JQ: TAmjSet
    CommandText = 'Select DOC.*'#13#10'from jedms.DOC'#13#10'where DOC.id =:pid'#13#10
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    AfterInsert = JQAfterInsert
    SQL.Strings = (
      'Select DOC.*'
      'from jedms.DOC'
      'where DOC.id =:pid')
    AmjTblName = 'DOC'
    AmjUser = 'jedms'
    Top = 269
  end
end
