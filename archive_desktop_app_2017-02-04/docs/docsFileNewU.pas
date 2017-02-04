unit docsFileNewU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JPG1U, ImgList, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  Menus, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls, jazDBGrid, GridsEh,
  DBGridEh, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU, Mask, AmjactionsU,
  EnImgScr,
    EnPrinter,       { for TEnvisionPrinter }
    EnScan,          { for Scanner }
    EnBlowupForm,    { for TBlowupForm }
    EnOverviewForm,  { for TOverviewForm }
    EnOcrEng,        { for TOcrEngine, TOcrDriver }
    EnDiGrph,        { for TDibGraphic }
     ComCtrls, ToolCtrlsEh, EhLibVCL,
   JPMainU, RzSplit, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, DBCtrls,
  AmjLookUpU        { for TImageScrollBox };

type
  TDocsfilenewF = class(TJPmain)
    JPanel1: TJPanel;
    JPanel2: TJPanel;
    Image1: TImage;
    ImageView: TPopupMenu;
    OpenDialog1: TOpenDialog;
    dq2: TDataSource;
    jq2: TAmjSet;
    ProgressBar: TProgressBar;
    AmjActionList1: TAmjActionList;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    JGrid2: TJazDBGrid;
    ImageScrollBox: TImageScrollBox;
    Panel1: TPanel;
    AmjSplitter1: TAmjSplitter;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ImageOp: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem8: TMenuItem;
    nav: TAmjAction;
    ImgNew: TPopupMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    d1: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    ImgScan: TAmjAction;
    ImgOps: TAmjAction;
    ImgView: TAmjAction;
    AmjAction1: TAmjAction;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    DBEdit6: TDBEdit;
    ZPROJID: TDMZEditFind;
    DBMemo1: TDBMemo;
    DBEdit3: TDBEdit;
    ZSRCID: TDMZEditFind;
    DBEdit1: TDBEdit;
    ZSECRETID: TDMZEditFind;
    FOLDERID: TDMZEditFind;
    ZSTATUSID: TDMZEditFind;
    ZTMPLTID: TDMZEditFind;
    docjq: TAmjSet;
    docdq: TDataSource;
    docactions: TAmjActionList;
    AmjAction2: TAmjAction;
    AmjAction3: TAmjAction;
    AmjAction4: TAmjAction;
    AmjAction5: TAmjAction;
    JazDBGrid2: TJazDBGrid;
    Panel3: TPanel;
    procedure jq2BeforeOpen(DataSet: TDataSet);

    procedure jq2AfterScroll(DataSet: TDataSet);
    procedure jq2AfterOpen(DataSet: TDataSet);
    procedure jq2AfterInsert(DataSet: TDataSet);
    procedure JQAfterScroll(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure d1Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure ImgScanHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ImgOpsHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ImgViewHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ZPROJIDFind(Sender: TObject; ID: string);
    procedure ZSTATUSIDFind(Sender: TObject; ID: string);
    procedure ZSRCIDFind(Sender: TObject; ID: string);
    procedure FOLDERIDFind(Sender: TObject; ID: string);
    procedure ZSECRETIDFind(Sender: TObject; ID: string);
    procedure ZTMPLTIDFind(Sender: TObject; ID: string);
    procedure docjqAfterInsert(DataSet: TDataSet);
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure JQBeforeOpen(DataSet: TDataSet);
    procedure JQBeforeInsert(DataSet: TDataSet);
    procedure jq2BeforeInsert(DataSet: TDataSet);
    procedure JazDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    Clicked,jqinserting :boolean;
  public
    { Public declarations }
    FDirty             : Boolean;
    FFileName          : String;
    FMultiPageFileName : String;
    FUndoGraphic       : TDibGraphic;
    FBlowupForm        : TBlowupForm;
    FOverviewForm      : TOverviewForm;
    is_inserting : boolean;

    Procedure FInitCard(pMaster:string=''); override;
    procedure CheckDirty;
    procedure Scan_Pict(Pmulti:Boolean);
    procedure OnAcquire( const DibHandle    : THandle;
                               const XDpi         : Word;
                               const YDpi         : Word;
                               const CallBackData : LongInt );
    procedure ZoomEditChange(Sender: TObject);
    procedure LoadFile( const FileName : String );
    procedure SaveMenuClick(Sender: TObject);
    procedure SaveAsMenuClick(Sender: TObject);
    procedure OnProgress( const Sender          : TObject;
                                const PercentProgress : Byte );

    procedure Load_Doc;
    procedure saveToDB(pNew:Boolean);
    { procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);  }
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

implementation

uses JAppMainU,  AmjBtnU,

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
    EnReg;    { for image format registration }

{$R *.dfm}

procedure TDocsfilenewF.Load_Doc;
var
    s: TMemoryStream;
begin
  if not is_inserting then
    try
      s := TMemoryStream (jq2.CreateBlobStream(jq2.FIELDBYNAME('FDATA'), bmRead));
      if s.Size >= 0 then begin
        ImageScrollBox.LoadFromStream(s, 'JPG', 1);
      end;
    finally
    end;
end;

procedure TDocsfilenewF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  SaveAsMenuClick(sender);
end;

procedure TDocsfilenewF.MenuItem6Click(Sender: TObject);
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

procedure TDocsfilenewF.N10Click(Sender: TObject);
begin
  inherited;
  if not Scanner.IsConfigured then
    begin
        ShowMessage('������ ������ ��� ���� ��� ������');
        Exit;
    end;

    Scanner.SelectScanner;
end;

procedure TDocsfilenewF.N12Click(Sender: TObject);
begin
  inherited;
  Scan_Pict(false);       // not multipages
end;

procedure TDocsfilenewF.N14Click(Sender: TObject);
  var
    OpenDialog   : TOpenPictureDialog;
    S1,s2,s3:STRING;
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
            jq.close;               //15/02/2016
            jq.open;
            jq.insert;
            jq.fieldByName('PROJID').AsString := ZPROJID.idvalue;
            jq.fieldByName('NOTE').AsString := jq.fieldByName('ID').AsString;// JUST TO WRITE SOME NOTE
            S1 := ExtractFileExt(OpenDialog.filename);
            s2 := extractfilename(OpenDialog.filename);
            s3 := OpenDialog.filename;
            delete(s3,length(s3)-length(s2),length(s2)+1);  // delete also the '/'
            jq.fieldByName('filelink').AsString := s3;
            delete(s2,length(s2)-length(s1)+1 ,length(s1));
            jq.fieldByName('FILENAME').AsString :=s2;
            delete(s1,1,1);
            jq.fieldByName('FILEFORMAT').AsString :=s1;   //length(s1)
            jq.post ;
            jq.close;
            jq.open;
            jq2.close;
            jq2.open;
        end;
    finally
        OpenDialog.Free;
    end;
    ImageScrollBox.ZoomMode := zmFullPage;

end;

procedure TDocsfilenewF.N1Click(Sender: TObject);
begin
  inherited;
  ImageScrollBox.ZoomMode := zmOriginalSize;
end;

procedure TDocsfilenewF.N2Click(Sender: TObject);
begin
  inherited;
  ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure TDocsfilenewF.N3Click(Sender: TObject);
begin
  inherited;
  ImageScrollBox.ZoomMode := zmFitWidth;
end;

procedure TDocsfilenewF.N4Click(Sender: TObject);
begin
  inherited;
  ImageScrollBox.ZoomMode := zmFitHeight;
end;

procedure TDocsfilenewF.N6Click(Sender: TObject);
begin
  inherited;
 ImageScrollBox.ZoomPercent := ImageScrollBox.ZoomPercent + 10;
end;

procedure TDocsfilenewF.N7Click(Sender: TObject);
begin
  inherited;
  ImageScrollBox.ZoomPercent := ImageScrollBox.ZoomPercent - 10;
end;

procedure TDocsfilenewF.N9Click(Sender: TObject);
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

    FDirty := True;
    ImageScrollBox.Redraw(True);
    saveToDB(false);
end;

procedure TDocsfilenewF.d1Click(Sender: TObject);
begin
  inherited;
  Scan_Pict(true);
end;

procedure TDocsfilenewF.docjqAfterInsert(DataSet: TDataSet);
begin
  inherited;
docjq.FieldByName('ID').AsString := Japp.DB.Get_maxSeq('jedms.DOC');
  docjq.FieldByName('VIEWCO').AsString := '0';
 // docjq.FieldByName('DOWNLOADCO').AsString := '0';
  docjq.FieldByName('ISDELETED').AsString := '��';
  docjq.FieldByName('ISACTIVE').AsString := '��';
end;

Procedure TDocsfilenewF.FInitCard(pMaster:string='');
begin
  //FUndoGraphic := TDibGraphic.Create;
  JqAutoActivate := true;
  docjq.Close ;
  Clicked := false;
  jqinserting := false;

  IF pMaster <> 'S' THEN BEGIN
     docjq.Params.ParamByName('pID').AsString := pMaster ;
     docjq.Open;
     jq.Params.ParamByName('pID').AsString := pMaster ; // 14/02/2016
     jq.Open;                               // 14/02/2016
     PCaption := '����� �����';

     ZPROJID.Text:=docjq.FieldByName('ZPROJID').AsString;
     ZPROJID.DoSearch(TRUE);

     ZSTATUSID.Text:=docjq.FieldByName('ZSTATUSID').AsString;
     ZSTATUSID.DoSearch(TRUE);

     ZSRCID.Text:=docjq.FieldByName('ZSRCID').AsString;
     ZSRCID.DoSearch(TRUE);

     FOLDERID.Text:=docjq.FieldByName('FOLDERID').AsString;
     FOLDERID.DoSearch(TRUE);


     ZSECRETID.Text:=docjq.FieldByName('ZSECRETID').AsString;
     ZSECRETID.DoSearch(TRUE);

     ZTMPLTID.Text:=docjq.FieldByName('ZTMPLTID').AsString;
     ZTMPLTID.DoSearch(TRUE);

  END ELSE begin
    docjq.Open;
    docjq.insert;

    PCaption := '����� �����';


  end;

jq.close;
jq.open;
jq2.close;
jq2.open;
  JRActions.sqlstr:=jq.commandtext;
  AmjActionList1.sqlstr:=jq2.commandtext;
  docactions.sqlstr:=docjq.commandtext;
end;

procedure TDocsfilenewF.FOLDERIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (FOLDERID.IDValue <> '') and (docjq.FieldByName('FOLDERID').AsString <> FOLDERID.IDValue) then begin
     docjq.EDIT;
     docjq.FieldByName('FOLDERID').AsString := FOLDERID.IDValue;
   end;
end;

procedure TDocsfilenewF.OnProgress( const Sender          : TObject;
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

procedure TDocsfilenewF.ZoomEditChange(Sender: TObject);
begin
    try
        ImageScrollBox.ZoomPercent := 100; //StrToInt(ZoomEdit.Text);
    except
        { trap exception in StrToIn }
        ImageScrollBox.ZoomPercent := 100;
    end;
end;
procedure TDocsfilenewF.ZPROJIDFind(Sender: TObject; ID: string);
begin
  inherited;
 if (ZPROJID.IDValue <> '') and (docjq.FieldByName('ZPROJID').AsString <> ZPROJID.IDValue) then begin
     docjq.EDIT;
     docjq.FieldByName('ZPROJID').AsString := ZPROJID.IDValue;
     FOLDERID.condition := 'PROJID =' + ZPROJID.IDValue;
   end;
end;

procedure TDocsfilenewF.ZSECRETIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (ZSECRETID.IDValue <> '') and (docjq.FieldByName('ZSECRETID').AsString <> ZSECRETID.IDValue) then begin
     docjq.EDIT;
     docjq.FieldByName('ZSECRETID').AsString := ZSECRETID.IDValue;
   end;
end;

procedure TDocsfilenewF.ZSRCIDFind(Sender: TObject; ID: string);
begin
  inherited;
 if (ZSRCID.IDValue <> '') and (docjq.FieldByName('ZSRCID').AsString <> ZSRCID.IDValue) then begin
     docjq.EDIT;
     docjq.FieldByName('ZSRCID').AsString := ZSRCID.IDValue;
   end;
end;

procedure TDocsfilenewF.ZSTATUSIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (ZSTATUSID.IDValue <> '') and (docjq.FieldByName('ZSTATUSID').AsString <> ZSTATUSID.IDValue) then begin
     docjq.EDIT;
     docjq.FieldByName('ZSTATUSID').AsString := ZSTATUSID.IDValue;
   end;
end;

procedure TDocsfilenewF.ZTMPLTIDFind(Sender: TObject; ID: string);
begin
  inherited;
if (ZTMPLTID.IDValue <> '') and (docjq.FieldByName('ZTMPLTID').AsString <> ZTMPLTID.IDValue) then begin
     docjq.EDIT;
     docjq.FieldByName('ZTMPLTID').AsString := ZTMPLTID.IDValue;
   end;
end;

procedure TDocsfilenewF.SaveAsMenuClick(Sender: TObject);
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

procedure TDocsfilenewF.SaveMenuClick(Sender: TObject);
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

procedure TDocsfilenewF.OnAcquire( const DibHandle    : THandle;
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
procedure TDocsfilenewF.saveToDB(pNew:Boolean);
var
    FromStream: TStream;
    FromStream1: TStream;
    jadoset : TADODataSet;
begin
    try
      is_inserting := true;
      if pNew then begin
      jq2.open;
      jq2.Insert;
      jq2.FieldByName('NOTE').AsString:=JQ2.FieldByName('ID').AsString;  // only to write somrthing in the field
      jq2.post;
      end;
      FromStream := TMemoryStream.Create();
      ImageScrollBox.SaveToStream(FromStream, 'JPG');
  {   jq2.open;
      jq2.edit;
     // jq2.CreateBlobStream(jq2.FieldByName('FDATA'), bmreadWrite);//.copyfrom(FromStream,FromStream.size);
     TBlobField(jq2.FIELDBYNAME('FDATA')).LoadFromStream(FromStream);
      jq2.post; //    ==> no picture is  saved!   //}

      jadoset := TADODataSet.Create(self);
      jadoset.Connection := jq2.AmjServerDB;
      jadoset.CommandText := 'select * from jfiles.DOCFILES where id = ' + jq2.fieldbyname('id').asstring;
      jadoset.open;
      jadoset.edit;
      TBlobField(jadoset.FIELDBYNAME('FDATA')).LoadFromStream(FromStream);
      jadoset.post;    //}
      finally
        is_inserting := false;
       jadoset.Free;
        FromStream.free;
      end;

//      jq2.close;
//      jq2.open;

end;
procedure TDocsfilenewF.LoadFile( const FileName : String );
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

procedure TDocsfilenewF.jq2AfterInsert(DataSet: TDataSet);
begin
  inherited;
//  jq2.edit;
  jq2.FieldByName('id').asstring := japp.db.Get_Seq;
  jq2.FieldByName('DOCid').asstring := docjq.Fieldbyname('ID').asstring;
end;

procedure TDocsfilenewF.jq2AfterOpen(DataSet: TDataSet);
begin
  inherited;
  Load_Doc;
end;

procedure TDocsfilenewF.jq2AfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (jq.active) and not clicked and not jqinserting then
  begin
Clicked := true;
 jq.first;
Clicked := true;
 jq.moveby(jq2.recno-1);
 Clicked := false;
 load_doc;
  end;   //}
  jqinserting := false;
end;

procedure TDocsfilenewF.jq2BeforeInsert(DataSet: TDataSet);
begin
  inherited;
jqinserting := true;
end;

procedure TDocsfilenewF.jq2BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  JQ2.Params.ParamByName('pid').asstring := docjq.Fieldbyname('ID').asstring;//jq.fieldbyname('id').asstring;
end;

procedure TDocsfilenewF.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
  jq.FieldByName('id').asstring :=jq2.FieldByName('id').asstring;// japp.db.Get_Seq; 20/02/2016
  jq.FieldByName('DOCid').asstring := docjq.Fieldbyname('ID').asstring;  //'did'?
end;

procedure TDocsfilenewF.JQAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (jq2.active) and not clicked and not jqinserting then
  begin
Clicked := true;
 jq2.first;
Clicked := true;
 jq2.moveby(jq.recno-1);
 Clicked := false;
 load_doc;
  end;   //}
  jqinserting := false;
end;

procedure TDocsfilenewF.JQBeforeInsert(DataSet: TDataSet);
begin
  inherited;
jqinserting := true;
end;

procedure TDocsfilenewF.JQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  jq.params.paramByName('pid').asstring := docjq.Fieldbyname('ID').asstring;  //'did'?
end;

procedure TDocsfilenewF.Scan_Pict(Pmulti:Boolean);
var
    SaveDialog  : TSaveDialog;
    ScanInfo    : TScanInfo;
    FileName    : String;

begin
//    CheckDirty;

    if not Scanner.IsConfigured then
    begin
        ShowMessage('������ ������ ��� ���� ��� ������');
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
        saveToDB(true);    // new file
    end;
end;
procedure TDocsfilenewF.ImgOpsHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
  pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageOp.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;
procedure TDocsfilenewF.ImgScanHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
   pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImgNew.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;
procedure TDocsfilenewF.ImgViewHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
  pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ImageView.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TDocsfilenewF.JazDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 { jq.next ;
  if jq.eof then jq.cancel;
{  if (Key = VK_DOWN) then
  begin
    jq.DisableControls;
    TTable1Next;
    if TTable1.EOF then
      Key := 0
    else
      TTable1.Prior;
    TTable1.EnableControls;
  end;                        }
end;

procedure TDocsfilenewF.CheckDirty;
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
