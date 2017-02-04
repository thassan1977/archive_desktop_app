unit Template2Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DB, DBClient, AmjSetU, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  JazDBGrid, ExtCtrls, ActnList, AmjactionsU;

type
  TTemplateForm = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    MasterGrid: TJazDBGrid;
    DetailGrid: TJazDBGrid;
    MasterSet: TAmjSet;
    DetailSet: TAmjSet;
    MasterDQ: TDataSource;
    DetailDQ: TDataSource;
    AmjActionList1: TAmjActionList;
    AmjActionList2: TAmjActionList;
    AmjAction2: TAmjAction;
    AmjSet1: TAmjSet;
    AmjAction3: TAmjAction;
    AmjAction7: TAmjAction;
    AmjAction4: TAmjAction;
    procedure DetailSetBeforeOpen(DataSet: TDataSet);
    procedure AmjSet1AfterScroll(DataSet: TDataSet);
    procedure ProcessJsonNm(txt: String);
    procedure NameAndWidthColumn(dbgrid:tjazdbgrid;fieldn,newname:string;widthn:integer);
    procedure MasterSetAfterOpen(DataSet: TDataSet);
    procedure DetailSetAfterOpen(DataSet: TDataSet);
    procedure MasterSetAfterInsert(DataSet: TDataSet);
    procedure DetailSetAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent;const str :string);
  end;

var
  TemplateForm: TTemplateForm;
  Json_str :string;

implementation

uses JsonDataObjects,JappmainU;
{$R *.dfm}


  constructor TTemplateForm.create(AOwner: TComponent;const str :string);
  begin
  inherited Create(AOwner);
  Json_str := str;
  end;

procedure TTemplateForm.AmjSet1AfterScroll(DataSet: TDataSet);
begin
DetailSet.close;
//DetailSet.params.paramByName('pid').AsString := MasterSet.FieldByName('id').AsString;
DetailSet.open;
end;

procedure TTemplateForm.DetailSetAfterInsert(DataSet: TDataSet);
begin
DetailSet.FieldByName('ID').ASString := Japp.db.get_seq;
DetailSet.FieldByName('MASTERID').ASString := MasterSet.FieldByName('ID').ASString;
end;

procedure TTemplateForm.DetailSetAfterOpen(DataSet: TDataSet);
begin
ProcessJsonNm(Json_str);
end;

procedure TTemplateForm.DetailSetBeforeOpen(DataSet: TDataSet);
var str:string;
begin
DetailSet.params.paramByName('pid').AsString := MasterSet.FieldByName('id').AsString;

end;

 procedure TTemplateForm.MasterSetAfterInsert(DataSet: TDataSet);
begin
MasterSet.FieldByName('ID').AsString := Japp.db.get_seq;
end;

procedure TTemplateForm.MasterSetAfterOpen(DataSet: TDataSet);
begin
ProcessJsonNm(Json_str);
end;

procedure TTemplateForm.ProcessJsonNm(txt: String);
  var str,TableName:string;  // text to be modified
//  JsonForm : TTemplateForm;
  lab : Tlabel;
prr : string;
  I,j : integer;
  Obj,FormObj,PropertiesObj,SubObj1,ColumnObj : TJsonObject;
  Objbs :TJsonbaseObject;
  SingleLabel :Tlabel;

  begin
  str := txt;
 obj := TjsonObject.parse(str) as TJsonObject;
 FormObj := obj['ctrls'].items[0];    // first item is a form always.
 PropertiesObj :=FormObj['Properties'];
   TableName :=  PropertiesObj['TableName'];

  for I := 0 to FormObj['ctrls'].Count - 1 do
  begin
  SubObj1 := FormObj['ctrls'].items[I];
 /// MemoOut.lines.add(SubObj1['CtrlType']);
   if ( SubObj1['CtrlType'] = 'singlelinetext' )or (SubObj1['CtrlType'] = 'date' ) then
   begin
   PropertiesObj := SubObj1['Properties'];
   for j :=0 to mastergrid.Columns.Count-1 do  mastergrid.Columns.Items[j].visible:=false;
NameAndWidthColumn(mastergrid,PropertiesObj['BindTo'],PropertiesObj['Label'],75)
    end;
if  SubObj1['CtrlType'] =
   'grid' then
   begin
   PropertiesObj := SubObj1['Properties'];
   for j :=0 to Detailgrid.Columns.Count-1 do  Detailgrid.Columns.Items[j].visible:=false;
   for j := 0 to PropertiesObj['DataColumns'].Count - 1 do
   begin
   ColumnObj := PropertiesObj['DataColumns'].items[j];
   NameAndWidthColumn(Detailgrid,ColumnObj['bindto'],ColumnObj['label'],75);
   // be carefull with the bindto not Bindto
   end;
   end;

  end;
 end;

 procedure TTemplateForm.NameAndWidthColumn(dbgrid:tjazdbgrid;fieldn,newname:string;widthn:integer);
  var i:integer;
begin
  for i:=0 to DBGrid.Columns.Count-1 do
  if DBGrid.Columns.Items[i].FieldName=fieldn then
      begin
  DBGrid.Columns.Items[i].Title.Caption:=newname;
  DBGrid.Columns.Items[i].Width:=widthn;
  DBGrid.Columns.Items[i].visible:=true;
      end;
end;




end.
