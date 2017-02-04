unit Zdocnewu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, DB, DBClient, Provider, ADODB, Menus,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, ImgList, GridsEh,
  DBGridEh, JazDBGrid, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU,
  JPMainU, AmjLookUpU, AmjactionsU;

type
  TZdocnewf = class(TJPmain)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    AmjAction1: TAmjAction;
    AmjAction2: TAmjAction;
    AmjAction3: TAmjAction;
    AmjAction4: TAmjAction;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    ZPROJID: TDMZEditFind;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    ZSRCID: TDMZEditFind;
    DBEdit1: TDBEdit;
    ZSECRETID: TDMZEditFind;
    FOLDERID: TDMZEditFind;
    ZSTATUSID: TDMZEditFind;
    Label1: TLabel;
    ZTMPLTID: TDMZEditFind;
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure ZPROJIDFind(Sender: TObject; ID: string);
    procedure ZSRCIDFind(Sender: TObject; ID: string);
    procedure ZSTATUSIDFind(Sender: TObject; ID: string);
    procedure FOLDERIDFind(Sender: TObject; ID: string);
    procedure ZSECRETIDFind(Sender: TObject; ID: string);
    procedure ZTMPLTIDFind(Sender: TObject; ID: string);
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

Procedure TZdocnewf.PreFInit;
Begin
  inherited PreFInit;
  width := 900;
  Height := 650;
  Align := alRight;
End;

Procedure TZdocnewf.FInitCard(pMaster:string='');
begin
  width := 900;
  Align := alRight;
  Jq.Close ;

  IF pMaster <> 'S' THEN BEGIN
     JQ.Params.ParamByName('pID').AsString := pMaster ;
     JQ.Open;
     PCaption := '����� �����';

     ZPROJID.Text:=Jq.FieldByName('ZPROJID').AsString;
     ZPROJID.DoSearch(TRUE);

     ZSTATUSID.Text:=Jq.FieldByName('ZSTATUSID').AsString;
     ZSTATUSID.DoSearch(TRUE);

     ZSRCID.Text:=Jq.FieldByName('ZSRCID').AsString;
     ZSRCID.DoSearch(TRUE);

     FOLDERID.Text:=Jq.FieldByName('FOLDERID').AsString;
     FOLDERID.DoSearch(TRUE);


     ZSECRETID.Text:=Jq.FieldByName('ZSECRETID').AsString;
     ZSECRETID.DoSearch(TRUE);

     ZTMPLTID.Text:=Jq.FieldByName('ZTMPLTID').AsString;
     ZTMPLTID.DoSearch(TRUE);

  END ELSE begin
    JQ.Open;
    JQ.insert;
    PCaption := '����� �����';
  end;
end;

procedure TZdocnewf.ZPROJIDFind(Sender: TObject; ID: string);
begin
  inherited;
  if (ZPROJID.IDValue <> '') and (Jq.FieldByName('ZPROJID').AsString <> ZPROJID.IDValue) then begin
     Jq.EDIT;
     Jq.FieldByName('ZPROJID').AsString := ZPROJID.IDValue;
   end;
end;

procedure TZdocnewf.FOLDERIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (FOLDERID.IDValue <> '') and (Jq.FieldByName('FOLDERID').AsString <> FOLDERID.IDValue) then begin
     Jq.EDIT;
     Jq.FieldByName('FOLDERID').AsString := FOLDERID.IDValue;
   end;
end;

procedure TZdocnewf.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
  JQ.FieldByName('ID').AsString := Japp.DB.Get_maxSeq('jedms.DOC');
  JQ.FieldByName('VIEWCO').AsString := '0';
  JQ.FieldByName('ISDELETED').AsString := '��';
  JQ.FieldByName('ISACTIVE').AsString := '��';
end;
procedure TZdocnewf.ZSECRETIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (ZSECRETID.IDValue <> '') and (Jq.FieldByName('ZSECRETID').AsString <> ZSECRETID.IDValue) then begin
     Jq.EDIT;
     Jq.FieldByName('ZSECRETID').AsString := ZSECRETID.IDValue;
   end;
end;

procedure TZdocnewf.ZSRCIDFind(Sender: TObject; ID: string);
begin
  inherited;
  if (ZSRCID.IDValue <> '') and (Jq.FieldByName('ZSRCID').AsString <> ZSRCID.IDValue) then begin
     Jq.EDIT;
     Jq.FieldByName('ZSRCID').AsString := ZSRCID.IDValue;
   end;
end;

procedure TZdocnewf.ZSTATUSIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (ZSTATUSID.IDValue <> '') and (Jq.FieldByName('ZSTATUSID').AsString <> ZSTATUSID.IDValue) then begin
     Jq.EDIT;
     Jq.FieldByName('ZSTATUSID').AsString := ZSTATUSID.IDValue;
   end;
end;

procedure TZdocnewf.ZTMPLTIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (ZTMPLTID.IDValue <> '') and (Jq.FieldByName('ZTMPLTID').AsString <> ZTMPLTID.IDValue) then begin
     Jq.EDIT;
     Jq.FieldByName('ZTMPLTID').AsString := ZTMPLTID.IDValue;
   end;
end;

end.
