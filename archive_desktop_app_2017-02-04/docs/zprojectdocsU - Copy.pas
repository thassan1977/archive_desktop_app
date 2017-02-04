unit zprojectdocsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JPmainU, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, ComCtrls, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls,
  AmjSetU, RzPanel, AmjStandardU, AmjLookUpU, AmjactionsU, VirtualTrees,
  wordxp, AmjTreeU, RzTabs, DBGridEhGrouping, GridsEh, DBGridEh, JazDBGrid,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, EnImgScr,
  Grids, DBGrids, JPG1U, TemplateUnit, registry, shellapi, AddFolderForm,
  EnPrinter,       { for TEnvisionPrinter }
    EnScan,          { for Scanner }
    EnBlowupForm,    { for TBlowupForm }
    EnOverviewForm,  { for TOverviewForm }
    EnOcrEng,        { for TOcrEngine, TOcrDriver }
    EnDiGrph,        { for TDibGraphic }
    EnJpgGr,        { for TJpeg }
    EnJp2Gr        { for TJPeg } ;


type
  Tzprojectdocsf = class(TJPmain)
    Panel1: TPanel;
    AmjAction1: TAmjAction;
    AmjAction3: TAmjAction;
    AmjAction4: TAmjAction;
    JPnlHead: TJPanel;
    AmjSplitter1: TAmjSplitter;
    JBodyPnl: TJPanel;
    JGrid1: TJazDBGrid;
    JPanel1: TJPanel;
    Image2: TImage;
    dq2: TDataSource;
    JRActions2: TAmjActionList;
    AmjAction5: TAmjAction;
    dq3: TDataSource;
    jq2: TAmjSet;
    jq3: TAmjSet;
    AmjAction10: TAmjAction;
    AmjAction11: TAmjAction;
    edit: TAmjAction;
    new: TAmjAction;
    JMainPages: TJPages;
    docFileVersions: TRzTabSheet;
    JazDBGrid1: TJazDBGrid;
    DataSource1: TDataSource;
    docjq: TAmjSet;
    DqDOCFILES: TDataSource;
    qDOCFILES: TAmjSet;
    ImageNew: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ImageView: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N14: TMenuItem;
    d1: TMenuItem;
    N15: TMenuItem;
    ImageOp: TPopupMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    OpenDialog1: TOpenDialog;
    DataSource2: TDataSource;
    AmjSet1: TAmjSet;
    AmjActionList3: TAmjActionList;
    AmjAction13: TAmjAction;
    AmjAction15: TAmjAction;
    AmjAction16: TAmjAction;
    Panel3: TPanel;
    AmjDbTree1: TAmjDbTree;
    Panel4: TPanel;
    Label1: TLabel;
    zproject: TDMZEditFind;
    AmjAction17: TAmjAction;
    NewFolder: TAmjAction;
    EditFolder: TAmjAction;
    JQMetaIdSEt: TAmjSet;
    JSonMemo: TMemo;
    JQMetBLOB: TAmjSet;
    Panel5: TPanel;
    JazDBGrid4: TJazDBGrid;
    Panel6: TPanel;
    JQFolders: TAmjSet;
    DQFolders: TDataSource;
    FolderAction: TAmjActionList;
    EditFilePict: TAmjAction;
    PrivShow: TAmjAction;
    Splitter1: TSplitter;
    AmjSplitter2: TAmjSplitter;
    AddPictAction2: TAmjAction;
    ImageScrollBox1: TImageScrollBox;
    AddSun: TAmjAction;
    JQCheck: TAmjSet;
    FolderScanOnePict: TAmjAction;
    AmjAction19: TAmjAction;
    AmjAction20: TAmjAction;
    jqFoldersScan: TAmjSet;
    jq2scan: TAmjSet;
    AmjSet2: TAmjSet;
    FolderMultiScan: TAmjAction;
    Panel8: TPanel;
    AmjDbTree2: TAmjDbTree;
    ImageList1: TImageList;
    Panel10: TPanel;
    Timer1: TTimer;
    eFileName: TEdit;
    ImageScrollBox: TImageScrollBox;
    FolderUpdateFile: TAction;
    getBlob: TAmjSet;
    actnAddFolder: TAction;
    procedure JQAfterScroll(DataSet: TDataSet);
    procedure jq2BeforeOpen(DataSet: TDataSet);
    procedure jq3BeforeOpen(DataSet: TDataSet);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure ImageNewactHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ImageOpActHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ImageViewActHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure jq2AfterScroll(DataSet: TDataSet);
    procedure qDOCFILESBeforeOpen(DataSet: TDataSet);
    procedure AmjSet1BeforeOpen(DataSet: TDataSet);
    procedure docjqBeforeOpen(DataSet: TDataSet);
    procedure qDOCFILESAfterOpen(DataSet: TDataSet);
    procedure qDOCFILESAfterInsert(DataSet: TDataSet);
    procedure qDOCFILESAfterScroll(DataSet: TDataSet);
    procedure editHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure newHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure docjqAfterInsert(DataSet: TDataSet);
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure jq2AfterInsert(DataSet: TDataSet);
    procedure zprojectFind(Sender: TObject; ID: string);
    procedure NewFolderHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure EditFolderHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure JQFoldersBeforeOpen(DataSet: TDataSet);
    procedure JQFoldersAfterScroll(DataSet: TDataSet);
procedure NameAndWidthColumn(dbgrid:tjazdbgrid;fieldn,newname:string;widthn:integer);
    procedure jq3AfterInsert(DataSet: TDataSet);
    procedure jq3AfterScroll(DataSet: TDataSet);
    procedure jq3AfterOpen(DataSet: TDataSet);
    procedure EditPictHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure EditFilePictHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure PrivShowHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure AddPictAction2Handle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure JQFoldersAfterInsert(DataSet: TDataSet);
    procedure AddSunHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure jq2BeforeDelete(DataSet: TDataSet);
    procedure JQBeforeDelete(DataSet: TDataSet);
    procedure FolderScanOnePictHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure newfHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure jqFoldersScanAfterInsert(DataSet: TDataSet);
    procedure jqFoldersScanBeforeOpen(DataSet: TDataSet);
    procedure jq2scanAfterInsert(DataSet: TDataSet);
    procedure jq2scanBeforeOpen(DataSet: TDataSet);
    procedure AmjSet2AfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure FolderMultiScanHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure jq2AfterOpen(DataSet: TDataSet);
    procedure JQAfterOpen(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure FolderUpdateFileExecute(Sender: TObject);
    procedure actnAddFolderExecute(Sender: TObject);
    procedure AmjAction18Handle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
  private
    { Private declarations }
      dbeditarray : array of tdbedit;////
MaxCount,whiteCount,BlackCount:Integer;
HistogramGray:Array[0..255]of Integer;
HistogramRed:Array[0..255]of Integer;
HistogramGreen:Array[0..255]of Integer;
HistogramBlue:Array[0..255]of Integer;
HistogramBlack:Array[0..1]of Integer;
HistogramWhite:Array[0..1]of Integer;
whitepaper :boolean;
  public

  { Public declarations }
    FDirty             : Boolean;
    FFileName          : String;
    FMultiPageFileName : String;
    FUndoGraphic       : TDibGraphic;
    FBlowupForm        : TBlowupForm;
    FOverviewForm      : TOverviewForm;
    is_inserting : boolean;
    { Public declarations }
    //FWordApplication : TWordApplication;
    //mywrd  : TWordDocument;
    //FWordDocument    : TWordDocument;
    //FWordFont        : TWordFont;
    //wrdSelection : wordSelection;
    //tblbehav, tblautofit, gototyp, gotoct : OleVariant;

    TBLDX : integer;
    rowNO, ColNO : integer;
    Lprnt : string;
    Procedure FInit; override;
    { Public declarations }

    procedure CheckDirty;
    procedure Scan_Pict(Pmulti:Boolean);
    procedure Scan_Pict2(Pmulti:Boolean);
    procedure OnAcquire( const DibHandle    : THandle;
                               const XDpi         : Word;
                               const YDpi         : Word;
                               const CallBackData : LongInt );
    procedure DIBToBitmapMemo( DIBHandle: THandle; Bitmap: TBitmap);
    procedure CalcHistogram(Bitmap1:TBitmap);
    procedure BitwiseHisto(pixel8 : integer);
    procedure ZoomEditChange(Sender: TObject);
    procedure LoadFile( const FileName : String );
    procedure LoadFile2( const FileName : String );
    procedure saveToDB(pNew:Boolean);
    procedure saveToDB2(pNew:Boolean);
    procedure saveToDB_id(pNew:Boolean; pid,fName :string);
    procedure SaveMenuClick(Sender: TObject);
    procedure SaveAsMenuClick(Sender: TObject);
    procedure OnProgress( const Sender          : TObject;
                                const PercentProgress : Byte );
    procedure Load_Doc;
    procedure ProcessJson( JsonForm : TTemplateForm;txt: String);
    procedure ProcessJsonNm( JsonForm :TTemplateForm;txt: String);
    procedure ProcessJsonToDelete( txt: String; var TableNmMaster,TablenameDtl: string);
    function GetJsonStr(var txt:string): boolean;

    function getMetaDataID(pId: string) : string;

    //thair
    function addFolderRecord : string;
    function addFileToDB(pDocID, pProjID, imgExtention, imgMime,prnt  : string): string;
    Procedure PreFInit; Override;
    function GetMIMEType(FileName: String): String;
    function SaveBlobToLocalFile(id : string) : string;

  end;
   TpScanInfo = ^TScanInfo;
TScanInfo = record
    MultiPage  : Boolean;

    { supplementary info when MultiPage is True }
    { Dec 23, 2009 Graphic is not a TDibGraphic, which can be a TTiffGraphic or
      TPdfGraphic at run time. PDF multi page saving was saving as TIFF }
    Graphic    : TDibGraphic;

    FileName   : String;
    Stream     : TFileStream;
    ImageCount : LongInt;



  end;

var llll : uint64;
    onAcquireFileName : String ;

implementation

uses JAppMainU,AmjBtnU,JsonDataObjects,

    {$ifdef __DelphiXEAndAbove}
    System.UITypes, { for prevent inline expansion warning }
    System.Types,   { for prevent inline expansion warning }
    {$endif}

    {$ifdef Win32}
    EnRecoICR, {for TRecogniformICRDriver }
    {$endif}

    EnWatermark, { for TWatermarkTransform }
    EnConvolution, { TEmbossColorTransform, ... }
    EnRubber, { for TRubberBandMouseHandler }
    EnAnnota, { for TAnnotationMouseHandler }
    EnDespeckle,  { for TDespeckleTransform }
    EnEncrypt,    { for TEncryptTransform }
    EnTrsOcr,     { for TTransymOcrDriver }
    EnConsoleOcr, { for TConsoleOcrDriver }
//    NbLib,
    EnThbnCr, { for TThumbnailCreator }
    EnThbnFm, { for TThumbnailForm }
    ClipBrd,  { for TClipBoard }
    ExtDlgs,  { for TOpenPictureDialog }
//    OcrForm,  { for ShowOcrResults }
//    ReszForm, { for TResizeForm }
//    FrmtForm, { for TFormatConversionForm }
//    POptForm, { for TPrintOptionForm }
//    CropForm, { for TCropForm }
//    About,    { for TAboutBox }
    Printers, { for Printer }
    EnDcxGr,  { for TDcxGraphic }
    EnPrint,  { for TEnvisionPrintMode, TDibGraphicPrinter }
    EnMisc,   { for MinFloat }
    EnTransf, { for TImageTransform }
    EnTifGr,  { for TTifGraphic }
    EnPdfGr,  { for TPdfGraphic }
    EnPngGr,  { for TPngGraphic }
    EnBmpGr,  { for TBitmapGraphic }
    EnIcoGr,  { for TIconGraphic }
    EnWmfGr,  { for TMetaFileGraphic }
    EnReg, docsFileNewU    { for image format registration }

    ,uLkJSON, DemoForm, ZPrivsU, ZPRIVSnEW, AddSunU;//, TemplateUnit;// in 'uLkJSON.pas';


{$R *.dfm}





Procedure Tzprojectdocsf.PreFInit;
Begin
  //inherited PreFInit;
  PCaption := '«·»ÕÀ ⁄‰ „·›«  „‘«—Ì⁄ «·√—‘›…';
  width := Screen.Width;
  //Height := 650;
  Align := alRight;
  JQ.Close;
  JQ.Open;
End;


procedure Tzprojectdocsf.docjqAfterInsert(DataSet: TDataSet);
begin
  inherited;
docjq.fieldbyname('id').asstring := qDOCFILES.fieldbyname('id').asstring;//20/02/2016
docjq.fieldbyname('DOCid').asstring :=jq2.Fieldbyname('ID').asstring;// 20/02/2016
end;

procedure Tzprojectdocsf.docjqBeforeOpen(DataSet: TDataSet);
begin
  inherited;
docjq.Params.ParamByName('pid').asstring := jq2.fieldbyname('id').asstring;// we need doc id  it was jq.fieldbyname('id').asstring;  12/02/2016
end;


function Tzprojectdocsf.SaveBlobToLocalFile(id : string) : string;
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

           aFileName := aFileName + '\'+FormatDateTime('yyyy-mm-dd-hh-nn-ss', Now)+ jqFolders.fieldbyname('NAME').asstring+'.'+jqFolders.fieldbyname('FILE_EXT').asstring;

           aStream := TFileStream.Create(aFileName, fmCreate or fmOpenReadWrite);

           TBlobField(getBlob.FieldByName('BIN_ON_DB')).SaveToStream(aStream);

          res := aFileName ;
      end;
    finally
       FreeAndNil(aStream);
    end;
    SaveBlobToLocalFile := res ;

End;


procedure Tzprojectdocsf.EditFilePictHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
var
  mimeTyp, blobFileName: string ;
begin
  inherited;
  mimeTyp := LowerCase(JQFolders.fieldByName('FILE_MIME').asString) ;
  if (mimeTyp = 'image/bmp') or (mimeTyp = 'image/gif') or (mimeTyp='image/jpeg')
  or (mimeTyp='image/tiff') or (mimeTyp='image/x-icon') or (mimeTyp='image/png')
  or (mimeTyp='image/x-ms-bmp') then
  begin
      EditImageForm := TEditImageForm.create(self);
      EditImageForm.FormEditPict(JQFolders.FieldByName('id').AsString,JQFolders.FieldByName('DOCID').AsString);
      EditImageForm.showmodal;
  end
  else
  begin
     showMessage('«·„·› ·« Ì„À· ’Ê—…...”Ì „ › ÕÂ ··«” ⁄—«÷ ›ﬁÿ...'+#13+'√Ì  ⁄œÌ·  ﬁÊ„ »Â ·‰ ÌÕ›Ÿ ›Ì ﬁ«⁄œ… «·»Ì«‰« ...');
          blobFileName := ''  ;
          try
              if JQFolders.FieldByName('FILE_OR_LOB').asInteger >= 1  then
              begin
                   // save blob to local file system...
                   blobFileName := SaveBlobToLocalFile(jqFolders.FieldByName('ID').asstring);
                   if blobFileName = '' then
                   begin
                       ShowMessage('·« Ì„ﬂ‰ › Õ «·„·› Õ«·Ì« «·—Ã«¡ «·„Õ«Ê·… ·«Õﬁ«...');

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
end;

procedure Tzprojectdocsf.EditFolderHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
begin
  inherited;
//Japp.AppAct.PageOpenPages('TZFoldernewf', jq.FieldByName('ID').AsString, 100)
end;


function Tzprojectdocsf.getMetaDataID(pId: string) : string;
var
  metaDataID : String ;
begin
  metaDataID := '' ;
  if not jq2.FieldByName('ZTMPLTID').isnull then
  begin
       metaDataID := jq2.FieldByName('ZTMPLTID').AsString;
  end
  else
  begin
      JQMetaIdSEt.close;
      JQMetaIdSEt.params.paramByName('Pprojid').AsString := pId;
      JQMetaIdSEt.open;
      if JQMetaIdSEt.RecordCount > 0 then
      begin

          metaDataID := JQMetaIdSEt.FieldByName('metaid').AsString;
      end;

  end;
  result := metaDataID ;
end;

procedure Tzprojectdocsf.editHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
 var str :string;
  s : TMemoryStream;
  I : integer;
  JsonForm :TTemplateForm;
  metaDataID : String ;

  //    var TemplateForm: TTemplateForm;
  begin
      inherited;
  metaDataID := getMetaDataID(jq2.FieldByName('projid').AsString);
  if metaDataID <> '' then
  begin
    try
      JQMetBLOB.close;
      JQMetBLOB.params.paramByName('pid').AsString := metaDataID;
      JQMetBLOB.open;

      s := TMemoryStream (JQMetBLOB.CreateBlobStream(JQMetBLOB.FIELDBYNAME('OBJ'), bmRead));
      if s.Size >= 0 then begin
       JSonMemo.lines.LoadFromStream(s);
    for I := 0 to JSonMemo.Lines.Count - 1 do
    str := str + JSonMemo.Lines.Strings[I];
    //   ImageScrollBox.LoadFromStream(s, jq1.FieldByName('FILEFORMAT').AsString, 1); //
  //SetString(str, PAnsiChar(s.Memory), s.Size);
  //  process(txt);
  jsonform := TTemplateForm.create(self,str);
  ProcessJson(jsonform,str);
  with jsonform do
  begin
  MasterSet.params.parambyName('pid').ASString :=  jq2.FieldByName('id').ASString;
  MasterSet.close;
  MasterSet.open;
  MasterSet.edit;

 jqDOCS.params.paramByName('pid').AsString := jq2.FieldByName('id').AsString;
 jqDOCS.close;
 jqDOCS.open;
 jqDOCS.edit;

  end;//}
  ProcessJsonNm( JsonForm,str);/// it is like afteropen hehehhe
  JsonForm.showmodal;
  Jsonform.free;

      end
    finally

    end;
  end;

end;

procedure Tzprojectdocsf.EditPictHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
  EditImageForm := TEditImageForm.create(self);
  EditImageForm.FormEditPict(qDOCFILES.FieldByName('id').AsString,qDOCFILES.FieldByName('FileID').AsString);
  EditImageForm.showmodal;
end;

procedure Tzprojectdocsf.Load_Doc;
var
    s: TMemoryStream;
begin
  if not is_inserting then
    try
      s := TMemoryStream (qDOCFILES.CreateBlobStream(qDOCFILES.FIELDBYNAME('FDATA'), bmRead));
      if s.Size >= 0 then begin
        //ImageScrollBox.LoadFromStream(s, 'JPG', 1);
      end;
    finally
    end;
end;
procedure Tzprojectdocsf.OnProgress( const Sender          : TObject;
                                const PercentProgress : Byte );
begin
{   if (PercentProgress < 100) then
    begin
        ProgressBar.Position := PercentProgress;
        if not ProgressBar.Visible then
            ProgressBar.Visible := True;
    end
    else
        ProgressBar.Visible := False;

}
end;
procedure Tzprojectdocsf.SaveAsMenuClick(Sender: TObject);
var
    SaveDialog  : TSaveDialog;
begin
    SaveDialog := TSaveDialog.Create(nil);
    try
        SaveDialog.Filter := EnDiGrph.SaveAsGraphicFilter;
        if SaveDialog.Execute then
        begin
            FFileName := SaveDialog.FileName;

            if ExtractFileExt(FFileName) = '' then
            begin
                MessageDlg( 'An extension must be specifed to indicate'#13 +
                            ' the file format.',  mtConfirmation, [mbOk], 0);
                Abort;
            end;

            if FileExists(FFileName) and
               (MessageDlg( 'File ' + FFileName + ' exists.'#13 + ' Overwrite ?',
                             mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
                Abort;

            SaveMenuClick(Sender);
            Caption := FFileName;
        end;
    finally
        SaveDialog.Free;
    end;
end;
procedure Tzprojectdocsf.SaveMenuClick(Sender: TObject);
begin
{    if ImageScrollBox.Graphic = nil then
        Exit;

    if FFileName = '' then
        SaveAsMenuClick(Sender)
    else
    begin
        ImageScrollBox.SaveToFile(FFileName);
        FDirty := False;
    end;
}
end;
procedure Tzprojectdocsf.saveToDB(pNew:Boolean);
var
    FromStream: TStream;
    jadoset : TADODataSet;
begin
{    try
      is_inserting := true;
      if pNew then begin
        qDOCFILES.open;
        qDOCFILES.Insert;
//        qDOCFILES.fieldByName('NOTE').AsString :=  qDOCFILES.fieldByName('ID').AsString;// JUST TO WRITE SOMETHING
        qDOCFILES.post;
      end;
      FromStream := TMemoryStream.Create();
      ImageScrollBox.SaveToStream(FromStream, 'JPG');

      jadoset := TADODataSet.Create(self);
      jadoset.Connection := jq.AmjServerDB;
     // jadoset.CommandText := 'select * from jfiles.DOCFILES where id = ' + qDOCFILES.fieldbyname('id').asstring;
      jadoset.CommandText := 'select * from jdms.JPROJ_DOCS_FILES_VERSION where id = ' + qDOCFILES.fieldbyname('id').asstring;
      jadoset.open;
      jadoset.edit;
      TBlobField(jadoset.FIELDBYNAME('FDATA')).LoadFromStream(FromStream);
      jadoset.post;

      finally
        is_inserting := false;
        jadoset.Free;
        FromStream.free;
      end;
}
end;

procedure Tzprojectdocsf.saveToDB2(pNew:Boolean);
var
    FromStream: TStream;
    jadoset : TADODataSet;
begin
    try
      is_inserting := true;
      if pNew then begin
     {  JQFolders.open;
        JQFolders.Insert;
  //     qDOCFILES.fieldByName('NOTE').AsString :=  qDOCFILES.fieldByName('ID').AsString;// JUST TO WRITE SOMETHING
        JQFolders.post;}
      end;
//      FromStream := TMemoryStream.Create();
//      FromStream.free;
      FromStream := TMemoryStream.Create();
      ImageScrollBox1.SaveToStream(FromStream, 'JPG');

      jadoset := TADODataSet.Create(self);
      jadoset.Connection := JQFolders.AmjServerDB;
     // jadoset.CommandText := 'select * from jfiles.DOCFILES where id = ' + qDOCFILES.fieldbyname('id').asstring;
      jadoset.CommandText := 'select * from jdms.JPROJ_DOCS_FOLDERS where id = ' + JQFolders.fieldbyname('id').asstring;
      jadoset.open;
      jadoset.edit;
      TBlobField(jadoset.FIELDBYNAME('BIN_ON_DB')).LoadFromStream(FromStream);
      jadoset.post;

      finally
       is_inserting := false;
        jadoset.Free;
        FromStream.free;
      end;
end;
procedure Tzprojectdocsf.saveToDB_id(pNew:Boolean; pid, fName :string);
var
    FromStream: TFileStream;
    jadoset : TADODataSet;
begin
    try
      is_inserting := true;
      if pNew then begin
     {  JQFolders.open;
        JQFolders.Insert;
  //     qDOCFILES.fieldByName('NOTE').AsString :=  qDOCFILES.fieldByName('ID').AsString;// JUST TO WRITE SOMETHING
        JQFolders.post;}
      end;
//      FromStream := TMemoryStream.Create();
//      FromStream.free;

      FromStream := TFileStream.Create(fName, fmOpenRead);


      //ImageScrollBox1.SaveToStream(FromStream, 'JPG');

      jadoset := TADODataSet.Create(self);
      jadoset.Connection := JQFolders.AmjServerDB;
     // jadoset.CommandText := 'select * from jfiles.DOCFILES where id = ' + qDOCFILES.fieldbyname('id').asstring;
      jadoset.CommandText := 'select * from jdms.JPROJ_DOCS_FOLDERS where id = ' + pid;
      jadoset.open;
      jadoset.edit;
      TBlobField(jadoset.FIELDBYNAME('BIN_ON_DB')).LoadFromStream(FromStream);
      jadoset.post;
      jadoset.close;


     finally
        is_inserting := false;
        FreeAndNil(jadoset);
        FreeAndNil(FromStream);
      end;

      jadoset := nil ;
      FromStream := nil ;

end;






// select JPROJ_DOCS_FOLDERS.*  from jdms.JPROJ_DOCS_FOLDERS where docid = :pid





procedure Tzprojectdocsf.LoadFile( const FileName : String );
var
    MultiLoad : Boolean;

begin
{    Caption   := FileName;

    BeginHourglass;
    try

        if PageUpDown.Max > 1 then
        begin
            MultiLoad := MessageDlg( 'The file contains ' +
                                     IntToStr(PageUpDown.Max) + ' images.'#13 +
                                     'Note that for animations, all images'#13 +
                                     'must be loaded in memory.'#13 +
                                     'Load all images in memory?'#13,
                                     mtConfirmation, [mbYes, mbNo], 0) = mrYes;
        end
        else
            MultiLoad := False;

        if MultiLoad then
            ImageScrollBox.LoadFromFile(FileName, 0)
        else
            ImageScrollBox.LoadFromFile(FileName, 1);

 //       if PageUpDown.Max = 1 then
        begin
            FFileName          := FileName;
            FMultiPageFileName := '';
        end
;
//        else
        begin
//            clear FFileName for multi-image files, to ensure if the
//              Save operation is invoked, the multiimage file is not
//              overwritten. Multi-image files are manipulated using the
//              Append To File operation
//            FFileName          := '';
//            FMultiPageFileName := FileName;
        end;

    finally
        EndHourglass;
    end;

    FDirty    := False;

    ZoomEditChange(Self);
}
end;
procedure Tzprojectdocsf.LoadFile2( const FileName : String );
var
    MultiLoad : Boolean;

begin
    Caption   := FileName;

    BeginHourglass;
    try

           MultiLoad := False;

        if MultiLoad then
            ImageScrollBox1.LoadFromFile(FileName, 0)
        else
            ImageScrollBox1.LoadFromFile(FileName, 1);



            FFileName          := FileName;
            FMultiPageFileName := '';



    finally
        EndHourglass;
    end;

    FDirty    := False;

    ZoomEditChange(Self);
end;









procedure Tzprojectdocsf.ZoomEditChange(Sender: TObject);
begin
{    try
        ImageScrollBox.ZoomPercent := 100; //StrToInt(ZoomEdit.Text);
    except
        ImageScrollBox.ZoomPercent := 100;
    end;
}
end;
procedure Tzprojectdocsf.zprojectFind(Sender: TObject; ID: string);
begin
  inherited;
jq.close;
jq.open;
end;

procedure Tzprojectdocsf.OnAcquire( const DibHandle    : THandle;
                               const XDpi         : Word;
                               const YDpi         : Word;
                               const CallBackData : LongInt );
var
    Graphic    : TDibGraphic;
    pScanInfo  : TpScanInfo;
    sStream :TmemoryStream;
    Bitmap1 : Tbitmap;
    fName : string;
    pid : string ;
    fileExtension : string ;
    {whitepaper :boolean;}  // Memo new 21/09/2016
begin
    {$WARNINGS OFF}


    pScanInfo := TpScanInfo(CallBackData);

    onAcquireFileName := '';
    timer1.enabled := false ;

    if pScanInfo^.MultiPage then
    begin
        pScanInfo^.Graphic.AssignFromDibHandle(DibHandle);
        pScanInfo^.Graphic.XDotsPerInch := XDpi;
        pScanInfo^.Graphic.YDotsPerInch := YDpi;

        if pScanInfo^.Graphic is TTiffGraphic then
        begin
            if pScanInfo^.Graphic.ImageFormat = ifBlackWhite then
                TTiffGraphic(pScanInfo^.Graphic).Compression := tcGroup4
            else if pScanInfo^.Graphic.ImageFormat = ifTrueColor then
                TTiffGraphic(pScanInfo^.Graphic).Compression := tcJpeg
            else
                TTiffGraphic(pScanInfo^.Graphic).Compression := tcPackBits;
        end;

        //pScanInfo^.Stream.Seek(0, soFromBeginning);
        if pScanInfo^.ImageCount = 0 then
            pScanInfo^.Graphic.SaveToStream(pScanInfo^.Stream)
        else
        begin
            if pScanInfo^.Graphic is TPdfGraphic then
            begin
                { with TPdfGraphic, file stream needs to be recreated.
                  Note that with PDF, AppendToStream is not efficient.
                  MultiSaveToStream is much more efficient when creating
                  PDF files with many pages }
                pScanInfo^.Stream.Free;
                pScanInfo^.Stream := TFileStream.Create(pScanInfo^.FileName, fmOpenReadWrite );
            end;

            pScanInfo^.Graphic.AppendToStream(pScanInfo^.Stream);
        end;

        { display some visual feedback by displaying each image
          scanned one by one. }
        ImageScrollBox1.Graphic := pScanInfo^.Graphic;  ///be carefull THIS SCROLL BOX WILL NOT BE DISPLAYED
        ///
        ///
        /////// this should be in multiscan
        Bitmap1 := Tbitmap.create;
        DIBToBitmapMemo(ImageScrollBox1.graphic.AsDibHandle,Bitmap1);
//    Bitmap1.saveToFile('D:\One.bmp');
        CalcHistogram(bitmap1);
        whitepaper := false;
        if (HistogramWhite[1] = maxcount ) and (maxcount <> 0 )then
        begin
        if round(1000*(HistogramWhite[0] / HistogramWhite[1] )) < 1 then  whitepaper := true;
        end;
      if whitepaper then
         begin
         jq2.insert;
         jq2.post;
         end;
         jqfolders.close;
         jqfolders.open;
         jqfolders.insert;
         jqfolders.post;
         savetodb2(true);//}
        /////// this should be in multiscan



        bitmap1.free;

        Self.FDirty    := False;
        Self.FFileName := '';
        Self.ZoomEditChange(self);

        Application.ProcessMessages;

        Inc(pScanInfo^.ImageCount);
    end
    else
    begin

            fileExtension := '.bmp' ;
            if pScanInfo^.Graphic is TTiffGraphic then
                 fileExtension := '.tif'
            else if (pScanInfo^.Graphic is TJpegGraphic) or (pScanInfo^.Graphic is TJp2Graphic) then
                 fileExtension := '.jpg'
            else if (pScanInfo^.Graphic is TPdfGraphic) then
                 fileExtension := '.pdf';




            // prapare file name ...
            onAcquireFileName := ExtractFilePath(Application.Exename) + 'tmp_imgs';
            forceDirectories(onAcquireFileName);
            onAcquireFileName := onAcquireFileName +'\'+
                        formatDateTime('yyyy-mm-dd-hh-nn-ss', now) + fileExtension;

            fName := onAcquireFileName ;
            eFileName.Text := fName;
            Graphic := TDibGraphic.Create;
            try

                Graphic.AssignFromDIBHandle(DibHandle);
                Graphic.XDotsPerInch := XDpi;
                Graphic.YDotsPerInch := YDpi;


                ImageScrollBox1.graphic := Graphic;
                 ///be carefull
                        /////// this should be in multiscan
                Bitmap1 := Tbitmap.create;
                DIBToBitmapMemo(ImageScrollBox1.graphic.AsDibHandle,Bitmap1);
                Bitmap1.SaveToFile(fName);

                //ImageScrollBox1.LoadFromFile(aFileName,1);
                //    Bitmap1.saveToFile('D:\One.bmp');
                CalcHistogram(bitmap1);
                //
                /////// this should be in multiscan
                // thair
                pid := addFolderRecord;
                savetodb_id(true,pid, fName);




            finally
              sStream := nil;
              bitmap1 := nil ; /////// this line should be in multiscan also
              Graphic := nil;
            end;

                ImageScrollBox1.graphic := nil;

        Self.FDirty    := True;
 //       Self.FFileName := '';    ///be carefull

        Self.ZoomEditChange(self);
    end;
    {$WARNINGS ON}

    timer1.enabled := true ;
end;

 procedure Tzprojectdocsf.DIBToBitmapMemo( DIBHandle: THandle; Bitmap: TBitmap);
var
    Stream: TMemoryStream;
    Header: TBitmapFileHeader;
    {$Warnings Off}
    P: Pointer;
    {$Warnings On}
begin
    if DIBHandle = 0 then
        Exit;
    Stream := TMemoryStream.Create;
    try
        FillChar( Header, SizeOf( Header), 0);
        Header.bfType := $4D42;
        Header.bfSize := GlobalSize( DIBHandle) + SizeOf( Header);
        Stream.Write( Header, SizeOf( Header));
        {$Warnings Off}
        P := GlobalLock( DIBHandle);
        try
            Stream.Write( P^, GlobalSize( DIBHandle));
        finally
            GlobalUnLock( DIBHandle);
        end;
        {$Warnings On}
        Stream.Position := 0;
        Bitmap.LoadFromStream( Stream);
    finally
        Stream.Free;
    end;
    Stream := nil ;
end;


 //

 procedure Tzprojectdocsf.CalcHistogram(Bitmap1:TBitmap);
var
i,j:integer;
pixelPointer:PByteArray;
Pixel8:integer;
begin
try
  begin

 for i:=0 to 1 do
 begin
   HistogramWhite[i]:=0;
//   HistogramRed[i]:=0;
//  HistogramGreen[i]:=0;
   HistogramBlack[i]:=0;
 end;
 if Bitmap1.PixelFormat=pf1bit then
 begin
   for i:=0 to Bitmap1.Height-1 do
   begin
     pixelPointer:=Bitmap1.ScanLine[i];
     for j:=0 to (Bitmap1.Width div 8)-1 {length(pixelPointer^)-1 }do
     begin
       Inc(HistogramWhite[pixelPointer[j]]);
       Inc(HistogramBlack[pixelPointer[j]]);
       pixel8 := pixelPointer[j];
       BitwiseHisto(pixel8);

     end;
   end;
   MaxCount:=0;
   for i:=0 to 1 do
      begin
     if HistogramWhite[i]>MaxCount then MaxCount:=HistogramWhite[i];
    if HistogramBlack[i]>MaxCount then MaxCount:=HistogramBlack[i];

      end;
 end;


if Bitmap1.PixelFormat=pf24bit then
 begin //}

   for i:=0 to Bitmap1.Height-1 do
   begin
     pixelPointer:=Bitmap1.ScanLine[i];
     for j:=0 to Bitmap1.Width-1 do
     begin
       Inc(HistogramBlue[pixelPointer[3*j]]);
       Inc(HistogramGreen[pixelPointer[3*j+1]]);
       Inc(HistogramRed[pixelPointer[3*j+2]]);
     end;
   end;

   for i:=0 to 255  do
   begin
     if HistogramRed[i]>MaxCount then
       MaxCount:=HistogramRed[i];
     if HistogramGreen[i]>MaxCount then
       MaxCount:=HistogramGreen[i];
     if HistogramBlue[i]>MaxCount then
       MaxCount:=HistogramBlue[i];
    end;
end;
  whiteCount := HistogramBlue[1]+HistogramGreen[1]+HistogramRed[1];
  BlackCount := HistogramBlue[0]+HistogramGreen[0]+HistogramRed[0];
end;
finally

end;

end;


procedure Tzprojectdocsf.BitwiseHisto(pixel8 : integer);
var I,z,op :integer;
begin
//          Inc(HistogramWhite[pixelPointer[j]]);
//       Inc(HistogramBlack[pixelPointer[j]]);
for I := 0 to 7 do
begin
  op := round(power(2,I));
 z := pixel8 and op;

 if z=0 then  Inc(HistogramBlack[0]) else Inc(HistogramWhite[1]);

end;


end;


procedure Tzprojectdocsf.actnAddFolderExecute(Sender: TObject);
var
   myFolderName, str : string ;
begin
  inherited;
  if not assigned(FAddFolder) then
     FAddFolder := TFAddFolder.Create(self);
  if FAddFolder.ShowModal = mrOK then
  begin
     myFolderName := FAddFolder.EfolderName.Text ;

    str :=' insert  into jdms.JPROJ_DOCS_FOLDERS '+
          ' (id,PROJID,docid,ISFOLDER,NAME,path,'+
          '  FILE_OR_LOB, FILE_MIME, FILE_EXT) values ('; //jdms.seq.nextval,
    ;
    str := str + japp.db.get_seq + ',';
    str := str + JQ2.FieldByName('PROJID').asString  + ',';
    str := str + JQ2.FieldByName('ID').asString + ',';
    str := str + '1,';
    str := str + ''''+myFolderName+''',';
    str := str + '''÷„‰ ﬁ«⁄œ… «·»Ì«‰« '',';
    str := str + '1,'; // ÷„‰ ﬁ«⁄œ… «·»Ì«‰« 
    str := str + '''null'','  ; // image mime
    str := str + '''null'');'  ; // image mime
    str := 'begin '+ str +' commit; end;';
    japp.db.runsql(str);

  end;
end;

function Tzprojectdocsf.addFileToDB(pDocID, pProjID, imgExtention, imgMime,prnt  : string): string;
var
 str,pid : string ;
begin
    str :=' insert  into jdms.JPROJ_DOCS_FOLDERS '+
          ' (id,PROJID,docid,ISFOLDER,NAME,path,BIN_ON_DB,'+
          '  FILE_OR_LOB, PRNT, FILE_MIME, FILE_EXT, ) values ('; //jdms.seq.nextval,
    pid := japp.db.get_seq;
    str := str + pid + ',';
    str := str + pProjID + ',';
    str := str + pDocID + ',';
    str := str + '0,';
    str := str + '''—„“ «·„·› '+pid+''',';
    str := str + '''÷„‰ ﬁ«⁄œ… «·»Ì«‰« '',';
    str := str + ' empty_blob() ,';
    str := str + '1,'; // ÷„‰ ﬁ«⁄œ… «·»Ì«‰« 
    str := str + prnt +','; // ÷„‰ „Ã·œ
    str := str + ''''+imgMime+''','  ; // image mime
    str := str + ''''+imgExtention+''');'  ; // image mime
    str := 'begin '+ str +' commit; end;';
    japp.db.runsql(str);

    addFileToDB := pid;


end;


function Tzprojectdocsf.addFolderRecord : string;
var
 str,pid : string ;
begin
    str :=' insert  into jdms.JPROJ_DOCS_FOLDERS (id,PROJID,docid,ISFOLDER,NAME,path,BIN_ON_DB, FILE_MIME) values ('; //jdms.seq.nextval,
    pid := japp.db.get_seq;
    str := str + pid + ',';
    str := str + JQ.fieldByName('id').AsString + ',';
    str := str + JQ2.fieldByName('id').AsString + ',';
    str := str + '0,';
    str := str + '''«·„·› —„“ '+pid+''',';
    str := str + '''÷„‰ ﬁ«⁄œ… «·»Ì«‰« '',';
    str := str + ' empty_blob() ,';
    str := str + '''image/jpeg'')'  ;
    str := 'begin '+ str +'; commit; end;';
    japp.db.runsql(str);

    addFolderRecord := pid;


end;

procedure Tzprojectdocsf.Button1Click(Sender: TObject);
  var sStream :Tmemorystream;
  str,pid: string;
begin
  inherited;
   Scan_Pict2(false);

        whitepaper := false;
        if (HistogramWhite[1] = maxcount ) and (maxcount <> 0 )then
        begin
        if round(2000*(HistogramWhite[0] / HistogramWhite[1] )) < 1 then  whitepaper := true;
        end;

         if whitepaper then
         begin
            jq2.disablecontrols;
             jq2.close;
             jq2.open;
             jq2.insert;
             jq2.post;
            jq2.enablecontrols;
         end
         else begin
           // thair
           pid := addFolderRecord;

           // this whole function    Button1Click  should be deleted
           savetodb_id(true,pid,'');
         end;

end;

Procedure Tzprojectdocsf.FInit;
Begin
  PCaption := 'ÊÀ«∆ﬁ «·„‘—Ê⁄';
  //JQ.AfterScroll := nil;
  JRActions.sqlstr:=jq.commandtext;
  JRActions2.sqlstr:=jq2.commandtext;
  FolderAction.sqlstr := jqfolders.commandtext;
  FUndoGraphic := TDibGraphic.Create;
  //AmjActionList1.sqlstr := docjq.commandtext;
  AmjActionList3.sqlstr := AmjSet1.commandtext;
  //AmjActionList2.sqlstr:=qDOCFILES.commandtext;
End;








////////////////////////////
//// thair this function should be reviewed heavily ,,,
procedure Tzprojectdocsf.FolderMultiScanHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
 var sStream :Tmemorystream;
  str,pid: string;
begin
  inherited;
//FolderAction.sqlstr := jqfolders.commandtext;
Scan_Pict2(true);
   whitepaper := false;
        if (HistogramWhite[1] = maxcount ) and (maxcount <> 0 )then
        begin
        if round(1000*(HistogramWhite[0] / HistogramWhite[1] )) < 1 then  whitepaper := true;
        end;
  showmessage('whitepaper is'+ booltostr(whitepaper));
      if whitepaper then
         begin
      {  jq2scan.close;
         jq2scan.open;
         jq2scan.insert;
         jq2scan.post; //}
        jq2.disablecontrols;
    //   jq2.afterscroll:=  jq2scan.afterscroll;
         jq2.close;
         jq2.open;
         jq2.insert;
         jq2.post;
        jq2.enablecontrols;
//}
  //     jq2.afterscroll:=  amjset2.afterscroll;
         end
         else begin
{   jqFolders.disablecontrols;
         jqFolders.close;
         jqFolders.open;
         jqFolders.insert;
         jqFolders.post;
   //     jqFolders.enablecontrols; //}


str :=' insert  into jdms.JPROJ_DOCS_FOLDERS (id,PROJID,docid,ISFOLDER,NAME,path) values (';
pid := japp.db.get_seq;
str := str + pid + ',';
str := str + JQ.fieldByName('id').AsString + ',';
str := str + JQ2.fieldByName('id').AsString + ',';
str := str + '0,';
str := str + '''' + 'name' + ''',';
str := str + '''' + 'path' + ''')';
str := 'begin '+ str +'; commit; end;';
japp.db.runsql(str);   //}



      savetodb_id(true,pid, 'fileName oafter on acquire finished...' );
  //       savetodb2(true);
   //      jqFolders.close;
   //      jqFolders.open;

{         jqFolders.close;
         jqFolders.open; //}
         end; //}

end;

procedure Tzprojectdocsf.FolderScanOnePictHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
   var sStream :Tmemorystream;
  str,pid: string;
begin

try
  EditImageForm := TEditImageForm.create(self);
  EditImageForm.setIds('', Jq2.fieldbyname('ID').asstring, Jq.fieldbyname('ID').asstring);

  EditImageForm.showmodal;
finally
  EditImageForm.free;
end;



{  inherited;

    Scan_Pict2(false);

    whitepaper := false;
    if (HistogramWhite[1] = maxcount ) and (maxcount <> 0 )then
    begin
    if round(2000*(HistogramWhite[0] / HistogramWhite[1] )) < 1 then  whitepaper := true;
    end;



      if whitepaper then
         begin
            jq2.disablecontrols;
             jq2.close;
             jq2.open;
             jq2.insert;
             jq2.post;
            jq2.enablecontrols;
         end
         else begin

         end;

}





{
  inherited;
//FolderAction.sqlstr := jqfolders.commandtext;
Scan_Pict2(false);
//FormEditPictScan(pMASTER,PDOCID,pPROJID : STRING;FSTREAM:TmemoryStream);
try
  sStream := TmemoryStream.create;
  ImageScrollBox1.SaveToStream(sStream,'tif');
  EditImageForm := TEditImageForm.create(self);
  EditImageForm.FormEditPictScan('',JQ2.FieldByName('id').AsString,JQ.FieldByName('id').AsString,sStream);
  EditImageForm.showmodal;
finally
  EditImageForm.free;
  sStream.free;   //
end;
}

end;

procedure Tzprojectdocsf.FolderUpdateFileExecute(Sender: TObject);
var
    OpenDialog   : TOpenPictureDialog;
    s1,s2,s3 : string;
    jadoset:Tadodataset;
    MS: TMemoryStream;
begin
  inherited;

    OpenDialog := TOpenPictureDialog.Create(Self);
    try
        OpenDialog.Filter := GraphicFilter(TGraphic);
      if OpenDialog.Execute then
      begin
           // LoadFile2(OpenDialog.FileName);


        MS := TMemoryStream.Create;

        jadoset := TADODataSet.Create(self);
        jadoset.Connection :=  JQFolders.AmjServerDB;
        jadoset.CommandText := 'select BIN_ON_DB from jdms.JPROJ_DOCS_FOLDERS where id = ' + JQFolders.fieldbyname('id').asstring;
        jadoset.open;
        jadoset.edit;
        TBlobField(jadoset.FIELDBYNAME('BIN_ON_DB')).SaveToStream(MS);

        TBlobField(jadoset.FIELDBYNAME('BIN_ON_DB')).LoadFromFile(OpenDialog.FileName);
        jadoset.post;

      //add record in file version control ...

      end;
    finally
        MS.Free;
        OpenDialog.Free;

    end;
//    ImageScrollBox.ZoomMode := zmFullPage;

end;

procedure Tzprojectdocsf.Scan_Pict2(Pmulti:Boolean);
var
    SaveDialog  : TSaveDialog;
    ScanInfo    : TScanInfo;
    FileName    : String;
    EditImageForm : TEditImageForm;
    sStream : TmemoryStream;
begin
    CheckDirty;

    if not Scanner.IsConfigured then
    begin
        ShowMessage('A scanner is not configured on your computer');
        Exit;
    end;

    FillChar(ScanInfo, SizeOf(ScanInfo), 0);
{    case MessageDlg( 'Multi-page scan ?',
                      mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
        mrYes    : ScanInfo.MultiPage := True;
        mrNo     : ScanInfo.MultiPage := False;
        mrCancel : Exit;
    end; }

    ScanInfo.MultiPage := Pmulti;

    if ScanInfo.MultiPage then
    begin
        SaveDialog := TSaveDialog.Create(nil);
        try
            SaveDialog.DefaultExt := GraphicExtension(TTiffGraphic);
            SaveDialog.Filter     := GraphicFilter(TPdfGraphic) + '|' + GraphicFilter(TTiffGraphic);
            SaveDialog.Title      := 'Output file name';
            if SaveDialog.Execute then
                FileName        := SaveDialog.FileName
            else
                Exit;
        finally
            SaveDialog.Free;
        end;

        ScanInfo.FileName := FileName;
        ScanInfo.Stream   := TFileStream.Create(FileName, fmCreate);

        ScanInfo.Graphic := NewDibGraphic(FileName);
    end;

    Self.Enabled := False;
    try
        { to hide the user interface and set parameters }
        Scanner.ShowUI := False;
        Scanner.RequestedXDpi := 200;
        Scanner.RequestedYDpi := 200;
        Scanner.RequestedImageFormat := ifBlackWhite;
        //}

        Scanner.OpenSource;
        try

            {$Warnings off}
            Scanner.AcquireWithSourceOpen( OnAcquire, LongInt(@ScanInfo));
            {$Warnings on}

        finally

            Scanner.CloseSource;

        end;

        { Other method of scanner, without using OpenSource, CloseSource
        Scanner.Acquire(OnAcquire, LongInt(@ScanInfo));
        }
    finally
        Self.Enabled := True;

        if ScanInfo.MultiPage then
        begin
            ScanInfo.Graphic.Free;
            ScanInfo.Stream.Free;

            if ScanInfo.ImageCount > 0 then
                LoadFile2(FileName);
        end;
    end;
{    whitepaper := false;
        if (HistogramWhite[1] = maxcount ) and (maxcount <> 0 )then
        begin
        if round(1000*(HistogramWhite[0] / HistogramWhite[1] )) < 1 then  whitepaper := true;
        end;
  showmessage('whitepaper is'+ booltostr(whitepaper));
      if whitepaper then
         begin
         jq2.insert;
         jq2.post;
         end
         else begin
         jqfolders.close;
         jqfolders.open;
         jqfolders.insert;
         jqfolders.post;
         savetodb2(true);
         end; //}


//FormEditPictScan(pMASTER,PDOCID,pPROJID : STRING;FSTREAM:TmemoryStream);
 {   if not ScanInfo.MultiPage then
    begin //}
 {try
  sStream := TmemoryStream.create;
  ImageScrollBox1.SaveToStream(sStream,'tif');
  EditImageForm := TEditImageForm.create(self);
  EditImageForm.FormEditPictScan('',JQ2.FieldByName('id').AsString,JQ.FieldByName('id').AsString,sStream);
  EditImageForm.showmodal;
  finally
  EditImageForm.free;
  sstream.free;
end;  //}


end;





procedure Tzprojectdocsf.ImageNewactHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
Var pt: TPoint;
begin
  inherited;
  pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageNew.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure Tzprojectdocsf.ImageOpActHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
    pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageOp.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure Tzprojectdocsf.ImageViewActHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
  pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageView.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure Tzprojectdocsf.Scan_Pict(Pmulti:Boolean);
var
    SaveDialog  : TSaveDialog;
    ScanInfo    : TScanInfo;
    FileName    : String;

begin
    CheckDirty;

    if not Scanner.IsConfigured then
    begin
        ShowMessage('A scanner is not configured on your computer');
        Exit;
    end;

    FillChar(ScanInfo, SizeOf(ScanInfo), 0);
{    case MessageDlg( 'Multi-page scan ?',
                      mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
        mrYes    : ScanInfo.MultiPage := True;
        mrNo     : ScanInfo.MultiPage := False;
        mrCancel : Exit;
    end; }

    ScanInfo.MultiPage := Pmulti;

    if ScanInfo.MultiPage then
    begin
        SaveDialog := TSaveDialog.Create(nil);
        try
            SaveDialog.DefaultExt := GraphicExtension(TTiffGraphic);
            SaveDialog.Filter     := GraphicFilter(TPdfGraphic) + '|' + GraphicFilter(TTiffGraphic);
            SaveDialog.Title      := 'Output file name';
            if SaveDialog.Execute then
                FileName        := SaveDialog.FileName
            else
                Exit;
        finally
            SaveDialog.Free;
        end;

        ScanInfo.FileName := FileName;
        ScanInfo.Stream   := TFileStream.Create(FileName, fmCreate);

        ScanInfo.Graphic := NewDibGraphic(FileName);
    end;

    Self.Enabled := False;
    try
        { to hide the user interface and set parameters
        Scanner.ShowUI := False;
        Scanner.RequestedXDpi := 200;
        Scanner.RequestedYDpi := 200;
        Scanner.RequestedImageFormat := ifBlackWhite;
        }

        Scanner.OpenSource;
        try

            {$Warnings off}
            Scanner.AcquireWithSourceOpen( OnAcquire, LongInt(@ScanInfo));
            {$Warnings on}

        finally

            Scanner.CloseSource;

        end;

        { Other method of scanner, without using OpenSource, CloseSource
        Scanner.Acquire(OnAcquire, LongInt(@ScanInfo));
        }
    finally
        Self.Enabled := True;

        if ScanInfo.MultiPage then
        begin
            ScanInfo.Graphic.Free;
            ScanInfo.Stream.Free;

            if ScanInfo.ImageCount > 0 then
                LoadFile(FileName);
        end;
        saveToDB(true);
    end;
end;
procedure Tzprojectdocsf.jq2AfterInsert(DataSet: TDataSet);
begin
  inherited;
//jq2.FieldByName('id').AsString := '99999';
jq2.FieldByName('id').AsString := Japp.db.get_seq;
jq2.FieldByName('PROJID').AsString := jq.FieldByName('id').AsString;//zproject.idvalue;  //
jq2.FieldByName('ISDELETED').AsString := 'no'; //  ZSTATUSID
jq2.FieldByName('ZSTATUSID').AsString := '1';
jq2.FieldByName('name').AsString := 'Auto'; //}//}
{jq2.FieldByName('FOLDERID').AsString := jq.FieldByName('id').AsString;// }

end;

procedure Tzprojectdocsf.jq2AfterOpen(DataSet: TDataSet);
begin
  inherited;
  JQFolders.close;
  JQFolders.open;

end;

procedure Tzprojectdocsf.jq2AfterScroll(DataSet: TDataSet);
begin
  inherited;
{  jq3.close;
  jq3.open;
  docjq.close;
  docjq.open;
  AmjSet1.close;
  AmjSet1.open;
  qDOCFILES.close;
  qDOCFILES.open;
}
  JQFolders.close;
  JQFolders.open;
end;

procedure Tzprojectdocsf.jq2BeforeDelete(DataSet: TDataSet);
var str,txt, TableNmMaster,TableNmDtl : String;
begin
{  inherited;

while NOT(JQFolders.EOF) do
  BEGIN
japp.db.runsql(' begin delete from jdms.JPROJ_DOCS_FILES_ANNOTATION where DOC_FILEID =  ' + JQFolders.FieldByName('ID').AsString + '; commit; end;');
japp.db.runsql(' begin delete from jdms.JPROJ_DOCS_FILES_VERSION where FILEID =  ' + JQFolders.FieldByName('ID').AsString + '; commit; end;');
JQFolders.DELETE;
  END;
if GetJsonStr(txt) then
begin
ProcessJsonToDelete( txt, TableNmMaster,TableNmDtl) ;
if TableNmDtl <> '' then
    begin
    str := '  delete from jdms.' + TableNmDtl ;
    str := str + ' where MasterID =  ' + JQ2.FieldByName('ID').AsString ;
    str := str;
    japp.db.runsql('begin '+ str +'; commit; end;');
    end;
    str := ' delete from jdms.' + TableNmMaster ;
    str := str + ' where ID =  ' + JQ2.FieldByName('ID').AsString ;
    str := str;
    japp.db.runsql('begin '+ str +'; commit; end;');


end;
}
end;

procedure Tzprojectdocsf.jq2BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  jq2.Params.ParamByName('pid').asstring := jq.fieldbyname('id').asstring;
end;

procedure Tzprojectdocsf.jq2scanAfterInsert(DataSet: TDataSet);
begin
  inherited;
jq2scan.FieldByName('id').AsString := Japp.db.get_seq;
jq2scan.FieldByName('PROJID').AsString := jq.FieldByName('id').AsString;//zproject.idvalue;  //
jq2scan.FieldByName('ISDELETED').AsString := 'no«'; //  ZSTATUSID
jq2scan.FieldByName('ZSTATUSID').AsString := '1';
jq2scan.FieldByName('name').AsString := 'Auto'; //}//}
end;

procedure Tzprojectdocsf.jq2scanBeforeOpen(DataSet: TDataSet);
begin
  inherited;
 jq2scan.Params.ParamByName('pid').asstring := jq.fieldbyname('id').asstring;
end;

procedure Tzprojectdocsf.jq3AfterInsert(DataSet: TDataSet);
begin
  inherited;
  jq3.edit;
  jq3.FieldByName('id').asstring := japp.db.Get_Seq;
  jq3.FieldByName('DOCid').asstring := jq2.Fieldbyname('ID').asstring;
end;

procedure Tzprojectdocsf.jq3AfterOpen(DataSet: TDataSet);
begin
  inherited;
//   Load_Doc;
end;

procedure Tzprojectdocsf.jq3AfterScroll(DataSet: TDataSet);
begin
  inherited;
//   Load_Doc;
end;

procedure Tzprojectdocsf.jq3BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  jq3.Params.ParamByName('Fid').asstring := JQFolders.fieldbyname('id').asstring;
  jq3.Params.ParamByName('Did').asstring := JQFolders.fieldbyname('docid').asstring;
end;

procedure Tzprojectdocsf.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
///////// 05/06/2016
jq.fieldByName('id').AsString := japp.db.get_seq;
{jq.FieldByName('PROJID').AsString := zproject.idvalue;
jq.FieldByName('name').AsString := zproject.namevalue + '-' +jq.fieldByName('id').AsString;
jq.FieldByName('PRNTID').AsInteger := 0;// parent id zero by default;
///////////////}
end;

procedure Tzprojectdocsf.JQAfterOpen(DataSet: TDataSet);
begin
  inherited;
  JQ2.close;
  JQ2.open;

end;

procedure Tzprojectdocsf.JQAfterScroll(DataSet: TDataSet);
begin
  inherited;
  JQ2.close;
  JQ2.open;

end;

procedure Tzprojectdocsf.JQBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  JQCheck.close;
  JQCheck.open;
  JQCheck.first;
  while not(JQCheck.eof) do
    begin
      if JQCheck.FieldbyName('prntid').AsString = JQ.FieldbyName('id').AsString
        then
          begin
            MessageDlg( 'Â–« «·„‘—Ê⁄ ·Â √»‰«¡ Ê ·« Ì„ﬂ‰ Õ–›Â',  mtConfirmation, [mbOk], 0);
            Abort;
          end;
      JQCheck.next;
    end;
jq2.first;
while not (jq2.eof) do jq2.delete;

end;

procedure Tzprojectdocsf.JQFoldersAfterInsert(DataSet: TDataSet);
begin
  inherited;
JQFolders.fieldByName('id').AsString := japp.db.get_seq;
JQFolders.fieldByName('PROJID').AsString :=  JQ.fieldByName('id').AsString;
JQFolders.fieldByName('docid').AsString :=  JQ2.fieldByName('id').AsString;
JQFolders.fieldByName('ISFOLDER').AsString := '0';
JQFolders.fieldByName('NAME').AsString := 'name';
JQFolders.fieldByName('path').AsString := 'path';

end;

procedure Tzprojectdocsf.JQFoldersAfterScroll(DataSet: TDataSet);
begin
  inherited;
jq3.close;
jq3.open;
qDOCFILES.close;
qDOCFILES.open;
end;

procedure Tzprojectdocsf.JQFoldersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
JQFolders.params.paramByName('pid').AsString := jq2.FieldByName('id').AsString;
end;

procedure Tzprojectdocsf.jqFoldersScanAfterInsert(DataSet: TDataSet);
begin
  inherited;
{jqFoldersScan.fieldByName('id').AsString := japp.db.get_seq;
jqFoldersScan.fieldByName('PROJID').AsString :=  JQ.fieldByName('id').AsString;
jqFoldersScan.fieldByName('docid').AsString :=  jq.fieldByName('id').AsString;//jq2scan.fieldByName('id').AsString;
jqFoldersScan.fieldByName('ISFOLDER').AsString := '0';
jqFoldersScan.fieldByName('NAME').AsString := 'name';
jqFoldersScan.fieldByName('path').AsString := 'path';//}
end;

procedure Tzprojectdocsf.jqFoldersScanBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//jqFoldersScan.params.paramByName('pid').AsString := jq2.FieldByName('id').AsString;
end;

procedure Tzprojectdocsf.N10Click(Sender: TObject);
begin
  inherited;
SaveAsMenuClick(sender);
end;

procedure Tzprojectdocsf.N12Click(Sender: TObject);
var
PrintMode      : TEnvisionPrintMode;
//    Form           : TPrintOptionForm;
    Width          : Double;
    Height         : Double;
    GraphicPrinter : TDibGraphicPrinter;

    procedure PrintWithManualPrintJob;
    begin
        { if UsePrintJob is False, Printer.BeginDoc and Printer.EndDoc must be
          called by the user. This allows printing multiple images in the
          same job (or page). }
        //GraphicPrinter.UsePrintJob := False;

        { if UsePrintJob is False, the print job name that appears in the
          print manager must be specified in using the Title property of the
          Printer object. Otherwise, if UsePrintJob is True, the Title
          property of the TDibGraphicPrinter object is used to specify the
          job name. }
        //Printer.Title := 'Envision Demo';

        //Printer.BeginDoc;

        //GraphicPrinter.Print(ImageScrollBox.Graphic);

        { this shows how to print text on a page.
        Printer.Canvas.TextOut(10,10, 'Envision Image Library');
        }

        //Printer.EndDoc;
    end;

    procedure PrintWithAutoPrintJob;
    begin
        GraphicPrinter.UsePrintJob := True;
        GraphicPrinter.Title       := 'Envision Demo';
        //GraphicPrinter.Print(ImageScrollBox.Graphic);
    end;

begin
{    Form := TPrintOptionForm.Create(nil);
    try
        if Form.ShowModal <> mrOk then
            Abort;

        PrintMode := Form.PrintMode;
        Width     := StrToFloat(Form.WidthFld.Text);
        Height    := StrToFloat(Form.HeightFld.Text);
    finally
        Form.Free;
    end;
    }

    PrintMode := pmFullPage;

    GraphicPrinter := TDibGraphicPrinter.Create;
    try
        GraphicPrinter.PrintMode   := PrintMode;
        GraphicPrinter.Width       := Width;
        GraphicPrinter.Height      := Height;

        PrintWithAutoPrintJob;

    finally
        GraphicPrinter.Free;
    end;
end;

procedure Tzprojectdocsf.N13Click(Sender: TObject);
var
    Transform : TRotateTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TRotateTransform.Create;
    try
        Transform.OnProgress      := Self.OnProgress;
        Transform.Angle           := 90;

        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := false;
    ImageScrollBox.Redraw(True);
    saveToDB(false);
end;

procedure Tzprojectdocsf.N15Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomPercent := ImageScrollBox.ZoomPercent - 10;
end;

procedure Tzprojectdocsf.N1Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmOriginalSize;
end;

procedure Tzprojectdocsf.N2Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure Tzprojectdocsf.N3Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitWidth;
end;

procedure Tzprojectdocsf.N4Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitHeight;
end;

procedure Tzprojectdocsf.N5Click(Sender: TObject);
begin
  inherited;
if not Scanner.IsConfigured then
    begin
        ShowMessage('A scanner is not configured on your computer');
        Exit;
    end;

    Scanner.SelectScanner;
end;

procedure Tzprojectdocsf.N7Click(Sender: TObject);
begin
  inherited;
Scan_Pict(false);
end;

procedure Tzprojectdocsf.N8Click(Sender: TObject);
begin
  inherited;
 Scan_Pict(true);
end;

procedure Tzprojectdocsf.N9Click(Sender: TObject);
var
    OpenDialog   : TOpenPictureDialog;
    s1,s2,s3 : string;
begin
  inherited;
CheckDirty;

    OpenDialog := TOpenPictureDialog.Create(Self);
    try
        OpenDialog.Filter := GraphicFilter(TGraphic);
        if OpenDialog.Execute then
        begin
            LoadFile(OpenDialog.FileName);
            saveToDB(true);
            S1 := ExtractFileExt(OpenDialog.filename);
            s2 := extractfilename(OpenDialog.filename);
            s3 := OpenDialog.filename;
            qDOCFILES.EDIT;
            delete(s3,length(s3)-length(s2),length(s2)+1);  // delete also the '/'
            qDOCFILES.fieldByName('filelink').AsString := s3;
            delete(s2,length(s2)-length(s1)+1 ,length(s1));
            qDOCFILES.fieldByName('FILENAME').AsString :=s2;
            delete(s1,1,1);
            qDOCFILES.fieldByName('FILEFORMAT').AsString :=s1;   //length(s1)
            qDOCFILES.post ;
            qDOCFILES.close;
            qDOCFILES.open;
        end;
    finally
        OpenDialog.Free;
    end;
    ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure Tzprojectdocsf.NewFolderHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
// japp.AppAct.PageOpenPages('TZFoldernewf','S',100);
end;

procedure Tzprojectdocsf.newHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  var str :string;
  s : TMemoryStream;
  I : integer;
  JsonForm :TTemplateForm;
  //    var TemplateForm: TTemplateForm;
  metaDataID : String ;

  //    var TemplateForm: TTemplateForm;
  begin
      inherited;
{jq2.insert;
jq2.FieldByName('id').AsString := Japp.db.get_seq;
jq2.FieldByName('PROJID').AsString := jq.FieldByName('id').AsString;//zproject.idvalue;  //
jq2.FieldByName('ISDELETED').AsString := 'no«'; //  ZSTATUSID
jq2.FieldByName('ZSTATUSID').AsString := '1';  //}


{jq2.close;
jq2.open;
jq2.insert;
jq2.post; //}  // jq2.FieldByName('id').AsString or 's'

  metaDataID := getMetaDataID(jq2.FieldByName('projid').AsString);
  if metaDataID <> '' then
  begin
    try
      JQMetBLOB.close;
     JQMetBLOB.params.paramByName('pid').AsString := metaDataID;
     JQMetBLOB.open;

      s := TMemoryStream (JQMetBLOB.CreateBlobStream(JQMetBLOB.FIELDBYNAME('OBJ'), bmRead));
      if s.Size >= 0 then begin
       JSonMemo.lines.LoadFromStream(s);
    for I := 0 to JSonMemo.Lines.Count - 1 do
    str := str + JSonMemo.Lines.Strings[I];
    //   ImageScrollBox.LoadFromStream(s, jq1.FieldByName('FILEFORMAT').AsString, 1); //
  //SetString(str, PAnsiChar(s.Memory), s.Size);
  //  process(txt);
  jsonform := TTemplateForm.create(self,str);
  ProcessJson(jsonform,str);
  with jsonform do
  begin
  MasterSet.close;
  MasterSet.open;
  masterset.insert;
  MasterSet.FieldByName('id').AsString:= Japp.db.get_seq;//
  jqDOCS.close;
 // jqDOCS.params.paramByName('pid').AsString := jq2.FieldByName('id').AsString;
  jqDOCS.open;
  jqDOCS.insert;
  jqDOCS.FieldByName('id').AsString := MasterSet.FieldByName('id').AsString;
  jqDOCS.FieldByName('PROJID').AsString := jq.FieldByName('id').AsString;//zproject.idvalue;  //
  jqDOCS.FieldByName('ISDELETED').AsString := 'no'; //  ZSTATUSID
  jqDOCS.FieldByName('ZSTATUSID').AsString := '1';

  end;//}
  ProcessJsonNm( JsonForm,str);/// it is like afteropen hehehhe
  JsonForm.showmodal;
  Jsonform.free;

      end
    finally

    end;
  end;


end;

 procedure Tzprojectdocsf.PrivShowHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;

Japp.AppAct.PageOpenPages('TZPrivsf', jq.FieldByName('ID').AsString, 1);

//Japp.AppAct.PageOpenPages('TZPRIVSnEW2', jq.FieldByName('ID').AsString, 1)
end;

procedure Tzprojectdocsf.ProcessJson( JsonForm :TTemplateForm;txt: String);
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
  DBEDIT2,DBEDIT3,DBEDIT4,DBNEW :TDBEDIT;
  LABEL12,LABEL13,LABEL14,LABELNEW :TLABEL;
///
  DetailGrid : TjazDBGrid;
  GridSource: TdataSource;
  GridDataSet :Tamjset;
  STRTEST: STRING;
  begin
     str := txt;

     obj := TjsonObject.parse(str) as TJsonObject;
     FormObj := obj['ctrls'].items[0];    // first item is a form always.

     PropertiesObj := FormObj['Properties'];
     JsonForm.caption := PropertiesObj['Caption'];
     TableName :=  PropertiesObj['TableName'];
     with jsonform do
     begin
         detailgrid.visible := false;
         panel3.visible := false;
         panel2.visible := false;
         label1.font.color := cllime;
         label1.font.height := 30;
         Label1.caption := PropertiesObj['Label'];
         Label1.top := 0;
         Label1.left := 0;
         label1.width := JsonForm.width;
         label1.height := 30;
         label1.color := clskyblue;
      end;


  myTop := 20 ;  // top of elements in first row ...
  myLeft:= JsonForm.masterBox.width ;   // default left is the right corner of 'masterBox' ...
  defaultHeight :=  21 ; // label or DBEdit default height
  itemsInRow := 3 ; //  ⁄œœ «·⁄‰«’— »«·’› «·Ê«Õœ label+dbedit = ⁄‰’— Ê«Õœ
  lblWidth := 60 ;  // label width
  dbeditWidth := 150 ; // DBEdit width
  itemSpacing := 5 ; // spacing between items ...

  for I := 0 to FormObj['ctrls'].Count - 1 do
  begin


   SubObj1 := FormObj['ctrls'].items[I];
   if ( SubObj1['CtrlType'] = 'singlelinetext' )or (SubObj1['CtrlType'] = 'date' )
   OR (SubObj1['CtrlType'] = 'number' ) then
   begin
        if (I <> 0) and ((I mod itemsInRow)=0) then
        begin
             // rest left and top for the next row...
             myTop  := myTop + itemSpacing + defaultHeight ;
             myLeft := JsonForm.masterBox.width ;
        end;

        PropertiesObj := SubObj1['Properties'];
        with JsonForm do
        begin
           MasterSet.AmjTblname := TableName;
           MasterSet.AmjUser := jq.AmjUser;
           MasterSet.CommandText := 'select * from ' + MasterSet.AmjUser;
           MasterSet.CommandText := MasterSet.CommandText + '.' + MasterSet.AmjTblname;
           MasterSet.commandText := MasterSet.CommandText + ' ' + 'where id = :Pid';
           case I of
           0:
            begin
                // TLabel  ...
                LABELNEW := TLabel.Create(Self);
                SETLENGTH(TLABELARR,LENGTH(TLABELARR) + 1);
                TLABELARR[HIGH(TLABELARR)]         := LABELNEW;
                LABELNEW.alignment := taRightJustify ;
                LABELNEW.Parent  := masterBox;
                LABELNEW.caption := PropertiesObj['Label'];
                STRTEST:=  LABELNEW.caption;

               if PropertiesObj['X'] <> '' then LABELNEW.left :=trunc(strtofloat(PropertiesObj['X']));
               if PropertiesObj['Y'] <> '' then LABELNEW.top  :=trunc(strtofloat(PropertiesObj['Y']));

               LABELNEW.font.color :=clblack;//clWindowText;//.font.color := StringTocolor('cl' + PropertiesObj['Color']);

               myLeft := myLeft - itemSpacing - lblWidth ;
               LABELNEW.Left := myLeft ;
               LABELNEW.Top  := myTop ;
               LABELNEW.autosize := false;
               LABELNEW.width    := lblWidth ;

               coord := LABELNEW.Left;
               coord := coord + 1;

               // TDBEdit ...
               DBNEW := TDBEDIT.CREATE(SELF);
               SETLENGTH(DBEDITARR,LENGTH(DBEDITARR)+1);
               DBEDITARR[HIGH(DBEDITARR)] := DBNEW;

               DBNEW.Parent     := masterBox;
               DBNEW.BidiMode   := bdRightToLeft;
               DBNEW.ReadOnly   := false;
               DBNEW.DataField  := PropertiesObj['BindTo'];

               myLeft := myLeft - itemSpacing - dbeditWidth ;
               DBNEW.Left       := myLeft;
               DBNEW.width      := dbeditWidth  ;
               DBNEW.Top        := myTop ;//TLABELARR[HIGH(TLABELARR)].Top;
               DBNEW.DATASOURCE := MasterDQ;
               DBNEW.VISIBLE    := TRUE; //}
            end;
          ELSE
            begin
               LABELNEW := TLabel.Create(Self);
               SETLENGTH(TLABELARR,LENGTH(TLABELARR) + 1);
               TLABELARR[HIGH(TLABELARR)] := LABELNEW;

               LABELNEW.Parent     := masterBox;
               LABELNEW.alignment := taRightJustify ;
               LABELNEW.caption    := PropertiesObj['Label'];
               LABELNEW.font.color := clblack;
               LABELNEW.autosize   := false;

               myLeft := myLeft - itemSpacing - lblWidth ;
               LABELNEW.Left       := myLeft;
               LABELNEW.Top        := myTop ;
               LABELNEW.Width      := lblWidth ;
               STRTEST:=  LABELNEW.caption;


               DBNEW := TDBEDIT.CREATE(SELF);
               SETLENGTH(DBEDITARR,LENGTH(DBEDITARR)+1);
               DBEDITARR[HIGH(DBEDITARR)] := DBNEW;

               DBNEW.Parent     := masterBox;
               DBNEW.BidiMode   := bdRightToLeft;
               DBNEW.ReadOnly   := false;
               DBNEW.DataField  := PropertiesObj['BindTo'];

               myLeft := myLeft - itemSpacing - dbeditWidth ;
               DBNEW.Left       := myLeft;
               DBNEW.Top        := myTop;
               DBNEW.Width      := dbeditWidth;
               DBNEW.DATASOURCE := MasterDQ;
               DBNEW.VISIBLE    := TRUE;
            end;


        end; //with JsonForm do
        MasterSet.close;
        MasterSet.open;

   end;
 end;

 JsonForm.masterBox.invalidate();

if  SubObj1['CtrlType'] =
   'grid' then
   begin
   PropertiesObj := SubObj1['Properties'];

//}
  with JsonForm do
  begin
//   DetailGrid.align := alclient;
 {  DetailGrid.Left := trunc(strtofloat(PropertiesObj['X']));
   DetailGrid.Top := trunc(strtofloat(PropertiesObj['Y']));
   DetailGrid.Width := trunc(strtofloat(PropertiesObj['Width']));
   DetailGrid.height := trunc(strtofloat(PropertiesObj['Height']));//}
   DetailSet.AmjTblname := PropertiesObj['BindTo'];
   DetailSet.AmjUser := jq.AmjUser;
   DetailSet.CommandText := 'select * from ' + DetailSet.AmjUser;
   DetailSet.CommandText := DetailSet.CommandText + '.' + DetailSet.AmjTblname;
   DetailSet.CommandText := DetailSet.CommandText + ' where MASTERID = :pid';
   MasterSet.AfterScroll := AmjSet1.AfterScroll ;

{   for j :=0 to Detailgrid.Columns.Count-1 do  Detailgrid.Columns.Items[j].visible:=false;
 {  for j := 0 to SubObj1['DataColumns'].Count - 1 do
   begin
   ColumnObj := SubObj1['DataColumns'].items[j];
   NameAndWidthColumn(Detailgrid,PropertiesObj['BindTo'],PropertiesObj['Label'],75)
   end; //}
//   panel1.align := altop;
   detailgrid.visible := true;
     panel3.visible := true;
     panel2.visible := true;
  // panel2.align := altop;
      //panel2.height := 0;
     //panel2.width := 0;
  // panel3.align := altop;
     // panel3.height := 0;
    // panel3.width := 0;
  // detailgrid.align := alclient;
    // detailgrid.height := 0;
   //  detailgrid.width := 0;
   //  mastergrid.align := alclient;
        end;
      end;
    end;
  end;


  function Tzprojectdocsf.GetJsonStr(var txt :string): boolean;
  var
  s : TMemoryStream;
  I : integer;

  begin
      inherited;

  JQMetaIdSEt.close;
  JQMetaIdSEt.params.paramByName('Pprojid').AsString := jq.FieldByName('ID').AsString;
  JQMetaIdSEt.open;
  if JQMetaIdSEt.RecordCount > 0 then
  begin
     txt := '';
    try
      JQMetBLOB.close;
     JQMetBLOB.params.paramByName('pid').AsString := JQMetaIdSEt.FieldByName('metaid').AsString;
     JQMetBLOB.open;
      s := TMemoryStream (JQMetBLOB.CreateBlobStream(JQMetBLOB.FIELDBYNAME('OBJ'), bmRead));
      if s.Size > 0 then
      begin
      JSonMemo.lines.LoadFromStream(s);
      for I := 0 to JSonMemo.Lines.Count - 1 do txt := txt + JSonMemo.Lines.Strings[I];
      RESULT := TRUE;
      end  else  RESULT := FALSE;
    finally
    end;
  end
  else
  RESULT := FALSE;
end;

  procedure Tzprojectdocsf.ProcessJsonNm( JsonForm :TTemplateForm;txt: String);
  var str,TableName:string;  // text to be modified
//  JsonForm : TTemplateForm;
  lab : Tlabel;
//  position_s,position_E :integer;
  I : integer;
  Obj,FormObj,PropertiesObj,SubObj1,SubObj2: TJsonObject;
  Objbs :TJsonbaseObject;
  SingleLabel :Tlabel;
 // DataSet1 : Tamjset;
  {EditBox1 : TEdit;
  DetailGrid : TjazDBGrid;
  GridSource: TdataSource;
  GridDataSet :Tamjset;  //}
  begin
  str := txt;
  ////// using JsonDataObject.pas
 obj := TjsonObject.parse(str) as TJsonObject;
 FormObj := obj['ctrls'].items[0];    // first item is a form always.
 PropertiesObj :=FormObj['Properties'];
{ //}
   TableName :=  PropertiesObj['TableName'];
 {  //}
  //////////////// end opf creating label
  /// creating new data set
  for I := 0 to FormObj['ctrls'].Count - 1 do
  begin
  SubObj1 := FormObj['ctrls'].items[I];
 /// MemoOut.lines.add(SubObj1['CtrlType']);
   if ( SubObj1['CtrlType'] = 'singlelinetext' )or (SubObj1['CtrlType'] = 'date' ) then
   begin
   PropertiesObj := SubObj1['Properties'];

  with JsonForm do
  begin
 { ;//}
//   NameAndWidthColumn(mastergrid,PropertiesObj['BindTo'],PropertiesObj['Label'],75)


  { EditBox1 := TEdit.Create(Self);
   EditBox1.Parent := JsonForm;
   EditBox1.BidiMode := bdRightToLeft;
   EditBox1.ReadOnly := True;
//   EditBox1.text := MasterSet.FieldByname(PropertiesObj['BindTo']).AsString;
   EditBox1.Left :=  SingleLabel.Left + 10 + SingleLabel.width;
   EditBox1.Top :=  SingleLabel.Top;//}
   end;
    end;

{if  SubObj1['CtrlType'] =
   'grid' then
   begin
   PropertiesObj := SubObj1['Properties'];
  with JsonForm do
      begin
   DetailGrid.align := alclient;
   DetailSet.AmjTblname := PropertiesObj['BindTo'];
   DetailSet.AmjUser := jq.AmjUser;
   DetailSet.CommandText := 'select * from ' + DetailSet.AmjUser;
   DetailSet.CommandText := DetailSet.CommandText + '.' + DetailSet.AmjTblname;
   DetailSet.CommandText := DetailSet.CommandText + ' where MASTERID = :pid';
   MasterSet.AfterScroll := AmjSet1.AfterScroll ;
   panel1.align := altop;
   detailgrid.visible := true;
   panel3.visible := true;
   panel2.visible := true;
   panel2.align := altop;
   panel3.align := altop;
   detailgrid.align := alclient;
   mastergrid.align := alclient;
      end;
   end;//}

  end;

end;

  procedure Tzprojectdocsf.ProcessJsonToDelete( txt: String; var TableNmMaster,TablenameDtl: string);
  var str,TableName:string;  // text to be modified
  JsonForm : TTemplateForm;
  lab : Tlabel;
  I : integer;
  Obj,FormObj,PropertiesObj,SubObj1,SubObj2: TJsonObject;
  Objbs :TJsonbaseObject;
  SingleLabel :Tlabel;
  begin
  TableNmMaster := '';
  TablenameDtl := '';
  str := txt;
  ////// using JsonDataObject.pas
 obj := TjsonObject.parse(str) as TJsonObject;
 FormObj := obj['ctrls'].items[0];    // first item is a form always.
 PropertiesObj :=FormObj['Properties'];
{ //}
  TableNmMaster :=  PropertiesObj['TableName'];
 {  //}
  //////////////// end opf creating label
  /// creating new data set
  for I := 0 to FormObj['ctrls'].Count - 1 do
  begin
  SubObj1 := FormObj['ctrls'].items[I];
{   if ( SubObj1['CtrlType'] = 'singlelinetext' )or (SubObj1['CtrlType'] = 'date' ) then
   begin  //}
   PropertiesObj := SubObj1['Properties'];
 if  SubObj1['CtrlType'] = 'grid' then  TablenameDtl := PropertiesObj['BindTo'];
   end;
end;






procedure Tzprojectdocsf.qDOCFILESAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qDOCFILES.edit;
  qDOCFILES.FieldByName('id').asstring := japp.db.Get_Seq;
  qDOCFILES.FieldByName('FILEID').asstring := JQFolders.Fieldbyname('ID').asstring;
  qDOCFILES.FieldByName('DOCID').asstring := JQFolders.Fieldbyname('DOCID').asstring;
  qDOCFILES.FieldByName('PROJID').asstring := JQFolders.Fieldbyname('PROJID').asstring;
  qDOCFILES.FieldByName('VIEWCO').asstring := '0';
  qDOCFILES.FieldByName('NOTE').asstring := 'NOT NULL';//JQFolders.Fieldbyname('NOTES').asstring;
  qDOCFILES.FieldByName('DOWNLOADCO').asstring := '0';
  qDOCFILES.FieldByName('FILENAME').asstring := 'CHANGE FILE NMAE';
end;

procedure Tzprojectdocsf.qDOCFILESAfterOpen(DataSet: TDataSet);
begin
  inherited;
Load_Doc;
end;

procedure Tzprojectdocsf.qDOCFILESAfterScroll(DataSet: TDataSet);
begin
  inherited;
//   Load_Doc;
end;

procedure Tzprojectdocsf.qDOCFILESBeforeOpen(DataSet: TDataSet);
begin
  inherited;
qDOCFILES.Params.ParamByName('Fid').asstring := JQFolders.fieldbyname('id').asstring;
//qDOCFILES.Params.ParamByName('Did').asstring := JQFolders.fieldbyname('docid').asstring;
end;



function Tzprojectdocsf.GetMIMEType(FileName: String): String;
var
reg: TRegistry;
ext: String;
list: TStringList;
i : integer;
begin
    Result := '';
    ext := LowerCase(ExtractFileExt(Filename));
    reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CLASSES_ROOT;
    if reg.OpenKeyReadOnly('\' + ext) then begin
        Result := reg.ReadString('Content Type');
        reg.CloseKey;
    end;

    if Result = '' then begin
        if reg.OpenKeyReadOnly('\MIME\Database\Content Type') then
        begin
            list := TStringList.Create;
            try
               reg.GetKeyNames(list);
               for i := 0 to list.Count - 1 do begin
                  if Reg.OpenKeyReadOnly('\MIME\Database\ContentType\' + list[i]) then begin
                      if AnsiSameText(ext,reg.ReadString('Extension')) then begin
                          Result := list[i];
                          Break;
                      end;
                  end;
               end;
            finally
               list.Free;
            end;
            reg.CloseKey;
        end;
    end;
  finally
  reg.Free;
  end;
  if Result = '' then Result := 'application/octet-stream';

end;

procedure Tzprojectdocsf.AddPictAction2Handle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
var
    OpenDialog   : TOpenDialog;
    s1,s2,s3, s4, myFileID, myPrnt : string;
    jadoset:Tadodataset;
    //aFileStream : TFileStream;
begin
  inherited;
//CheckDirty;

    jadoset := TADODataSet.Create(self);
    OpenDialog := TOpenDialog.Create(Self);
    try
        OpenDialog.Filter := '*.*' ;//GraphicFilter(TGraphic);
        if OpenDialog.Execute then
        begin

            S1 := ExtractFileExt(OpenDialog.filename);
            s2 := extractfilename(OpenDialog.filename);
            s3 := OpenDialog.filename;
            s4 := GetMIMEType(OpenDialog.filename);
            delete(s3,length(s3)-length(s2),length(s2)+1);  // delete also the '/'
            delete(s2,length(s2)-length(s1)+1 ,length(s1));
            delete(s1,1,1);

            myPrnt := 'null';
            if not JQFolders.FieldByName('PRNT').isNull then
                 myPrnt := JQFolders.FieldByName('PRNT').asString;


            myFileID := addFileToDB(jq2.fieldByName('ID').asString,  jq2.fieldByName('PROJID').asString, s1, s4, myPrnt);

            if (myFileID <> '') then
            begin
              jadoset.Connection :=  JQFolders.AmjServerDB;
              jadoset.CommandText := 'select * from jdms.JPROJ_DOCS_FOLDERS where id = ' + myFileID;//JQFolders.fieldbyname('id').asstring;
              jadoset.open;
              jadoset.edit;
              TBlobField(jadoset.FIELDBYNAME('BIN_ON_DB')).LoadFromFile(OpenDialog.filename);//Stream(aFileStream);
              jadoset.post;


            end
            else
            begin

            end;
{

            LoadFile2(OpenDialog.FileName);
//            saveToDB2(true);
       //     JQFolders.EDIT;
             JQFolders.Insert;
            S1 := ExtractFileExt(OpenDialog.filename);
            s2 := extractfilename(OpenDialog.filename);
            s3 := OpenDialog.filename;
            delete(s3,length(s3)-length(s2),length(s2)+1);  // delete also the '/'
            JQFolders.fieldByName('path').AsString := s3;
            delete(s2,length(s2)-length(s1)+1 ,length(s1));
            JQFolders.fieldByName('NAME').AsString :=s2;
            delete(s1,1,1);
       //   qDOCFILES.fieldByName('FILEFORMAT').AsString :=s1;   //length(s1)
            jqfolders.amjexcludFlds.text := 'BIN_ON_DB';
            JQFolders.post ;
            saveToDB2(true);
            JQFolders.close;
            JQFolders.open;
}
        end;

    finally
        OpenDialog.Free;
        if assigned(jadoset) then
              jadoset.Free;

    end;
    //ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure Tzprojectdocsf.AddSunHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  var ParentId :integer;
  AddSunForm :TAddSunForm;
begin
  inherited;
  ParentID := jq.FieldByName('ID').AsInteger;
  jq.insert;
  jq.FieldByName('PRNT').AsInteger := ParentId;
  jq.FieldByName('name').AsString := jq.FieldByName('ID').AsString;
  jq.post;
  AddSunForm := TAddSunForm.create(self);
  with  AddSunForm do
  begin
  amjset1.params.paramByName('pid').AsString := jq.FieldByName('ID').AsString;
  amjset1.open;
  amjset1.edit;
  showmodal;
  free;
  end;


end ;

procedure Tzprojectdocsf.AmjAction18Handle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
begin
  inherited;
  actnAddFolderExecute(self);
end;

procedure Tzprojectdocsf.AmjSet1BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  AmjSet1.Params.ParamByName('pid').asstring := jq2.fieldbyname('id').asstring;
end;

procedure Tzprojectdocsf.AmjSet2AfterScroll(DataSet: TDataSet);
begin
  inherited;
  JQFolders.close;
  JQFolders.open;
end;

procedure Tzprojectdocsf.CheckDirty;
begin
    { don't check if dirty with multi image files, as multi images files
      are not saved as a single entity, ie, "append" is used. }
    if FDirty and (FMultiPageFileName = '') then
    begin
        case MessageDlg( 'Image is not saved. Save it?',
                         mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
            mrYes    : SaveMenuClick(Self);
            mrCancel : Abort;
        end;
    end;
end;



procedure Tzprojectdocsf.NameAndWidthColumn(dbgrid:tjazdbgrid;fieldn,newname:string;widthn:integer);
  var i:integer;
begin
  for i:=0 to DBGrid.Columns.Count-1 do
  if DBGrid.Columns.Items[i].FieldName=fieldn then
      begin
  DBGrid.Columns.Items[i].Title.Caption:=newname;
  DBGrid.Columns.Items[i].Width:=widthn;
      end;
end;

procedure Tzprojectdocsf.newfHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;

end;

{and call it as

NameAndWidthColumn('Country','Name of countries',200);
  //}



procedure Tzprojectdocsf.Timer1Timer(Sender: TObject);
var

 bm : TBookMark ;
begin

 timer1.enabled := false ;
{

      try
            try
            // show in image editor....
            onAcquireFileName := eFileName.Text ;
            EditImageForm := TEditImageForm.create(self);
            EditImageForm.LoadLocalFile(onAcquireFileName);
            EditImageForm.showmodal;



            finally
               EditImageForm := nil ;
            end;


         if (EditImageForm <> nil) then
            FreeAndNil(EditImageForm);

      except

      end;


      bm := jqFolders.getBookMark();
      jqFolders.Close ;
      jqFolders.Open ;

      jqFolders.GotoBookMark(bm);
}


end;


end.
