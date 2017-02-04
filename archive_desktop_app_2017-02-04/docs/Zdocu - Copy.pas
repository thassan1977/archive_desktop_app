unit Zdocu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, DB, DBClient, Provider, ADODB, Menus,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, ImgList, GridsEh,
  DBGridEh, JazDBGrid, DBGridEhGrouping, AmjSetU, RzPanel, AmjStandardU,
  JPMainU, AmjLookUpU, AmjactionsU,
    EnPrinter,       { for TEnvisionPrinter }
    EnScan,          { for Scanner }
    EnBlowupForm,    { for TBlowupForm }
    EnOverviewForm,  { for TOverviewForm }
    EnOcrEng,        { for TOcrEngine, TOcrDriver }
    EnDiGrph,        { for TDibGraphic }
    EnImgScr,        { for TImageScrollBox }

     ComCtrls, ColorGrd;
 
type
  TZdocf = class(TJPmain)
    Panel2: TPanel;
    ImageScrollBox: TImageScrollBox;
    Panel1: TPanel;
    BandLabel: TLabel;
    XLbl: TLabel;
    YLbl: TLabel;
    ZoomEdit: TEdit;
    ZoomLbl: TLabel;
    ZoomUpDown: TUpDown;
    PageEdit: TEdit;
    PageLbl: TLabel;
    PageUpDown: TUpDown;
    OpenThumbnailMenu: TAmjAction;
    AppendtoTIFFMenu: TAmjAction;
    AppendtoDCXMenu: TAmjAction;
    undo: TAmjAction;
    ProgressBar: TProgressBar;
    OpenDialog1: TOpenDialog;
    fileMenu: TPopupMenu;
    open1: TMenuItem;
    save1: TMenuItem;
    saveas1: TMenuItem;
    openFile: TAmjAction;
    blurMenu: TPopupMenu;
    BlurBartlett: TMenuItem;
    BlurGaussian: TMenuItem;
    Blur_Menu: TAmjAction;
    BlurSoftly: TMenuItem;
    BlurMore: TMenuItem;
    BlurAverage: TMenuItem;
    Blur: TMenuItem;
    Glow: TMenuItem;
    IncreassBrightness: TMenuItem;
    DecreaseBrightness: TMenuItem;
    ConvertToGray: TMenuItem;
    imageMenu: TPopupMenu;
    FormatConversion: TMenuItem;
    Resize: TMenuItem;
    Encrypt: TMenuItem;
    AddWatermark: TMenuItem;
    image_menu: TAmjAction;
    annotation: TAmjAction;
    AnnotationMenu: TPopupMenu;
    AddNote: TMenuItem;
    AddRectangle: TMenuItem;
    AddLine: TMenuItem;
    AddText: TMenuItem;
    AddImage: TMenuItem;
    getAnnotation: TMenuItem;
    setAnnotation: TMenuItem;
    IncreaseContrast: TMenuItem;
    DecreaseContrast: TMenuItem;
    EmbossColor: TMenuItem;
    EmbossLight: TMenuItem;
    EmbossMedium: TMenuItem;
    EmbossDark: TMenuItem;
    FlipHorizontalMenu: TMenuItem;
    FlipVerticalMenu: TMenuItem;
    ShearHorzMenu: TMenuItem;
    ShearVertMen: TMenuItem;
    ActualSizeMenu: TMenuItem;
    FullPageMenu: TMenuItem;
    FitWidthMenu: TMenuItem;
    FitHeightMenu: TMenuItem;
    FitToPageMenu: TMenuItem;
    pnlToolBar: TPanel;
    sbLine: TSpeedButton;
    sbRectangle: TSpeedButton;
    sbEllipse: TSpeedButton;
    sbRoundRect: TSpeedButton;
    sbRectSelect: TSpeedButton;
    sbFreeForm: TSpeedButton;
    sbpaint: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    pnlColors: TPanel;
    Bevel1: TBevel;
    pnlFgBgBorder: TPanel;
    pnlFgBgInner: TPanel;
    cgDrawingColors: TColorGrid;
    pnlFillStyle: TPanel;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    procedure ImageScrollBoxBeforeSave(const Sender: TImageScrollBox;
      const Graphic: TDibGraphic);
    procedure ImageScrollBoxQuickSelect(const Sender: TImageScrollBox;
      const Graphic: TDibGraphic; const Rect: TRect);
    procedure ImageScrollBoxRedraw(const Graphic: TDibGraphic);
    procedure ImageScrollBoxRubberbandChange(const Rect: TRect);
    procedure ImageScrollBoxZoomChange(const Sender: TImageScrollBox;
      const Zoom: Single);
    procedure ZoomEditChange(Sender: TObject);
    procedure Open(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure AppendtoTIFFMenuHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure PageEditChange(Sender: TObject);
    procedure AppendtoDCXMenuHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure undoHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure openFileHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure open1Click(Sender: TObject);
    procedure save1Click(Sender: TObject);
    procedure saveas1Click(Sender: TObject);
    procedure Blur_MenuHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure BlurBartlettClick(Sender: TObject);
    procedure BlurGaussianClick(Sender: TObject);
    procedure BlurSoftlyClick(Sender: TObject);
    procedure BlurMoreClick(Sender: TObject);
    procedure BlurAverageClick(Sender: TObject);
    procedure BlurClick(Sender: TObject);
    procedure GlowClick(Sender: TObject);
    procedure IncreassBrightnessClick(Sender: TObject);
    procedure DecreaseBrightnessClick(Sender: TObject);
    procedure ConvertToGrayClick(Sender: TObject);
    procedure FormatConversionClick(Sender: TObject);
    procedure ResizeClick(Sender: TObject);
    procedure EncryptClick(Sender: TObject);
    procedure AddWatermarkClick(Sender: TObject);
    procedure image_menuHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure AddNoteClick(Sender: TObject);
    procedure AddRectangleClick(Sender: TObject);
    procedure AddLineClick(Sender: TObject);
    procedure AddTextClick(Sender: TObject);
    procedure AddImageClick(Sender: TObject);
    procedure getAnnotationClick(Sender: TObject);
    procedure setAnnotationClick(Sender: TObject);
    procedure annotationHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure IncreaseContrastClick(Sender: TObject);
    procedure DecreaseContrastClick(Sender: TObject);
    procedure EmbossColorClick(Sender: TObject);
    procedure EmbossLightClick(Sender: TObject);
    procedure EmbossMediumClick(Sender: TObject);
    procedure EmbossDarkClick(Sender: TObject);
    procedure FlipHorizontalMenuClick(Sender: TObject);
    procedure FlipVerticalMenuClick(Sender: TObject);
    procedure ShearHorzMenuClick(Sender: TObject);
    procedure ShearVertMenClick(Sender: TObject);
    procedure ActualSizeMenuClick(Sender: TObject);
    procedure FullPageMenuClick(Sender: TObject);
    procedure FitWidthMenuClick(Sender: TObject);
    procedure FitHeightMenuClick(Sender: TObject);
    procedure FitToPageMenuClick(Sender: TObject);
    procedure JQBeforeOpen(DataSet: TDataSet);
    procedure JQAfterInsert(DataSet: TDataSet);
     protected
    FDirty             : Boolean;
    FFileName          : String;
    FMultiPageFileName : String;
    FUndoGraphic       : TDibGraphic;
    FBlowupForm        : TBlowupForm;
    FOverviewForm      : TOverviewForm;

    procedure LoadFile( const FileName : String );
    private
    { Private declar
    procedure JRCancelcloseExecute(Sender: TObject);ations }
  public
    { Public declarations }
    Procedure FInit; override;
    Procedure PreFInit; Override;
    procedure CheckDirty;
     procedure OnProgress( const Sender          : TObject;
                          const PercentProgress : Byte );
  end;

implementation

uses JAppMainU, AmjBtnU,
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
    //NbLib,
    EnThbnCr, { for TThumbnailCreator }
    EnThbnFm, { for TThumbnailForm }
    ClipBrd,  { for TClipBoard }
    ExtDlgs,  { for TOpenPictureDialog }
   // OcrForm,  { for ShowOcrResults }
    ReszForm, { for TResizeForm }
    FrmtForm, { for TFormatConversionForm }
   // POptForm, { for TPrintOptionForm }
   // CropForm, { for TCropForm }
   // About,    { for TAboutBox }
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
    EnReg,    { for image format registration }
    EnAnEdit; {for TStickNoteMark}


{$R *.dfm}
procedure TZdocf.OnProgress( const Sender          : TObject;
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
procedure TZdocf.ImageScrollBoxBeforeSave(const Sender: TImageScrollBox;
  const Graphic: TDibGraphic);
begin
  inherited;
  if ImageScrollBox.Annotations <> '' then
        MessageDlg( 'Annotations will not be saved.'#13#13 +
                    'They must be stored persistently separate from the image file.', mtWarning, [mbOk], 0);

    { This event may be used to set parameters in the Graphic being saved.
      For example, the compression type in TIF files may be set. }
    if Graphic is TTiffGraphic then
    begin
        if Graphic.ImageFormat = ifTrueColor then
        begin
            TTiffGraphic(Graphic).Compression := tcJPEG;
        end
        else if Graphic.ImageFormat = ifBlackWhite then
            TTiffGraphic(Graphic).Compression := tcGroup4
        else
            TTiffGraphic(Graphic).Compression := tcPackbits;

    end;

    { this code can be used to save transparent png }
    if Graphic is TPngGraphic then
    begin
        (*
        { a background color may optionally be saved with the PNG file. }
        TPngGraphic(Graphic).SaveWithBackground := True;
        TPngGraphic(Graphic).BackgroundColor    := MakeRgb(0, 255, 0);

        TPngGraphic(Graphic).SaveTransparent    := True;
        { for example, use upper left pixel as transparent }
        TPngGraphic(Graphic).TransparentColor   := TPngGraphic(Graphic).Rgb[0, 0];
        *)

        TPngGraphic(Graphic).SaveProgressive := True;
    end;
end;

procedure TZdocf.ImageScrollBoxQuickSelect(const Sender: TImageScrollBox;
  const Graphic: TDibGraphic; const Rect: TRect);
begin
  inherited;
if MessageDlg( 'Copy selection to clipboard ?', mtConfirmation,
                   [mbYes, mbNo], 0) = mrYes then
        Clipboard.Assign(Graphic);
end;

procedure TZdocf.ImageScrollBoxRedraw(const Graphic: TDibGraphic);
begin
  inherited;
XLbl.Caption := IntToStr(Graphic.Width);
    YLbl.Caption := IntToStr(Graphic.Height);
end;

procedure TZdocf.ImageScrollBoxRubberbandChange(const Rect: TRect);
begin
  inherited;
   if (Rect.Left=0) and (Rect.Top=0) and (Rect.Right=0) and (Rect.Bottom=0) then
        BandLabel.Caption := ''
    else
        BandLabel.Caption := '(' + IntToStr(Rect.Left) + ',' + IntToStr(Rect.Top)
                             + '),(' + IntToStr(Rect.Right) + ',' +
                             IntToStr(Rect.Bottom) + ')';
end;

procedure TZdocf.ImageScrollBoxZoomChange(const Sender: TImageScrollBox;
  const Zoom: Single);
begin
  inherited;
    { set the OnChange handler to nil, to prevent this call back from
      changing the zoom a second time. }
    ZoomEdit.OnChange := nil;
    try
        ZoomEdit.Text := IntToStr(Round(Zoom));
    finally
        ZoomEdit.OnChange := ZoomEditChange;
    end;
end;
procedure TZdocf.image_menuHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
   Var pt: TPoint;
begin
  inherited;
    pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  imageMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TZdocf.IncreaseContrastClick(Sender: TObject);
var
    Transform : TContrastTransform;
begin
  inherited;
 FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TContrastTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.Increase   := True;
        Transform.Factor     := 5;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.IncreassBrightnessClick(Sender: TObject);
  var
    Transform : TBrightnessTransform;
begin
  inherited;
     FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TBrightnessTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.Percent    := 3;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
jq.fieldbyname('id').asstring:=Japp.DB.Get_maxSeq('jedms.DOC_FILE_ANNOTATION');
end;

procedure TZdocf.JQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
jq.params.parambyname('pid').asstring:='1';
end;

function RemoveChar( const Str : AnsiString;
                     const Ch  : AnsiChar ) : AnsiString;
var
    Index: Integer;
begin
    Result := Str;
    for Index := Length(Result) downto 1 do
    begin
        if Result[Index] = Ch then
            Delete(Result, Index, 1);
    end;
end;
procedure TZdocf.PageEditChange(Sender: TObject);
var
    FrameNo   : LongInt;
    NumberStr : AnsiString;
begin
  inherited;
  if FMultiPageFileName <> '' then
    begin
        { remove comma or space separator, added by the TEdit control
          after 999 }
        {$Warnings Off}
        NumberStr := RemoveChar(AnsiString(PageEdit.Text), ',');
        NumberStr := RemoveChar(NumberStr, ' ');

        FrameNo := StrToInt(NumberStr);
        {$Warnings On}

        if (FrameNo < 1) or
           (FrameNo > PageUpDown.Max) then
            Exit;

        if (ImageScrollBox.FrameCount > 1) then
            { all images loaded in memory }
            ImageScrollBox.CurrentFrame := FrameNo
        else
            ImageScrollBox.LoadFromFile(FMultiPageFileName, FrameNo);
    end;

end;

Procedure TZdocf.PreFInit;
Begin
  inherited PreFInit;
  width := 900;
  Height := 650;
  Align := alRight;
  FUndoGraphic := TDibGraphic.Create;
End;

procedure TZdocf.ResizeClick(Sender: TObject);
  var
    Form         : TResizeForm;
    Transform    : TResizeTransform;
    ImageFormat  : TImageFormat;
begin
  inherited;
Transform := TResizeTransform.Create;
    Form      := TResizeForm.Create(nil);
    try
        Form.WidthFld.Text  := IntToStr(ImageScrollBox.Graphic.Width);
        Form.HeightFld.Text := IntToStr(ImageScrollBox.Graphic.Height);

        Form.DestFormatCB.ItemIndex := Integer(ImageScrollBox.Graphic.ImageFormat);

        if Form.ShowModal <> mrOk then
            Abort;

        Transform.Interpolated := Form.InterpolatedCB.Checked;

        if Transform.Interpolated then
        begin
            Transform.Filter := TInterpolationFilter(Form.FilterCB.ItemIndex);

            ImageFormat := TImageFormat(Form.DestFormatCB.ItemIndex);

            if ImageFormat <> ImageScrollBox.Graphic.ImageFormat then
            begin
                Transform.OverrideDestFormat := True;
                Transform.DestFormat         := ImageFormat;

                if Transform.DestFormat in [ifColor16, ifColor256] then
                    MessageDlg( 'When converting to 16 or 256 colors it is'#13 +
                                'recommended to use the Format Conversion operation'#13 +
                                'as the Resize operation will not perform color'#13 +
                                'quantization.', mtWarning, [mbOk], 0);
            end;
        end;

        Transform.Width      := StrToInt(Form.WidthFld.Text);
        Transform.Height     := StrToInt(Form.HeightFld.Text);

        FUndoGraphic.Assign(ImageScrollBox.Graphic);

        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);

    finally
        Form.Free;
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.save1Click(Sender: TObject);
begin
  inherited;
if ImageScrollBox.Graphic = nil then
        Exit;

    if FFileName = '' then
        saveas1Click(Sender)
    else
    begin
        ImageScrollBox.SaveToFile(FFileName);

        PageUpDown.Min := 1;
        PageUpDown.Max := 1;

        PageEdit.Text  := '1';

        FDirty := False;
    end;
end;

procedure TZdocf.saveas1Click(Sender: TObject);
var
    SaveDialog  : TSaveDialog;
begin
  inherited;
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

            save1Click(Sender);
            Caption := FFileName;
        end;
    finally
        SaveDialog.Free;
    end;
end;

procedure TZdocf.setAnnotationClick(Sender: TObject);
   var result:AnsiString;
  var
  myFile : TextFile;
  var text   : string;
  var OpenDialog   : TOpenPictureDialog;
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
begin

  {OpenDialog := TOpenPictureDialog.Create(Self);
    try
        OpenDialog.Filter :='Text files only|*.txt';
        if OpenDialog.Execute then
        begin
              // Try to open the Test.txt file for writing to
              AssignFile(myFile, OpenDialog.FileName);
        end;
    finally
        OpenDialog.Free;
    end;
  // Reopen the file for reading
  Reset(myFile);
  // Display the file contents
  while not Eof(myFile) do
  begin
    ReadLn(myFile, text);
    //ShowMessage(text);
    result:=result+text;
  end;
  // Close the file for the last time
  CloseFile(myFile);
end; }
end;
  jq.open;
  while not jq.eof do begin
   result:=result+jq.fieldbyname('DESCRIBTION').asstring;
   jq.next;
  end;
  ImageScrollBox.SetAnnotations(result);
end;

procedure TZdocf.ShearHorzMenuClick(Sender: TObject);
  var
    Transform : TShearTransform;
    AngleStr  : String;
    Angle     : Double;
begin
  inherited;
AngleStr := '10';
    if not InputQuery('Shear horizontal', 'Angle', AngleStr) then
        Exit;

    Angle := StrToFloat(AngleStr);

    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TShearTransform.Create;
    try
        Transform.Horz  := True;
        Transform.Angle := Angle;

        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.ShearVertMenClick(Sender: TObject);
  var
    Transform : TShearTransform;
    AngleStr  : String;
    Angle     : Double;
begin
  inherited;
  AngleStr := '10';
    if not InputQuery('Shear vertical', 'Angle', AngleStr) then
        Exit;

    Angle := StrToFloat(AngleStr);

    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TShearTransform.Create;
    try
        Transform.Horz  := False;
        Transform.Angle := Angle;

        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.undoHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
    if not FUndoGraphic.IsEmpty then
    begin
        ImageScrollBox.Graphic := FUndoGraphic;
        FUndoGraphic.Clear;
    end;
end;

procedure TZdocf.ZoomEditChange(Sender: TObject);
begin
  inherited;
  try
        ImageScrollBox.ZoomPercent := StrToInt(ZoomEdit.Text);
    except
        { trap exception in StrToIn }
        ImageScrollBox.ZoomPercent := 100;
    end;;
end;

Procedure TZdocf.FInit;
begin
  width := 1300;
  Align := alRight;

  PCaption := '������ ����';

end;
procedure TZdocf.FitHeightMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitHeight;
end;

procedure TZdocf.FitToPageMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitToPage;
end;

procedure TZdocf.FitWidthMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitWidth;
end;

procedure TZdocf.FlipHorizontalMenuClick(Sender: TObject);
var
    Transform : TFlipHorizontalTransform;
begin
  inherited;
     FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TFlipHorizontalTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.FlipVerticalMenuClick(Sender: TObject);
var
    Transform : TFlipVerticalTransform;
begin
  inherited;
FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TFlipVerticalTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.FormatConversionClick(Sender: TObject);
  var
    Form       : TFormatConversionForm;
    Transform  : TImageFormatTransform;
    DestFormat : TImageFormat;
    Quantize   : Boolean;
    Dither     : Boolean;
begin
  inherited;
    Form := TFormatConversionForm.Create(nil);
    try
        Form.SourceFormat := ImageScrollBox.Graphic.ImageFormat;

        if Form.ShowModal <> mrOk then
            Abort;

        DestFormat := Form.DestFormat;
        Quantize   := Form.QuantizeCB.Checked;
        Dither     := Form.DitherCB.Checked;
    finally
        Form.Free;
    end;

    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TImageFormatTransform.Create;
    try
        Transform.OnProgress  := Self.OnProgress;
        Transform.ImageFormat := DestFormat;
        Transform.Quantize    := Quantize;
        Transform.Dither      := Dither;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.FullPageMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFullPage;
end;

procedure TZdocf.getAnnotationClick(Sender: TObject);
var result:AnsiString;
  var
  myFile : TextFile;
begin
  inherited;
result:=ImageScrollBox.GetAnnotations;
 // Try to open the Test.txt file for writing to
  AssignFile(myFile, 'Test.txt');
  ReWrite(myFile);
  // Write a couple of well known words to this file
  Write(myFile,result);
  // Close the file
  CloseFile(myFile);
  if result<>'' then begin
  jq.edit;
  jq.fieldbyname('ZFILEID').asstring:='1';
  jq.fieldbyname('DESCRIBTION').asstring:=result;
  jq.post;
  end;
end;

procedure TZdocf.GlowClick(Sender: TObject);
  var
    Transform : TGlowTransform;
begin
  inherited;
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TGlowTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.ActualSizeMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmOriginalSize;
end;

procedure TZdocf.AddImageClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
   ImageScrollBox.AddImage;
end;

procedure TZdocf.AddLineClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
ImageScrollBox.AddLine;
end;

procedure TZdocf.AddNoteClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
ImageScrollBox.AddNote;
end;

procedure TZdocf.AddRectangleClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
ImageScrollBox.AddRectangle;
end;

procedure TZdocf.AddTextClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
ImageScrollBox.AddText;
end;

procedure TZdocf.AddWatermarkClick(Sender: TObject);
  var
    WatermarkTransform : TWatermarkTransform;
    WatermarkImage     : TDibGraphic;
     OpenPictureDialog : TOpenPictureDialog;
begin
  inherited;
OpenPictureDialog:=TOpenPictureDialog.Create(Self);
    try
        // Allows user to select a file (the watermark)
        OpenPictureDialog.Title := 'Open watermark image';
        if OpenPictureDialog.Execute then
        begin
            // Create the graphics specific for the selected extension
            WatermarkImage := NewDibGraphic(OpenPictureDialog.FileName);
            try
                // Load the watermark
                WatermarkImage.LoadFromFile(OpenPictureDialog.FileName);

                // Create the watermark transform
                WatermarkTransform := TWatermarkTransform.Create;
                try
                    // Set the watermark to use
                    WatermarkTransform.Watermark := WatermarkImage;
                    // Select the position where place the watermark: centered !
                    WatermarkTransform.Position:=Point((ImageScrollBox.Graphic.Width-WatermarkImage.Width) div 2,
                                                      (ImageScrollBox.Graphic.Height-WatermarkImage.Height) div 2);
                    // Set the opacity
                    WatermarkTransform.Opacity := 33;
                    // Apply the watermark
                    FUndoGraphic.Assign(ImageScrollBox.Graphic);
                    WatermarkTransform.Apply(ImageScrollBox.Graphic);
                    ImageScrollBox.Redraw(False);
                    ShowMessage('Watermark applied at image center with 33% opacity.');
                finally
                    WatermarkTransform.Free;
                end;
            finally
                WatermarkImage.Free;
            end;
        end;
    finally
        OpenPictureDialog.Free;
    end;
end;

procedure TZdocf.annotationHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  AnnotationMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TZdocf.openFileHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  fileMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TZdocf.open1Click(Sender: TObject);
var OpenDialog   : TOpenPictureDialog;
begin

  inherited;
  CheckDirty;

    OpenDialog := TOpenPictureDialog.Create(Self);
    try
        OpenDialog.Filter := GraphicFilter(TGraphic);
        if OpenDialog.Execute then
        begin
            LoadFile(OpenDialog.FileName);
        end;
    finally
        OpenDialog.Free;
    end;
end;

procedure TZdocf.AppendtoDCXMenuHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
  var
    SaveDialog  : TSaveDialog;
begin
  inherited;
  SaveDialog := TSaveDialog.Create(nil);
    try
        SaveDialog.Filter  := GraphicFilter(TDcxGraphic);
        SaveDialog.Title   := 'Append image to DCX file';
        SaveDialog.Options := SaveDialog.Options + [ofFileMustExist];
        if SaveDialog.Execute then
        begin
            ImageScrollBox.AppendToFile(SaveDialog.FileName);

            { clear FFileName to prevent saving over the same file with
              a single image inadvertently }
            FFileName           := '';
            FMultiPageFileName  := SaveDialog.FileName;
            Self.Caption        := FMultiPageFileName;

            PageUpDown.Min := 1;
            PageUpDown.Max := ImageScrollBox.ImageCountFromFile(SaveDialog.FileName);

            { set the event handler to prevent loading the image, as it is
              already loaded. }
            PageEdit.OnChange := nil;
            try
                PageEdit.Text  := IntToStr(PageUpDown.Max);
            finally
                PageEdit.OnChange := PageEditChange;
            end;
        end;
    finally
        SaveDialog.Free;
    end;

end;

procedure TZdocf.AppendtoTIFFMenuHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
  var
    SaveDialog  : TSaveDialog;
begin
  inherited;
      SaveDialog := TSaveDialog.Create(nil);
    try
        SaveDialog.Filter  := GraphicFilter(TTiffGraphic);
        SaveDialog.Title   := 'Append image to TIFF file';
        SaveDialog.Options := SaveDialog.Options + [ofFileMustExist];
        if SaveDialog.Execute then
        begin
            ImageScrollBox.AppendToFile(SaveDialog.FileName);

            { clear FFileName to prevent saving over the same file with
              a single image inadvertently }
            FFileName           := '';
            FMultiPageFileName  := SaveDialog.FileName;
            Self.Caption        := FMultiPageFileName;

            PageUpDown.Min := 1;
            PageUpDown.Max := ImageScrollBox.ImageCountFromFile(SaveDialog.FileName);

            { set the event handler to prevent loading the image, as it is
              already loaded. }
            PageEdit.OnChange := nil;
            try
                PageEdit.Text  := IntToStr(PageUpDown.Max);
            finally
                PageEdit.OnChange := PageEditChange;
            end;
        end;
    finally
        SaveDialog.Free;
    end;

end;

procedure TZdocf.BlurAverageClick(Sender: TObject);
  var
    Transform : TBlurAverageTransform;
begin
  inherited;
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TBlurAverageTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.BlurBartlettClick(Sender: TObject);
  var
    Transform : TBlurBartlettTransform;
begin
  inherited;
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TBlurBartlettTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.BlurClick(Sender: TObject);
  var
    Transform : TBlurTransform;
begin
  inherited;
     FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TBlurTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.BlurGaussianClick(Sender: TObject);
  var
    Transform : TBlurGaussianTransform;
begin
  inherited;
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TBlurGaussianTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.Blur_MenuHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
    pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  blurMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TZdocf.BlurMoreClick(Sender: TObject);
var
    Transform : TBlurMoreTransform;
begin
  inherited;
   FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TBlurMoreTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.BlurSoftlyClick(Sender: TObject);
  var
    Transform : TBlurSoftlyTransform;
begin
  inherited;
 FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TBlurSoftlyTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.CheckDirty;
begin
    { don't check if dirty with multi image files, as multi images files
      are not saved as a single entity, ie, "append" is used. }
    if FDirty and (FMultiPageFileName = '') then
    begin
        case MessageDlg( 'Image is not saved. Save it?',
                         mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          //  mrYes    : SaveMenuClick(Self);
            mrCancel : Abort;
        end;
    end;
end;
procedure TZdocf.ConvertToGrayClick(Sender: TObject);
  var
    Transform : TConvertToGrayTransform;
begin
  inherited;
FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TConvertToGrayTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.DecreaseBrightnessClick(Sender: TObject);
  var
    Transform : TBrightnessTransform;
begin
  inherited;
   FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TBrightnessTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.Percent    := -3;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.DecreaseContrastClick(Sender: TObject);
var
    Transform : TContrastTransform;
begin
  inherited;
 FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TContrastTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.Increase   := False;
        Transform.Factor     := 5;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.EmbossColorClick(Sender: TObject);
  var
    Transform : TEmbossColorTransform;
begin
  inherited;
   FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEmbossColorTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.EmbossDarkClick(Sender: TObject);
  var
    Transform : TEmbossDarkTransform;
begin
  inherited;
 FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEmbossDarkTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.EmbossLightClick(Sender: TObject);
var
    Transform : TEmbossLightTransform;
begin
  inherited;
 FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEmbossLightTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.EmbossMediumClick(Sender: TObject);
 var
    Transform : TEmbossMediumTransform;
begin
  inherited;
 FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEmbossMediumTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.EncryptClick(Sender: TObject);
  var
    Transform : TEncryptTransform;
    Key       : String;
begin
  inherited;
  Key := '1234';
    if not InputQuery('Encrypt/Decrypt', 'Numeric Key', Key) then
        Exit;

    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEncryptTransform.Create;
    try
        Transform.EncryptionKey := StrToInt64(Key);
        Transform.Bidimensional := False;
        Transform.OnProgress    := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TZdocf.LoadFile( const FileName : String );
var
    MultiLoad : Boolean;

begin
    Caption   := FileName;

    BeginHourglass;
    try
        PageUpDown.Min := 1;
        PageUpDown.Max := ImageScrollBox.ImageCountFromFile(FileName);

        PageEdit.Text  := '1';

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

        if PageUpDown.Max = 1 then
        begin
            FFileName          := FileName;
            FMultiPageFileName := '';
        end
        else
        begin
            { clear FFileName for multi-image files, to ensure if the
              Save operation is invoked, the multiimage file is not
              overwritten. Multi-image files are manipulated using the
              Append To File operation }
            FFileName          := '';
            FMultiPageFileName := FileName;
        end;

    finally
        EndHourglass;
    end;

    FDirty    := False;

    ZoomEditChange(Self);
end;

procedure TZdocf.Open(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
  var
    ThumbnailForm : TThumbnailForm;
    FileName      : String;
begin
  inherited;
  ThumbnailForm := TThumbnailForm.Create(nil);
    try
        ThumbnailForm.ThumbnailWidth     := 80;
        ThumbnailForm.ThumbnailHeight    := 80;
        ThumbnailForm.EnlargeSmallImages := False;
        ThumbnailForm.Resizeable         := True;
        ThumbnailForm.ShowHelpButton     := False;
        ThumbnailForm.Width              := 640;
        ThumbnailForm.Height             := 480;

        if ThumbnailForm.Execute(FileName) then
            Self.LoadFile(FileName);

    finally
        ThumbnailForm.Free;
    end;

end;

end.
