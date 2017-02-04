unit zprojectdocBackUp3U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JPmainU, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, ComCtrls, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls,
  AmjSetU, RzPanel, AmjStandardU, AmjLookUpU, AmjactionsU, VirtualTrees,
  wordxp, AmjTreeU, RzTabs, DBGridEhGrouping, GridsEh, DBGridEh, JazDBGrid,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, EnImgScr,
  Grids, DBGrids, JPG1U, TemplateUnit,
  EnPrinter,       { for TEnvisionPrinter }
    EnScan,          { for Scanner }
    EnBlowupForm,    { for TBlowupForm }
    EnOverviewForm,  { for TOverviewForm }
    EnOcrEng,        { for TOcrEngine, TOcrDriver }
    EnDiGrph        { for TDibGraphic };

type
  TzprojectdocBackUp3f = class(TJPmain)
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
    JRActions3: TAmjActionList;
    AmjAction8: TAmjAction;
    AmjAction10: TAmjAction;
    AmjAction11: TAmjAction;
    edit: TAmjAction;
    new: TAmjAction;
    AmjAction2: TAmjAction;
    editf: TAmjAction;
    newf: TAmjAction;
    AmjAction6: TAmjAction;
    JMainPages: TJPages;
    BillTS: TRzTabSheet;
    PictsTS: TRzTabSheet;
    ImageScrollBox: TImageScrollBox;
    Panel2: TPanel;
    JPanel2: TJPanel;
    JPanel3: TJPanel;
    Image1: TImage;
    ProgressBar: TProgressBar;
    JazDBGrid2: TJazDBGrid;
    SubCtrctTS: TRzTabSheet;
    JazDBGrid1: TJazDBGrid;
    JazDBGrid3: TJazDBGrid;
    DataSource1: TDataSource;
    docjq: TAmjSet;
    AmjActionList1: TAmjActionList;
    AmjAction7: TAmjAction;
    AmjAction9: TAmjAction;
    AmjAction12: TAmjAction;
    ImageNewact: TAmjAction;
    ImageOpAct: TAmjAction;
    ImageViewAct: TAmjAction;
    DqDOCFILES: TDataSource;
    qDOCFILES: TAmjSet;
    AmjActionList2: TAmjActionList;
    AmjAction14: TAmjAction;
    AmjAction26: TAmjAction;
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
    DBMemo1: TDBMemo;
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
    EditPict: TAmjAction;
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
    procedure d1Click(Sender: TObject);
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
    procedure JQBeforeOpen(DataSet: TDataSet);
    procedure docjqAfterInsert(DataSet: TDataSet);
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure JQBeforeInsert(DataSet: TDataSet);
    procedure jq2AfterInsert(DataSet: TDataSet);
    procedure jq2BeforeInsert(DataSet: TDataSet);
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
  private
    { Private declarations }
      dbeditarray : array of tdbedit;////
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
    procedure ZoomEditChange(Sender: TObject);
    procedure LoadFile( const FileName : String );
    procedure LoadFile2( const FileName : String );
    procedure saveToDB(pNew:Boolean);
    procedure saveToDB2(pNew:Boolean);
    procedure SaveMenuClick(Sender: TObject);
    procedure SaveAsMenuClick(Sender: TObject);
    procedure OnProgress( const Sender          : TObject;
                                const PercentProgress : Byte );
    procedure Load_Doc;
    procedure ProcessJson( JsonForm : TTemplateForm;txt: String);
    procedure ProcessJsonNm( JsonForm :TTemplateForm;txt: String);
    procedure ProcessJsonToDelete( txt: String; var TableNmMaster,TablenameDtl: string);
    function GetJsonStr(var txt:string): boolean;
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

procedure TzprojectdocBackUp3f.d1Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomPercent := ImageScrollBox.ZoomPercent + 10;
end;
procedure TzprojectdocBackUp3f.docjqAfterInsert(DataSet: TDataSet);
begin
  inherited;
docjq.fieldbyname('id').asstring := qDOCFILES.fieldbyname('id').asstring;//20/02/2016
docjq.fieldbyname('DOCid').asstring :=jq2.Fieldbyname('ID').asstring;// 20/02/2016
end;

procedure TzprojectdocBackUp3f.docjqBeforeOpen(DataSet: TDataSet);
begin
  inherited;
docjq.Params.ParamByName('pid').asstring := jq2.fieldbyname('id').asstring;// we need doc id  it was jq.fieldbyname('id').asstring;  12/02/2016
end;

procedure TzprojectdocBackUp3f.EditFilePictHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
begin
  inherited;
  EditImageForm := TEditImageForm.create(self);
  EditImageForm.FormEditPict(JQFolders.FieldByName('id').AsString,JQFolders.FieldByName('DOCID').AsString);
  EditImageForm.showmodal;
end;

procedure TzprojectdocBackUp3f.EditFolderHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
begin
  inherited;
//Japp.AppAct.PageOpenPages('TZFoldernewf', jq.FieldByName('ID').AsString, 100)
end;

procedure TzprojectdocBackUp3f.editHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
 var str :string;
  s : TMemoryStream;
  I : integer;
  JsonForm :TTemplateForm;
  //    var TemplateForm: TTemplateForm;
begin
      inherited;
  JQMetaIdSEt.close;
  JQMetaIdSEt.params.paramByName('Pprojid').AsString := jq.FieldByName('ID').AsString;
  JQMetaIdSEt.open;
  if JQMetaIdSEt.RecordCount > 0 then
  begin
    try
      JQMetBLOB.close;
     JQMetBLOB.params.paramByName('pid').AsString := JQMetaIdSEt.FieldByName('metaid').AsString;
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

procedure TzprojectdocBackUp3f.EditPictHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
  EditImageForm := TEditImageForm.create(self);
  EditImageForm.FormEditPict(qDOCFILES.FieldByName('id').AsString,qDOCFILES.FieldByName('FileID').AsString);
  EditImageForm.showmodal;
end;

procedure TzprojectdocBackUp3f.Load_Doc;
var
    s: TMemoryStream;
begin
  if not is_inserting then
    try
      s := TMemoryStream (qDOCFILES.CreateBlobStream(qDOCFILES.FIELDBYNAME('FDATA'), bmRead));
      if s.Size >= 0 then begin
        ImageScrollBox.LoadFromStream(s, 'JPG', 1);
      end;
    finally
    end;
end;
procedure TzprojectdocBackUp3f.OnProgress( const Sender          : TObject;
                                const PercentProgress : Byte );
begin
   if (PercentProgress < 100) then
    begin
        ProgressBar.Position := PercentProgress;
        if not ProgressBar.Visible then
            ProgressBar.Visible := True;
    end
    else
        ProgressBar.Visible := False;

end;
procedure TzprojectdocBackUp3f.SaveAsMenuClick(Sender: TObject);
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
procedure TzprojectdocBackUp3f.SaveMenuClick(Sender: TObject);
begin
    if ImageScrollBox.Graphic = nil then
        Exit;

    if FFileName = '' then
        SaveAsMenuClick(Sender)
    else
    begin
        ImageScrollBox.SaveToFile(FFileName);
        FDirty := False;
    end;
end;
procedure TzprojectdocBackUp3f.saveToDB(pNew:Boolean);
var
    FromStream: TStream;
    jadoset : TADODataSet;
begin
    try
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
end;

procedure TzprojectdocBackUp3f.saveToDB2(pNew:Boolean);
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

// select JPROJ_DOCS_FOLDERS.*  from jdms.JPROJ_DOCS_FOLDERS where docid = :pid












procedure TzprojectdocBackUp3f.LoadFile( const FileName : String );
var
    MultiLoad : Boolean;

begin
    Caption   := FileName;

    BeginHourglass;
    try

{        if PageUpDown.Max > 1 then
        begin
            MultiLoad := MessageDlg( 'The file contains ' +
                                     IntToStr(PageUpDown.Max) + ' images.'#13 +
                                     'Note that for animations, all images'#13 +
                                     'must be loaded in memory.'#13 +
                                     'Load all images in memory?'#13,
                                     mtConfirmation, [mbYes, mbNo], 0) = mrYes;
        end
        else
}            MultiLoad := False;

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
            { clear FFileName for multi-image files, to ensure if the
              Save operation is invoked, the multiimage file is not
              overwritten. Multi-image files are manipulated using the
              Append To File operation }
//            FFileName          := '';
//            FMultiPageFileName := FileName;
        end;

    finally
        EndHourglass;
    end;

    FDirty    := False;

    ZoomEditChange(Self);
end;
procedure TzprojectdocBackUp3f.LoadFile2( const FileName : String );
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









procedure TzprojectdocBackUp3f.ZoomEditChange(Sender: TObject);
begin
    try
        ImageScrollBox.ZoomPercent := 100; //StrToInt(ZoomEdit.Text);
    except
        { trap exception in StrToIn }
        ImageScrollBox.ZoomPercent := 100;
    end;
end;
procedure TzprojectdocBackUp3f.zprojectFind(Sender: TObject; ID: string);
begin
  inherited;
jq.close;
jq.open;
end;

procedure TzprojectdocBackUp3f.OnAcquire( const DibHandle    : THandle;
                               const XDpi         : Word;
                               const YDpi         : Word;
                               const CallBackData : LongInt );
var
    Graphic    : TDibGraphic;
    pScanInfo  : TpScanInfo;

begin
    {$WARNINGS OFF}
    pScanInfo := TpScanInfo(CallBackData);

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
        ImageScrollBox.Graphic := pScanInfo^.Graphic;
        Self.FDirty    := False;
        Self.FFileName := '';
        Self.ZoomEditChange(self);

        Application.ProcessMessages;

        Inc(pScanInfo^.ImageCount);
    end
    else
    begin
        Graphic := TDibGraphic.Create;
        try
            Graphic.AssignFromDIBHandle(DibHandle);
            Graphic.XDotsPerInch := XDpi;
            Graphic.YDotsPerInch := YDpi;

            ImageScrollBox.Graphic := Graphic;
        finally
            Graphic.Free;
        end;

        Self.FDirty    := True;
        Self.FFileName := '';

        Self.ZoomEditChange(self);
    end;
    {$WARNINGS ON}
end;
Procedure TzprojectdocBackUp3f.FInit;
Begin
  PCaption := 'ÊÀ«∆ﬁ «·„‘—Ê⁄';
  //JQ.AfterScroll := nil;
  JRActions.sqlstr:=jq.commandtext;
  JRActions2.sqlstr:=jq2.commandtext;
  JRActions3.sqlstr:=jq3.commandtext;
  FUndoGraphic := TDibGraphic.Create;
  AmjActionList1.sqlstr := docjq.commandtext;
  AmjActionList3.sqlstr := AmjSet1.commandtext;
  AmjActionList2.sqlstr:=qDOCFILES.commandtext;
End;
procedure TzprojectdocBackUp3f.FolderScanOnePictHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
begin
  inherited;
Scan_Pict2(false);
end;

procedure TzprojectdocBackUp3f.Scan_Pict2(Pmulti:Boolean);
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
                LoadFile2(FileName);
        end;
        saveToDB2(true);
    end;
end;





procedure TzprojectdocBackUp3f.ImageNewactHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
Var pt: TPoint;
begin
  inherited;
  pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageNew.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TzprojectdocBackUp3f.ImageOpActHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
    pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageOp.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TzprojectdocBackUp3f.ImageViewActHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
  pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageView.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TzprojectdocBackUp3f.Scan_Pict(Pmulti:Boolean);
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
procedure TzprojectdocBackUp3f.jq2AfterInsert(DataSet: TDataSet);
begin
  inherited;
{jq2.FieldByName('id').AsString := Japp.db.get_seq;
jq2.FieldByName('PROJID').AsString := jq.FieldByName('id').AsString;//zproject.idvalue;  //
jq2.FieldByName('ISDELETED').AsString := 'no«'; //  ZSTATUSID
jq2.FieldByName('ZSTATUSID').AsString := '1'; //}
{jq2.FieldByName('FOLDERID').AsString := jq.FieldByName('id').AsString;// }
end;

procedure TzprojectdocBackUp3f.jq2AfterScroll(DataSet: TDataSet);
begin
  inherited;
{  jq3.close;
  jq3.open;
  docjq.close;
  docjq.open;
  AmjSet1.close;
  AmjSet1.open;
  qDOCFILES.close;
  qDOCFILES.open;}
  JQFolders.close;
  JQFolders.open;
end;

procedure TzprojectdocBackUp3f.jq2BeforeDelete(DataSet: TDataSet);
var str,txt, TableNmMaster,TableNmDtl : String;
begin
  inherited;
{JQFolders.CLOSE;
JQFolders.params.paramByName('pid').AsString := jq2.FieldByName('id').AsString;
JQFolders.open;//}
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
end;

procedure TzprojectdocBackUp3f.jq2BeforeInsert(DataSet: TDataSet);
begin
  inherited;
{if (zproject.text = '') or not jq.active then abort;//}

end;

procedure TzprojectdocBackUp3f.jq2BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  jq2.Params.ParamByName('pid').asstring := jq.fieldbyname('id').asstring;
end;

procedure TzprojectdocBackUp3f.jq3AfterInsert(DataSet: TDataSet);
begin
  inherited;
  jq3.edit;
  jq3.FieldByName('id').asstring := japp.db.Get_Seq;
  jq3.FieldByName('DOCid').asstring := jq2.Fieldbyname('ID').asstring;
end;

procedure TzprojectdocBackUp3f.jq3AfterOpen(DataSet: TDataSet);
begin
  inherited;
//   Load_Doc;
end;

procedure TzprojectdocBackUp3f.jq3AfterScroll(DataSet: TDataSet);
begin
  inherited;
//   Load_Doc;
end;

procedure TzprojectdocBackUp3f.jq3BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  jq3.Params.ParamByName('Fid').asstring := JQFolders.fieldbyname('id').asstring;
  jq3.Params.ParamByName('Did').asstring := JQFolders.fieldbyname('docid').asstring;
end;

procedure TzprojectdocBackUp3f.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
///////// 05/06/2016
jq.fieldByName('id').AsString := japp.db.get_seq;
{jq.FieldByName('PROJID').AsString := zproject.idvalue;
jq.FieldByName('name').AsString := zproject.namevalue + '-' +jq.fieldByName('id').AsString;
jq.FieldByName('PRNTID').AsInteger := 0;// parent id zero by default;
///////////////}
end;

procedure TzprojectdocBackUp3f.JQAfterScroll(DataSet: TDataSet);
begin
  inherited;
jq2.close;
jq2.open;
end;

procedure TzprojectdocBackUp3f.JQBeforeDelete(DataSet: TDataSet);
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

procedure TzprojectdocBackUp3f.JQBeforeInsert(DataSet: TDataSet);
begin
  inherited;
//if zproject.text = '' then abort;
end;

procedure TzprojectdocBackUp3f.JQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
{if zproject.text <> '' then
  JQ.Params.ParamByName('pid').asstring := zproject.idvalue
    else
  JQ.Params.ParamByName('pid').asstring :='';  }
end;

procedure TzprojectdocBackUp3f.JQFoldersAfterInsert(DataSet: TDataSet);
begin
  inherited;
JQFolders.fieldByName('id').AsString := japp.db.get_seq;
JQFolders.fieldByName('PROJID').AsString :=  JQ.fieldByName('id').AsString;
JQFolders.fieldByName('docid').AsString :=  JQ2.fieldByName('id').AsString;
JQFolders.fieldByName('ISFOLDER').AsString := '0';
JQFolders.fieldByName('NAME').AsString := 'name';
JQFolders.fieldByName('path').AsString := 'path';

end;

procedure TzprojectdocBackUp3f.JQFoldersAfterScroll(DataSet: TDataSet);
begin
  inherited;
jq3.close;
jq3.open;
qDOCFILES.close;
qDOCFILES.open;
end;

procedure TzprojectdocBackUp3f.JQFoldersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
JQFolders.params.paramByName('pid').AsString := jq2.FieldByName('id').AsString;
end;

procedure TzprojectdocBackUp3f.N10Click(Sender: TObject);
begin
  inherited;
SaveAsMenuClick(sender);
end;

procedure TzprojectdocBackUp3f.N12Click(Sender: TObject);
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
        GraphicPrinter.UsePrintJob := False;

        { if UsePrintJob is False, the print job name that appears in the
          print manager must be specified in using the Title property of the
          Printer object. Otherwise, if UsePrintJob is True, the Title
          property of the TDibGraphicPrinter object is used to specify the
          job name. }
        Printer.Title := 'Envision Demo';

        Printer.BeginDoc;

        GraphicPrinter.Print(ImageScrollBox.Graphic);

        { this shows how to print text on a page.
        Printer.Canvas.TextOut(10,10, 'Envision Image Library');
        }

        Printer.EndDoc;
    end;

    procedure PrintWithAutoPrintJob;
    begin
        GraphicPrinter.UsePrintJob := True;
        GraphicPrinter.Title       := 'Envision Demo';
        GraphicPrinter.Print(ImageScrollBox.Graphic);
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

procedure TzprojectdocBackUp3f.N13Click(Sender: TObject);
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

procedure TzprojectdocBackUp3f.N15Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomPercent := ImageScrollBox.ZoomPercent - 10;
end;

procedure TzprojectdocBackUp3f.N1Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmOriginalSize;
end;

procedure TzprojectdocBackUp3f.N2Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure TzprojectdocBackUp3f.N3Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitWidth;
end;

procedure TzprojectdocBackUp3f.N4Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitHeight;
end;

procedure TzprojectdocBackUp3f.N5Click(Sender: TObject);
begin
  inherited;
if not Scanner.IsConfigured then
    begin
        ShowMessage('A scanner is not configured on your computer');
        Exit;
    end;

    Scanner.SelectScanner;
end;

procedure TzprojectdocBackUp3f.N7Click(Sender: TObject);
begin
  inherited;
Scan_Pict(false);
end;

procedure TzprojectdocBackUp3f.N8Click(Sender: TObject);
begin
  inherited;
 Scan_Pict(true);
end;

procedure TzprojectdocBackUp3f.N9Click(Sender: TObject);
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

procedure TzprojectdocBackUp3f.NewFolderHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
// japp.AppAct.PageOpenPages('TZFoldernewf','S',100);
end;

procedure TzprojectdocBackUp3f.newHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  var str :string;
  s : TMemoryStream;
  I : integer;
  JsonForm :TTemplateForm;
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

  JQMetaIdSEt.close;
  JQMetaIdSEt.params.paramByName('Pprojid').AsString := jq.FieldByName('ID').AsString;
  JQMetaIdSEt.open;
  if JQMetaIdSEt.RecordCount > 0 then
  begin
    try
      JQMetBLOB.close;
     JQMetBLOB.params.paramByName('pid').AsString := JQMetaIdSEt.FieldByName('metaid').AsString;
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

 procedure TzprojectdocBackUp3f.PrivShowHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;

Japp.AppAct.PageOpenPages('TZPrivsf', jq.FieldByName('ID').AsString, 1);

//Japp.AppAct.PageOpenPages('TZPRIVSnEW2', jq.FieldByName('ID').AsString, 1)
end;

procedure TzprojectdocBackUp3f.ProcessJson( JsonForm :TTemplateForm;txt: String);
  var str,TableName:string;  // text to be modified
//  JsonForm : TTemplateForm;
  lab : Tlabel;
//  position_s,position_E :integer;
  I,j : integer;
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
  ////// using JsonDataObject.pas
 // obj.parse(str);
 obj := TjsonObject.parse(str) as TJsonObject;
  FormObj := obj['ctrls'].items[0];    // first item is a form always.

  PropertiesObj :=FormObj['Properties'];
{ JsonForm.width := strtoint(PropertiesObj['Width']);//600;
  JsonForm.height := strtoint(PropertiesObj['Height']);//300;
  JsonForm.left := strtoint(PropertiesObj['X']);//20;
  JsonForm.top := strtoint(PropertiesObj['Y']);//20;  //}
   JsonForm.caption := PropertiesObj['Caption'];
   TableName :=  PropertiesObj['TableName'];
  with jsonform do
   begin
     detailgrid.visible := false;
     panel3.visible := false;
     panel2.visible := false;
     panel1.align := alclient;
  //   mastergrid.align := alclient;
   end;
  //JsonForm.caption := 'Just for Fun';
  // MemoOut.lines.add(inttostr(PropertiesObj['Width']));

  with JsonForm do
  begin
  ////////////// creating label
 // Label1 := TLabel.Create(Self);
 // Label1.Parent := JsonForm;
  label1.font.color := cllime;
//  lab.font.size := 14;    // it works fine but height is much clearer
  label1.font.height := 30;
  Label1.caption := PropertiesObj['Label'];
  Label1.top := 0;
  Label1.left := 0;
  label1.width := JsonForm.width;
  label1.height := 30;
  label1.color := clskyblue;
  end;
  //////////////// end opf creating label
  /// creating new data set
  for I := 0 to FormObj['ctrls'].Count - 1 do
  begin
  SubObj1 := FormObj['ctrls'].items[I];
 /// MemoOut.lines.add(SubObj1['CtrlType']);
   if ( SubObj1['CtrlType'] = 'singlelinetext' )or (SubObj1['CtrlType'] = 'date' )
   OR (SubObj1['CtrlType'] = 'number' ) then
   begin

 //  SingleLabel := TLabel.Create(Self);
 //  SingleLabel.Parent := JsonForm;
   PropertiesObj := SubObj1['Properties'];
 //  SingleLabel.caption := PropertiesObj['Label'];
 //  if PropertiesObj['X'] <> '' then SingleLabel.top :=trunc(strtofloat(PropertiesObj['X']));
//   if PropertiesObj['Y'] <> '' then SingleLabel.Left :=trunc(strtofloat(PropertiesObj['Y']));
 //  if PropertiesObj['Color'] <> '' then SingleLabel.font.color := StringTocolor('cl' + PropertiesObj['Color']);

  // DataSet1 := TamjSet.Create(Self);
//   DataSet1.Owner := JsonForm; can not assigne a read only propertie



  with JsonForm do
  begin
   MasterSet.AmjTblname := TableName;
   MasterSet.AmjUser := jq.AmjUser;
   MasterSet.CommandText := 'select * from ' + MasterSet.AmjUser;
   MasterSet.CommandText := MasterSet.CommandText + '.' + MasterSet.AmjTblname;
   MasterSet.commandText := MasterSet.CommandText + ' ' + 'where id = :Pid';


{     student := TStudent.Create;
  student.Name := Edit1.Text;
  SetLength(FArrStudent, Length(FArrStudent)+1);
  FArrStudent[ High(FArrStudent) ] := student; //}

   case I of
   0:
    begin
    LABELNEW := TLabel.Create(Self);
    SETLENGTH(TLABELARR,LENGTH(TLABELARR) + 1);
    TLABELARR[HIGH(TLABELARR)] := LABELNEW;
   TLABELARR[HIGH(TLABELARR)].Parent := PANEL1;
   TLABELARR[HIGH(TLABELARR)].caption := PropertiesObj['Label'];
   STRTEST:=  TLABELARR[HIGH(TLABELARR)].caption;
   if PropertiesObj['X'] <> '' then TLABELARR[HIGH(TLABELARR)].top :=trunc(strtofloat(PropertiesObj['X']));
   if PropertiesObj['Y'] <> '' then TLABELARR[HIGH(TLABELARR)].Left :=trunc(strtofloat(PropertiesObj['Y']));
{   if PropertiesObj['Color'] <> '' then} TLABELARR[HIGH(TLABELARR)].font.color :=clWindowText;//.font.color := StringTocolor('cl' + PropertiesObj['Color']);
    TLABELARR[HIGH(TLABELARR)].Left:= PANEL1.Left+300;
   TLABELARR[HIGH(TLABELARR)].Top:= PANEL1.Top +100 ;
{  label2 := TLabel.Create(Self);
   label2.Parent := PANEL1;
   label2.caption := PropertiesObj['Label'];
   STRTEST:=  label2.caption;
   if PropertiesObj['X'] <> '' then label2.top :=trunc(strtofloat(PropertiesObj['X']));
   if PropertiesObj['Y'] <> '' then label2.Left :=trunc(strtofloat(PropertiesObj['Y']));
{   if PropertiesObj['Color'] <> '' then} {label2.font.color :=clWindowText;//.font.color := StringTocolor('cl' + PropertiesObj['Color']);
    label2.Left:= PANEL1.Left+300;
   label2.Top:= PANEL1.Top +100 ;  //}



   DBNEW := TDBEDIT.CREATE(SELF);
    SETLENGTH(DBEDITARR,LENGTH(DBEDITARR)+1);
    DBEDITARR[HIGH(DBEDITARR)] := DBNEW;
    DBEDITARR[HIGH(DBEDITARR)].Parent := PANEL1;
   DBEDITARR[HIGH(DBEDITARR)].BidiMode := bdRightToLeft;
   DBEDITARR[HIGH(DBEDITARR)].ReadOnly := false;
   DBEDITARR[HIGH(DBEDITARR)].DataField := PropertiesObj['BindTo'];
   DBEDITARR[HIGH(DBEDITARR)].Left :=  TLABELARR[HIGH(TLABELARR)].Left - 30 - DBEDITARR[HIGH(DBEDITARR)].width;
   DBEDITARR[HIGH(DBEDITARR)].Top :=  TLABELARR[HIGH(TLABELARR)].Top;
   DBEDITARR[HIGH(DBEDITARR)].DATASOURCE := MasterDQ;
   DBEDITARR[HIGH(DBEDITARR)].VISIBLE := TRUE; //}


   {DBEdit1.Parent := PANEL1;
   DBEdit1.BidiMode := bdRightToLeft;
   DBEdit1.ReadOnly := false;
   DBEdit1.DataField := PropertiesObj['BindTo'];
   DBEdit1.LEFT :=  label2.Left - 10 - DBEdit1.width;
   DBEdit1.Top :=  label2.Top;//}

    end;
   {1:}
   ELSE
    begin
    LABELNEW := TLabel.Create(Self);
    SETLENGTH(TLABELARR,LENGTH(TLABELARR) + 1);
    TLABELARR[HIGH(TLABELARR)] := LABELNEW;
   TLABELARR[HIGH(TLABELARR)].Parent := PANEL1;
   TLABELARR[HIGH(TLABELARR)].caption := PropertiesObj['Label'];
   STRTEST:=  TLABELARR[HIGH(TLABELARR)].caption;
   if PropertiesObj['X'] <> '' then TLABELARR[HIGH(TLABELARR)].top :=trunc(strtofloat(PropertiesObj['X']));
   if PropertiesObj['Y'] <> '' then TLABELARR[HIGH(TLABELARR)].Left :=trunc(strtofloat(PropertiesObj['Y']));
{   if PropertiesObj['Color'] <> '' then} TLABELARR[HIGH(TLABELARR)].font.color :=clWindowText;//.font.color := StringTocolor('cl' + PropertiesObj['Color']);
   TLABELARR[HIGH(TLABELARR)].Left:= TLABELARR[HIGH(TLABELARR)-1].Left;
   TLABELARR[HIGH(TLABELARR)].Top:= TLABELARR[HIGH(TLABELARR)-1].Top+60;


  { labeL12 := TLabel.Create(Self);
   labeL12.Parent := PANEL1;
   labeL12.caption := PropertiesObj['Label'];
   STRTEST:=  label12.caption;
   if PropertiesObj['X'] <> '' then labeL12.top :=trunc(strtofloat(PropertiesObj['X']));
   if PropertiesObj['Y'] <> '' then labeL12.Left :=trunc(strtofloat(PropertiesObj['Y']));
{   if PropertiesObj['Color'] <> '' then} {labeL12.font.color :=clWindowText;//.font.color := StringTocolor('cl' + PropertiesObj['Color']);
  { label12.Left:= label2.Left;
   label12.Top:= label2.Top+60; //}

    DBNEW := TDBEDIT.CREATE(SELF);
    SETLENGTH(DBEDITARR,LENGTH(DBEDITARR)+1);
    DBEDITARR[HIGH(DBEDITARR)] := DBNEW;
    DBEDITARR[HIGH(DBEDITARR)].Parent := PANEL1;
   DBEDITARR[HIGH(DBEDITARR)].BidiMode := bdRightToLeft;
   DBEDITARR[HIGH(DBEDITARR)].ReadOnly := false;
   DBEDITARR[HIGH(DBEDITARR)].DataField := PropertiesObj['BindTo'];
   DBEDITARR[HIGH(DBEDITARR)].Left :=  TLABELARR[HIGH(TLABELARR)].Left - 30 - DBEDITARR[HIGH(DBEDITARR)].width;
   DBEDITARR[HIGH(DBEDITARR)].Top :=  TLABELARR[HIGH(TLABELARR)].Top;
   DBEDITARR[HIGH(DBEDITARR)].DATASOURCE := MasterDQ;
   DBEDITARR[HIGH(DBEDITARR)].VISIBLE := TRUE; //}



  {DBEdit2 := TDBEdit.Create(SELF);
   DBEdit2.Parent := PANEL1;
   DBEdit2.BidiMode := bdRightToLeft;
   DBEdit2.ReadOnly := false;
   DBEdit2.DataField := PropertiesObj['BindTo'];
   DBEdit2.Left :=  labeL12.Left - 30 - DBEdit2.width;
   DBEdit2.Top :=  labeL12.Top;
   DBEdit2.DATASOURCE := MasterDQ;
   DBEdit2.VISIBLE := TRUE; //}
    end;
   {2:
    begin
   labeL13 := TLabel.Create(Self);
   labeL13.Parent := PANEL1;
   labeL13.caption := PropertiesObj['Label'];
        STRTEST:=  label13.caption;
   if PropertiesObj['X'] <> '' then labeL13.top :=trunc(strtofloat(PropertiesObj['X']));
   if PropertiesObj['Y'] <> '' then labeL13.Left :=trunc(strtofloat(PropertiesObj['Y']));
{   if PropertiesObj['Color'] <> '' then} {labeL13.font.color :=clWindowText;// StringTocolor('cl' + PropertiesObj['Color']);
 {  label13.Left:= label12.Left;
   label13.Top:= label12.Top+60;
   DBEdit3 := TDBEdit.Create(Self);
   DBEdit3.Parent := PANEL1;
   DBEdit3.BidiMode := bdRightToLeft;
   DBEdit3.ReadOnly := false;
   DBEdit3.DataField := PropertiesObj['BindTo'];
   DBEdit3.DATASOURCE := MasterDQ;
   DBEdit3.Left :=  labeL13.Left - 30- DBEdit3.width;
   DBEdit3.Top :=  labeL13.Top;//}
 {  DBEdit3.VISIBLE := TRUE;
    end;
   3:
    begin
   labeL14 := TLabel.Create(Self);
   labeL14.Parent := PANEL1;
   labeL14.caption := PropertiesObj['Label'];
    STRTEST:=  label14.caption;
   if PropertiesObj['X'] <> '' then labeL14.top :=trunc(strtofloat(PropertiesObj['X']));
   if PropertiesObj['Y'] <> '' then labeL14.Left :=trunc(strtofloat(PropertiesObj['Y']));
{   if PropertiesObj['Color'] <> '' then} {labeL14.font.color :=clWindowText;//.font.color := StringTocolor('cl' + PropertiesObj['Color']);

{   label4.Left:= label2.Left;
   label4.Top:= labeL13.Top +60 ;
    DBEdit4 := TDBEdit.Create(Self);
    DBEdit4.Parent := PANEL1;
   DBEdit4.BidiMode := bdRightToLeft;
   DBEdit4.ReadOnly := false;
   DBEdit4.DataField := PropertiesObj['BindTo'];
   DBEdit4.DATASOURCE := MasterDQ;
    DBEdit4.Left :=   labeL14.Left - 30 - DBEdit4.width;;
  DBEdit4.Top :=   labeL14.Top;
   DBEdit4.VISIBLE := TRUE;
    end; //}
   end;





   MasterSet.close;
   MasterSet.open;//}
  // NameAndWidthColumn(mastergrid,PropertiesObj['BindTo'],PropertiesObj['Label'],75)

//}
   end;
    end;

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


  function TzprojectdocBackUp3f.GetJsonStr(var txt :string): boolean;
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

  procedure TzprojectdocBackUp3f.ProcessJsonNm( JsonForm :TTemplateForm;txt: String);
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

  procedure TzprojectdocBackUp3f.ProcessJsonToDelete( txt: String; var TableNmMaster,TablenameDtl: string);
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






procedure TzprojectdocBackUp3f.qDOCFILESAfterInsert(DataSet: TDataSet);
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

procedure TzprojectdocBackUp3f.qDOCFILESAfterOpen(DataSet: TDataSet);
begin
  inherited;
Load_Doc;
end;

procedure TzprojectdocBackUp3f.qDOCFILESAfterScroll(DataSet: TDataSet);
begin
  inherited;
   Load_Doc;
end;

procedure TzprojectdocBackUp3f.qDOCFILESBeforeOpen(DataSet: TDataSet);
begin
  inherited;
qDOCFILES.Params.ParamByName('Fid').asstring := JQFolders.fieldbyname('id').asstring;
qDOCFILES.Params.ParamByName('Did').asstring := JQFolders.fieldbyname('docid').asstring;
end;

procedure TzprojectdocBackUp3f.AddPictAction2Handle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
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
        end;
    finally
        OpenDialog.Free;
    end;
    ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure TzprojectdocBackUp3f.AddSunHandle(Sender: TObject; var IsFailed: Boolean;
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

procedure TzprojectdocBackUp3f.AmjSet1BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  AmjSet1.Params.ParamByName('pid').asstring := jq2.fieldbyname('id').asstring;
end;

procedure TzprojectdocBackUp3f.CheckDirty;
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



procedure TzprojectdocBackUp3f.NameAndWidthColumn(dbgrid:tjazdbgrid;fieldn,newname:string;widthn:integer);
  var i:integer;
begin
  for i:=0 to DBGrid.Columns.Count-1 do
  if DBGrid.Columns.Items[i].FieldName=fieldn then
      begin
  DBGrid.Columns.Items[i].Title.Caption:=newname;
  DBGrid.Columns.Items[i].Width:=widthn;
      end;
end;

{and call it as

NameAndWidthColumn('Country','Name of countries',200);
  //}



end.
