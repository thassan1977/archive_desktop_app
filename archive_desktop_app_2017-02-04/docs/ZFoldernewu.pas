unit ZFoldernewu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, DB, DBClient, Provider, ADODB, Menus,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, ImgList, GridsEh,
  DBGridEh, JazDBGrid, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU,
  JPMainU, AmjLookUpU, AmjactionsU;

type
  TZFoldernewf = class(TJPmain)
    AmjAction1: TAmjAction;
    AmjAction2: TAmjAction;
    AmjAction3: TAmjAction;
    AmjAction4: TAmjAction;
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    zproj: TDMZEditFind;
    DBEdit3: TDBEdit;
    PrntFOLDERID: TDMZEditFind;
    Label1: TLabel;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    FolderID: TDMZEditFind;
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure zprojFind(Sender: TObject; ID: string);
    procedure PrntFOLDERIDFind(Sender: TObject; ID: string);
    procedure JQBeforeOpen(DataSet: TDataSet);
    procedure PrntFOLDERIDExit(Sender: TObject);
    private
    { Private declar
    procedure JRCancelcloseExecute(Sender: TObject);ations }
  public
    { Public declarations }
    Procedure FInitCard(pMaster:string=''); override;
    Procedure PreFInit; Override;
  end;

implementation

uses JAppMainU;

{$R *.dfm}

Procedure TZFoldernewf.PreFInit;
Begin
  inherited PreFInit;
  width := 900;
  Height := 650;
  Align := alRight;
End;

Procedure TZFoldernewf.FInitCard(pMaster:string='');
begin
  width := 900;
  Align := alRight;
  Jq.Close ;

  IF pMaster <> 'S' THEN BEGIN
     JQ.Params.ParamByName('pID').AsString := pMaster ;
     JQ.Open;
     PCaption := '����� ����';

   {  FOLDERID.Text:=Jq.FieldByName('ID').AsString;
     FOLDERID.DoSearch(TRUE);}

     zproj.Text:=Jq.FieldByName('PROJID').AsString;
     zproj.DoSearch(TRUE);

     PrntFOLDERID.Text:=Jq.FieldByName('PRNTID').AsString;
     PrntFOLDERID.DoSearch(TRUE); //zproj}
     jq.close;
     jq.open;


  END ELSE begin
    JQ.Open;
    JQ.insert;
    PCaption := '���� ����';
  end;
end;

procedure TZFoldernewf.zprojFind(Sender: TObject; ID: string);
begin
  inherited;
  if (zproj.IDValue <> '') and (Jq.FieldByName('PROJID').AsString <> zproj.IDValue) then begin
     Jq.EDIT;
     Jq.FieldByName('PROJID').AsString := zproj.IDValue;
 //    PrntFOLDERID.condition := 'PROJID = ' + zproj.IDValue;
   end;
   PrntFOLDERID.condition := 'PROJID = ' + zproj.IDValue;
end;

procedure TZFoldernewf.PrntFOLDERIDExit(Sender: TObject);
begin
  inherited;
{  if PrntFOLDERID.text = '0' then
  begin
  jq.edit;
  Jq.FieldByName('PRNTID').AsString := '0';
  end;}
end;

procedure TZFoldernewf.PrntFOLDERIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (PrntFOLDERID.IDValue <> '') and (Jq.FieldByName('PRNTID').AsString <> PrntFOLDERID.IDValue) then begin
     Jq.EDIT;
     Jq.FieldByName('PRNTID').AsString := PrntFOLDERID.IDValue; //PRNTNAME
     Jq.FieldByName('PRNTNAME').AsString := PrntFOLDERID.nameValue;
   end
{ else
      jq.edit;
   Jq.FieldByName('PRNTID').AsString := '0';
   jq.post; //}

end;

procedure TZFoldernewf.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
  JQ.FieldByName('ID').AsString := Japp.DB.Get_maxSeq('jedms.Folders');
  Jq.FieldByName('PRNTID').AsString := '0';
  JQ.FieldByName('ISDELETED').AsString := '��';
  JQ.FieldByName('ISACTIVE').AsString := '���';
end;
procedure TZFoldernewf.JQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
{if zproj.text <> '' then
jq.params.paramByName('pid').AsString := zproj.idvalue; //}
end;

end.
