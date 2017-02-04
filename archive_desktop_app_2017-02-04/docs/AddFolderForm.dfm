object FAddFolder: TFAddFolder
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1573#1590#1575#1601#1577' '#1605#1580#1604#1583
  ClientHeight = 139
  ClientWidth = 307
  Color = clBtnFace
  Constraints.MaxHeight = 177
  Constraints.MaxWidth = 323
  Constraints.MinHeight = 177
  Constraints.MinWidth = 323
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 43
    Width = 55
    Height = 13
    Caption = #1575#1587#1605' '#1575#1604#1605#1580#1604#1583
  end
  object EfolderName: TEdit
    Left = 32
    Top = 40
    Width = 178
    Height = 21
    Hint = #1575#1604#1585#1580#1575#1569' '#1578#1581#1583#1610#1583' '#1575#1587#1605' '#1575#1604#1605#1580#1604#1583' '#1607#1606#1575
    TabOrder = 0
  end
  object Button1: TButton
    Left = 184
    Top = 96
    Width = 75
    Height = 25
    Caption = #1605#1608#1575#1601#1602
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = #1573#1604#1594#1575#1569
    TabOrder = 2
    OnClick = Button2Click
  end
end
