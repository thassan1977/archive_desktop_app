unit mailBoxU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls, jazDBGrid, GridsEh,
  DBGridEh, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU, JPG1U, AmjactionsU,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, Mask,
  DBCtrlsEh, MemTableDataEh, MemTableEh, DBCtrls;

type
  TmailBoxf = class(TJPG1F)
    ilImportance: TImageList;
    JPanel1: TJPanel;
    Panel2: TPanel;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    JPanel2: TJPanel;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    procedure JDBGrid1CellClick(Column: TColumnEh);
    procedure JDBGrid1DataGroupGetRowParams(Sender: TCustomDBGridEh;
      GroupDataTreeNode: TGroupDataTreeNodeEh; Params: TGroupRowParamsEh);
    procedure JDBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure JDBGrid1Columns5GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure JDBGrid1Columns6DataGroupFooterAggregateValue(
      Grid: TCustomDBGridEh; Column: TColumnEh;
      GroupFooter: TGridDataGroupFooterEh;
      FooterColumnItem: TGridDataGroupFooterColumnItemEh; var AValue: Variant;
      Node: TGroupDataTreeNodeEh; var Processed: Boolean);
    procedure JDBGrid1Columns6GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure JDBGrid1Columns8GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure JDBGrid1Columns7GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure ComboBox1Change(Sender: TObject);
    procedure JQBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
   ReadColumn: TColumnEh;
    ImportanceColumn: TColumnEh;
    post_MarkColumn: TColumnEh;
    post_readColumn: TColumnEh;
    FMailGridStyle: TDBGridEhStyle;
    { Public declarations }
    Procedure FInit; Override;
  end;


implementation
  uses JAppMainU;
{$R *.dfm}

procedure TmailBoxf.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if ComboBox1.itemindex = 1 then
  begin
    JDBGrid1.GridLineParams.DarkColor := RGB(111, 112, 116);
    JDBGrid1.FixedColor := RGB(212, 215, 219);
    JDBGrid1.TitleParams.VertLineColor := RGB(110, 109, 143);
    JDBGrid1.DataGrouping.Font.Color := RGB(112, 111, 145);
    JDBGrid1.DataGrouping.GroupRowDefValues.BottomLine.Color := RGB(165, 164, 189);
    JDBGrid1.TreeViewParams.GlyphStyle := tvgsDefaultEh;
    JDBGrid1.TitleParams.SecondColorStored := False;
    JDBGrid1.DataGrouping.GroupPanel.Color := clDefault;
    JPanel1.Color := JDBGrid1.FixedColor;
  end else if ComboBox1.itemindex = 2 then
  begin
    JDBGrid1.GridLineParams.DarkColor := RGB(76, 83, 92);
    JDBGrid1.FixedColor := RGB(212, 215, 219);
    JDBGrid1.TitleParams.VertLineColor := RGB(145, 153, 164);
    JDBGrid1.DataGrouping.Font.Color := RGB(97, 106, 118);
    JDBGrid1.DataGrouping.GroupRowDefValues.BottomLine.Color := RGB(145, 153, 164);
    JDBGrid1.TreeViewParams.GlyphStyle := tvgsDefaultEh;
    JDBGrid1.TitleParams.SecondColorStored := False;
    JDBGrid1.DataGrouping.GroupPanel.Color := clDefault;
    JPanel1.Color := JDBGrid1.FixedColor;
  end else if ComboBox1.itemindex = 0 then
  begin
    JDBGrid1.GridLineParams.DarkColor := $00CF9365;
    JDBGrid1.FixedColor := $00FFDDC4;
    JDBGrid1.TitleParams.VertLineColor := $20FFC69A;
    JDBGrid1.DataGrouping.Font.Color := $00A06437;
    JDBGrid1.DataGrouping.GroupRowDefValues.BottomLine.Color := $00D99D6F;
    JDBGrid1.TreeViewParams.GlyphStyle := tvgsDefaultEh;
    JDBGrid1.TitleParams.SecondColorStored := False;
    JDBGrid1.DataGrouping.GroupPanel.Color := clDefault;
    JPanel1.Color := JDBGrid1.FixedColor;
  end else if ComboBox1.itemindex = 0 then
  begin
    JDBGrid1.GridLineParams.DarkColor := RGB(132, 157, 189);
    JDBGrid1.FixedColor := RGB(225, 236, 250);
    JDBGrid1.TitleParams.VertLineColor := RGB(132, 157, 189);
    JDBGrid1.TitleParams.SecondColor := RGB(239, 245, 251);
    JDBGrid1.DataGrouping.GroupPanel.Color := RGB(207, 221, 238);
    JDBGrid1.DataGrouping.Font.Color := RGB(30, 57, 91);
    JDBGrid1.DataGrouping.GroupRowDefValues.BottomLine.Color := RGB(146, 163, 192);
    JDBGrid1.TreeViewParams.GlyphStyle := tvgsExplorerThemedEh;
    JPanel1.Color := RGB(218, 230, 245);
  end;
end;

Procedure TmailBoxf.FInit;
begin
  PCaption := 'البريد الالكتروني';
  JPanel1.DoubleBuffered := True;
  ReadColumn := JDBGrid1.FieldColumns['MAILISREAD'];
  ImportanceColumn := JDBGrid1.FieldColumns['MAILISIMPORTANT'];
  post_MarkColumn := JDBGrid1.FieldColumns['MAILISMARKED'];
end;

procedure TmailBoxf.JDBGrid1CellClick(Column: TColumnEh);
begin
  inherited;

  if (jq.recordcount <>0) then begin
  if (Column = ReadColumn) then
  begin
    jq.Edit;
    if (jq.FieldByName('MAILISREAD').AsString ='no')
      then (jq.FieldByName('MAILISREAD').AsString :='yes')
      else jq.FieldByName('MAILISREAD').AsString :='no';
    jq.Post;
  end;
    if (Column = post_MarkColumn) then
  begin
    jq.Edit;
    if (jq.FieldByName('MAILISMARKED').AsString ='no')
      then (jq.FieldByName('MAILISMARKED').AsString :='yes')
      else jq.FieldByName('MAILISMARKED').AsString :='no';
    jq.Post;
  end;
     if (Column = ImportanceColumn) then
  begin
    jq.Edit;
    if (jq.FieldByName('MAILISIMPORTANT').AsString ='no')
      then (jq.FieldByName('MAILISIMPORTANT').AsString :='yes')
      else jq.FieldByName('MAILISIMPORTANT').AsString :='no';
    jq.Post;
  end;
  end;
end;

procedure TmailBoxf.JDBGrid1Columns5GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
   if (jq.recordcount <>0) then begin
  if jq.FieldByName('MAILATTACHEMENT').AsString ='yes' then
    Params.ImageIndex := 5
  else
    Params.ImageIndex := -1;
   end;
end;

procedure TmailBoxf.JDBGrid1Columns6DataGroupFooterAggregateValue(
  Grid: TCustomDBGridEh; Column: TColumnEh; GroupFooter: TGridDataGroupFooterEh;
  FooterColumnItem: TGridDataGroupFooterColumnItemEh; var AValue: Variant;
  Node: TGroupDataTreeNodeEh; var Processed: Boolean);
begin
  inherited;
  if VarIsEmpty(AValue) then
  begin
    AValue := VarArrayCreate([0,1], varInteger);
    AValue[0] := 0;
    AValue[1] := 0;
  end;
   if (jq.recordcount <>0) then begin
  if jq.FieldByName('MAILISREAD').AsString ='yes'
    then AValue[0] := AValue[0] + 1
    else AValue[1] := AValue[1] + 1;
   end;
  Processed := True;
end;

procedure TmailBoxf.JDBGrid1Columns6GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
   if (jq.recordcount <>0) then begin
   if jq.FieldByName('MAILISREAD').AsString ='no'
   then Params.ImageIndex := 3
  else
    Params.ImageIndex := 2;
   end;
end;

procedure TmailBoxf.JDBGrid1Columns7GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
   if (jq.recordcount <>0) then begin
   if jq.FieldByName('MAILISIMPORTANT').AsString ='yes' then
    Params.ImageIndex := 4
  else
    Params.ImageIndex := -1;
   end;
end;

procedure TmailBoxf.JDBGrid1Columns8GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
   if (jq.recordcount <>0) then begin
if jq.FieldByName('MAILISMARKED').AsString ='yes' then
    Params.ImageIndex := 1
  else
    Params.ImageIndex := -1;
   end;
end;

procedure TmailBoxf.JDBGrid1DataGroupGetRowParams(Sender: TCustomDBGridEh;
  GroupDataTreeNode: TGroupDataTreeNodeEh; Params: TGroupRowParamsEh);
  var
  AgrValue: Variant;
begin
  inherited;
  if ReadColumn = nil then Exit;
  AgrValue := GroupDataTreeNode.FooterItems[0].FooterValues[ReadColumn.Index];
  Params.GroupRowText := '';
  if Assigned(GroupDataTreeNode.DataGroupLevel.Column) then
    Params.GroupRowText := TColumnEh(GroupDataTreeNode.DataGroupLevel.Column).Title.Caption + ': ';
  Params.GroupRowText := Params.GroupRowText + GroupDataTreeNode.DisplayValue;
  Params.GroupRowText := Params.GroupRowText + ' ('+IntToStr(GroupDataTreeNode.Count)+' Item(s)';
  if AgrValue[1] > 0 then
  begin
    Params.GroupRowText := Params.GroupRowText + ', ' + IntToStr(AgrValue[1]) + ' unread)';
    Params.Font.Style := Params.Font.Style + [fsBold];
  end else
  begin
    Params.GroupRowText := Params.GroupRowText + ')';
    Params.Font.Style := Params.Font.Style - [fsBold];
  end;
end;

procedure TmailBoxf.JDBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  inherited;
   if (jq.recordcount <>0) then begin
if jq.FieldByName('MAILISREAD').AsString ='yes' then
    AFont.Style := AFont.Style + [fsBold];
   end;
end;

procedure TmailBoxf.JQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
    if CheckBox1.checked then
        jq.params.parambyname('pisread').asstring:='yes'
    else jq.params.parambyname('pisread').asstring:='';
    if CheckBox2.checked then
        jq.params.parambyname('pimportant').asstring:='yes'
    else jq.params.parambyname('pimportant').asstring:='';
    if CheckBox3.checked then
      jq.params.parambyname('pmarked').asstring:='yes'
    else jq.params.parambyname('pmarked').asstring:='';
end;
end.
