unit ZProjectsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls, jazDBGrid, GridsEh,
  DBGridEh, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU, JPG1U, AmjactionsU,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, Mask,
  AmjLookUpU;

type
  TZProjectsF = class(TJPG1F)
    AmjAction1: TAmjAction;
    procedure JQAfterInsert(DataSet: TDataSet);
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

Procedure TZProjectsF.FInit;
begin
  PCaption := '��������';
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

procedure TZProjectsF.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
jq.fieldByName('id').AsString := japp.db.get_seq;
jq.fieldByName('IsDeleted').AsString :='��';
jq.fieldByName('IsActive').AsString :='���';
end;

end.
