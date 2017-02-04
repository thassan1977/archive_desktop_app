unit ZPRIVSnEW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, DB, DBClient, Provider, ADODB, Menus,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, ImgList, GridsEh,
  DBGridEh, JazDBGrid, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU,
  JPMainU, AmjLookUpU, AmjactionsU, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh;

type
  TZPRIVSnEW2 = class(TJPmain)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    AmjAction1: TAmjAction;
    AmjAction2: TAmjAction;
    AmjAction3: TAmjAction;
    AmjAction4: TAmjAction;
    JGrid1: TJazDBGrid;
    JBodyPnl: TJPanel;
    JTitle2: TJPanel;
    Image1: TImage;
    JGrid2: TJazDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    JazDBGrid1: TJazDBGrid;
    JQ2: TAmjSet;
    Dq2: TDataSource;
    JRActions2: TAmjActionList;
    AmjActionVav2: TAmjAction;
    AmjActionsep12: TAmjAction;
    AmjActionRefresh2: TAmjAction;
    AmjActionFilter2: TAmjAction;
    AmjActionPrint2: TAmjAction;
    AmjAction5: TAmjAction;
    DQ3: TDataSource;
    JQ3: TAmjSet;
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure JQAfterScroll(DataSet: TDataSet);
    private
    { Private declar
    procedure JRCancelcloseExecute(Sender: TObject);ations }
       PROJID : String;
  public
    { Public declarations }
    Procedure FInitCard(pMaster:string=''); override;
    Procedure PreFInit; Override;

  end;

implementation

uses JAppMainU;

{$R *.dfm}

Procedure TZPRIVSnEW2.PreFInit;
Begin
  inherited PreFInit;
  width := 900;
  Height := 650;
  Align := alRight;
End;

Procedure TZPRIVSnEW2.FInitCard(pMaster:string='');
begin
  width := 900;
  Align := alRight;
  Jq.Close ;

  IF pMaster <> 'S' THEN BEGIN
     JQ.Params.ParamByName('pID').AsString := pMaster ;
     JQ.Open;
     PCaption := '����� � ����� �������'

     //DOCID.Text:=Jq.FieldByName('DOCID').AsString;
    // DOCID.DoSearch(TRUE);
  END ELSE begin
    JQ.Open;
    JQ.insert;
    PROJID := pMASTER;

    PCaption := '������ �����';
  end;
end;

procedure TZPRIVSnEW2.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
  JQ.FieldByName('ID').AsString := japp.db.get_seq;
JQ.FieldByName('projid').AsString := PROJID;
{  JQ.FieldByName('ID').AsString := Japp.DB.Get_maxSeq('jedms.DOC');
  JQ.FieldByName('VIEWCO').AsString := '0';
  JQ.FieldByName('DOWNLOADCO').AsString := '0';
  JQ.FieldByName('ISDELETED').AsString := '��';
  JQ.FieldByName('ISACTIVE').AsString := '��';}
end;
procedure TZPRIVSnEW2.JQAfterScroll(DataSet: TDataSet);
begin
  inherited;
  JQ2.close;
  JQ2.open;
  JQ3.close;
  JQ3.open;
end;

end.
