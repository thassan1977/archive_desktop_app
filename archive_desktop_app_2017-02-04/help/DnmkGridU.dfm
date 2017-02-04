inherited SalListsF: TSalListsF
  Width = 623
  inherited JFTitle: TJPanel
    Width = 623
    ExplicitWidth = 451
    inherited JTitleImg: TImage
      Left = 591
      ExplicitLeft = 418
    end
  end
  inherited JDBGrid1: TJazDBGrid
    Top = 73
    Width = 623
    Height = 231
    ReadOnly = True
    TitleParams.MultiTitle = True
  end
  object JPanel1: TJPanel [2]
    Left = 0
    Top = 31
    Width = 623
    Height = 42
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 451
    object Panel3: TPanel
      Left = -134
      Top = 0
      Width = 757
      Height = 42
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = -306
      object LMnth: TLabel
        Left = 697
        Top = 8
        Width = 62
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = #1578#1575#1585#1610#1582' '#1575#1604#1589#1585#1601
        WordWrap = True
      end
      object Label1: TLabel
        Left = 225
        Top = 10
        Width = 28
        Height = 13
        Caption = #1575#1604#1602#1575#1604#1576
      end
      object CKordByName: TCheckBox
        Left = 609
        Top = 30
        Width = 132
        Height = 17
        Caption = #1578#1585#1578#1610#1576' '#1581#1587#1576' '#1575#1604#1575#1587#1605
        TabOrder = 0
        Visible = False
      end
      object PayMMList: TDBLookupComboBox
        Left = 621
        Top = 6
        Width = 78
        Height = 21
        KeyField = 'ID'
        ListField = 'DAT'
        ListSource = DPayMM
        TabOrder = 1
      end
      object ZMandat: TDMZEditFind
        Left = 258
        Top = 6
        Width = 271
        Height = 21
        Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
        Color = clInfoBk
        ParentShowHint = False
        TabOrder = 2
        LFields.Strings = (
          'YY'
          'MM'
          'YYMM'
          'mandatid'
          'name')
        TableName = 'JSal.VPAYMANDAT'
        IDField = 'MANDATID'
        NameField = 'FULLNAME'
        NoField = 'MANDATID'
        OnFind = ZMandatFind
        IDMustBeNumber = False
        Delimater = ' - '
        ChildsOnly = False
      end
      object ZRep: TDMZEditFind
        Left = 0
        Top = 6
        Width = 219
        Height = 21
        Hint = #1571#1583#1582#1604' '#1581#1585#1601' '#1571#1608' '#1603#1604#1605#1577' '#1571#1608' '#1571#1603#1579#1585' '#1579#1605' '#1575#1590#1594#1591' ENTER '#1604#1604#1576#1581#1579' .'
        Color = clInfoBk
        ParentShowHint = False
        TabOrder = 3
        TableName = 'JSal.ZPAYPRNT'
        IDField = 'ID'
        NameField = 'NAME'
        NoField = 'ID'
        OnFind = ZRepFind
        IDMustBeNumber = False
        Delimater = ' - '
        ChildsOnly = False
      end
      object CheckBox1: TCheckBox
        Left = 535
        Top = 6
        Width = 80
        Height = 17
        Caption = #1580#1583#1608#1604' '#1575#1604#1589#1585#1601
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = CheckBox1Click
      end
    end
  end
  inherited JRActions: TAmjActionList
    HasSeqOrdr = False
    ParentDraw = Owner
    Left = 202
    Top = 132
    object Amjprepare: TAmjAction [2]
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = act_run
      BtnShowCaption = False
      Caption = #1578#1580#1607#1610#1586' '#1575#1604#1578#1602#1585#1610#1585
      Hint = #1578#1580#1607#1610#1586' '#1575#1604#1578#1602#1585#1610#1585
      OnHandle = AmjprepareHandle
    end
    object Amjsep3: TAmjAction [3]
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_seprator
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionsep1'
      ShortCut = 112
    end
    object Amjsep2: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_seprator
      ConfirmNeed = False
      Imageid = btn_nores
      BtnShowCaption = False
      Caption = 'AmjActionsep1'
      ShortCut = 112
    end
    object RFisha: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = PRNT_PREVIEW
      BtnShowCaption = False
      Caption = #1575#1604#1602#1587#1575#1574#1605
      Hint = #1575#1604#1602#1587#1575#1574#1605
      OnHandle = RFishaHandle
    end
    object Apayordr: TAmjAction
      Category = 'amwajSTD'
      PrivOption = soParent
      ActType = act_Custom
      ConfirmNeed = False
      Imageid = PRNT_PREVIEW
      BtnShowCaption = False
      Caption = #1571#1605#1585' '#1575#1604#1589#1585#1601
      Hint = #1571#1605#1585' '#1575#1604#1589#1585#1601
      OnHandle = ApayordrHandle
    end
  end
  inherited DQ: TDataSource
    Left = 80
  end
  inherited JQ: TAmjSet
    AggregatesActive = True
    CommandText = 'Select * from Jsal.TMPPAYLIST order by CL1   '#13#10
    SQL.Strings = (
      'Select * from Jsal.TMPPAYLIST order by CL1   ')
    AmjTblName = 'TMPPAYLIST'
    AmjUser = 'Jsal'
    Left = 32
    Top = 104
  end
  object ZPAYPRN: TAmjSet
    Aggregates = <>
    CommandText = 
      'SELECT aj.*, im.sign'#13#10'FROM JSAL.ZPAYPRNTITEMS aj, Jsal.Zitem im'#13 +
      #10'WHERE  PAYPRNTID = :pPrnID'#13#10'and aj.itemid = im.id'#13#10'order by aj.' +
      'ordr'#13#10
    FetchOnDemand = False
    Params = <
      item
        DataType = ftUnknown
        Name = 'pPrnID'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'SELECT aj.*, im.sign'
      'FROM JSAL.ZPAYPRNTITEMS aj, Jsal.Zitem im'
      'WHERE  PAYPRNTID = :pPrnID'
      'and aj.itemid = im.id'
      'order by aj.ordr')
    Left = 32
    Top = 272
  end
  object qemp: TAmjSet
    Aggregates = <>
    CommandText = 
      'SELECT PAYEMP.id, PAYEMP.empid, emp.salno, EMP.fullname'#13#10'FROM JS' +
      'al.PAYEMP, JSal.emp'#13#10'WHERE yy = :pyy AND mm = :pmm'#13#10'AND PAYEMP.s' +
      'etid = :psetid'#13#10'and  JSal.PAYEMP.empid =  JSal.emp.id'#13#10'order by ' +
      'salno'#13#10
    FetchOnDemand = False
    Params = <
      item
        DataType = ftString
        Name = 'pyy'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pmm'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'psetid'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'SELECT PAYEMP.id, PAYEMP.empid, emp.salno, EMP.fullname'
      'FROM JSal.PAYEMP, JSal.emp'
      'WHERE yy = :pyy AND mm = :pmm'
      'AND PAYEMP.setid = :psetid'
      'and  JSal.PAYEMP.empid =  JSal.emp.id'
      'order by salno')
    Left = 88
    Top = 272
  end
  object Csal: TAmjSet
    Aggregates = <>
    CommandText = 
      'SELECT val, itemid '#13#10'FROM Jsal.PAYEMPITEMS '#13#10'WHERE  PAYEMPID = :' +
      'Lpayempid '#13#10
    FetchOnDemand = False
    Params = <
      item
        DataType = ftString
        Name = 'Lpayempid'
        ParamType = ptUnknown
      end>
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      'SELECT val, itemid '
      'FROM Jsal.PAYEMPITEMS '
      'WHERE  PAYEMPID = :Lpayempid ')
    Left = 152
    Top = 272
  end
  object PayMM: TAmjSet
    Aggregates = <>
    CommandText = 
      'Select to_char(dat, '#39'yyyy/mm/dd'#39') DAT, yy || '#39'/'#39' || mm yymm, id,' +
      ' yy, mm, closed'#13#10'from JSal.PAYMM'#13#10'order by yy desc,mm desc'#13#10
    FetchOnDemand = False
    Params = <>
    BeforeScroll = PayMMBeforeScroll
    AfterScroll = PayMMAfterScroll
    AmjCachedUpdates = False
    AmjProviderOpt = [poAllowCommandText, poUseQuoteChar]
    SQL.Strings = (
      
        'Select to_char(dat, '#39'yyyy/mm/dd'#39') DAT, yy || '#39'/'#39' || mm yymm, id,' +
        ' yy, mm, closed'
      'from JSal.PAYMM'
      'order by yy desc,mm desc')
    Left = 80
    Top = 168
  end
  object DPayMM: TDataSource
    DataSet = PayMM
    Left = 32
    Top = 176
  end
end
