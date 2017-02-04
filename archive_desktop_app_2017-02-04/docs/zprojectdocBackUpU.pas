unit zprojectdocBackUpU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JPmainU, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, ComCtrls, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls,
  AmjSetU, RzPanel, AmjStandardU, AmjLookUpU, AmjactionsU, VirtualTrees,
  wordxp, AmjTreeU, RzTabs, DBGridEhGrouping, GridsEh, DBGridEh, JazDBGrid,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, EnImgScr,
  Grids, DBGrids, JPG1U,
  EnPrinter,       { for TEnvisionPrinter }
    EnScan,          { for Scanner }
    EnBlowupForm,    { for TBlowupForm }
    EnOverviewForm,  { for TOverviewForm }
    EnOcrEng,        { for TOcrEngine, TOcrDriver }
    EnDiGrph        { for TDibGraphic };

type
  TzprojectdocBackUpf = class(TJPmain)
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
  private
    { Private declarations }
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
    procedure OnAcquire( const DibHandle    : THandle;
                               const XDpi         : Word;
                               const YDpi         : Word;
                               const CallBackData : LongInt );
    procedure ZoomEditChange(Sender: TObject);
    procedure LoadFile( const FileName : String );
    procedure saveToDB(pNew:Boolean);
    procedure SaveMenuClick(Sender: TObject);
    procedure SaveAsMenuClick(Sender: TObject);
    procedure OnProgress( const Sender          : TObject;
                                const PercentProgress : Byte );
     procedure Load_Doc;
      procedure ProcessJson(txt: String);
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

    ,uLkJSON, TemplateUnit;// in 'uLkJSON.pas';


{$R *.dfm}

procedure TzprojectdocBackUpf.d1Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomPercent := ImageScrollBox.ZoomPercent + 10;
end;
procedure TzprojectdocBackUpf.docjqAfterInsert(DataSet: TDataSet);
begin
  inherited;
docjq.fieldbyname('id').asstring := qDOCFILES.fieldbyname('id').asstring;//20/02/2016
docjq.fieldbyname('DOCid').asstring :=jq2.Fieldbyname('ID').asstring;// 20/02/2016
end;

procedure TzprojectdocBackUpf.docjqBeforeOpen(DataSet: TDataSet);
begin
  inherited;
docjq.Params.ParamByName('pid').asstring := jq2.fieldbyname('id').asstring;// we need doc id  it was jq.fieldbyname('id').asstring;  12/02/2016
end;

procedure TzprojectdocBackUpf.EditFolderHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
begin
  inherited;
Japp.AppAct.PageOpenPages('TZFoldernewf', jq.FieldByName('ID').AsString, 100)
end;

procedure TzprojectdocBackUpf.editHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
Japp.AppAct.PageOpenPages('TDocsfilenewF', jq2.FieldByName('ID').AsString, 100)
end;

procedure TzprojectdocBackUpf.Load_Doc;
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
procedure TzprojectdocBackUpf.OnProgress( const Sender          : TObject;
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
procedure TzprojectdocBackUpf.SaveAsMenuClick(Sender: TObject);
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
procedure TzprojectdocBackUpf.SaveMenuClick(Sender: TObject);
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
procedure TzprojectdocBackUpf.saveToDB(pNew:Boolean);
var
    FromStream: TStream;
    jadoset : TADODataSet;
begin
    try
      is_inserting := true;
      if pNew then begin
        qDOCFILES.open;
        qDOCFILES.Insert;
        qDOCFILES.fieldByName('NOTE').AsString :=  qDOCFILES.fieldByName('ID').AsString;// JUST TO WRITE SOMETHING
        qDOCFILES.post;
      end;
      FromStream := TMemoryStream.Create();
      ImageScrollBox.SaveToStream(FromStream, 'JPG');

      jadoset := TADODataSet.Create(self);
      jadoset.Connection := jq.AmjServerDB;
      jadoset.CommandText := 'select * from jfiles.DOCFILES where id = ' + qDOCFILES.fieldbyname('id').asstring;
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
procedure TzprojectdocBackUpf.LoadFile( const FileName : String );
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

procedure TzprojectdocBackUpf.ZoomEditChange(Sender: TObject);
begin
    try
        ImageScrollBox.ZoomPercent := 100; //StrToInt(ZoomEdit.Text);
    except
        { trap exception in StrToIn }
        ImageScrollBox.ZoomPercent := 100;
    end;
end;
procedure TzprojectdocBackUpf.zprojectFind(Sender: TObject; ID: string);
begin
  inherited;
jq.close;
jq.open;
end;

procedure TzprojectdocBackUpf.OnAcquire( const DibHandle    : THandle;
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
Procedure TzprojectdocBackUpf.FInit;
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
procedure TzprojectdocBackUpf.ImageNewactHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
Var pt: TPoint;
begin
  inherited;
    pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageNew.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TzprojectdocBackUpf.ImageOpActHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
    pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageOp.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TzprojectdocBackUpf.ImageViewActHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
  pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageView.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TzprojectdocBackUpf.Scan_Pict(Pmulti:Boolean);
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
procedure TzprojectdocBackUpf.jq2AfterInsert(DataSet: TDataSet);
begin
  inherited;
{jq2.FieldByName('id').AsString := Japp.db.get_seq;
jq2.FieldByName('ZPROJID').AsString := zproject.idvalue;  //
jq2.FieldByName('FOLDERID').AsString := jq.FieldByName('id').AsString;//
jq2.FieldByName('ISDELETED').AsString := '·«'; //
jq2.FieldByName('ZSTATUSID').AsString := '1'; //}
end;

procedure TzprojectdocBackUpf.jq2AfterScroll(DataSet: TDataSet);
begin
  inherited;
  jq3.close;
  jq3.open;
  docjq.close;
  docjq.open;
  AmjSet1.close;
  AmjSet1.open;
  qDOCFILES.close;
  qDOCFILES.open;
end;

procedure TzprojectdocBackUpf.jq2BeforeInsert(DataSet: TDataSet);
begin
  inherited;
{if (zproject.text = '') or not jq.active then abort;//}

end;

procedure TzprojectdocBackUpf.jq2BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  jq2.Params.ParamByName('pid').asstring := jq.fieldbyname('id').asstring;
end;

procedure TzprojectdocBackUpf.jq3BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  jq3.Params.ParamByName('pid').asstring := jq2.fieldbyname('id').asstring;
end;

procedure TzprojectdocBackUpf.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
///////// 05/06/2016
{jq.fieldByName('id').AsString := japp.db.get_seq;
jq.FieldByName('PROJID').AsString := zproject.idvalue;
jq.FieldByName('name').AsString := zproject.namevalue + '-' +jq.fieldByName('id').AsString;
jq.FieldByName('PRNTID').AsInteger := 0;// parent id zero by default;
///////////////}
end;

procedure TzprojectdocBackUpf.JQAfterScroll(DataSet: TDataSet);
begin
  inherited;
jq2.close;
jq2.open;
end;

procedure TzprojectdocBackUpf.JQBeforeInsert(DataSet: TDataSet);
begin
  inherited;
if zproject.text = '' then abort;
end;

procedure TzprojectdocBackUpf.JQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
{if zproject.text <> '' then
  JQ.Params.ParamByName('pid').asstring := zproject.idvalue
    else
  JQ.Params.ParamByName('pid').asstring :='';  }
end;

procedure TzprojectdocBackUpf.N10Click(Sender: TObject);
begin
  inherited;
SaveAsMenuClick(sender);
end;

procedure TzprojectdocBackUpf.N12Click(Sender: TObject);
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

procedure TzprojectdocBackUpf.N13Click(Sender: TObject);
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

procedure TzprojectdocBackUpf.N15Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomPercent := ImageScrollBox.ZoomPercent - 10;
end;

procedure TzprojectdocBackUpf.N1Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmOriginalSize;
end;

procedure TzprojectdocBackUpf.N2Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure TzprojectdocBackUpf.N3Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitWidth;
end;

procedure TzprojectdocBackUpf.N4Click(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitHeight;
end;

procedure TzprojectdocBackUpf.N5Click(Sender: TObject);
begin
  inherited;
if not Scanner.IsConfigured then
    begin
        ShowMessage('A scanner is not configured on your computer');
        Exit;
    end;

    Scanner.SelectScanner;
end;

procedure TzprojectdocBackUpf.N7Click(Sender: TObject);
begin
  inherited;
Scan_Pict(false);
end;

procedure TzprojectdocBackUpf.N8Click(Sender: TObject);
begin
  inherited;
 Scan_Pict(true);
end;

procedure TzprojectdocBackUpf.N9Click(Sender: TObject);
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
            docjq.close;               //20/02/2016
            docjq.open;
            docjq.insert;
            docjq.fieldByName('PROJID').AsString := jq2.fieldByName('ZPROJID').AsString;;
            docjq.fieldByName('NOTE').AsString := docjq.fieldByName('ID').AsString;// JUST TO WRITE SOME NOTE
            S1 := ExtractFileExt(OpenDialog.filename);
            s2 := extractfilename(OpenDialog.filename);
            s3 := OpenDialog.filename;
            delete(s3,length(s3)-length(s2),length(s2)+1);  // delete also the '/'
            docjq.fieldByName('filelink').AsString := s3;
            delete(s2,length(s2)-length(s1)+1 ,length(s1));
            docjq.fieldByName('FILENAME').AsString :=s2;
            delete(s1,1,1);
            docjq.fieldByName('FILEFORMAT').AsString :=s1;   //length(s1)
            docjq.post ;
            docjq.close;
            docjq.open;
            qDOCFILES.close;
            qDOCFILES.open;
        end;
    finally
        OpenDialog.Free;
    end;
    ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure TzprojectdocBackUpf.NewFolderHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
 japp.AppAct.PageOpenPages('TZFoldernewf','S',100);
end;

procedure TzprojectdocBackUpf.newHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  var str :string;
  s : TMemoryStream;
  I : integer;
  //    var TemplateForm: TTemplateForm;
begin
      inherited;
{jq2.close;
jq2.open;
jq2.insert;
jq2.post; //}  // jq2.FieldByName('id').AsString or 's'

 {  TemplateForm := TTemplateForm.create(self);
  TemplateForm.showmodal;
  TemplateForm.free;//}
 { str := ' declare  P_RESULT SYS_REFCURSOR;' ;
  str := str + ' P_metadid jdms.T_METADATA.id%TYPE;';
  str := str + ' P_minlvl integer;';
  str := str + ' begin';
  str := str + ' jdms.ARCH_FRM_GEN.getMetaDataID(' + '''';
  str := str +  jq.FieldByName('ID').AsString + '''';
  str := str + ', P_RESULT );';
  str := str + ' fetch  P_RESULT into P_metadid, P_minlvl;';
  str := str + ' end;';
  japp.db.runsql(str);//}

//Japp.AppAct.PageOpenPages('TDocsfilenewF','S', 100) ;
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
    ProcessJson(str);
//    obj := TJsonobject.parse(str);

      end
    finally

    end;
  {TemplateForm := TTemplateForm.create(self);
  TemplateForm.showmodal;
  TemplateForm.free;//}
  end;


end;

 procedure TzprojectdocBackUpf.ProcessJson(txt: String);
  var str,TableName:string;  // text to be modified
  JsonForm : TTemplateForm;
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



//  MemoOut.lines.add(inttostr(obj['ctrls'].count));
  FormObj := obj['ctrls'].items[0];    // first item is a form always.
 // MemoOut.lines.add(FormObj['CtrlType']);


// TemplateForm := TTemplateForm.create(self);
  JsonForm := TTemplateForm.create(self);

  ///  end of  using JsonDataObject.pas

 // JsonForm := Tform.create(self);
//  SetFormProperties(JsonForm,str_propt);

  PropertiesObj :=FormObj['Properties'];
 JsonForm.width := strtoint(PropertiesObj['Width']);//600;
  JsonForm.height := strtoint(PropertiesObj['Height']);//300;
  JsonForm.left := strtoint(PropertiesObj['X']);//20;
  JsonForm.top := strtoint(PropertiesObj['Y']);//20;
   JsonForm.caption := PropertiesObj['Caption'];
   TableName :=  PropertiesObj['TableName'];
  //JsonForm.caption := 'Just for Fun';
  // MemoOut.lines.add(inttostr(PropertiesObj['Width']));


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
   DataSet1.CommandText := DataSet1.CommandText + ' where ' + DataSet1.AmjTblname + '.id =';
   DataSet1.CommandText := DataSet1.CommandText + jq2.FieldByName('id').AsString;
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
   PropertiesObj := SubObj1['Properties'];
   DetailGrid := TjazDBGrid.Create(Self);
   DetailGrid.Parent := JsonForm;

   GridDataSet := TdataSet.create(Self);
   GridSource := TdataSource.create(Self);
   GridSource.dataSet := GridDataSet;

   DetailGrid.Left := trunc(strtofloat(PropertiesObj['X']));
   DetailGrid.Top := trunc(strtofloat(PropertiesObj['Y']));
   DetailGrid.Width := strtoint(PropertiesObj['Width']);
   DetailGrid.height := strtoint(PropertiesObj['Height']);
//}

   end;
  end;
  ///
  JsonForm.showmodal;
//  PropertiesObj.free;  Obj.free; FormObj.free;

  Jsonform.free;

  end;



procedure TzprojectdocBackUpf.qDOCFILESAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qDOCFILES.edit;
qDOCFILES.FieldByName('id').asstring := japp.db.Get_Seq;
  qDOCFILES.FieldByName('DOCid').asstring := jq2.Fieldbyname('ID').asstring;
end;

procedure TzprojectdocBackUpf.qDOCFILESAfterOpen(DataSet: TDataSet);
begin
  inherited;
Load_Doc;
end;

procedure TzprojectdocBackUpf.qDOCFILESAfterScroll(DataSet: TDataSet);
begin
  inherited;
   Load_Doc;
end;

procedure TzprojectdocBackUpf.qDOCFILESBeforeOpen(DataSet: TDataSet);
begin
  inherited;
qDOCFILES.Params.ParamByName('pid').asstring := jq2.fieldbyname('id').asstring;//docjq.fieldbyname('id').asstring; 12/02/2016
end;

procedure TzprojectdocBackUpf.AmjSet1BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  AmjSet1.Params.ParamByName('pid').asstring := jq2.fieldbyname('id').asstring;
end;

procedure TzprojectdocBackUpf.CheckDirty;
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
end.
