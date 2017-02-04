unit ZDocNewJSonu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, DB, DBClient, Provider, ADODB, Menus,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, ImgList, GridsEh,
  DBGridEh, JazDBGrid, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU,
  JPMainU, AmjLookUpU, AmjactionsU ,uLkJSON,JsonDataObjects, Grids, DBGrids;

type
  TZDocNewJSonf = class(TJPmain)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    ZPROJID: TDMZEditFind;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    ZTMPLTID: TDMZEditFind;
    JSonMemo: TMemo;
    Label17: TLabel;
    MemoOut: TMemo;
    MemoGen: TMemo;

    procedure ZTMPLTIDFind(Sender: TObject; ID: string);
    procedure ZPROJIDFind(Sender: TObject; ID: string);
    private
    { Private declar
    procedure JRCancelcloseExecute(Sender: TObject);ations }
  public
    { Public declarations }
    Procedure FInitCard(pMaster:string=''); override;
    Procedure PreFInit; Override;
    procedure process(txt: String);
    procedure ProcessJson(txt: String);
    procedure SetFormProperties(var JsonForm:Tform ; txt: String);
function generate(is_array: Boolean = false): String;
  end;

implementation

uses JAppMainU, TemplateUnit;

{$R *.dfm}

Procedure TZDocNewJSonf.PreFInit;
Begin
  inherited PreFInit;
  width := 900;
  Height := 650;
  Align := alRight;
End;

Procedure TZDocNewJSonf.FInitCard(pMaster:string='');
begin
  width := 900;
  Align := alRight;
  Jq.Close ;

  IF pMaster <> 'S' THEN BEGIN

     PCaption := '����� �����';


  END ELSE begin
    JQ.Params.ParamByName('pID').AsString := '' ;
    JQ.Params.ParamByName('pjID').AsString := '' ;
    JQ.Open;
    PCaption := '����� �����';
  end;
end;

procedure TZDocNewJSonf.ZPROJIDFind(Sender: TObject; ID: string);
begin
  inherited;
  jq.close;
  jq.params.paramByName('pjid').AsString :=ZPROJID.IDValue;
  jq.open;
end;

procedure TZDocNewJSonf.ZTMPLTIDFind(Sender: TObject; ID: string);
var
    s: TMemoryStream;
    str,txt:string;
    I:integer;
    Obj: TJsonObject;
    var TemplateForm: TTemplateForm;
begin
  inherited;
if (ZTMPLTID.IDValue <> '') {and (Jq.FieldByName('ZTMPLTID').AsString <> ZTMPLTID.IDValue)} then begin
   {  Jq.EDIT;
     Jq.FieldByName('ZTMPLTID').AsString := ZTMPLTID.IDValue;}
     jq.close;
     jq.params.paramByName('pid').AsString := ZTMPLTID.IDValue;
     jq.open;
   end;
 {  TemplateForm := TTemplateForm.create(self);
  TemplateForm.showmodal;
  TemplateForm.free;//}


   //randomize;
  txt := generate(random(1000)<500);
  memoGen.lines.add(txt);
 // if not is_inserting then
    try
      s := TMemoryStream (jq.CreateBlobStream(jq.FIELDBYNAME('OBJ'), bmRead));
      if s.Size >= 0 then begin
       JSonMemo.lines.LoadFromStream(s);
    for I := 0 to JSonMemo.Lines.Count - 1 do
    str := str + JSonMemo.Lines.Strings[I];
    //   ImageScrollBox.LoadFromStream(s, jq1.FieldByName('FILEFORMAT').AsString, 1); //
  //SetString(str, PAnsiChar(s.Memory), s.Size);
  //  process(txt);
    ProcessJson(str);
//    obj := TJsonobject.parse(str);

      end
    finally

    end;
 end;

 procedure TZDocNewJSonf.SetFormProperties(var JsonForm:Tform ; txt: String);
 var str,str_one: string;
 position_s,position_E : integer;
 begin
  str := txt;
  position_s := ansipos('"Caption" : "',str);
  str_one := copy(str,position_s + length('"Caption" : "'),length(str)-position_s-length('"Caption" : "'));
  position_E := ansipos(',',str_one );
  str_one := copy(str_one,1,position_E);
 position_E := ansipos('"',str_one );
 str_one := copy (str_one,1,position_E-1) ;
 JsonForm.caption := str_one;
 end;







 function TZDocNewJSonf.generate(is_array: Boolean = false): String;
var
  gen: TlkJSONcustomlist;
  s1,s2: String;
  idx,cnt,i: Integer;
begin
  result := '';
  try
    if is_array then
      gen := TlkJSONlist.Create
    else
      gen := TlkJSONobject.Create;
// fill object with random values
    cnt := random(30)+10;
    for idx := 1 to cnt do
      begin
        s1 := 'str_'+inttostr(random(1000));
        if is_array then TlkJSONlist(gen).Add(s1)
        else
          begin
            s2 := 'val_'+inttostr(random(1000));
            TlkJSONobject(gen).Add(s1,s2);
          end;
      end;
//
    i := 0;
    result := GenerateReadableText(gen,i);
  finally
    if Assigned(gen) then FreeAndNil(gen);
  end;
end;


  procedure TZDocNewJSonf.ProcessJson(txt: String);
  var str,TableName:string;  // text to be modified
  JsonForm : Tform;
  lab : Tlabel;
//  position_s,position_E :integer;
  I : integer;
  Obj,FormObj,PropertiesObj,SubObj1,SubObj2: TJsonObject;
  Objbs :TJsonbaseObject;
  SingleLabel :Tlabel;
  DataSet1 : Tamjset;
  EditBox1 : TEdit;
  DetailGrid : TjazDBGrid;
  GridSource: TdataSource;
  GridDataSet :Tamjset;
  begin
  str := txt;
  ////// using JsonDataObject.pas
 // obj.parse(str);
 obj := TjsonObject.parse(str) as TJsonObject;

//   Obj := TJsonObject.Parse('{ "foo": "bar", "array": [ 10, 20 ] }') as TJsonObject;
{  try
    ShowMessage(Obj['foo']);
    ShowMessage(IntToStr(Obj['array'].Count));
    ShowMessage(IntToStr(Obj['array'].Items[0]));
    ShowMessage(IntToStr(Obj['array'].Items[1]));
  finally
    Obj.Free;
  end;  //}



  MemoOut.lines.add(inttostr(obj['ctrls'].count));
  FormObj := obj['ctrls'].items[0];    // first item is a form always.
  MemoOut.lines.add(FormObj['CtrlType']);


  ///  end of  using JsonDataObject.pas

  JsonForm := Tform.create(self);
//  SetFormProperties(JsonForm,str_propt);

  PropertiesObj :=FormObj['Properties'];
 JsonForm.width := strtoint(PropertiesObj['Width']);//600;
  JsonForm.height := strtoint(PropertiesObj['Height']);//300;
  JsonForm.left := strtoint(PropertiesObj['X']);//20;
  JsonForm.top := strtoint(PropertiesObj['Y']);//20;
   JsonForm.caption := PropertiesObj['Caption'];
   TableName :=  PropertiesObj['TableName'];
  //JsonForm.caption := 'Just for Fun';
   MemoOut.lines.add(inttostr(PropertiesObj['Width']));


  ////////////// creating label
  Lab := TLabel.Create(Self);
  Lab.Parent := JsonForm;
  lab.font.color := cllime;
//  lab.font.size := 14;    // it works fine but height is much clearer
  lab.font.height := 30;
  Lab.caption := PropertiesObj['Label'];
  Lab.top := 0;
  Lab.left := 0;
  lab.width := JsonForm.width;
  lab.height := 30;
  lab.color := clskyblue;
  //////////////// end opf creating label
  /// creating new data set
  for I := 0 to FormObj['ctrls'].Count - 1 do
  begin
  SubObj1 := FormObj['ctrls'].items[I];
 /// MemoOut.lines.add(SubObj1['CtrlType']);
   if  SubObj1['CtrlType'] =
   'singlelinetext' then
   begin
   SingleLabel := TLabel.Create(Self);
   SingleLabel.Parent := JsonForm;
   PropertiesObj := SubObj1['Properties'];
   SingleLabel.caption := PropertiesObj['Label'];
   SingleLabel.top :=trunc(strtofloat(PropertiesObj['X']));
   SingleLabel.Left :=trunc(strtofloat(PropertiesObj['Y']));
   SingleLabel.font.color := StringTocolor('cl' + PropertiesObj['Color']);

   DataSet1 := TamjSet.Create(Self);
//   DataSet1.Owner := JsonForm; can not assigne a read only propertie
   DataSet1.AmjTblname := TableName;
   DataSet1.AmjUser := jq.AmjUser;
   DataSet1.CommandText := 'select * from ' + DataSet1.AmjUser;
   DataSet1.CommandText := DataSet1.CommandText + '.' + DataSet1.AmjTblname;
   DataSet1.close;
   DataSet1.open;

   EditBox1 := TEdit.Create(Self);
   EditBox1.Parent := JsonForm;
   EditBox1.BidiMode := bdRightToLeft;
   EditBox1.ReadOnly := True;
   EditBox1.text := DataSet1.FieldByname(PropertiesObj['BindTo']).AsString;
   EditBox1.Left :=  SingleLabel.Left + 10 + SingleLabel.width;
   EditBox1.Top :=  SingleLabel.Top;

    end;

if  SubObj1['CtrlType'] =
   'grid' then
   begin
 {  PropertiesObj := SubObj1['Properties'];
   DetailGrid := TjazDBGrid.Create(Self);
   DetailGrid.Parent := JsonForm;

   GridDataSet := TdataSet.create(Self);
   GridSource := TdataSource.create(Self);
   GridSource.dataSet := GridDataSet;

   DetailGrid.Left := trunc(strtofloat(PropertiesObj['X']));
   DetailGrid.Top := trunc(strtofloat(PropertiesObj['Y']));
   DetailGrid.Width := strtoint(PropertiesObj['Width']);
   DetailGrid.height := strtoint(PropertiesObj['Height']);
}

   end;
  end;
  ///
  JsonForm.showmodal;
//  PropertiesObj.free;  Obj.free; FormObj.free;

  Jsonform.free;

  end;

 procedure TZDocNewJSonf.process(txt: String);
var
  js,item: TlkJSONbase;
  cnt,idx: Integer;
  mth: TlkJSONobjectmethod;
  str:string;

begin
  js := TlkJSON.ParseText(txt);

//  writeln(js.SelfTypeName);
  if js.SelfType in [jsList, jsObject] then
    begin
      cnt := TlkJSONcustomlist(js).Count;
      str := 'there are ' + inttostr(cnt);
      str := str + ' children in list-based object';
      MemoOut.lines.add(str);
//      writeln('there are ',cnt,' children in list-based object');
      for idx := 0 to pred(cnt) do
        begin
          item := TlkJSONcustomlist(js).Child[idx];
 //         write('item ',idx,' is <',item.classname,'>; ');
      str := 'item  ' + inttostr(idx);
      str := str + ' is <' + item.classname + '>; ';
      MemoOut.lines.add(str);
          if not(item is TlkJSONobjectmethod) then
            begin
 //             writeln(item.value);
      MemoOut.lines.add(VarToStr(item.value));
            end
          else
            begin
// for short, not really must be same
              mth := item as TlkJSONobjectmethod;
 //             writeln('name <',mth.Name,'> value <',mth.ObjValue.Value,'>');
       str := 'name < ' + mth.Name + '> value <';
      str := str + VarToStr(mth.ObjValue.Value) + '>; ';  //ObjValue.
      MemoOut.lines.add(str);
            end;
        end;
    end
  else
    begin
//      writeln(js.Value);
      MemoOut.lines.add(VarToStr(js.Value));
    end;
  js.free;
end;



end.
