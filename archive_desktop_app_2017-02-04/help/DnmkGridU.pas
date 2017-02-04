unit DnmkGridU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JPG1U, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls, jazDBGrid, GridsEh,
  DBGridEh, DBCtrls, Mask, DBGridEhGrouping, AmjSetU, RzPanel,
  AmjStandardU, amjbtnu, AmjLookUpU, AmjactionsU, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh,uLkJSON;

type
  TSalListsF = class(TJPG1F)
    ZPAYPRN: TAmjSet;
    qemp: TAmjSet;
    Csal: TAmjSet;
    RFisha: TAmjAction;
    Apayordr: TAmjAction;
    JPanel1: TJPanel;
    Panel3: TPanel;
    CKordByName: TCheckBox;
    Amjsep2: TAmjAction;
    Amjsep3: TAmjAction;
    Amjprepare: TAmjAction;
    LMnth: TLabel;
    PayMMList: TDBLookupComboBox;
    PayMM: TAmjSet;
    DPayMM: TDataSource;
    ZMandat: TDMZEditFind;
    ZRep: TDMZEditFind;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    procedure AmjprepareHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure PayMMAfterScroll(DataSet: TDataSet);
    procedure RFishaHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ApayordrHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ZRepFind(Sender: TObject; ID: string);
    procedure ZMandatFind(Sender: TObject; ID: string);
    procedure PayMMBeforeScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FInit; override;
    procedure setGrid;
  end;


implementation

uses JAppMainU;

{$R *.dfm}

Procedure TSalListsF.FInit;
begin
  PCaption := 'جدول الأجور';
  jqautoopen := false;

  PayMM.Close;
  PayMM.Open;
  PayMMList.KeyValue := PayMM.FieldByName('ID').AsString;

  ZRep.Condition := 'ISDEF = ''نعم'' ' ;
  ZRep.TEXT := '-';
  ZRep.DoSearch();
  ZRep.Condition := '';

  JRActions.HasSeqOrdr := true;
  setGrid;
end;

procedure TSalListsF.PayMMAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ZMandat.Text := '';
  ZMandat.Condition := 'dat = to_date('''+PayMM.FieldByName('DAT').AsString+''', ''yyyy/mm/dd'') ';
end;

procedure TSalListsF.PayMMBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if PayMM.FieldByName('closed').AsString = 'Y'  then begin
    Csal.sql.text := ' SELECT val, itemid FROM Jsal.PAYEMPITEMS_stor WHERE PAYEMPID = :Lpayempid ';
  end
  else begin
    Csal.sql.text := ' SELECT val, itemid FROM Jsal.PAYEMPITEMS WHERE PAYEMPID = :Lpayempid ';
  end;
end;

procedure TSalListsF.setGrid;
var SS : TColumnEh;
    ii : integer;
    Safi : integer;
Begin
  ZPAYPRN.Close;
  ZPAYPRN.Params.ParamByName('pPrnID').asstring := Zrep.IDValue;
  ZPAYPRN.Open;


  JDBGrid1.Columns.clear;
  SS := JDBGrid1.Columns.Add;
  SS.FieldName := 'cl1';
  SS.Title.Caption := 'مسلسل';
  SS.Width := 38;

  SS.FieldName := 'CARDNO';
  SS.Title.Caption := 'رقم الشطب';
  SS.Width := 38;

  SS := JDBGrid1.Columns.Add;
  SS.FieldName := 'catname';
  SS.Title.Caption := 'الرتبة';
  SS.Width := 60;

  SS := JDBGrid1.Columns.Add;
  SS.FieldName := 'NO';
  SS.Title.Caption := 'الرقم';
  SS.Width := 38;

  SS := JDBGrid1.Columns.Add;
  SS.FieldName := 'NAME';
  SS.Title.Caption := 'الاسم والكنية';
  SS.Width := 150;

  SS := JDBGrid1.Columns.Add;
  SS.FieldName := 'MANDAT';
  SS.Title.Caption := 'جدول الصرف';
  SS.Width := 150;

  ZPAYPRN.First;
  ii := 2;
  while not ZPAYPRN.Eof do
    begin
      if ZPAYPRN.fieldbyname('typ').AsString <> 'تجميع' then
      begin
        SS := JDBGrid1.Columns.Add;
        if  (ZPAYPRN.fieldbyname('itemid').AsString = '7') then   // 7750
          begin
            SS.FieldName := 'NOTE';
            SS.Width := 300;
             ii := ii + 1;
          end
        else if ZPAYPRN.fieldbyname('itemid').AsString = '9000' then
          begin
            SS.FieldName := 'CL' + inttostr(ii);
            SS.Width := 60;
            ss.Font.Size := 11;
            ii := ii + 1;
          end
        else
          begin
            SS.FieldName := 'CL' + inttostr(ii);
            SS.Width := 38;
            ii := ii + 1;
          end;

        SS.Title.Caption := ZPAYPRN.FieldByName('NAME').AsString;
      end;

      ZPAYPRN.Next;
    end;
end;

procedure TSalListsF.ZMandatFind(Sender: TObject; ID: string);
var err : string; isf : boolean;
begin
  inherited;
  AmjprepareHandle(sender, isf, err);
end;

procedure TSalListsF.ZRepFind(Sender: TObject; ID: string);
begin
  inherited;
  setGrid;
end;

procedure TSalListsF.AmjprepareHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
var srchstr, empsqlstr, repstr: string;
 ii, jord : integer;  safi : integer;
 Lyy, Lmm : string;
begin
  inherited;
  if CheckBox1.Checked then begin
    Lyy := ZMandat.LValues[0]; //('YY').AsString;
    LMM := ZMandat.LValues[1];  //MM').AsString;
  end
  else begin
    Lyy := PayMM.FieldByName('yy').asstring; //('YY').AsString;
    LMM := PayMM.FieldByName('mm').asstring;  //MM').AsString;
  end;


 Jq.DisableControls;
  Japp.db.RunSql('begin DELETE FROM Jsal.TMPPAYLIST; commit; end;');

  jq.close;
  JQ.CommandText := 'Select * from Jsal.TMPPAYLIST order by CL1 ';
  JQ.Open;

  if PayMM.FieldByName('closed').AsString = 'Y'  then begin
    qemp.Close;
    empsqlstr := 'SELECT CARDNO, PAYEMP_stor.id, PAYEMP_stor.empid, emp.salno, EMP.fullname, JSAL.JazVal.SSVal (''ZCAT'', ''NAME'', PAYEMP_stor.catid)  catname, jsal.JazVal.SSVal(''ZMANDAT'', ''NAME'', PAYEMP_stor.MANDATID)  mandatname FROM JSal.PAYEMP_stor, JSal.emp ';
    if CheckBox1.Checked then begin
       empsqlstr := empsqlstr + ' WHERE yy = '+ Lyy +' AND mm = '+ Lmm + ' and  JSal.PAYEMP_stor.empid =  JSal.emp.id';
       empsqlstr := empsqlstr + ' AND PAYEMP_stor.Mandatid = ' + ZMandat.Idvalue;
    end
    else
       empsqlstr := empsqlstr + ' WHERE trunc(dat) = trunc(to_date(''1/'+ Lmm +'/'+ Lyy + ''', ''dd/mm/yyyy'')) and  JSal.PAYEMP_stor.empid =  JSal.emp.id';
 end
  else begin
    qemp.Close;
    empsqlstr := 'SELECT CARDNO, PAYEMP.id, PAYEMP.empid, emp.salno, EMP.fullname, JSAL.JazVal.SSVal (''ZCAT'', ''NAME'', emp.catid)  catname, jsal.JazVal.SSVal(''ZMANDAT'', ''NAME'', emp.MANDATID)  mandatname  FROM JSal.PAYEMP, JSal.emp ';
    if CheckBox1.Checked then begin
      empsqlstr := empsqlstr + ' WHERE yy = '+ Lyy +' AND mm = '+ Lmm + ' and  JSal.PAYEMP.empid =  JSal.emp.id';
      empsqlstr := empsqlstr + ' AND PAYEMP.Mandatid = ' + ZMandat.Idvalue;
    end
    else
       empsqlstr := empsqlstr + ' WHERE trunc(dat) = trunc(to_date(''1/'+ Lmm +'/'+ Lyy + ''', ''dd/mm/yyyy'')) and  JSal.PAYEMP.empid =  JSal.emp.id';
  end;

  empsqlstr := empsqlstr + ' order by EMP.catid desc,  nvl(EMP.deptno, EMP.salno)';
  qemp.CommandText := empsqlstr;
  qemp.close;
  qemp.open;     jord := 1;
//  qemp.Last;
  qemp.First;
  while not qemp.Eof do
    begin
      CSal.Close;
      CSal.Params.ParamByName('Lpayempid').AsString := qemp.fieldbyname('id').AsString;
      CSal.Open;

      jq.Insert;
      JQ.fieldbyname('CL1').AsString := inttostr(jord);
      JQ.fieldbyname('NO').AsString := qemp.fieldbyname('salno').AsString;
      JQ.fieldbyname('NAME').AsString := qemp.fieldbyname('fullname').AsString;
      JQ.fieldbyname('CATNAME').AsString := qemp.fieldbyname('CATNAME').AsString;
      JQ.fieldbyname('CARDNO').AsString := qemp.fieldbyname('CARDNO').AsString;
      JQ.fieldbyname('MANDAT').AsString := qemp.fieldbyname('mandatname').AsString;


      ii := 2;
      safi := 1;
      ZPAYPRN.First;
      while not ZPAYPRN.Eof do
        begin
            CSal.Filtered := False;
            CSal.Filter := ' Itemid = ' + ZPAYPRN.fieldbyname('ItemId').AsString;
            CSal.Filtered := True;

            if ZPAYPRN.fieldbyname('TYP').AsString = 'تجميع' then
              begin
                if (CSal.fieldbyname('val').AsString <> '0')and (CSal.fieldbyname('val').AsString <> '') then
                  JQ.FieldByName('Note').AsString := JQ.FieldByName('Note').AsString + '; '
                  + ZPAYPRN.fieldbyname('name').AsString + '=' + CSal.fieldbyname('val').AsString;
              end
           else if ZPAYPRN.fieldbyname('TYP').AsString = 'الصافي' then
              begin
               JQ.FieldByName('CL'+ inttostr(ii)).AsString := CSal.fieldbyname('val').AsString;
               safi := CSal.fieldbyname('val').AsInteger;
               ii := ii + 1;
              end
           else
             begin
               if (CSal.fieldbyname('val').AsString <> '0')and (CSal.fieldbyname('val').AsString <> '') then
                 JQ.FieldByName('CL'+ inttostr(ii)).AsString := CSal.fieldbyname('val').AsString;
               ii := ii + 1;
             end;

            ZPAYPRN.Next;
          end;

        JQ.FieldByName('Note').AsString := copy(JQ.FieldByName('Note').AsString, 2, 10000);
        if safi = 0 then
{          BEGIN
            JQ.FieldByName('CL'+ inttostr(ii)).AsString := '0';
            JQ.post;
            jord := jord + 1;
          END
}          JQ.cancel
        else
          begin
            JQ.post;
            jord := jord + 1;
          end;
      qemp.Next;
    end;

  jq.close;
  if CKordByName.Checked then
    JQ.CommandText := 'select  rownum cl1, amj.* from (Select * from Jsal.TMPPAYLIST order by name) amj'
  else
    JQ.CommandText := 'Select * from Jsal.TMPPAYLIST order by CL1 ';
//  JQ.Open;
  JRActions.DataRefresh;

  if CheckBox1.Checked then begin
    repstr := 'جدول صرف رواتب الشهر ' + ZMandat.LValues[2];
    repstr := repstr + '  جدول الصرف: ' +  ZMandat.LValues[4];
  end
  else
    repstr := PayMM.FieldByName('yymm').asstring;

//  if ZEmp.Text <> '' then
//    repstr := repstr + '  العامل: ' +  ZEmp.NameValue
//  else



  japp.AppAct.LastOpenPage.Rep_Title := repstr;

 JQ.EnableControls;
end;

procedure TSalListsF.ApayordrHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
  Rep_SalPayOrdr(ZMandat.LValues[0] , ZMandat.LValues[1] , ZMandat.IDValue);
end;

procedure TSalListsF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then begin
    ZMandat.enabled := true;
  end
  else begin
    ZMandat.Text := '';
    ZMandat.enabled := false;
  end;

end;

procedure TSalListsF.RFishaHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
  if CheckBox1.Checked then
    init_Fisha_Rep(' AND PAYEMP.Mandatid = ' + ZMandat.IDValue, PayMM.FieldByName('DAT').AsString)
  else
    init_Fisha_Rep(' ' , PayMM.FieldByName('DAT').AsString);
end;

end.
