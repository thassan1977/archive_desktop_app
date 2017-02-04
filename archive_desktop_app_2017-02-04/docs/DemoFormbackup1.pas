{ Main form for Envision Demo.Dpr example program }
unit DemoFormbackup1;

interface


uses
    EnPrinter,       { for TEnvisionPrinter } 
    EnScan,          { for Scanner }
    EnBlowupForm,    { for TBlowupForm }
    EnOverviewForm,  { for TOverviewForm }
    EnOcrEng,        { for TOcrEngine, TOcrDriver }
    EnDiGrph,        { for TDibGraphic }
    EnImgScr,        { for TImageScrollBox }

  Windows, Messages, SysUtils,Variants, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, ComCtrls, Buttons, Mask, AppEvnts
  , ADODB,AmjSetU,amjDbU, DB,DBCtrls, DBClient,

 JPG1U,  DBActns, ActnList, Provider,
   GridsEh, DBGridEh, JazDBGrid,
  DBGridEhGrouping, RzPanel, AmjStandardU, AmjactionsU
  , OleCtrls, RzSplit, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh, JPMainU;

type

  TEditImageForm1 = class(TForm)
    FileMenu: TMenuItem;
    OpenMenu: TMenuItem;
    SaveMenu: TMenuItem;
    N1: TMenuItem;
    ExitMenu: TMenuItem;
    EditMenu: TMenuItem;
    CopyMenu: TMenuItem;
    PasteMenu: TMenuItem;
    ViewMenu: TMenuItem;
    ActualSizeMenu: TMenuItem;
    FitWidthMenu: TMenuItem;
    FitHeightMenu: TMenuItem;
    TopPanel: TPanel;
    OpenBtn: TSpeedButton;
    SaveBtn: TSpeedButton;
    ProgressBar: TProgressBar;
    ZoomUpDown: TUpDown;
    ZoomLbl: TLabel;
    ZoomEdit: TEdit;
    FullPageMenu: TMenuItem;
    CopyBtn: TSpeedButton;
    PasteBtn: TSpeedButton;
    N2: TMenuItem;
    ScanMenu: TMenuItem;
    SelectScannerMenu: TMenuItem;
    ScanBtn: TSpeedButton;
    PrintBtn: TSpeedButton;
    N3: TMenuItem;
    PrintMenu: TMenuItem;
    PrintSetupMenu: TMenuItem;
    N4: TMenuItem;
    UndoMenu: TMenuItem;
    ImageMenu: TMenuItem;
    RotateMenu: TMenuItem;
    Rotate90Menu: TMenuItem;
    Rotate180Menu: TMenuItem;
    Rotate270Menu: TMenuItem;
    RotateArbitraryMenu: TMenuItem;
    FlipMenu: TMenuItem;
    FlipHorizontalMenu: TMenuItem;
    FlipVerticalMenu: TMenuItem;
    SharpenMenu: TMenuItem;
    SmoothMenu: TMenuItem;
    BrightnessMenu: TMenuItem;
    IncreassBrightnessMenu: TMenuItem;
    DecreaseBrightnessMenu: TMenuItem;
    ContrastMenu: TMenuItem;
    IncreaseContrastMenu: TMenuItem;
    DecreaseContrastMenu: TMenuItem;
    GammaMenu: TMenuItem;
    ConvertToGrayMenu: TMenuItem;
    FormatConversionMenu: TMenuItem;
    EdgeDetectionMenu: TMenuItem;
    EmbossMenu: TMenuItem;
    NegativeMenu: TMenuItem;
    ResizeMenu: TMenuItem;
    HelpMenu: TMenuItem;
    AboutMenu: TMenuItem;
    XLbl: TLabel;
    ByLbl: TLabel;
    YLbl: TLabel;
    N7: TMenuItem;
    AppendtoTIFFMenu: TMenuItem;
    CropMenu: TMenuItem;
    AntiAliasedMenu: TMenuItem;
    PageLbl: TLabel;
    PageEdit: TEdit;
    PageUpDown: TUpDown;
    N5: TMenuItem;
    N6: TMenuItem;
    AnimatedMenu: TMenuItem;
    AppendtoDCXMenu: TMenuItem;
    CenteredMenu: TMenuItem;
    MouseModeMenu: TMenuItem;
    DragMenu: TMenuItem;
    QuickSelectMenu: TMenuItem;
    FitToPageMenu: TMenuItem;
    ImageScrollBox: TImageScrollBox;
    SelectMenu: TMenuItem;
    N8: TMenuItem;
    CopySelectionMenu: TMenuItem;
    PasteIntoSelectionMenu: TMenuItem;
    BandLabel: TLabel;
    CroptoSelectionMenu: TMenuItem;
    N9: TMenuItem;
    ZoomtoSelectionMenu: TMenuItem;
    OpenThumbnailMenu: TMenuItem;
    SaveAsMenu: TMenuItem;
    ThumbnailCreationMenu: TMenuItem;
    N10: TMenuItem;
    ShearMenu: TMenuItem;
    ShearHorzMenu: TMenuItem;
    ShearVertMenu: TMenuItem;
    MainMenu: TMainMenu;
    OcrMenu: TMenuItem;
    OcrImageMenu: TMenuItem;
    OcrSelectionMenu: TMenuItem;
    AnnotateMenu: TMenuItem;
    AnnotateTopMenu: TMenuItem;
    AddNoteMenu: TMenuItem;
    AddRectangleMenu: TMenuItem;
    AddLineMenu: TMenuItem;
    AddTextMenu: TMenuItem;
    N11: TMenuItem;
    MakeAnnoPermanentMenu: TMenuItem;
    NBLibMenu: TMenuItem;
    DeskewMenu: TMenuItem;
    CleanupBorderMenu: TMenuItem;
    ShowAnnotationsMenu: TMenuItem;
    AddImageMenu: TMenuItem;
    TransymOcrImageMenu: TMenuItem;
    TransymOcrSelectionMenu: TMenuItem;
    AppendtoPDFfileMenu: TMenuItem;
    N12: TMenuItem;
    BlowupPanelMenu: TMenuItem;
    OverviewPanelMenu: TMenuItem;
    DespeckleMenu: TMenuItem;
    EncryptMenu: TMenuItem;
    RecogniformHandprintMenu: TMenuItem;
    AddWatermarkMenu: TMenuItem;
    MoreMenu: TMenuItem;
    EmbossMenuEx: TMenuItem;
    EmbossLightMenu: TMenuItem;
    EmbossMediumMenu: TMenuItem;
    EmbossDarkMenu: TMenuItem;
    GlowMenu: TMenuItem;
    BlurBartlettMenu: TMenuItem;
    BlurGaussianMenu: TMenuItem;
    BlurMenu: TMenuItem;
    BlurSoftlyMenu: TMenuItem;
    BlurMoreMenu: TMenuItem;
    EdgeEnhanceMenu: TMenuItem;
    EdgeStrongMenu: TMenuItem;
    EdgeWeakMenu: TMenuItem;
    SharpenNormalMenu: TMenuItem;
    SharpenMoreMenu: TMenuItem;
    SharpenLessMenu: TMenuItem;
    UnsharpMaskMenu: TMenuItem;
    SharpenDirectionalMenu: TMenuItem;
    AverageMenu: TMenuItem;
    PrewittMenu: TMenuItem;
    TraceContourMenu: TMenuItem;
    EtchMenu: TMenuItem;
    LaplacianHVMenu: TMenuItem;
    LaplacianOmniMenu: TMenuItem;
    SobelPassMenu: TMenuItem;
    WaggleMenu: TMenuItem;
    PatternMenu: TMenuItem;
    GlowingEdgeMenu: TMenuItem;
    JitteryMenu: TMenuItem;
    SandyMenu: TMenuItem;
    BlurAverageMenu: TMenuItem;
    ManHildreth5x5Menu: TMenuItem;
    JOcrImageMenu: TMenuItem;
    JOcrSelectionMenu: TMenuItem;
    Timer: TTimer;
    TesseractSelectionMenu: TMenuItem;
    TesseractImageMenu: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    SaveAnnoPermanent: TMenuItem;
    jqfolders: TAmjSet;
    jqAnnotation: TAmjSet;
    procedure OpenMenuClick(Sender: TObject);
    procedure ExitMenuClick(Sender: TObject);
    procedure CopyMenuClick(Sender: TObject);
    procedure PasteMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveMenuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveAsMenuClick(Sender: TObject);
    procedure ZoomEditChange(Sender: TObject);
    procedure PrintSetupMenuClick(Sender: TObject);
    procedure UndoMenuClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Rotate90MenuClick(Sender: TObject);
    procedure Rotate180MenuClick(Sender: TObject);
    procedure Rotate270MenuClick(Sender: TObject);
    procedure RotateArbitraryMenuClick(Sender: TObject);
    procedure FlipHorizontalMenuClick(Sender: TObject);
    procedure FlipVerticalMenuClick(Sender: TObject);
    procedure SharpenMenuClick(Sender: TObject);
    procedure SmoothMenuClick(Sender: TObject);
    procedure IncreassBrightnessMenuClick(Sender: TObject);
    procedure DecreaseBrightnessMenuClick(Sender: TObject);
    procedure NegativeMenuClick(Sender: TObject);
    procedure IncreaseContrastMenuClick(Sender: TObject);
    procedure DecreaseContrastMenuClick(Sender: TObject);
    procedure EdgeDetectionMenuClick(Sender: TObject);
    procedure EmbossMenuClick(Sender: TObject);
    procedure GammaMenuClick(Sender: TObject);
    procedure ConvertToGrayMenuClick(Sender: TObject);
    procedure ResizeMenuClick(Sender: TObject);
    procedure FormatConversionMenuClick(Sender: TObject);
    procedure AboutMenuClick(Sender: TObject);
    procedure PrintMenuClick(Sender: TObject);
    procedure AppendtoTIFFMenuClick(Sender: TObject);
    procedure SelectScannerMenuClick(Sender: TObject);
    procedure ScanMenuClick(Sender: TObject);
    procedure CropMenuClick(Sender: TObject);
    procedure AntiAliasedMenuClick(Sender: TObject);
    procedure ActualSizeMenuClick(Sender: TObject);
    procedure FullPageMenuClick(Sender: TObject);
    procedure FitWidthMenuClick(Sender: TObject);
    procedure FitHeightMenuClick(Sender: TObject);
    procedure PageEditChange(Sender: TObject);
    procedure AnimatedMenuClick(Sender: TObject);
    procedure AppendtoDCXMenuClick(Sender: TObject);
    procedure ImageScrollBoxZoomChange(const Sender: TImageScrollBox;
      const Zoom: Single);
    procedure ImageScrollBoxRedraw(const Graphic: TDibGraphic);
    procedure ImageScrollBoxBeforeSave(const Sender: TImageScrollBox;
      const Graphic: TDibGraphic);
    procedure CenteredMenuClick(Sender: TObject);
    procedure DragMenuClick(Sender: TObject);
    procedure QuickSelectMenuClick(Sender: TObject);
    procedure FitToPageMenuClick(Sender: TObject);
    procedure SelectMenuClick(Sender: TObject);
    procedure CopySelectionMenuClick(Sender: TObject);
    procedure PasteIntoSelectionMenuClick(Sender: TObject);
    procedure ImageScrollBoxRubberbandChange(const Rect: TRect);
    procedure ImageScrollBoxQuickSelect(const Sender: TImageScrollBox;
      const Graphic: TDibGraphic; const Rect: TRect);
    procedure CroptoSelectionMenuClick(Sender: TObject);
    procedure ZoomtoSelectionMenuClick(Sender: TObject);
    procedure OpenThumbnailMenuClick(Sender: TObject);
    procedure ThumbnailCreationMenuClick(Sender: TObject);
    procedure ShearHorzMenuClick(Sender: TObject);
    procedure ShearVertMenuClick(Sender: TObject);
    procedure AnnotateMenuClick(Sender: TObject);
    procedure AddNoteMenuClick(Sender: TObject);
    procedure AddRectangleMenuClick(Sender: TObject);
    procedure AddLineMenuClick(Sender: TObject);
    procedure AddTextMenuClick(Sender: TObject);
    procedure MakeAnnoPermanentMenuClick(Sender: TObject);
    procedure DeskewMenuClick(Sender: TObject);
    procedure CleanupBorderMenuClick(Sender: TObject);
    procedure ShowAnnotationsMenuClick(Sender: TObject);
    procedure AddImageMenuClick(Sender: TObject);
    procedure TransymOcrImageMenuClick(Sender: TObject);
    procedure TransymOcrSelectionMenuClick(Sender: TObject);
    procedure AppendtoPDFfileMenuClick(Sender: TObject);
    procedure BlowupPanelMenuClick(Sender: TObject);
    procedure OverviewPanelMenuClick(Sender: TObject);
    procedure DespeckleMenuClick(Sender: TObject);
    procedure EncryptMenuClick(Sender: TObject);
    procedure RecogniformHandprintMenuClick(Sender: TObject);
    procedure AddWatermarkMenuClick(Sender: TObject);
    procedure EmbossMenuExClick(Sender: TObject);
    procedure EmbossLightMenuClick(Sender: TObject);
    procedure EmbossMediumMenuClick(Sender: TObject);
    procedure EmbossDarkMenuClick(Sender: TObject);
    procedure GlowMenuClick(Sender: TObject);
    procedure BlurBartlettMenuClick(Sender: TObject);
    procedure BlurGaussianMenuClick(Sender: TObject);
    procedure BlurMenuClick(Sender: TObject);
    procedure BlurSoftlyMenuClick(Sender: TObject);
    procedure BlurMoreMenuClick(Sender: TObject);
    procedure EdgeEnhanceMenuClick(Sender: TObject);
    procedure EdgeStrongMenuClick(Sender: TObject);
    procedure EdgeWeakMenuClick(Sender: TObject);
    procedure SharpenNormalMenuClick(Sender: TObject);
    procedure SharpenMoreMenuClick(Sender: TObject);
    procedure SharpenLessMenuClick(Sender: TObject);
    procedure UnsharpMaskMenuClick(Sender: TObject);
    procedure SharpenDirectionalMenuClick(Sender: TObject);
    procedure AverageMenuClick(Sender: TObject);
    procedure PrewittMenuClick(Sender: TObject);
    procedure TraceContourMenuClick(Sender: TObject);
    procedure EtchMenuClick(Sender: TObject);
    procedure LaplacianHVMenuClick(Sender: TObject);
    procedure LaplacianOmniMenuClick(Sender: TObject);
    procedure SobelPassMenuClick(Sender: TObject);
    procedure WaggleMenuClick(Sender: TObject);
    procedure PatternMenuClick(Sender: TObject);
    procedure GlowingEdgeMenuClick(Sender: TObject);
    procedure JitteryMenuClick(Sender: TObject);
    procedure SandyMenuClick(Sender: TObject);
    procedure BlurAverageMenuClick(Sender: TObject);
    procedure ManHildreth5x5MenuClick(Sender: TObject);
    procedure JOcrImageMenuClick(Sender: TObject);
    procedure JOcrSelectionMenuClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure TesseractImageMenuClick(Sender: TObject);
    procedure TesseractSelectionMenuClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure SaveAnnoPermanentClick(Sender: TObject);
    procedure ImageScrollBoxClick(Sender: TObject);
    procedure jqAnnotationAfterInsert(DataSet: TDataSet);
    procedure jqAnnotationBeforeOpen(DataSet: TDataSet);
    procedure ShowAnnotation(jqannotation: TDataSet);
    procedure ShowRectangle(jqannotation: TDataSet);
    procedure ShowLine(jqannotation: TDataSet);
    procedure ShowText(jqannotation: TDataSet);
    procedure ShowImage(jqannotation: TDataSet);
    procedure MouseModeMenuClick(Sender: TObject);
  protected
    FDirty             : Boolean;
    FFileName          : String;
    FMultiPageFileName : String;
    FUndoGraphic       : TDibGraphic;
    FBlowupForm        : TBlowupForm;
    FOverviewForm      : TOverviewForm;

    procedure OnIdle(Sender: TObject; var Done: Boolean);
    procedure CheckDirty;
    procedure OnProgress( const Sender          : TObject;
                          const PercentProgress : Byte );

    procedure LoadFile( const FileName : String );

    procedure OnAcquire( const DibHandle    : THandle;
                         const XDpi         : Word;
                         const YDpi         : Word;
                         const CallBackData : LongInt );

    procedure OcrImage(const DriverClass : TOcrDriverClass);
    procedure OcrSelection(const DriverClass : TOcrDriverClass);

    procedure AppendToMultiPageFile( const Title        : String;
                                     const GraphicClass : TDibGraphicClass );

  public
    { Public declarations }
    const

anStickNote = 1;
anRectangle = 2;
anLine      = 3;
anText      = 4;
anImage     = 5;
    procedure FormEditPict(pMASTER,PDOCID : STRING);
  end;
  
var
  EditImageForm1: TEditImageForm1;

implementation

uses
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
    NbLib,
    EnThbnCr, { for TThumbnailCreator }
    EnThbnFm, { for TThumbnailForm }
    ClipBrd,  { for TClipBoard }
    ExtDlgs,  { for TOpenPictureDialog }
    OcrForm,  { for ShowOcrResults }
    ReszForm, { for TResizeForm }
    FrmtForm, { for TFormatConversionForm }
    POptForm, { for TPrintOptionForm }
    CropForm, { for TCropForm }
    About,    { for TAboutBox }
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
    EnAnEdit,  {for operation on annotations mmrhj}
    jappmainu;


{$R *.DFM}

type

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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FormCreate(Sender: TObject);
begin
 //   Application.OnIdle := Self.OnIdle;

  //ApplicationEvents1Idle;
  inherited;
    FUndoGraphic := TDibGraphic.Create;

    Scanner.ProductName := 'Envision Demo';

    { by default, __RegisterEnvisionBmp, __RegisterEnvisionIco,
      __RegisterEnvisionWmf constants are not defined, to not interfere with
      Delphi's design time operation, but at run time in the example program
      the formats are registered.

      MB Oct 26, 1999. In the previous demo versions, the VCL graphic classes
      were unregistered. It is acceptable to have more than one graphic class
      registered for a file format. This allows TImage's loaded a design time
      to work with both VCL graphic classes and Envision graphic classes.
    }
    if FindDibGraphicClass('*.BMP') = nil then
        RegisterDibGraphic('BMP', 'Bitmap file', TBitmapGraphic);

    if FindDibGraphicClass('*.ICO') = nil  then
        RegisterDibGraphic('ICO', 'Windows icon', TIconGraphic);

    if FindDibGraphicClass('*.WMF') = nil  then
    begin
        RegisterDibGraphic('WMF', 'Windows meta file', TMetaFileGraphic);
        RegisterDibGraphic('EMF', 'Enhanced meta file', TMetaFileGraphic);
    end;

    { register PDF to allow scanning and saving to PDF }
    if FindDibGraphicClass('*.PDF') = nil  then
        RegisterDibGraphic('PDF', 'Portable Document Format', TPdfGraphic);

    if FindDibGraphicClass(ParamStr(1)) <> nil then
        LoadFile(ParamStr(1));

    ImageScrollBox.ReadAheadFileName := '';

    ImageScrollBox.MaxZoomPercent    := 500;

    ImageScrollBox.AlwaysShowAnnotations := False;// ;
    ShowAnnotationsMenuClick(Self);

    AntiAliasedMenu.Checked := ImageScrollBox.AntiAliased;
    CenteredMenu.Checked    := ImageScrollBox.Centered;

    SelectMenuClick(Self);

    DragMenu.Checked          := ImageScrollBox.MouseMode = mmDrag;
    SelectMenu.Checked        := ImageScrollBox.MouseMode = mmSelect;
    QuickSelectMenu.Checked   := ImageScrollBox.MouseMode = mmQuickSelect;
    AnnotateMenu.Checked      := ImageScrollBox.MouseMode = mmAnnotate;

    {$ifdef __Delphi4AndAbove}
    ProgressBar.Smooth := True;
    {$endif}

    {$ifdef __CBuilder4AndAbove}
    ProgressBar.Smooth := True;
    {$endif}

    ImageScrollBox.OnReadWriteProgress := Self.OnProgress;

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FormDestroy(Sender: TObject);
begin
    FUndoGraphic.Free;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.OnIdle(Sender: TObject; var Done: Boolean);
begin
    PasteMenu.Enabled := Clipboard.HasFormat(CF_BITMAP);
    PasteBtn.Enabled  := PasteMenu.Enabled;

    CopyMenu.Enabled  :=  not ImageScrollBox.Graphic.Empty;
    CopyBtn.Enabled   := CopyMenu.Enabled;

    OcrImageMenu.Enabled        := CopyMenu.Enabled;

    CopySelectionMenu.Enabled :=
          (ImageScrollBox.MouseHandler is TRubberBandMouseHandler) and
          TRubberBandMouseHandler(ImageScrollBox.MouseHandler).SelectionActive;

    OcrSelectionMenu.Enabled    := CopySelectionMenu.Enabled;
    ZoomToSelectionMenu.Enabled := CopySelectionMenu.Enabled;
    CropToSelectionMenu.Enabled := CopySelectionMenu.Enabled;

    PasteIntoSelectionMenu.Enabled := CopySelectionMenu.Enabled and
                                      PasteMenu.Enabled;

    SaveBtn.Enabled   := not ImageScrollBox.Graphic.Empty;
    PrintBtn.Enabled  := SaveBtn.Enabled;
    PrintMenu.Enabled := SaveBtn.Enabled;

    SaveMenu.Enabled               := SaveBtn.Enabled;
    SaveAsMenu.Enabled             := SaveBtn.Enabled;

    AppendToTiffMenu.Enabled       := SaveBtn.Enabled;
    AppendToDcxMenu.Enabled        := SaveBtn.Enabled;
    AppendToPdfFileMenu.Enabled        := SaveBtn.Enabled;

    RotateMenu.Enabled             := SaveBtn.Enabled;
    Rotate90Menu.Enabled           := SaveBtn.Enabled;
    Rotate180Menu.Enabled          := SaveBtn.Enabled;
    Rotate270Menu.Enabled          := SaveBtn.Enabled;
    RotateArbitraryMenu.Enabled    := SaveBtn.Enabled;
    ShearMenu.Enabled              := SaveBtn.Enabled;
    FlipMenu.Enabled               := SaveBtn.Enabled;
    FlipHorizontalMenu.Enabled     := SaveBtn.Enabled;
    FlipVerticalMenu.Enabled       := SaveBtn.Enabled;
    SharpenMenu.Enabled            := SaveBtn.Enabled;
    SmoothMenu.Enabled             := SaveBtn.Enabled;
    CropMenu.Enabled               := SaveBtn.Enabled;
    BrightnessMenu.Enabled         := SaveBtn.Enabled;
    IncreassBrightnessMenu.Enabled := SaveBtn.Enabled;
    DecreaseBrightnessMenu.Enabled := SaveBtn.Enabled;
    ContrastMenu.Enabled           := SaveBtn.Enabled;
    IncreaseContrastMenu.Enabled   := SaveBtn.Enabled;
    DecreaseContrastMenu.Enabled   := SaveBtn.Enabled;
    GammaMenu.Enabled              := SaveBtn.Enabled;
    ConvertToGrayMenu.Enabled      := SaveBtn.Enabled;
    FormatConversionMenu.Enabled   := SaveBtn.Enabled;
    EdgeDetectionMenu.Enabled      := SaveBtn.Enabled;
    EmbossMenu.Enabled             := SaveBtn.Enabled;
    NegativeMenu.Enabled           := SaveBtn.Enabled;
    ResizeMenu.Enabled             := SaveBtn.Enabled;
    DespeckleMenu.Enabled          := SaveBtn.Enabled;
    EncryptMenu.Enabled            := SaveBtn.Enabled;
    AddWatermarkMenu.Enabled       := SaveBtn.Enabled;
    MoreMenu.Enabled               := SaveBtn.Enabled;
    NbLibMenu.Enabled              := SaveBtn.Enabled;


    UndoMenu.Enabled               := not FUndoGraphic.IsEmpty;

    AnimatedMenu.Enabled           := (ImageScrollBox.FrameCount > 1);

    AddNoteMenu.Enabled :=
          (ImageScrollBox.MouseHandler is TAnnotationMouseHandler);
    AddRectangleMenu.Enabled      := AddNoteMenu.Enabled;
    AddLineMenu.Enabled           := AddNoteMenu.Enabled;
    AddTextMenu.Enabled           := AddNoteMenu.Enabled;
    AddImageMenu.Enabled          := AddNoteMenu.Enabled;
    MakeAnnoPermanentMenu.Enabled := AddNoteMenu.Enabled;

    Done := True;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.CheckDirty;
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ImageScrollBoxZoomChange(const Sender: TImageScrollBox;
  const Zoom: Single);
begin
    { set the OnChange handler to nil, to prevent this call back from
      changing the zoom a second time. }
    ZoomEdit.OnChange := nil;
    try
        ZoomEdit.Text := IntToStr(Round(Zoom));
    finally
        ZoomEdit.OnChange := ZoomEditChange;
    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ImageScrollBoxBeforeSave(const Sender: TImageScrollBox;
  const Graphic: TDibGraphic);
begin
    if ImageScrollBox.Annotations <> '' then
        MessageDlg( 'Annotations will not be saved.'#13#13 +
                    'They must be stored persistently separate from the image file.', mtWarning, [mbOk], 0);
    with Imagescrollbox do
    begin
    //
    end;


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


procedure TEditImageForm1.ImageScrollBoxClick(Sender: TObject);
begin

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ImageScrollBoxRedraw(const Graphic: TDibGraphic);
begin
    XLbl.Caption := IntToStr(Graphic.Width);
    YLbl.Caption := IntToStr(Graphic.Height);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.LoadFile( const FileName : String );
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.OpenMenuClick(Sender: TObject);
var
    OpenDialog   : TOpenPictureDialog;

begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SaveMenuClick(Sender: TObject);
begin
    if ImageScrollBox.Graphic = nil then
        Exit;

    if FFileName = '' then
        SaveAsMenuClick(Sender)
    else
    begin
        ImageScrollBox.SaveToFile(FFileName);

        PageUpDown.Min := 1;
        PageUpDown.Max := 1;

        PageEdit.Text  := '1';

        FDirty := False;
    end;
end;

{--------------------------------------------------------------------------}



procedure TEditImageForm1.SaveAsMenuClick(Sender: TObject);
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AppendToMultiPageFile(
                                     const Title        : String;
                                     const GraphicClass : TDibGraphicClass );
var
    SaveDialog  : TSaveDialog;
begin
    SaveDialog := TSaveDialog.Create(nil);
    try
        SaveDialog.Filter  := GraphicFilter(GraphicClass);
        SaveDialog.Title   := Title;
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


{--------------------------------------------------------------------------}

procedure TEditImageForm1.AppendtoTIFFMenuClick(Sender: TObject);
var
    SaveDialog  : TSaveDialog;
begin
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

procedure TEditImageForm1.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
    PasteMenu.Enabled := Clipboard.HasFormat(CF_BITMAP);
    PasteBtn.Enabled  := PasteMenu.Enabled;

    CopyMenu.Enabled  :=  not ImageScrollBox.Graphic.Empty;
    CopyBtn.Enabled   := CopyMenu.Enabled;

    OcrImageMenu.Enabled        := CopyMenu.Enabled;

    CopySelectionMenu.Enabled :=
          (ImageScrollBox.MouseHandler is TRubberBandMouseHandler) and
          TRubberBandMouseHandler(ImageScrollBox.MouseHandler).SelectionActive;

    OcrSelectionMenu.Enabled    := CopySelectionMenu.Enabled;
    ZoomToSelectionMenu.Enabled := CopySelectionMenu.Enabled;
    CropToSelectionMenu.Enabled := CopySelectionMenu.Enabled;

    PasteIntoSelectionMenu.Enabled := CopySelectionMenu.Enabled and
                                      PasteMenu.Enabled;

    SaveBtn.Enabled   := not ImageScrollBox.Graphic.Empty;
    PrintBtn.Enabled  := SaveBtn.Enabled;
    PrintMenu.Enabled := SaveBtn.Enabled;

    SaveMenu.Enabled               := SaveBtn.Enabled;
    SaveAsMenu.Enabled             := SaveBtn.Enabled;

    AppendToTiffMenu.Enabled       := SaveBtn.Enabled;
    AppendToDcxMenu.Enabled        := SaveBtn.Enabled;
    AppendToPdfFileMenu.Enabled        := SaveBtn.Enabled;

    RotateMenu.Enabled             := SaveBtn.Enabled;
    Rotate90Menu.Enabled           := SaveBtn.Enabled;
    Rotate180Menu.Enabled          := SaveBtn.Enabled;
    Rotate270Menu.Enabled          := SaveBtn.Enabled;
    RotateArbitraryMenu.Enabled    := SaveBtn.Enabled;
    ShearMenu.Enabled              := SaveBtn.Enabled;
    FlipMenu.Enabled               := SaveBtn.Enabled;
    FlipHorizontalMenu.Enabled     := SaveBtn.Enabled;
    FlipVerticalMenu.Enabled       := SaveBtn.Enabled;
    SharpenMenu.Enabled            := SaveBtn.Enabled;
    SmoothMenu.Enabled             := SaveBtn.Enabled;
    CropMenu.Enabled               := SaveBtn.Enabled;
    BrightnessMenu.Enabled         := SaveBtn.Enabled;
    IncreassBrightnessMenu.Enabled := SaveBtn.Enabled;
    DecreaseBrightnessMenu.Enabled := SaveBtn.Enabled;
    ContrastMenu.Enabled           := SaveBtn.Enabled;
    IncreaseContrastMenu.Enabled   := SaveBtn.Enabled;
    DecreaseContrastMenu.Enabled   := SaveBtn.Enabled;
    GammaMenu.Enabled              := SaveBtn.Enabled;
    ConvertToGrayMenu.Enabled      := SaveBtn.Enabled;
    FormatConversionMenu.Enabled   := SaveBtn.Enabled;
    EdgeDetectionMenu.Enabled      := SaveBtn.Enabled;
    EmbossMenu.Enabled             := SaveBtn.Enabled;
    NegativeMenu.Enabled           := SaveBtn.Enabled;
    ResizeMenu.Enabled             := SaveBtn.Enabled;
    DespeckleMenu.Enabled          := SaveBtn.Enabled;
    EncryptMenu.Enabled            := SaveBtn.Enabled;
    AddWatermarkMenu.Enabled       := SaveBtn.Enabled;
    MoreMenu.Enabled               := SaveBtn.Enabled;
    NbLibMenu.Enabled              := SaveBtn.Enabled;


    UndoMenu.Enabled               := not FUndoGraphic.IsEmpty;

    AnimatedMenu.Enabled           := (ImageScrollBox.FrameCount > 1);

    AddNoteMenu.Enabled :=
          (ImageScrollBox.MouseHandler is TAnnotationMouseHandler);
    AddRectangleMenu.Enabled      := AddNoteMenu.Enabled;
    AddLineMenu.Enabled           := AddNoteMenu.Enabled;
    AddTextMenu.Enabled           := AddNoteMenu.Enabled;
    AddImageMenu.Enabled          := AddNoteMenu.Enabled;
    MakeAnnoPermanentMenu.Enabled := AddNoteMenu.Enabled;

    Done := True;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AppendtoDCXMenuClick(Sender: TObject);
var
    SaveDialog  : TSaveDialog;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AppendtoPDFfileMenuClick(Sender: TObject);
begin
    AppendToMultiPageFile( 'Append image to PDF graphic file',
                           TPdfGraphic );
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ExitMenuClick(Sender: TObject);
begin
    Self.Close;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.CopyMenuClick(Sender: TObject);
begin
    if ImageScrollBox.Graphic <> nil then
        Clipboard.Assign(ImageScrollBox.Graphic);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.PasteMenuClick(Sender: TObject);
begin
    CheckDirty;

    { check if the clipboard has an image before saving the undo graphic }
    if Clipboard.HasFormat(CF_BITMAP) then
    begin
        FUndoGraphic.Assign(ImageScrollBox.Graphic);

        if ImageScrollBox.AssignFromClipBoard then
        begin
            FDirty    := True;
            FFileName := '';
        end;
    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.OnAcquire( const DibHandle    : THandle;
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
        Self.ZoomEditChange(EditImageForm);

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

        Self.ZoomEditChange(EditImageForm);
    end;
    {$WARNINGS ON}
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   CheckDirty;
   // action := CaFree;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.OnProgress( const Sender          : TObject;
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ZoomEditChange(Sender: TObject);
begin
    try
        ImageScrollBox.ZoomPercent := StrToInt(ZoomEdit.Text);
    except
        { trap exception in StrToIn }
        ImageScrollBox.ZoomPercent := 100;
    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.PrintSetupMenuClick(Sender: TObject);
var
    Dialog : TPrinterSetupDialog;

begin
    Dialog := TPrinterSetupDialog.Create(nil);
    try
        Dialog.Execute;
    finally
        Dialog.Free;
    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.UndoMenuClick(Sender: TObject);
begin
    if not FUndoGraphic.IsEmpty then
    begin

        ImageScrollBox.Graphic := FUndoGraphic;
    //    ShowAnnotationsMenuClick(Self);
        FUndoGraphic.Clear;
 // AnnotateMenuClick(self);

  { jqannotation.first;
    while not(jqannotation.EOF) do
    begin
    case jqAnnotation.FieldByName('ZANNOTATION_TYPE_ID').AsInteger of
     1: ShowAnnotation(jqannotation);
     2: ShowRectangle(jqannotation);
     3: ShowLine(jqannotation);
     4: Showtext(jqannotation);
     5: ShowImage(jqannotation);
    end;

      jqannotation.next;
    end; //}
 //   ShowAnnotationsMenu.Checked := true;//not ShowAnnotationsMenu.Checked;
  //  ImageScrollBox.AlwaysShowAnnotations := false;//ShowAnnotationsMenu.Checked;
   //     ShowAnnotationsMenuClick(self);
    //    ShowAnnotationsMenuClick(self);
   // ShowAnnotations;
   // SelectMenuClick(Self);

 //  ImageScrollBox.AlwaysShowAnnotations := false;


    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.Rotate90MenuClick(Sender: TObject);
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

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.Rotate180MenuClick(Sender: TObject);
var
    Transform : TRotateTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TRotateTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.Angle      := 180;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.Rotate270MenuClick(Sender: TObject);
var
    Transform : TRotateTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TRotateTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.Angle      := 270;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.RotateArbitraryMenuClick(Sender: TObject);
var
    Transform : TRotateTransform;
    AngleStr  : String;
    Angle     : Double;
begin
    AngleStr := '45';
    if not InputQuery('Rotate', 'Rotation Angle', AngleStr) then
        Exit;

    Angle := StrToFloat(AngleStr);

    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TRotateTransform.Create;
    try
        Transform.OnProgress      := Self.OnProgress;
        Transform.Angle           := Angle;
        Transform.BackgroundColor := MakeRgb(255, 255, 255);
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ShearHorzMenuClick(Sender: TObject);
var
    Transform : TShearTransform;
    AngleStr  : String;
    Angle     : Double;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ShearVertMenuClick(Sender: TObject);
var
    Transform : TShearTransform;
    AngleStr  : String;
    Angle     : Double;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FlipHorizontalMenuClick(Sender: TObject);
var
    Transform : TFlipHorizontalTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FlipVerticalMenuClick(Sender: TObject);
var
    Transform : TFlipVerticalTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.NegativeMenuClick(Sender: TObject);
var
    Transform : TNegativeTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TNegativeTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.CropMenuClick(Sender: TObject);
var
    Transform : TCropTransform;
    Graphic   : TDibGraphic;

    CropForm  : TCropForm;

    Left      : LongInt;
    Top       : LongInt;
    Right     : LongInt;
    Bottom    : LongInt;

begin
    { prevent compiler warning }
    Left      := 0;
    Top       := 0;
    Right     := 0;
    Bottom    := 0;

    CropForm := TCropForm.Create(nil);
    try
        if CropForm.ShowModal = mrOk then
        begin
            Left   := StrToInt(CropForm.LeftFld.Text);
            Top    := StrToInt(CropForm.TopFld.Text);
            Right  := StrToInt(CropForm.RightFld.Text);
            Bottom := StrToInt(CropForm.BottomFld.Text);
        end
        else
            Abort;
    finally
        CropForm.Free;
    end;

    Graphic := ImageScrollBox.Graphic;

    FUndoGraphic.Assign(Graphic);
    Transform := TCropTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;

        Transform.Left   := Left;
        Transform.Right  := Right;
        Transform.Top    := Top;
        Transform.Bottom := Bottom;

        Transform.ApplyOnDest(FUndoGraphic, Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SharpenMenuClick(Sender: TObject);
var
    Transform : TSharpenTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TSharpenTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SmoothMenuClick(Sender: TObject);
var
    Transform : TSmoothTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TSmoothTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.IncreassBrightnessMenuClick(Sender: TObject);
var
    Transform : TBrightnessTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.DecreaseBrightnessMenuClick(Sender: TObject);
var
    Transform : TBrightnessTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.IncreaseContrastMenuClick(Sender: TObject);
var
    Transform : TContrastTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.DecreaseContrastMenuClick(Sender: TObject);
var
    Transform : TContrastTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EdgeDetectionMenuClick(Sender: TObject);
var
    Transform : TEdgeTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEdgeTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EmbossMenuClick(Sender: TObject);
var
    Transform : TEmbossTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEmbossTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.GammaMenuClick(Sender: TObject);
var
    Transform : TGammaTransform;
    GammaStr  : String;
    Gamma     : Double;
begin
    GammaStr := '1.0';
    if not InputQuery('Gamma', 'Gamma value (0.1 - 7.0)', GammaStr) then
        Exit;

    Gamma := StrToFloat(GammaStr);

    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TGammaTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.Gamma      := Gamma;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.DespeckleMenuClick(Sender: TObject);
var
    Transform : TDespeckleTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TDespeckleTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EncryptMenuClick(Sender: TObject);
var
    Transform : TEncryptTransform;
    Key       : String;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ConvertToGrayMenuClick(Sender: TObject);
var
    Transform : TConvertToGrayTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.DeskewMenuClick(Sender: TObject);
var
    Transform : TNBDeskewTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TNBDeskewTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.CleanupBorderMenuClick(Sender: TObject);
var
    Transform : TNBCleanupBorderTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TNBCleanupBorderTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ResizeMenuClick(Sender: TObject);
var
    Form         : TResizeForm;
    Transform    : TResizeTransform;
    ImageFormat  : TImageFormat;

begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FormatConversionMenuClick(Sender: TObject);
var
    Form       : TFormatConversionForm;
    Transform  : TImageFormatTransform;
    DestFormat : TImageFormat;
    Quantize   : Boolean;
    Dither     : Boolean;

begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AboutMenuClick(Sender: TObject);
var
    Form : TAboutBox;
begin
    Form := TAboutBox.Create(nil);
    try
        Form.ShowModal;
    finally
        Form.Free;
    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.PrintMenuClick(Sender: TObject);
var
    PrintMode      : TEnvisionPrintMode;
    Form           : TPrintOptionForm;
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
    Form := TPrintOptionForm.Create(nil);
    try
        if Form.ShowModal <> mrOk then
            Abort;

        PrintMode := Form.PrintMode;
        Width     := StrToFloat(Form.WidthFld.Text);
        Height    := StrToFloat(Form.HeightFld.Text);
    finally
        Form.Free;
    end;

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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SelectScannerMenuClick(Sender: TObject);
begin
    if not Scanner.IsConfigured then
    begin
        ShowMessage('A scanner is not configured on your computer');
        Exit;
    end;

    Scanner.SelectScanner;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ScanMenuClick(Sender: TObject);
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
    case MessageDlg( 'Multi-page scan ?',
                      mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
        mrYes    : ScanInfo.MultiPage := True;
        mrNo     : ScanInfo.MultiPage := False;
        mrCancel : Exit;
    end; { case }

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
    end;

 end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AntiAliasedMenuClick(Sender: TObject);
begin
    AntiAliasedMenu.Checked := not AntiAliasedMenu.Checked;

    ImageScrollBox.AntiAliased := AntiAliasedMenu.Checked;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ActualSizeMenuClick(Sender: TObject);
begin
    ImageScrollBox.ZoomMode := zmOriginalSize;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FullPageMenuClick(Sender: TObject);
begin
    ImageScrollBox.ZoomMode := zmFullPage;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FitToPageMenuClick(Sender: TObject);
begin
    ImageScrollBox.ZoomMode := zmFitToPage;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FitWidthMenuClick(Sender: TObject);
begin
    ImageScrollBox.ZoomMode := zmFitWidth;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.FitHeightMenuClick(Sender: TObject);
begin
    ImageScrollBox.ZoomMode := zmFitHeight;
end;

{--------------------------------------------------------------------------}

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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.PageEditChange(Sender: TObject);
var
    FrameNo   : LongInt;
    NumberStr : AnsiString;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AnimatedMenuClick(Sender: TObject);
begin
    AnimatedMenu.Checked := not AnimatedMenu.Checked;

    ImageScrollBox.Animated := AnimatedMenu.Checked;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.CenteredMenuClick(Sender: TObject);
begin
    CenteredMenu.Checked    := not CenteredMenu.Checked;

    ImageScrollBox.Centered := CenteredMenu.Checked;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.DragMenuClick(Sender: TObject);
begin
    ImageScrollBox.MouseMode := mmDrag;

    DragMenu.Checked         := True;
    QuickSelectMenu.Checked  := False;
    SelectMenu.Checked       := False;
    AnnotateMenu.Checked     := False;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.QuickSelectMenuClick(Sender: TObject);
begin
    ImageScrollBox.MouseMode := mmQuickSelect;

    DragMenu.Checked         := False;
    QuickSelectMenu.Checked  := True;
    SelectMenu.Checked       := False;
    AnnotateMenu.Checked     := False;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SelectMenuClick(Sender: TObject);
begin
    ImageScrollBox.MouseMode := mmSelect;

    { This code does the same thing, but uses the mmUser mouse mode and
      assigns the MouseHandler class explicity
    ImageScrollBox.MouseMode    := mmUser;
    ImageScrollBox.MouseHandler := TRubberBandMouseHandler.Create(ImageScrollBox);
    }
    DragMenu.Checked         := False;
    QuickSelectMenu.Checked  := False;
    SelectMenu.Checked       := True;
    AnnotateMenu.Checked     := False;

    (ImageScrollBox.MouseHandler as TRubberBandMouseHandler).Animated  := True;
    (ImageScrollBox.MouseHandler as TRubberBandMouseHandler).ShowGrips := True;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AnnotateMenuClick(Sender: TObject);
begin
    ImageScrollBox.MouseMode := mmAnnotate;

    DragMenu.Checked         := False;
    QuickSelectMenu.Checked  := False;
    SelectMenu.Checked       := False;
    AnnotateMenu.Checked     := True;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.CopySelectionMenuClick(Sender: TObject);
begin
    ImageScrollBox.CopySelectionToClipBoard;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.CropToSelectionMenuClick(Sender: TObject);
begin
    { MB Nov 13, 2001. Add Undo when using CropToSelection }
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    ImageScrollBox.CropToSelection;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.PasteIntoSelectionMenuClick(Sender: TObject);
var
    Graphic : TDibGraphic;
begin
    Graphic := TDibGraphic.Create;
    try
        Graphic.Assign(Clipboard);
        FUndoGraphic.Assign(ImageScrollBox.Graphic);
        ImageScrollBox.CopyGraphicIntoSelection(Graphic);
        ImageScrollBox.Redraw(True);
    finally
        Graphic.Free;
    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ImageScrollBoxRubberbandChange(const Rect: TRect);
begin
    if (Rect.Left=0) and (Rect.Top=0) and (Rect.Right=0) and (Rect.Bottom=0) then
        BandLabel.Caption := ''
    else
        BandLabel.Caption := '(' + IntToStr(Rect.Left) + ',' + IntToStr(Rect.Top)
                             + '),(' + IntToStr(Rect.Right) + ',' +
                             IntToStr(Rect.Bottom) + ')';
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ImageScrollBoxQuickSelect(
  const Sender: TImageScrollBox; const Graphic: TDibGraphic;
  const Rect: TRect);
begin
    if MessageDlg( 'Copy selection to clipboard ?', mtConfirmation,
                   [mbYes, mbNo], 0) = mrYes then
        Clipboard.Assign(Graphic);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ZoomtoSelectionMenuClick(Sender: TObject);
begin
    ImageScrollBox.ZoomToSelection;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.OpenThumbnailMenuClick(Sender: TObject);
var
    ThumbnailForm : TThumbnailForm;
    FileName      : String;

begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ThumbnailCreationMenuClick(Sender: TObject);
var
    ThumbnailCreator : TThumbnailCreator;
    FileNameMask     : String;
    OutputDirectory  : String;

begin
    FileNameMask := '';
    if not InputQuery( 'Thumbnail creation source', 'Example, C:\IMAGES\*.JPG', FileNameMask ) then
        Exit;

    { Mar 12, 2003. Output was previously hardcoded to c:\temp }
    OutputDirectory := 'C:\Temp';
    if not InputQuery( 'Output directory', '', OutputDirectory ) then
        Exit;


    ThumbnailCreator := TThumbnailCreator.Create;
    try
        ThumbnailCreator.OnProgress         := Self.OnProgress;
        ThumbnailCreator.EnlargeSmallImages := True;
        ThumbnailCreator.AddFile( FileNameMask );

        if ThumbnailCreator.FileCount = 0 then
        begin
            MessageDlg('Thumbnail file list is empty', mtError, [mbOk], 0);
            Exit;
        end;

        ThumbnailCreator.OutputDirectory   := OutputDirectory;

        ThumbnailCreator.BackgroundColor   := MakeRgb( 0, 0, 128 );

        ThumbnailCreator.OverrideDestFormat := True;
        ThumbnailCreator.DestFormat         := ifTrueColor;

        ThumbnailCreator.Execute;

    finally
        ThumbnailCreator.Free;
    end;
end;

{--------------------------------------------------------------------------}

procedure ConfigureOCR( const OcrEngine : TOcrEngine );
begin
    if OcrEngine.Driver is TJOCRDriver then
    begin
        TJOCRDriver(OcrEngine.Driver).InputFileFormat := 'pbm';
        TJOCRDriver(OcrEngine.Driver).OcrProgram      :=
            AddBackSlashToPath(ExtractFilePath(ParamStr(0))) + 'gocr049.exe';
    end;

    if OcrEngine.Driver is TTesseractOcrDriver then
    begin
        TTesseractOcrDriver(OcrEngine.Driver).InputFileFormat := 'pbm';
//       TTesseractOcrDriver(OcrEngine.Driver).TesseractFolder := 'C:\Tesseract';
    end;

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.OcrImage(const DriverClass : TOcrDriverClass);
var
    OcrEngine : TOcrEngine;
    Results   : TStringList;
begin
    OcrEngine := TOcrEngine.Create(DriverClass);
    Results   := TStringList.Create;
    try
        ConfigureOCR(OcrEngine);

        OcrEngine.Recognize( ImageScrollBox.Graphic, Results, Self.OnProgress );
        ShowOcrResults(Results);

    finally
        Results.Free;
        OcrEngine.Free;
    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.OcrSelection(const DriverClass : TOcrDriverClass);
var
    OcrEngine : TOcrEngine;
    Results   : TStringList;
    Region    : Windows.TRect;
begin
    OcrEngine := TOcrEngine.Create(DriverClass);
    Results   := TStringList.Create;
    try
        ConfigureOCR(OcrEngine);

        (ImageScrollBox.MouseHandler as TRubberBandMouseHandler).GetSourceSelection(Region);
        OcrEngine.RecognizeRegion( ImageScrollBox.Graphic, Region,
                                   Results, Self.OnProgress );
        ShowOcrResults(Results);
    finally
        Results.Free;
        OcrEngine.Free;
    end;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AddNoteMenuClick(Sender: TObject);
var Stick1 :TStickNoteMark;rect1:trect;
begin
   Stick1 :=  ImageScrollBox.AddNote;
   rect1 := Stick1.MarkRect;
   Stick1.ID := -1;
{if jqfolders.params.paramByName('pid').AsString <> '' then
   begin
   jqAnnotation.open;
   jqAnnotation.insert;
   Stick1.ID := jqAnnotation.FieldByName('ID').AsInteger ;
   jqAnnotation.FieldByName('ZANNOTATION_TYPE_ID').AsInteger := 1;
   jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger := Stick1.color;
   if Stick1.visible then jqAnnotation.FieldByName('VISIBLEX').AsInteger := 1;
   jqAnnotation.FieldByName('leftx').AsInteger := rect1.left;
   jqAnnotation.FieldByName('topx').AsInteger := rect1.top;
   jqAnnotation.FieldByName('rightx').AsInteger := rect1.right;
   jqAnnotation.FieldByName('bottomx').AsInteger := rect1.bottom;


   jqAnnotation.FieldByName('text').AsString := Stick1.text;
   jqAnnotation.FieldByName('FONT_NAME').AsString := Stick1.font.name;

   jqAnnotation.FieldByName('FONT_SIZE').AsInteger := Stick1.font.size;
   jqAnnotation.FieldByName('FONT_COLOR').AsInteger := Stick1.font.color;
   jqAnnotation.FieldByName('FONT_NAME_LENGTH').AsInteger := length(Stick1.font.name);
   if fsITALIC in Stick1.font.style then jqAnnotation.FieldByName('ISITALIC').AsInteger := 1;
   if fsBOLD in Stick1.font.style then jqAnnotation.FieldByName('ISBOLD').AsInteger := 1;
   if fsUNDERLINE in Stick1.font.style then jqAnnotation.FieldByName('ISUNDERLINE').AsInteger := 1;
   if fsSTRIKEOUT in Stick1.font.style then jqAnnotation.FieldByName('ISSTRIKEOUT').AsInteger := 1;
   jqAnnotation.POST;
   end;
   //}
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AddRectangleMenuClick(Sender: TObject);
var RectMark1 :TRectangleMark; rect1:trect;
begin
    RectMark1 := ImageScrollBox.AddRectangle;
    rect1 := RectMark1.MarkRect;
    RectMark1.ID := -1;
{   if jqfolders.params.paramByName('pid').AsString <> '' then
   begin
   jqAnnotation.open;
   jqAnnotation.insert;//
   RectMark1.ID := jqAnnotation.FieldByName('ID').AsInteger ;
   jqAnnotation.FieldByName('ZANNOTATION_TYPE_ID').AsInteger := 2;
   jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger := RectMark1.color;
   if RectMark1.visible then jqAnnotation.FieldByName('VISIBLEX').AsInteger := 1;
   jqAnnotation.FieldByName('leftx').AsInteger := rect1.left;
   jqAnnotation.FieldByName('topx').AsInteger := rect1.top;
   jqAnnotation.FieldByName('rightx').AsInteger := rect1.right;
   jqAnnotation.FieldByName('bottomx').AsInteger := rect1.bottom;
   jqAnnotation.FieldByName('PENWIDTH').AsInteger :=  RectMark1.LineSize ;
    if RectMark1.HightLight then jqAnnotation.FieldByName('ISHIGHLIGHT').AsInteger := 1;
    if RectMark1.FILLED then jqAnnotation.FieldByName('ISFILLED').AsInteger := 1;
   jqAnnotation.POST;
   end;
   //}

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AddLineMenuClick(Sender: TObject);
var lineMark1 :TlineMark; rect1:trect;
begin

    lineMark1 :=ImageScrollBox.AddLine;
    rect1 := lineMark1.MarkRect;
    lineMark1.ID := -1;
{   if jqfolders.params.paramByName('pid').AsString <> '' then
   begin
   jqAnnotation.open;
   jqAnnotation.insert;//
   lineMark1 .ID := jqAnnotation.FieldByName('ID').AsInteger ;
   jqAnnotation.FieldByName('ZANNOTATION_TYPE_ID').AsInteger := 3;
   jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger := lineMark1.color;
   if lineMark1.visible then jqAnnotation.FieldByName('VISIBLEX').AsInteger := 1;
   jqAnnotation.FieldByName('leftx').AsInteger := rect1.left;
   jqAnnotation.FieldByName('topx').AsInteger := rect1.top;
   jqAnnotation.FieldByName('rightx').AsInteger := rect1.right;
   jqAnnotation.FieldByName('bottomx').AsInteger := rect1.bottom;

   jqAnnotation.FieldByName('LINE_SIZE').AsInteger :=  lineMark1.LineSize ;

   if lotop = lineMark1.ORIENTATION then jqAnnotation.FieldByName('LINE_ORIENTATION').AsInteger :=  0; { horizontal line }
 //  if loRight = lineMark1.ORIENTATION then jqAnnotation.FieldByName('LINE_ORIENTATION').AsInteger :=  1; { vertical line }
 //  if loTLBR = lineMark1.ORIENTATION then jqAnnotation.FieldByName('LINE_ORIENTATION').AsInteger :=  2;   { negative slope }
  // if loBLTR  = lineMark1.ORIENTATION then jqAnnotation.FieldByName('LINE_ORIENTATION').AsInteger :=  3;  { postive slope }
{

   jqAnnotation.POST;
   end;
//}


end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AddTextMenuClick(Sender: TObject);
var textMark1 :TtextMark; rect1:trect;
begin
    textMark1 :=ImageScrollBox.AddText;
    textMark1 .ID := -1;
    rect1 := textMark1.MarkRect;
 {  if jqfolders.params.paramByName('pid').AsString <> '' then
   begin
   jqAnnotation.open;
   jqAnnotation.insert;//
   textMark1.ID := jqAnnotation.FieldByName('ID').AsInteger ;
   jqAnnotation.FieldByName('ZANNOTATION_TYPE_ID').AsInteger := 4;
   jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger := textMark1.color;
   if textMark1.visible then jqAnnotation.FieldByName('VISIBLEX').AsInteger := 1;
   jqAnnotation.FieldByName('leftx').AsInteger := rect1.left;
   jqAnnotation.FieldByName('topx').AsInteger := rect1.top;
   jqAnnotation.FieldByName('rightx').AsInteger := rect1.right;
   jqAnnotation.FieldByName('bottomx').AsInteger := rect1.bottom;

   jqAnnotation.FieldByName('text').AsString := textMark1.text;
   jqAnnotation.FieldByName('FONT_NAME').AsString := textMark1.font.name;

   jqAnnotation.FieldByName('FONT_SIZE').AsInteger := textMark1.font.size;
   jqAnnotation.FieldByName('FONT_COLOR').AsInteger := textMark1.font.color;
   jqAnnotation.FieldByName('FONT_NAME_LENGTH').AsInteger := length(textMark1.font.name);
   if fsITALIC in textMark1.font.style then jqAnnotation.FieldByName('ISITALIC').AsInteger := 1;
   if fsBOLD in textMark1.font.style then jqAnnotation.FieldByName('ISBOLD').AsInteger := 1;
   if fsUNDERLINE in textMark1.font.style then jqAnnotation.FieldByName('ISUNDERLINE').AsInteger := 1;
   if fsSTRIKEOUT in textMark1.font.style then jqAnnotation.FieldByName('ISSTRIKEOUT').AsInteger := 1;
   jqAnnotation.POST;
   end;
   //}

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AddImageMenuClick(Sender: TObject);
var ImageMark1 :TimageMark; rect1:trect;
Bitmap1: TBitmap; FromStream : TMemoryStream;     jadoset : TADODataSet;
begin
    ImageMark1 := ImageScrollBox.AddImage;
    rect1 := ImageMark1.MarkRect;
    ImageMark1 .ID := -1;
 {  if jqfolders.params.paramByName('pid').AsString <> '' then
   begin
   jqAnnotation.open;
   jqAnnotation.insert;
   ImageMark1.ID := jqAnnotation.FieldByName('ID').AsInteger ;
   jqAnnotation.FieldByName('ZANNOTATION_TYPE_ID').AsInteger := 5;
   jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger := ImageMark1.color;
   if ImageMark1.visible then jqAnnotation.FieldByName('VISIBLEX').AsInteger := 1;
   jqAnnotation.FieldByName('leftx').AsInteger := rect1.left;
   jqAnnotation.FieldByName('topx').AsInteger := rect1.top;
   jqAnnotation.FieldByName('rightx').AsInteger := rect1.right;
   jqAnnotation.FieldByName('bottomx').AsInteger := rect1.bottom;
   if ImageMark1.TRANSPARENT then jqAnnotation.FieldByName('IMAGE_TRANSPARENT').AsInteger := 1;
   //FDATA

      jqAnnotation.POST;
      Bitmap1 := TBitmap.create;
      DIBToBitmap(ImageMark1.DIBHandle,Bitmap1);
      FromStream := TMemoryStream.Create();
      Bitmap1.SaveToStream(FromStream);
      jadoset := TADODataSet.Create(self);
      jadoset.Connection :=  jqAnnotation.AmjServerDB;
      jadoset.CommandText := 'select * from jdms.JPROJ_DOCS_FILES_ANNOTATION where id = ' + jqAnnotation.fieldbyname('id').asstring;
      jadoset.open;
      jadoset.edit;
      TBlobField(jadoset.FIELDBYNAME('FDATA')).LoadFromStream(FromStream);
      jadoset.post;
    //  jqAnnotation.POST;
   end;
//}
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.MakeAnnoPermanentMenuClick(Sender: TObject);
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    ImageScrollBox.BurnAnnotations;
    Self.FDirty := True;

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ShowAnnotationsMenuClick(Sender: TObject);
begin
    ShowAnnotationsMenu.Checked := not ShowAnnotationsMenu.Checked;
    ImageScrollBox.AlwaysShowAnnotations := ShowAnnotationsMenu.Checked;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.TransymOcrImageMenuClick(Sender: TObject);
begin
  OcrImage( TTransymOcrDriver );
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.TransymOcrSelectionMenuClick(Sender: TObject);
begin
    OcrSelection(TTransymOcrDriver);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.RecogniformHandprintMenuClick(Sender: TObject);
begin
    {$ifdef Win64}
    MessageDlg( 'Recogniform ICR is only available in 32 bits.'#13 +
                'http://www.recogniform.com'#13,
                mtInformation, [mbOk], 0 );

    {$else}
    OcrSelection(TRecogniformICRDriver);
    {$endif}
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.JOcrImageMenuClick(Sender: TObject);
begin
    MessageDlg( 'This features requires GOCR049.EXE, available from'#13 +
                'http://jocr.sourceforge.net/'#13 +
                'Place that EXE in the same folder as your application.', mtInformation, [mbOk], 0 );
    OcrImage(TJOCRDriver);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.JOcrSelectionMenuClick(Sender: TObject);
begin
    MessageDlg( 'This features requires GOCR049.EXE, available from'#13 +
                'http://jocr.sourceforge.net/'#13 +
                'Place that EXE in the same folder as your application.', mtInformation, [mbOk], 0 );
    OcrSelection(TJOCRDriver);
end;

procedure TEditImageForm1.jqAnnotationAfterInsert(DataSet: TDataSet);
begin
  jqAnnotation.FieldByName('id').AsString := japp.db.get_seq;
  jqAnnotation.FieldByName('DOC_FILEID').AsString := jqfolders.FieldByName('id').AsString;;
end;

procedure TEditImageForm1.jqAnnotationBeforeOpen(DataSet: TDataSet);
begin
   jqAnnotation.params.paramByName('fid').AsString := jqfolders.FieldByName('id').AsString;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.TesseractImageMenuClick(Sender: TObject);
begin
    MessageDlg( 'This features requires Tesseract OCR engine from Google installed.'#13 +
                'Download from, https://code.google.com/p/tesseract-ocr/', mtInformation, [mbOk], 0 );
    OcrImage(TTesseractOcrDriver);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.TesseractSelectionMenuClick(Sender: TObject);
begin
    MessageDlg( 'This features requires Tesseract OCR engine from Google installed.'#13 +
                'Download from, https://code.google.com/p/tesseract-ocr/', mtInformation, [mbOk], 0 );

    OcrSelection(TTesseractOcrDriver);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.BlowupPanelMenuClick(Sender: TObject);
begin
    if BlowupPanelMenu.Checked then
    begin
        FBlowupForm.Free;
    end
    else
    begin
        FBlowupForm := TBlowupForm.Create(Self);
        FBlowupForm.Panel.Source := ImageScrollBox;
        FBlowupForm.Show;
    end;

    BlowupPanelMenu.Checked := not BlowupPanelMenu.Checked;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.OverviewPanelMenuClick(Sender: TObject);
begin
    if OverviewPanelMenu.Checked then
    begin
        FOverviewForm.Free;
    end
    else
    begin
        FOverviewForm := TOverviewForm.Create(Self);
        FOverviewForm.Panel.Source := ImageScrollBox;
        FOverviewForm.Show;
    end;

    OverviewPanelMenu.Checked := not OverviewPanelMenu.Checked;

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AddWatermarkMenuClick(Sender: TObject);
var
    WatermarkTransform : TWatermarkTransform;
    WatermarkImage     : TDibGraphic;
     OpenPictureDialog : TOpenPictureDialog;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EmbossMenuExClick(Sender: TObject);
var
    Transform : TEmbossColorTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EmbossLightMenuClick(Sender: TObject);
var
    Transform : TEmbossLightTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EmbossMediumMenuClick(Sender: TObject);
var
    Transform : TEmbossMediumTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EmbossDarkMenuClick(Sender: TObject);
var
    Transform : TEmbossDarkTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.GlowMenuClick(Sender: TObject);
var
    Transform : TGlowTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.BlurBartlettMenuClick(Sender: TObject);
var
    Transform : TBlurBartlettTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.BlurGaussianMenuClick(Sender: TObject);
var
    Transform : TBlurGaussianTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.BlurMenuClick(Sender: TObject);
var
    Transform : TBlurTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.BlurSoftlyMenuClick(Sender: TObject);
var
    Transform : TBlurSoftlyTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.BlurMoreMenuClick(Sender: TObject);
var
    Transform : TBlurMoreTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.BlurAverageMenuClick(Sender: TObject);
var
    Transform : TBlurAverageTransform;
begin
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

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EdgeEnhanceMenuClick(Sender: TObject);
var
    Transform : TEdgeEnhanceTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEdgeEnhanceTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EdgeStrongMenuClick(Sender: TObject);
var
    Transform : TEdgesStrongTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEdgesStrongTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EdgeWeakMenuClick(Sender: TObject);
var
    Transform : TEdgesWeakTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEdgesWeakTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SharpenNormalMenuClick(Sender: TObject);
var
    Transform : TNormalSharpenTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TNormalSharpenTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SharpenMoreMenuClick(Sender: TObject);
var
    Transform : TSharpenMoreTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TSharpenMoreTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SharpenLessMenuClick(Sender: TObject);
var
    Transform : TSharpenLessTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TSharpenLessTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.UnsharpMaskMenuClick(Sender: TObject);
var
    Transform : TUnSharpMaskTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TUnSharpMaskTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SharpenDirectionalMenuClick(Sender: TObject);
var
    Transform : TSharpenDirectionalTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TSharpenDirectionalTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.AverageMenuClick(Sender: TObject);
var
    Transform : TAverageTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TAverageTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.PrewittMenuClick(Sender: TObject);
var
    Transform : TPrewittTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TPrewittTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.TraceContourMenuClick(Sender: TObject);
var
    Transform : TTraceContourTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TTraceContourTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.EtchMenuClick(Sender: TObject);
var
    Transform : TEtchTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEtchTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.LaplacianHVMenuClick(Sender: TObject);
var
    Transform : TLaplacianHVTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TLaplacianHVTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.LaplacianOmniMenuClick(Sender: TObject);
var
    Transform : TLaplacianOmniTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TLaplacianOmniTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SobelPassMenuClick(Sender: TObject);
var
    Transform : TSobelPassTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TSobelPassTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.WaggleMenuClick(Sender: TObject);
var
    Transform : TWaggleTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TWaggleTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.PatternMenuClick(Sender: TObject);
var
    Transform : TPatternTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TPatternTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.GlowingEdgeMenuClick(Sender: TObject);
var
    Transform : TGlowingEdgeTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TGlowingEdgeTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.JitteryMenuClick(Sender: TObject);
var
    Transform : TJitteryTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TJitteryTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SandyMenuClick(Sender: TObject);
var
    Transform : TSandyTransform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TSandyTransform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.ManHildreth5x5MenuClick(Sender: TObject);
var
    Transform : TManHildreth5x5Transform;
begin
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TManHildreth5x5Transform.Create;
    try
        Transform.OnProgress := Self.OnProgress;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);
end;

procedure TEditImageForm1.MouseModeMenuClick(Sender: TObject);
begin

end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.TimerTimer(Sender: TObject);
begin
    CenteredMenu.Enabled := (ImageScrollBox.MouseMode = mmDrag);
    CenteredMenu.Checked := ImageScrollBox.Centered;
end;

{--------------------------------------------------------------------------}

procedure TEditImageForm1.SaveAnnoPermanentClick(Sender: TObject);
var
  {MarkList:Tlist;
  i,lnth: integer; xl,xr,yt,yb:integer; str :string;Font1 :TFont;//}
  result,Str:AnsiString;
  myFile : TextFile;
  temp: TAnnotationsEditor;
   Mark : TGenericMark;
   AnnotationNo : Integer;
   ImageMark1 : timagemark; Bitmap1 :Tbitmap;FromStream :TMemoryStream;
    jadoset : TADODataSet; rect1 :Trect;
    IdFound : boolean;
begin
{ ----------------------------------------------------------------------------}


  inherited;
  jqAnnotation.Jidname := 'id';
temp:=TAnnotationMouseHandler(ImageScrollBox.FMouseHandler).FEditor;
if temp.count=0 then exit;
Str := Str + '(' + AnsiString(IntToStr(temp.count)) + ')';
    for AnnotationNo := 0 to temp.Count-1 do
    begin

        Mark := temp.Items[AnnotationNo];
        if not ( ( Mark.ID > 0 ) and ( Mark.ID <= High(integer) ) )then
                        begin
                      JqAnnotation.insert;
                       Mark.ID := JqAnnotation.fieldByName('ID').AsInteger ;
                        end
                        else
                        begin
                        JqAnnotation.first;
        while not(JqAnnotation.eof) and ( JqAnnotation.fieldByName('ID').AsInteger <> Mark.ID )do  JqAnnotation.next;
                        JqAnnotation.edit;
                        end;

        if Mark is TStickNoteMark then begin
//            JqAnnotation.insert;
            Str :=  AnsiString(IntToStr(anStickNote));
            JqAnnotation.fieldbyname('ZANNOTATION_TYPE_ID').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Left));
            JqAnnotation.fieldbyname('LEFTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Top));
            JqAnnotation.fieldbyname('TOPX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Right));
            JqAnnotation.fieldbyname('RIGHTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Bottom));
            JqAnnotation.fieldbyname('BOTTOMX').asstring:=str;
            if TStickNoteMark(Mark).Visible then
              JqAnnotation.fieldbyname('VISIBLEX').asstring:='1'
              else JqAnnotation.fieldbyname('VISIBLEX').asstring:='0';
            str:=AnsiString(IntToStr(TStickNoteMark(Mark).Color));
            JqAnnotation.fieldbyname('ANNOTATION_COLOR').asstring:=str;
            str:=IntToStr(Length(TStickNoteMark(Mark).Text));
            JqAnnotation.fieldbyname('TEXT_LENGTH').asstring:=str;
            str:=AnsiString(TStickNoteMark(Mark).Text);
            JqAnnotation.fieldbyname('TEXT').asstring:=str;
            str:=AnsiString(IntToStr((TStickNoteMark(Mark).Font).Color));
            JqAnnotation.fieldbyname('FONT_COLOR').asstring:=str;
            str:=IntToStr(Length(TStickNoteMark(Mark).Font.Name));
            JqAnnotation.fieldbyname('FONT_NAME_LENGTH').asstring:=str;
            str:=AnsiString(TStickNoteMark(Mark).Font.Name);
            JqAnnotation.fieldbyname('FONT_NAME').asstring:=str;
            str:=AnsiString(IntToStr((TStickNoteMark(Mark).Font).Size));
            JqAnnotation.fieldbyname('FONT_SIZE').asstring:=str;
            if fsItalic in (TStickNoteMark(Mark).Font).Style then
              JqAnnotation.fieldbyname('ISITALIC').asstring:='1'
              else JqAnnotation.fieldbyname('ISITALIC').asstring:='0';
            if fsUnderline in (TStickNoteMark(Mark).Font).Style then
              JqAnnotation.fieldbyname('ISUNDERLINE').asstring:='1'
              else JqAnnotation.fieldbyname('ISUNDERLINE').asstring:='0';
            if fsStrikeOut in (TStickNoteMark(Mark).Font).Style then
              JqAnnotation.fieldbyname('ISSTRIKEOUT').asstring:='1'
              else JqAnnotation.fieldbyname('ISSTRIKEOUT').asstring:='0';
            if fsBold in (TStickNoteMark(Mark).Font).Style then
              JqAnnotation.fieldbyname('ISBOLD').asstring:='1'
              else JqAnnotation.fieldbyname('ISBOLD').asstring:='0';
            JqAnnotation.post;
        end
        else if Mark is TRectangleMark then begin
//            JqAnnotation.insert;
            Str :=  AnsiString(IntToStr(anRectangle));
            JqAnnotation.fieldbyname('ZANNOTATION_TYPE_ID').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Left));
            JqAnnotation.fieldbyname('LEFTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Top));
            JqAnnotation.fieldbyname('TOPX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Right));
            JqAnnotation.fieldbyname('RIGHTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Bottom));
            JqAnnotation.fieldbyname('BOTTOMX').asstring:=str;
            if TRectangleMark(Mark).Visible then
              JqAnnotation.fieldbyname('VISIBLEX').asstring:='1'
              else JqAnnotation.fieldbyname('VISIBLEX').asstring:='0';
            str:=AnsiString(IntToStr(TRectangleMark(Mark).Color));
            JqAnnotation.fieldbyname('ANNOTATION_COLOR').asstring:=str;
            if TRectangleMark(Mark).HightLight then
              JqAnnotation.fieldbyname('ISHIGHLIGHT').asstring:='1'
              else JqAnnotation.fieldbyname('ISHIGHLIGHT').asstring:='0';
            if TRectangleMark(Mark).Filled then
              JqAnnotation.fieldbyname('ISFILLED').asstring:='1'
              else JqAnnotation.fieldbyname('ISFILLED').asstring:='0';
            str:=AnsiString(IntToStr(TRectangleMark(Mark).LineSize));
            JqAnnotation.fieldbyname('PENWIDTH').asstring:=str;
            JqAnnotation.post;
            end
        else if Mark is TLineMark then  begin
//            JqAnnotation.insert;
            Str :=  AnsiString(IntToStr(anLine));
            JqAnnotation.fieldbyname('ZANNOTATION_TYPE_ID').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Left));
            JqAnnotation.fieldbyname('LEFTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Top));
            JqAnnotation.fieldbyname('TOPX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Right));
            JqAnnotation.fieldbyname('RIGHTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Bottom));
            JqAnnotation.fieldbyname('BOTTOMX').asstring:=str;
            if TLineMark(Mark).Visible then
              JqAnnotation.fieldbyname('VISIBLEX').asstring:='1'
              else JqAnnotation.fieldbyname('VISIBLEX').asstring:='0';
            str:=AnsiString(IntToStr(TLineMark(Mark).Color));
            JqAnnotation.fieldbyname('ANNOTATION_COLOR').asstring:=str;
            str:=AnsiString(IntToStr((TLineMark(Mark)).LineSize));
            JqAnnotation.fieldbyname('LINE_SIZE').asstring:=str;
            str:=AnsiString(IntToStr(Ord((TLineMark(Mark)).Orientation)));
            JqAnnotation.fieldbyname('LINE_ORIENTATION').asstring:=str;
            JqAnnotation.post;
            end
        else if Mark is TTextMark then  begin//4
//           JqAnnotation.insert;
            Str :=  AnsiString(IntToStr(anText));
            JqAnnotation.fieldbyname('ZANNOTATION_TYPE_ID').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Left));
            JqAnnotation.fieldbyname('LEFTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Top));
            JqAnnotation.fieldbyname('TOPX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Right));
            JqAnnotation.fieldbyname('RIGHTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Bottom));
            JqAnnotation.fieldbyname('BOTTOMX').asstring:=str;
            if TTextMark(Mark).Visible then
              JqAnnotation.fieldbyname('VISIBLEX').asstring:='1'
              else JqAnnotation.fieldbyname('VISIBLEX').asstring:='0';
            str:=AnsiString(IntToStr(TTextMark(Mark).Color));
            JqAnnotation.fieldbyname('ANNOTATION_COLOR').asstring:=str;
            str:=IntToStr(Length(TTextMark(Mark).Text));
            JqAnnotation.fieldbyname('TEXT_LENGTH').asstring:=str;
            str:=AnsiString(TTextMark(Mark).Text);
            JqAnnotation.fieldbyname('TEXT').asstring:=str;
            str:=AnsiString(IntToStr((TTextMark(Mark).Font).Color));
            JqAnnotation.fieldbyname('FONT_COLOR').asstring:=str;
            str:=AnsiString(TStickNoteMark(Mark).Font.Name);
            JqAnnotation.fieldbyname('FONT_NAME').asstring:=str;
            str:=AnsiString(IntToStr((TTextMark(Mark).Font).Size));
            JqAnnotation.fieldbyname('FONT_SIZE').asstring:=str;
            if fsItalic in (TTextMark(Mark).Font).Style then
              JqAnnotation.fieldbyname('ISITALIC').asstring:='1'
              else JqAnnotation.fieldbyname('ISITALIC').asstring:='0';
            if fsUnderline in (TTextMark(Mark).Font).Style then
              JqAnnotation.fieldbyname('ISUNDERLINE').asstring:='1'
              else JqAnnotation.fieldbyname('ISUNDERLINE').asstring:='0';
            if fsStrikeOut in (TTextMark(Mark).Font).Style then
              JqAnnotation.fieldbyname('ISSTRIKEOUT').asstring:='1'
              else JqAnnotation.fieldbyname('ISSTRIKEOUT').asstring:='0';
            if fsBold in (TTextMark(Mark).Font).Style then
              JqAnnotation.fieldbyname('ISBOLD').asstring:='1'
              else JqAnnotation.fieldbyname('ISBOLD').asstring:='0';
            JqAnnotation.post;
           end
        else if Mark is TImageMark then //5
           begin
     ImageMark1 := mark as timagemark;
    rect1 := ImageMark1.markrect;
 // rect1 := ImageMark1.DisplayRect;
  // jqAnnotation.open;
 //  jqAnnotation.edit;
   jqAnnotation.FieldByName('ZANNOTATION_TYPE_ID').AsInteger := 5;
   jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger := ImageMark1.color;
   if ImageMark1.visible then jqAnnotation.FieldByName('VISIBLEX').AsInteger := 1;
   jqAnnotation.FieldByName('leftx').AsInteger := rect1.left;
   jqAnnotation.FieldByName('topx').AsInteger := rect1.top;//}
   jqAnnotation.FieldByName('rightx').AsInteger := rect1.right;
   jqAnnotation.FieldByName('bottomx').AsInteger := rect1.bottom;//}
   if ImageMark1.TRANSPARENT then jqAnnotation.FieldByName('IMAGE_TRANSPARENT').AsInteger := 1;
   //FDATA

   jqAnnotation.POST;
      Bitmap1 := TBitmap.create;
      DIBToBitmap(ImageMark1.DIBHandle,Bitmap1);
      FromStream := TMemoryStream.Create();
      Bitmap1.SaveToStream(FromStream);
      jadoset := TADODataSet.Create(self);
      jadoset.Connection :=  jqAnnotation.AmjServerDB;
      jadoset.CommandText := 'select * from jdms.JPROJ_DOCS_FILES_ANNOTATION where id = ' + jqAnnotation.fieldbyname('id').asstring;
      jadoset.open;
      jadoset.edit;
      TBlobField(jadoset.FIELDBYNAME('FDATA')).LoadFromStream(FromStream);
      jadoset.post;
  //    jqAnnotation.POST;
      end;
   end;
   JqAnnotation.first;
   while not(JqAnnotation.eof ) do
          begin
          IdFound := false;
   for AnnotationNo := 0 to temp.Count-1 do
                begin
                Mark := temp.Items[AnnotationNo];
                if Mark.ID = JqAnnotation.fieldByName('ID').AsInteger  then  IdFound := true;
                end;
   if not(IdFound )then JqAnnotation.delete   //{NB delete the active record and positions on the next}
    else   JqAnnotation.next;
          end;
    //}
 //}
{-----------------------------------------------------------------------------}
//}

 {   MarkList := Tlist.create;
    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    ImageScrollBox.SaveAnnotations(MarkList);
   // Self.FDirty := True;
       for i := 0 to MarkList.Count - 1 do
    begin
        {$Warnings Off}
 {    xl := TGenericMark( MarkList[i]).MarkRect.left;
       yt := TGenericMark( MarkList[i]).MarkRect.top;
       xr := TGenericMark( MarkList[i]).MarkRect.right;
       yb := TGenericMark( MarkList[i]).MarkRect.bottom;//}
  //     str := TStickNoteMark( MarkList[i]).text;
//       str :=  MarkList[i].text;
{       xr := length(str);
     font1 := TStickNoteMark( MarkList[i]).font;
       font1.style;
    //   font1 := TTextMark( MarkList[i]).font;
//      if font1.style in [fsbold = 0 ,fsitalic = 1,fsunderline = 2,fsStrikeOut = 3] then
      if font1.Style = [fsBold,fsItalic,fsUnderline,fsStrikeOut] then  str := 'yes';
      if fsBold in font1.Style  then  str := 'yes';
       xl := Font1.size;  //|}
     //   Mark := Self.Items[AnnotationNo];
 {       if TGenericMark(MarkList[i]) is TStickNoteMark then
            str := 'sticknote'//1
        else if TGenericMark(MarkList[i]) is TRectangleMark then
         str := 'RectangleMark'//1 //2
        else if TGenericMark(MarkList[i]) is TLineMark then
                  str := 'LineMark'//1 //3
        else if TGenericMark(MarkList[i]) is TTextMark then  //4
                   str := 'TextMark'//1
        else if TGenericMark(MarkList[i]) is TImageMark then //5
                   str := 'ImageMar'//1
   //    yb :=  TGenericMark( FMarks[i]).bottom;
   end;
       {$Warnings On}

end;

{--------------------------------------------------------------------------}

  procedure TEditImageForm1.FormEditPict(pMASTER,PDOCID : STRING) ;
  VAR     s: TMemoryStream;
  BEGIN
   jqfolders.PARAMS.ParamByName('pid').AsString := pMASTER;
   jqfolders.open;
   jqannotation.PARAMS.ParamByName('fid').AsString := jqfolders.fieldByName('id').AsString;
   jqannotation.open;
      try
      s := TMemoryStream (jqfolders.CreateBlobStream(jqfolders.FIELDBYNAME('BIN_ON_DB'), bmRead));
      if s.Size >  0 then begin
        ImageScrollBox.LoadFromStream(s, 'JPG', 1);
      end;
    finally
    end ;

    AnnotateMenuClick(self);


   jqannotation.first;
    while not(jqannotation.EOF) do
    begin
    case jqAnnotation.FieldByName('ZANNOTATION_TYPE_ID').AsInteger of
     1: ShowAnnotation(jqannotation);
     2: ShowRectangle(jqannotation);
     3: ShowLine(jqannotation);
     4: Showtext(jqannotation);
     5: ShowImage(jqannotation);
    end;

      jqannotation.next;
    end;
    SelectMenuClick(Self);
//
   // ImageScrollBox.AlwaysShowAnnotations := true;//ShowAnnotationsMenu.Checked;
  END;

  {--------------------------------------------------------------------------}

procedure TEditImageForm1.ShowAnnotation(jqannotation: TDataSet);
 var
 Stick1 :TStickNoteMark;
 rect1:trect;
 font1,font2 : Tfont;
 color1 :Tcolor;
 visible :boolean;
 text1 : AnsiString;
begin

   rect1.Left := jqAnnotation.FieldByName('leftx').AsInteger;
   rect1.Top := jqAnnotation.FieldByName('topx').AsInteger ;
   rect1.Right := jqAnnotation.FieldByName('rightx').AsInteger;
   rect1.Bottom := jqAnnotation.FieldByName('bottomx').AsInteger;
   color1 := jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger ;
   visible := false;
   if  jqAnnotation.FieldByName('VISIBLEX').AsInteger = 1 then visible := true;
   text1 := jqAnnotation.FieldByName('text').AsString;
   font1 := tfont.create;
   font1.style :=[];
   font2 := tfont.create;
   font2.style :=[];
   font1.name :=   jqAnnotation.FieldByName('FONT_NAME').AsString ;
   font1.size :=  jqAnnotation.FieldByName('FONT_SIZE').AsInteger;
   font1.color := jqAnnotation.FieldByName('FONT_COLOR').AsInteger;
  // jqAnnotation.FieldByName('FONT_NAME_LENGTH').AsInteger := length(Stick1.font.name);
   if  jqAnnotation.FieldByName('ISITALIC').AsInteger = 1 then  font2.style := [fsITALIC];
   font1.style := font1.style + font2.style;
   if  jqAnnotation.FieldByName('isBOLD').AsInteger = 1 then  font2.style := [fsBOLD];
   font1.style := font1.style + font2.style;
   if  jqAnnotation.FieldByName('isUNDERLINE').AsInteger = 1 then  font2.style := [fsUNDERLINE];
   font1.style := font1.style + font2.style;
   if  jqAnnotation.FieldByName('isSTRIKEOUT').AsInteger = 1 then  font2.style := [fsSTRIKEOUT];
   font1.style := font1.style + font2.style;

   Stick1 :=  ImageScrollBox.LoadAnnotation(rect1,font1,color1,visible,text1);
   Stick1.ID := jqAnnotation.FieldByName('ID').AsInteger;

end;



procedure TEditImageForm1.ShowRectangle(jqannotation: TDataSet);
var  RectMark1 :TRectangleMark;
    rect1:Trect;
    color1 :tcolor;
    visible :boolean;
begin
   rect1.Left := jqAnnotation.FieldByName('leftx').AsInteger;
   rect1.Top := jqAnnotation.FieldByName('topx').AsInteger ;
   rect1.Right := jqAnnotation.FieldByName('rightx').AsInteger;
   rect1.Bottom := jqAnnotation.FieldByName('bottomx').AsInteger;
   color1 := jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger ;
    RectMark1 := ImageScrollBox.LoadRectangle(rect1);
    RectMark1 .ID := jqAnnotation.FieldByName('ID').AsInteger;
 // RectMark1.color := jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger  ;
    RectMark1.color  := color1;
 //  if jqAnnotation.FieldByName('VISIBLEX').AsInteger = 1  then RectMark1.visible := true else RectMark1.visible := false;
   RectMark1.LineSize :=  jqAnnotation.FieldByName('PENWIDTH').AsInteger ;
    if jqAnnotation.FieldByName('ISHIGHLIGHT').AsInteger = 1 then RectMark1.HightLight  := true else RectMark1.HightLight  := false;
    if jqAnnotation.FieldByName('ISFILLED').AsInteger = 1then  RectMark1.FILLED := true else RectMark1.FILLED := false;
     visible := false;
   if  jqAnnotation.FieldByName('VISIBLEX').AsInteger = 1 then visible := true else visible := false;
   RectMark1.visible := visible;
end;


procedure TEditImageForm1.ShowLine(jqannotation: TDataSet);
var  LineMark1 :TLineMark;
    rect1:Trect;
    visible : boolean;
begin
  rect1.Left := jqAnnotation.FieldByName('leftx').AsInteger;
   rect1.Top := jqAnnotation.FieldByName('topx').AsInteger ;
   rect1.Right := jqAnnotation.FieldByName('rightx').AsInteger;
   rect1.Bottom := jqAnnotation.FieldByName('bottomx').AsInteger;
   LineMark1 := ImageScrollBox.LoadLine(rect1);
   LineMark1.ID := jqAnnotation.FieldByName('ID').AsInteger;
   LineMark1.color := jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger ;

   lineMark1.LineSize := jqAnnotation.FieldByName('LINE_SIZE').AsInteger;
  case  jqAnnotation.FieldByName('LINE_ORIENTATION').AsInteger of
  0 : lineMark1.ORIENTATION := lotop; { horizontal line }
  1 : lineMark1.ORIENTATION := loRight; { vertical line }
  2 : lineMark1.ORIENTATION := loTLBR;  { negative slope }
  3 : lineMark1.ORIENTATION := loBLTR;   { postive slope }
  end;

   visible := false;
   if  jqAnnotation.FieldByName('VISIBLEX').AsInteger = 1 then visible := true;
   LineMark1.visible := visible;

end;




procedure TEditImageForm1.Showtext(jqannotation: TDataSet);
var  TextMark1 :TtextMark;
    rect1:Trect;
    visible : boolean;
    font1{,font2} : tfont;
begin
   rect1.Left := jqAnnotation.FieldByName('leftx').AsInteger;
   rect1.Top := jqAnnotation.FieldByName('topx').AsInteger ;
   rect1.Right := jqAnnotation.FieldByName('rightx').AsInteger;
   rect1.Bottom := jqAnnotation.FieldByName('bottomx').AsInteger;
   TextMark1 := ImageScrollBox.Loadtext(rect1);
   TextMark1.ID := jqAnnotation.FieldByName('ID').AsInteger;
   textMark1.color := jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger ;

   textMark1.text := jqAnnotation.FieldByName('text').AsString;

   textMark1.font.name :=  jqAnnotation.FieldByName('FONT_NAME').AsString ;
   textMark1.font.size :=  jqAnnotation.FieldByName('FONT_SIZE').AsInteger;
   textMark1.font.color := jqAnnotation.FieldByName('FONT_COLOR').AsInteger;

   font1 := tfont.create;
   font1.style :=[];
   if  jqAnnotation.FieldByName('ISITALIC').AsInteger = 1 then  font1.style := font1.style + [fsITALIC];

   if  jqAnnotation.FieldByName('isBOLD').AsInteger = 1 then  font1.style := font1.style +  [fsBOLD];
   if  jqAnnotation.FieldByName('isUNDERLINE').AsInteger = 1 then  font1.style := font1.style +  [fsUNDERLINE];
   if  jqAnnotation.FieldByName('isSTRIKEOUT').AsInteger = 1 then  font1.style := font1.style +  [fsSTRIKEOUT];
   textMark1.font.style := [];
   textMark1.font.style := font1.style;
   visible := false;
   if  jqAnnotation.FieldByName('VISIBLEX').AsInteger = 1 then visible := true;
   textMark1.visible := visible;
end;


procedure TEditImageForm1.ShowImage(jqannotation: TDataSet);
var ImageMark1 :TImageMark;
    rect1:Trect;
    visible : boolean;
    s :TMemoryStream;
    Bitmap1 :Tbitmap;
begin
   rect1.Left := jqAnnotation.FieldByName('leftx').AsInteger;
   rect1.Top := jqAnnotation.FieldByName('topx').AsInteger ;
   rect1.Right := jqAnnotation.FieldByName('rightx').AsInteger;
   rect1.Bottom := jqAnnotation.FieldByName('bottomx').AsInteger;
   ImageMark1 := ImageScrollBox.LoadImage(rect1);
   ImageMark1.ID := jqAnnotation.FieldByName('ID').AsInteger;
   ImageMark1.color := jqAnnotation.FieldByName('ANNOTATION_COLOR').AsInteger ;
   Bitmap1 := Tbitmap.create;
      try
      s := TMemoryStream (jqAnnotation.CreateBlobStream(jqAnnotation.FIELDBYNAME('FDATA'), bmRead));
      if s.Size >  0 then
      begin
        Bitmap1.LoadFromStream(s);
        ImageMark1.DIBHandle := bitmapToDIB(Bitmap1);
      end;
    finally
    end ;

   ImageMark1.TRANSPARENT := False;
   if jqAnnotation.FieldByName('IMAGE_TRANSPARENT').AsInteger = 1 then ImageMark1.TRANSPARENT := True;
   visible := false;
   if  jqAnnotation.FieldByName('VISIBLEX').AsInteger = 1 then visible := true;
   ImageMark1.visible := visible;
end;

end.
