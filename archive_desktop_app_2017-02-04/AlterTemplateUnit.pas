unit AlterTemplateUnit;

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
    AmjAction1: TAmjAction;
    AmjAction2: TAmjAction;
    AmjSet1: TAmjSet;
    procedure DetailSetBeforeOpen(DataSet: TDataSet);
    procedure AmjSet1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TemplateForm: TTemplateForm;

implementation

{$R *.dfm}

procedure TTemplateForm.AmjSet1AfterScroll(DataSet: TDataSet);
begin
DetailSet.close;
//DetailSet.params.paramByName('pid').AsString := MasterSet.FieldByName('id').AsString;
DetailSet.open;
end;

procedure TTemplateForm.DetailSetBeforeOpen(DataSet: TDataSet);
var str:string;
begin
DetailSet.params.paramByName('pid').AsString := MasterSet.FieldByName('id').AsString;

end;

end.
