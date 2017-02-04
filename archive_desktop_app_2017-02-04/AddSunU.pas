unit AddSunU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, AmjSetU, StdCtrls, Mask, DBCtrlsEh, ActnList,
  AmjactionsU, DBCtrls;

type
  TAddSunForm = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    AmjSet1: TAmjSet;
    AmjActionList1: TAmjActionList;
    AmjAction1: TAmjAction;
    DBEdit1: TDBEdit;
    procedure AmjAction1Handle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddSunForm: TAddSunForm;

implementation

{$R *.dfm}

procedure TAddSunForm.AmjAction1Handle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
AMJSET1.POST;
end;

end.
