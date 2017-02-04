unit SearchFolders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, DB, DBClient, Provider, ADODB, Menus,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, ImgList, GridsEh,
  DBGridEh, JazDBGrid, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU,
  JPMainU, AmjLookUpU, AmjactionsU, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh, DemoForm, shellapi;

type
  TFSearchFolders = class(TJPmain)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    AmjAction1: TAmjAction;
    AmjAction2: TAmjAction;
    AmjAction3: TAmjAction;
    AmjAction4: TAmjAction;
    JGrid1: TJazDBGrid;
    GroupBox1: TGroupBox;
    DMZProj: TDMZEditFind;
    Label1: TLabel;
    ename: TEdit;
    Label2: TLabel;
    enote: TEdit;
    Label3: TLabel;
    JSonMemo: TMemo;
    Panel4: TPanel;
    Label4: TLabel;
    eFileName: TEdit;
    Label5: TLabel;
    eFilePath: TEdit;
    BitBtn1: TBitBtn;
    combo_isfolder: TComboBox;
    Label6: TLabel;
    combo_onDB: TComboBox;
    Label7: TLabel;
    actnShowPicture: TAction;
    BitBtn2: TBitBtn;
    getBlob: TAmjSet;
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure JQYesNoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actnShowPictureExecute(Sender: TObject);
    procedure JGrid1DblClick(Sender: TObject);
    private
    { Private declar
    procedure JRCancelcloseExecute(Sender: TObject);ations }
       PROJID : String;
       m_Sql,m_MetaID, m_metaTableName : string ;

       EditImageForm : TEditImageForm ;

       Function SaveBlobToLocalFile(id : string) : string;
       procedure buildJgridColumns;
       procedure freeChildControls(myControl : TControl; freeThisControl: boolean);
       procedure ProcessJson( txt: String);
  public
    { Public declarations }
    Procedure FInitCard(pMaster:string=''); override;
    Procedure PreFInit; Override;

  end;

implementation

uses JAppMainU, JsonDataObjects;

{$R *.dfm}

Procedure TFSearchFolders.PreFInit;
Begin
  //inherited PreFInit;
  PCaption := '����� �� ����� ������ �������';
  width := 900;
  Height := 650;
  Align := alRight;
End;

procedure TFSearchFolders.buildJgridColumns;
var
  ColumnA : TColumnEh;
  myFiwxedWidth : integer ;
Begin

  // add JGrid fields ..

  myFiwxedWidth := 100 ;

   JGrid1.columns.clear ;

   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'MPARENTS' ;
   ColumnA.Title.Caption := '����� �������' ;
   ColumnA.Width := 2 * myFiwxedWidth ;

   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'DOC_NAME' ;
   ColumnA.Title.Caption := '������� �����|���' ;
   ColumnA.Width := myFiwxedWidth ;

   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'DOC_NOTES' ;
   ColumnA.Title.Caption := '������� �����|�������' ;
   ColumnA.Width := myFiwxedWidth ;

   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'NAME' ;
   ColumnA.Title.Caption := '����� �� ������|���' ;
   ColumnA.Width := myFiwxedWidth ;

   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'PATH' ;
   ColumnA.Title.Caption := '����� �� ������|������' ;
   ColumnA.Width := 2 * myFiwxedWidth ;

   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'FILE_MIME' ;
   ColumnA.Title.Caption := '����� �� ������|���' ;
   ColumnA.Width := 60 ;//round(myFiwxedWidth/2) ;


   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'FILE_EXT' ;
   ColumnA.Title.Caption := '����� �� ������|�����' ;
   ColumnA.Width := round(myFiwxedWidth/2) ;

   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'ISFOLDER' ;
   ColumnA.Title.Caption := '����� �� ������|�� �� ���Ͽ' ;
   ColumnA.Width := round(myFiwxedWidth/2) ;

   ColumnA := JGrid1.columns.add ;
   ColumnA.fieldName := 'FILE_OR_LOB' ;
   ColumnA.Title.Caption := '����� �� ������|���� �� ����� ������ʿ' ;
   ColumnA.Width := round(myFiwxedWidth/2) ;


End;


function TFSearchFolders.SaveBlobToLocalFile(id : string) : string;
var
    res : string ;
    aStream: TFileStream;
    aFileName : string ;
Begin
    res:='';
    try
      getBlob.close;
      getBlob.params.ParamByName('pid').asstring := id ;
      getBlob.Open ;


      if not getBlob.isEmpty then
      begin

           aFileName := ExtractFilePath(application.ExeName)+'temp_docs' ;
           ForceDirectories(aFileName);

           aFileName := aFileName + '\'+FormatDateTime('yyyy-mm-dd-hh-nn-ss', Now)+ jq.fieldbyname('NAME').asstring;

           aStream := TFileStream.Create(aFileName, fmCreate or fmOpenReadWrite);

           TBlobField(getBlob.FieldByName('BIN_ON_DB')).SaveToStream(aStream);

          res := aFileName ;
      end;
    finally
       FreeAndNil(aStream);
    end;
    SaveBlobToLocalFile := res ;

End;


procedure TFSearchFolders.actnShowPictureExecute(Sender: TObject);
var
   blobFileName : string;
   mimeTyp  : string ;
begin
  inherited;
  if JQ.isEmpty then
       exit;

  if JQ.FieldByName('ISFOLDER').asInteger <= 0 then
  begin
      mimeTyp := lowerCase(JQ.FieldByName('FILE_MIME').asstring) ;
      if (mimeTyp = 'image/bmp') or (mimeTyp = 'image/gif') or (mimeTyp='image/jpeg')
          or (mimeTyp='image/tiff') or (mimeTyp='image/x-icon') or (mimeTyp='image/png')
          or (mimeTyp='image/x-ms-bmp') then
      begin
          try
              EditImageForm := TEditImageForm.create(self);
              if JQ.FieldByName('FILE_OR_LOB').asInteger >= 1  then
              begin
                   EditImageForm.FormEditPict(JQ.FieldByName('ID').AsString,JQ.FieldByName('DOCID').AsString);
              end
              else
              begin
                   EditImageForm.LoadLocalFile(JQ.FieldByName('PATH').AsString);
              end;
              EditImageForm.showmodal;
          finally
             freeandNil(EditImageForm)
          end;
      end
      else
      ///  this is not image file
      begin
          blobFileName := ''  ;
          try
              if JQ.FieldByName('FILE_OR_LOB').asInteger >= 1  then
              begin
                   // save blob to local file system...
                   blobFileName := SaveBlobToLocalFile(jq.FieldByName('ID').asstring);
                   if blobFileName = '' then
                   begin
                       ShowMessage('�� ���� ��� ����� ������ ������ �������� ������...');

                   end;

                   //EditImageForm.FormEditPict(JQ.FieldByName('ID').AsString,JQ.FieldByName('DOCID').AsString);
              end
              else
              begin
                   // when a file is stored on local file system

                   //EditImageForm.LoadLocalFile(JQ.FieldByName('PATH').AsString);
              end;

              ShellExecute(Handle,'open', PChar(blobFileName), nil, nil, SW_SHOWNORMAL) ;

          finally

          end;
      end;


  end
  else
     showmessage('��� ����� ���� ����... ������ ������ ��� ���� �����...');


end;

procedure TFSearchFolders.BitBtn1Click(Sender: TObject);
var
  i : integer ;
  whereString : string ;
  d1,d2 : TDateTime ;
begin

  whereString := '';
       m_Sql := ' SELECT * FROM (SELECT ROWNUM ROW_NUM,X.* FROM ( ' +
                ' SELECT  JDMS.JPROJ_DOCS_FOLDERS.ORA_ROWSCN SCN, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.ID, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.PROJID, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.DOCID, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.ISFOLDER, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.NAME, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.PATH, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.PRNT, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.NOTES,   '+
                ' JDMS.JPROJ_DOCS_FOLDERS.JCRT_USER,  '+
                ' JDMS.JPROJ_DOCS_FOLDERS.JCRT_DAT, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.JUPDT_USER, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.JUPDT_DAT, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.FILE_ON_SERVER, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.FILE_OR_LOB, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.FILE_MIME, '+
                ' JDMS.JPROJ_DOCS_FOLDERS.FILE_EXT, '+
                ' JDMS.JPROJ_DOCS.NAME AS DOC_NAME, '+
                ' JDMS.JPROJ_DOCS.NOTES AS DOC_NOTES, '+
                ' JDMS.JPROJ_DOCS.IsDeleted AS DOC_ISDELETED, '+
                ' JDMS.JPROJ_DOCS.ISACTIVE AS DOC_ISACTIVE, '+
                ' JDMS.JPROJ_DOCS.VIEWCO AS DOC_VIEWCO, '+
                ' JDMS.ARCH_SEARCH.getAllProjectParents(JDMS.JPROJ_DOCS_FOLDERS.PROJID) mParents '+
                ' FROM  JDMS.JPROJ_DOCS_FOLDERS left join JDMS.JPROJ_DOCS '+
                ' on JDMS.JPROJ_DOCS_FOLDERS.DOCID = JDMS.JPROJ_DOCS.ID '+
                ' WHERE (1>0) ';



  // build grid columns
  buildJgridColumns;


  // build where clause ...
  if (DMZProj.text <> '') and (DMZProj.idvalue<>'') then
     whereString := whereString + ' and JDMS.JPROJ_DOCS_FOLDERS.PROJID = '+DMZProj.idvalue;

  if ename.text <> '' then
     whereString := whereString + ' and JDMS.JPROJ_DOCS.NAME like ''%'+ename.text + '%''';
  if enote.text <> '' then
     whereString := whereString + ' and JDMS.JPROJ_DOCS.NOTES like ''%'+ename.text + '%''' ;

  if eFileName.text <> '' then
     whereString := whereString + ' and JDMS.JPROJ_DOCS_FOLDERS.NAME like ''%'+eFileName.text + '%''';

  if eFilePath.text <> '' then
     whereString := whereString + ' and JDMS.JPROJ_DOCS_FOLDERS.PATH like ''%'+eFilePath.text + '%''';

  if combo_isfolder.itemindex > 0 then
     whereString := whereString + ' and JDMS.JPROJ_DOCS_FOLDERS.ISFOLDER = '+inttostr(combo_isfolder.itemindex-1) ;

  if combo_onDB.itemindex > 0 then
     whereString := whereString + ' and JDMS.JPROJ_DOCS_FOLDERS.FILE_OR_LOB = '+inttostr(combo_onDB.itemindex-1) ;


  jq.close;
  jq.sql.clear ;
  jq.sql.text := m_Sql + whereString + '  ) X ) WHERE ROW_NUM < 51 ' ;

  //d1 := now;

  jq.open ;
  jq.FieldByName('ISFOLDER').onGetText :=  JQYesNoGetText;
  jq.FieldByName('FILE_OR_LOB').onGetText :=  JQYesNoGetText;

  //d2 := now;
  //showMessage('d1 = '+formatdatetime('dd/mm/yyyy hh:nn:ss',d1)+', d2='+formatdatetime('dd/mm/yyyy hh:nn:ss',d2));


end;

Procedure TFSearchFolders.FInitCard(pMaster:string='');
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


procedure TFSearchFolders.freeChildControls(myControl : TControl; freeThisControl: boolean);
var
  i : integer;
  Item : TComponent;
begin

  if Assigned(myControl) then
  begin
    for i := (myControl.ComponentCount - 1) downto 0 do
    begin
      Item := myControl.Components[i];



      if assigned(item) and (item.Owner = myControl) and (Item.ClassType <> TGroupBox) then
        FreeAndNil(item);
    end;


  end;
end;



procedure TFSearchFolders.JGrid1DblClick(Sender: TObject);
begin
  inherited;
  actnShowPictureExecute(nil);
end;

procedure TFSearchFolders.JQAfterInsert(DataSet: TDataSet);
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
procedure TFSearchFolders.JQYesNoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  text := '';
  if (sender.isNull) then
       text := '��� �����'
  else begin
      if sender.asInteger  = 0 then
          text := '��'
      else if sender.asInteger  = 1 then
          text := '���' ;
  end;


end;

procedure TFSearchFolders.ProcessJson( txt: String);
  var str,TableName:string;  // text to be modified
//  JsonForm : TTemplateForm;
  lab : Tlabel;
//  position_s,position_E :integer;
  I,j,coord , myTop, myLeft, defaultHeight, itemsInRow, lblWidth, dbeditWidth,itemSpacing: integer;
  Obj,FormObj,PropertiesObj,SubObj1,ColumnObj: TJsonObject;
  Objbs :TJsonbaseObject;
  SingleLabel :Tlabel;
 // DataSet1 : Tamjset;
  EditBox1 : TEdit;
  DBEDIT2,DBEDIT3,DBEDIT4,DBNEW :TEDIT;
  LABEL12,LABEL13,LABEL14,LABELNEW :TLABEL;
///
  DetailGrid : TjazDBGrid;
  GridSource: TdataSource;
  GridDataSet :Tamjset;
  STRTEST: STRING;
begin
end;


end.
