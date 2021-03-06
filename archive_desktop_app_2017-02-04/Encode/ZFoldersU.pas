unit ZFoldersU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls, jazDBGrid, GridsEh,
  DBGridEh, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU, JPG1U, AmjactionsU,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, Mask,
  AmjLookUpU;

type
  TZFoldersF = class(TJPG1F)
    AmjAction1: TAmjAction;
    Panel1: TPanel;
    zproj: TDMZEditFind;
    Label1: TLabel;
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure JQAfterOpen(DataSet: TDataSet);
    procedure jqprjnamesetText(Sender:TField; const text:string );
    procedure JQBeforeOpen(DataSet: TDataSet);
    procedure JQBeforeInsert(DataSet: TDataSet);
    procedure zprojFind(Sender: TObject; ID: string);
  private
    { Private declarations }
  public
    { Public declarations }
   Procedure FInit; Override;
 //  Procedure FInitCard(pMaster:string=''); override;
  end;


implementation
  uses JAppMainU;
{$R *.dfm}

Procedure TZFoldersF.FInit;
begin
  PCaption := '������� ��������';
{  JqAutoActivate := true;
  jq.Close ;
  IF pMaster <> '' THEN BEGIN
     jq.Params.ParamByName('pID').AsString := pMaster ;
  END ELSE begin
    jq.Open;
    jq.insert;
    PCaption := '���� ����';
end;}
end;

procedure TZFoldersF.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
jq.fieldByName('id').AsString := japp.db.get_seq;
jq.FieldByName('PROJID').AsString := zproj.idvalue; //
jq.FieldByName('PRNTID').AsInteger := 0;// parent id zero by default;
end;

procedure TZFoldersF.JQAfterOpen(DataSet: TDataSet);
begin
  inherited;
//jq.makefieldreadwrite('prjname',jqprjnamesetText);
end;

procedure TZFoldersF.JQBeforeInsert(DataSet: TDataSet);
begin
  inherited;
if zproj.text = '' then abort;

end;

procedure TZFoldersF.JQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
if zproj.text <> '' then
jq.params.paramByName('pid').AsString := zproj.idvalue;
end;

procedure TZFoldersF.jqprjnamesetText(Sender:TField; const Text:string);
begin
  zproj.text := text;
  zproj.dosearch;
  jq.fieldbyname('PROJID').asstring :=zproj.IDValue;
  jq.fieldbyname('prjname').asstring :=zproj.NameValue;
end;
procedure TZFoldersF.zprojFind(Sender: TObject; ID: string);
begin
  inherited;
jq.close;
jq.open;
end;

end.
