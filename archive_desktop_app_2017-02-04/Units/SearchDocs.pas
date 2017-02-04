unit SearchDocs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JPG2U, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, Grids, DBGrids, JazDBGrid, ExtCtrls, Buttons, StdCtrls, Mask,
  GridsEh, DBGridEh, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU,
  AmjactionsU, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TZPrivsf = class(TJPG2F)
    AmjAction1: TAmjAction;
    Panel1: TPanel;
    Panel2: TPanel;
    JazDBGrid1: TJazDBGrid;
    JQ3: TAmjSet;
    DQ3: TDataSource;
    AmjAction2: TAmjAction;
    JQMetaIdSEt: TAmjSet;
    JQMetaName: TAmjSet;
    jqMetaID: TAmjSet;
    JQgetFieldName: TAmjSet;
    JRAction3: TAmjActionList;
    AmjAction3: TAmjAction;
    procedure JQAfterScroll(DataSet: TDataSet);
    procedure JQ2AfterInsert(DataSet: TDataSet);
    procedure JQ2BeforeOpen(DataSet: TDataSet);
    procedure JQ3BeforeOpen(DataSet: TDataSet);
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure JQ3AfterInsert(DataSet: TDataSet);
    procedure JQBeforeDelete(DataSet: TDataSet);
    procedure JQAfterDelete(DataSet: TDataSet);


  private
    { Private declarations }
    PROJID : String;
  public
    { Public declarations }
    Procedure FInitCard(pMaster:string=''); override;
    Procedure PreFInit; Override;
  end;

implementation

uses JAppMainU;

{$R *.dfm}

{  Procedure TZPrivsf.FInit;
begin
  PCaption := '���� �����';

end; //}
Procedure TZPrivsf.PreFInit;
Begin
  inherited PreFInit;
 // width := 900;
 // Height := 650;
  Align := alCLIENT;
End;


Procedure TZPrivsf.FInitCard(pMaster:string='');
begin
 // width := 900;
     PROJID := pMASTER;
  Align := alCLIENT;
  JBodyPnl.WIDTH := ROUND(SELF.WIDTH/2)-30;//
  Panel1.WIDTH := ROUND(SELF.WIDTH/2)-30;
  Jq.Close ;
  IF pMaster <> '' THEN
   BEGIN    //S
     JQ.Params.ParamByName('pID').AsString := pMaster ;
     JQ.Open;
     PCaption := '����� � ����� �������' ;

  JQMetaIdSEt.close;
  JQMetaIdSEt.params.paramByName('Pprojid').AsString := jq.FieldByName('projid').AsString;
  JQMetaIdSEt.open;
  if JQMetaIdSEt.RecordCount > 0 then
  begin

 { jqMetaID.close;
  jqMetaID.params.paramByName('Pparentid').AsString := JQMetaIdSEt.FieldByName('metaid').AsString;
  jqMetaID.open;//}

  JQMetaName.close;
  JQMetaName.params.paramByName('pid').AsString := JQMetaIdSEt.FieldByName('metaid').AsString;//jqMetaID.FieldByName('id').AsString;
  JQMetaName.open;
  if JQMetaName.FieldByName('parentid').AsString <> ''  then
           begin

  JQMetaName.params.paramByName('pid').AsString := JQMetaName.FieldByName('parentid').AsString;//jqMetaID.FieldByName('id').AsString;
  JQMetaName.close;
  JQMetaName.open;
          end;

  JTitle2.caption :=  JTitle2.caption + ' ' + JQMetaName.FieldByName('TABLE_NAME_AR').AsString;


  jqMetaID.close;
  jqMetaID.params.paramByName('pparentid').AsString :=   JQMetaName.FieldByName('Id').AsString;//JQMetaIdSEt.FieldByName('metaid').AsString;//jq.FieldByName('projid').AsString;
  jqMetaID.open;//}


// jq2.params.paramByName('pMetaId').AsString := jqMetaID.FieldByName('id').AsString;//metid for jqmetaid
 // jqMetaID.next;
//  if not(jqMetaID.eof) then
  if (jqMetaID.RecordCount > 0) then
  begin
//  jq3.params.paramByName('pMetaId').AsString := jqMetaID.FieldByName('id').AsString;//metid for jqmetaid
  JQMetaName.close;
  JQMetaName.params.paramByName('pid').AsString := JQMetaId.FieldByName('id').AsString;
  JQMetaName.open;
  JTitle2.caption :=  panel2.caption + ' ' + JQMetaName.FieldByName('TABLE_NAME_AR').AsString;
  end Else
      begin
        panel1.visible := false;
        panel1.visible := false;
        panel1.height := 0;
        panel1.width := 0;
        JBodyPnl.align := alclient;
      end;



  jq.close;
  jq.open;
  end;


 END ELSE begin
    JQ.Open;
    JQ.insert;
    PROJID := pMASTER;
    PCaption := '������ �����';
  end;



end;



procedure TZPrivsf.JQ2AfterInsert(DataSet: TDataSet);
begin
  inherited;
 jq2.FieldByName('ID').AsString := JApp.DB.Get_seq;
 JQ2.FieldByName('projid').AsString := PROJID;
 JQ2.FieldByName('PROJ_ROLEID').AsString := jq.FieldByName('ID').AsString;
 JQ2.FieldByName('CANREAD').AsString := '0';
JQ2.FieldByName('CANWRITE').AsString := '0';
JQ2.FieldByName('ISREQUIRED').AsString := '1';//
//JQ2.FieldByName('FILEDID ').AsString := '1';
//JQ2.FieldByName('FIELDNAME').AsString := 'FeildName';

end;

procedure TZPrivsf.JQ2BeforeOpen(DataSet: TDataSet);
begin
 inherited;
  jq2.params.parambyname('pROLLID').asstring := jq.FieldByName('ID').AsString;
end;

procedure TZPrivsf.JQ3AfterInsert(DataSet: TDataSet);
begin
  inherited;
JQ3.FieldByName('ID').AsString := japp.db.get_seq;
JQ3.FieldByName('projid').AsString := PROJID;
JQ3.FieldByName('PROJ_ROLEID').AsString := jq.FieldByName('ID').AsString;
JQ3.FieldByName('CANREAD').AsString := '0';
JQ3.FieldByName('CANWRITE').AsString := '0';
JQ3.FieldByName('ISREQUIRED').AsString := '1';
//JQ3.FieldByName('FILEDID ').AsString := '1';
//JQ3.FieldByName('FIELDNAME').AsString := 'FeildName';
end;

procedure TZPrivsf.JQ3BeforeOpen(DataSet: TDataSet);
begin
  inherited;
 jq3.params.parambyname('pROLLID').asstring := jq.FieldByName('ID').AsString;

end;

procedure TZPrivsf.JQAfterDelete(DataSet: TDataSet);
begin
  inherited;
jq.close;
jq.open;
end;

procedure TZPrivsf.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
JQ.FieldByName('ID').AsString := japp.db.get_seq;
JQ.FieldByName('projid').AsString := PROJID;
JQ.FieldByName('roleid').AsString := japp.db.get_seq;/////
JQ.FieldByName('CANREAD').AsString := '0';
JQ.FieldByName('CANINS').AsString := '0';
JQ.FieldByName('CANUPDT').AsString := '0';
JQ.FieldByName('CANDEL').AsString := '0';
JQ.FieldByName('CANADDFILES').AsString := '0';
JQ.FieldByName('CANSCAN').AsString := '0';
JQ.FieldByName('CANANNOT').AsString := '0';
JQ.FieldByName('CANOCR').AsString := '0';
JQ.FieldByName('CANPRINT').AsString := '0';
JQ.FieldByName('FILEREAD').AsString := '0';
JQ.FieldByName('FILEINS').AsString := '0';
JQ.FieldByName('FILEUPDT').AsString := '0';
JQ.FieldByName('FILEDEL').AsString := '0';
JQ.FieldByName('FILEADDFOLDER').AsString := '0';
JQ.FieldByName('FIELDADDALL').AsString := '0';
JQ.FieldByName('CANMANAGEPRIV').AsString := '0';

 jq.post;


  {Jq.Close ;
  //IF pMaster <> '' THEN BEGIN    //S
     JQ.Params.ParamByName('pID').AsString := PROJID;//pMaster ;
     JQ.Open;}
  //   PCaption := '����� � ����� �������' ;

  JQMetaIdSEt.close;
  JQMetaIdSEt.params.paramByName('Pprojid').AsString := PROJID;//jq.FieldByName('projid').AsString;
  JQMetaIdSEt.open;
  if JQMetaIdSEt.RecordCount > 0 then
  begin
 { jqMetaID.close;
  jqMetaID.params.paramByName('Pprojid').AsString := PROJID;//jq.FieldByName('projid').AsString;
  jqMetaID.open;}


    JQMetaName.close;
  JQMetaName.params.paramByName('pid').AsString := JQMetaIdSEt.FieldByName('metaid').AsString;//jqMetaID.FieldByName('id').AsString;
  JQMetaName.open;
  if JQMetaName.FieldByName('parentid').AsString <> ''  then
           begin

  JQMetaName.params.paramByName('pid').AsString := JQMetaName.FieldByName('parentid').AsString;//jqMetaID.FieldByName('id').AsString;
  JQMetaName.close;
  JQMetaName.open;
          end;

{  JQMetaName.close;
  JQMetaName.params.paramByName('pid').AsString := JQMetaIdSEt.FieldByName('metaid').AsString;//jqMetaID.FieldByName('id').AsString;
  JQMetaName.open; //}

  JTitle2.caption :=  '��������� ������ ��' + ' ' + JQMetaName.FieldByName('TABLE_NAME_AR').AsString;
  JQ2.CLOSE;
  JQ2.OPEN;
  JQgetFieldName.close;
  JQgetFieldName.params.paramByName('pmetaid').AsString := JQMetaName.FieldByName('id').AsString;//jqMetaID.FieldByName('id').AsString;
  JQgetFieldName.open;
  JQgetFieldName.FIRST;
  while NOT (JQgetFieldName.EOF) do
  begin
  JQ2.INSERT;
  JQ2.FieldByName('FILEDID').AsString := JQgetFieldName.FieldByName('ID').AsString;
  JQ2.FieldByName('FIELDNAME').AsString := JQgetFieldName.FieldByName('name').AsString;
  jq2.post;
  JQgetFieldName.next;
  end;
// jq2.params.paramByName('pMetaId').AsString := jqMetaID.FieldByName('id').AsString;//metid for jqmetaid

  jqMetaID.close;
  jqMetaID.params.paramByName('pparentid').AsString := JQMetaName.FieldByName('id').AsString;;//JQMetaIdSEt.FieldByName('metaid').AsString;//jq.FieldByName('projid').AsString;
  jqMetaID.open;//}


 // jqMetaID.next;
  if (jqMetaID.RecordCount > 0) then
  begin
//  jq3.params.paramByName('pMetaId').AsString := jqMetaID.FieldByName('id').AsString;//metid for jqmetaid
  JQMetaName.close;
  JQMetaName.params.paramByName('pid').AsString := JQMetaId.FieldByName('id').AsString;
  JQMetaName.open;
  JTitle2.caption :=  '��������� ������ ��' + ' ' + JQMetaName.FieldByName('TABLE_NAME_AR').AsString;
  JQ3.CLOSE;
  JQ3.OPEN;
  JQgetFieldName.close;
  JQgetFieldName.params.paramByName('pmetaid').AsString := jqMetaID.FieldByName('id').AsString;
  JQgetFieldName.open;
  JQgetFieldName.FIRST;
  while NOT (JQgetFieldName.EOF) do
  begin
  JQ3.INSERT;
  JQ3.FieldByName('FILEDID').AsString := JQgetFieldName.FieldByName('ID').AsString;
  JQ3.FieldByName('FIELDNAME').AsString := JQgetFieldName.FieldByName('name').AsString;
  jq3.post;
  JQgetFieldName.next;
  end;




  end Else
      begin
        panel1.visible := false;
        panel1.height := 0;
        panel1.width := 0;
        JBodyPnl.align := alclient;
      end;


 // JQ.POST;
  jq.close;
  jq.open;
  end;







end;

procedure TZPrivsf.JQAfterScroll(DataSet: TDataSet);
begin
  inherited;
{  if ( jq3.params.paramByName('pMetaId').AsString <> '' ) and
     ( jq2.params.paramByName('pMetaId').AsString <> '' ) then
     begin  //}
  JQ2.close;
  JQ2.open;
  JQ3.close;
  JQ3.open;
    // end;
//  JTitle2.Caption := ' ������ �����' + Jq.FieldByName('NAME').AsString + ' ��� ������� ';
end;


procedure TZPrivsf.JQBeforeDelete(DataSet: TDataSet);
begin
  inherited;
jq2.open;
jq3.open;
if (jq3.recordcount >0)then
japp.db.runsql(' begin delete from jdms.JPROJ_ROLES_DTL_FIELDS where PROJ_ROLEID =  ' + jq.FieldByName('ID').AsString + '; commit; end;');
if jq2.recordcount >0 then
japp.db.runsql(' begin delete from jdms.JPROJ_ROLES_FIELDS where PROJ_ROLEID= ' + jq.FieldByName('ID').AsString + '; commit; end;');

end;

end.



