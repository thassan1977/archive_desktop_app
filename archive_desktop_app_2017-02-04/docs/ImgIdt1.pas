unit ImgIdt1;

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
    EnAnEdit, {for TStickNoteMark}

     ComCtrls, ColorGrd, ToolWin;
 Const
  ConfirmSave = '��� ������� ��� ����ݡ �� ���� ����ٿ';
  crMove = 1;

type

  TDrawType = (dtLineDraw, dtRectangle, dtEllipse, dtRoundRect,
               dtClipRect, dtCrooked, dtpaint, dterase, dttext);
type
  TImgIdt1f = class(TJPmain)
    Panel2: TPanel;
    ImageScrollBox: TImageScrollBox;
    OpenDialog1: TOpenDialog;
    fileMenu: TPopupMenu;
    open1: TMenuItem;
    save1: TMenuItem;
    saveas1: TMenuItem;
    openFile: TAmjAction;
    ViewMenu: TPopupMenu;
    ColorMenu: TPopupMenu;
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
    JPanel1: TJPanel;
    Image1: TImage;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton21: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton33: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton32: TToolButton;
    ToolButton6: TToolButton;
    ToolButton13: TToolButton;
    ToolButton18: TToolButton;
    ToolButton16: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton12: TToolButton;
    ToolButton10: TToolButton;
    ToolButton17: TToolButton;
    N14: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    EditMenu: TPopupMenu;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    EditImage: TAmjAction;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    ViewImage: TAmjAction;
    ImageColor: TAmjAction;
    OperationMenu: TPopupMenu;
    N38: TMenuItem;
    N161: TMenuItem;
    N2561: TMenuItem;
    N651: TMenuItem;
    N162: TMenuItem;
    N41: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    ImageOp: TAmjAction;
    PrintDialog1: TPrintDialog;
    ImageList1: TImageList;
    MachinSavefile: TSaveDialog;
    SaveDialog: TSaveDialog;
    PrintOpAction: TAmjAction;
    EnvisionForm: TAmjAction;
    procedure ImageScrollBoxBeforeSave(const Sender: TImageScrollBox;
      const Graphic: TDibGraphic);
    procedure ImageScrollBoxQuickSelect(const Sender: TImageScrollBox;
      const Graphic: TDibGraphic; const Rect: TRect);
    procedure ImageScrollBoxRedraw(const Graphic: TDibGraphic);
    procedure ImageScrollBoxRubberbandChange(const Rect: TRect);
    procedure ImageScrollBoxZoomChange(const Sender: TImageScrollBox;
      const Zoom: Single);
    procedure ZoomEditChange(Sender: TObject);

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



    procedure AddWatermarkClick(Sender: TObject);

    procedure AddNoteClick(Sender: TObject);
    procedure AddRectangleClick(Sender: TObject);
    procedure AddLineClick(Sender: TObject);
    procedure AddTextClick(Sender: TObject);
    procedure AddImageClick(Sender: TObject);
    procedure getAnnotationClick(Sender: TObject);
    procedure setAnnotationClick(Sender: TObject);



    procedure ActualSizeMenuClick(Sender: TObject);
    procedure FullPageMenuClick(Sender: TObject);

    procedure FitHeightMenuClick(Sender: TObject);
    procedure FitToPageMenuClick(Sender: TObject);
    procedure JQBeforeOpen(DataSet: TDataSet);
    procedure JQAfterInsert(DataSet: TDataSet);
    procedure sbRectSelectClick(Sender: TObject);
    procedure sbLineClick(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure cgDrawingColorsChange(Sender: TObject);
    procedure EditImageHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ViewImageHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ImageColorHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure ImageOpHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);
    procedure N22Click(Sender: TObject);
    procedure ImageScrollBoxImageMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ImageScrollBoxDblClick(Sender: TObject);
    procedure FrameDblClick(Sender: TObject);
    procedure ImageScrollBoxImageClick(Sender: TObject);
    procedure EnvisionFormHandle(Sender: TObject; var IsFailed: Boolean;
      var ErrorMsg: string);

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
    MouseOrg: TPoint;    // Stores mouse information
    NextPoint: TPoint;   // Stores mouse information
    Drawing: Boolean;    // Drawing is being performed flag
    DrawType: TDrawType; // Holds the draw type information: TDrawType
    FillSelected,        // Fill shapes flag
    NoFillSelected,      // NoFill Shapes flag
    NoBorderSelected: Boolean;  // Draw Shapes with no border flag
    EraseClipRect: Boolean;     // Specifies whether or not to erase the
                                // clipping rectangle
  MouseX,MouseY,MouseImgX,MouseImgY : integer;
    const

anStickNote = 1;
anRectangle = 2;
anLine      = 3;
anText      = 4;
anImage     = 5;
    Procedure FInit; override;
    Procedure PreFInit; Override;
    procedure CheckDirty;


    procedure DrawToImage(TL, BR: TPoint; PenMode: TPenMode);
    { This procedure paints the image specified by the DrawType field
      to imgDrawingPad }
    procedure SetDrawingStyle;
    { This procedure sets various Pen/Brush styles based on values
      specified by the form's controls. The Panels and color grid is
      used to set these values }
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
    EnReg    { for image format registration }, ImagEditor, DemoForm;



{$R *.dfm}

Procedure TImgIdt1f.PreFInit;
//var FImagEditor:TFImagEditor;
Begin
  inherited PreFInit;
  width := 900;
  Height := 650;
  Align := alRight;


End;




Procedure TImgIdt1f.FInit;
begin
  width := 1300;
  Align := alRight;

  PCaption := '������ ����';


 {     EditImageForm := TEditImageForm.create(self);
  EditImageForm.showmodal;
  EditImageForm.free;//}


 { FImagEditor := TFImagEditor.create(self);
  FImagEditor.showmodal;
  FImagEditor.free;//}

end;



procedure TImgIdt1f.sbLineClick(Sender: TObject);
var

    ///
    Transform : TCropTransform;
    Graphic   : TDibGraphic;  ////22/03/2016
    Left      : LongInt;   ////22/03/2016
    Top       : LongInt;   ////22/03/2016
    Right     : LongInt;  ////22/03/2016
    Bottom    : LongInt;  ////22/03/2016
begin

  // First erase the cliprect if current drawing type
  if DrawType = dtClipRect then
     DrawToImage(MouseOrg, NextPoint, pmNotXOR);

  { Now set the DrawType field to that specified by the TSpeedButton
    invoking this method. The TSpeedButton's Tag values match a
    specific TDrawType value which is why the typecasting below
    succesfully assigns a valid TDrawType value to the DrawType field. }
 if Sender is TSpeedButton then
    DrawType := TDrawType(TSpeedButton(Sender).Tag);

  // Now make sure the dtClipRect style doesn't erase previous drawings
  if DrawType = dtClipRect then begin
    EraseClipRect := False;
  end;
  // Set the drawing style
  SetDrawingStyle;//}


  inherited;

 {  Left      := trunc(ImageScrollBox.Graphic.width/10);
    Top       := trunc(ImageScrollBox.Graphic.height/10);
    Right     := left;
    Bottom    := top;

  {  CropForm := TCropForm.Create(nil);
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
     }
    LEFT :=  ImageScrollBox.Graphic.width-MouseX-50;
    RIGHT := ImageScrollBox.Graphic.width-100-LEFT;
    TOP :=   ImageScrollBox.Graphic.height-MouseY-50;
    Bottom := ImageScrollBox.Graphic.height-100-TOP;
    Graphic := ImageScrollBox.Graphic;
    ImageScrollBox.Graphic.width;
    ImageScrollBox.Graphic.height;
    FUndoGraphic.Assign(Graphic);
    Transform := TCropTransform.Create;
    try
    //    Transform.OnProgress := Self.OnProgress;

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



procedure TImgIdt1f.SetDrawingStyle;
{  This method sets the various drawing styles based on the selections
   on the pnlFillStyle TPanel for Fill and Border styles }
begin
 // with imgDrawingPad do
 with ImageScrollBox.FImage do
  begin
    if DrawType = dtClipRect then
    begin
      Canvas.Pen.Style := psDot;
      Canvas.Brush.Style := bsClear;
      Canvas.Pen.Color := clBlack;
    end
    else if NoFillSelected then
    begin
      Canvas.Pen.Style := psSolid;
      Canvas.Brush.Style := bsClear;
    end
    else if FillSelected then
    begin
      Canvas.Pen.Style := psSolid;
      Canvas.Brush.Style := bsSolid;
    end
    else if NoBorderSelected then
    begin
      Canvas.Pen.Style := psClear;
      Canvas.Brush.Style := bsSolid
    end;

    if (not NoFillSelected) and (DrawType <> dtClipRect) then
      Canvas.Brush.Color := pnlFgBgInner.Color;

    if DrawType <> dtClipRect then
      Canvas.Pen.Color := pnlFgBgInner.Color;
  END;
END;
procedure TImgIdt1f.DrawToImage(TL, BR: TPoint; PenMode: TPenMode);
{ This method performs the specified drawing operation. The
  drawing operation is specified by the DrawType field }
var mytext : string; ff :Tfont;
begin
 // with imgDrawingPad.Picture.Bitmap.Canvas do
 with ImageScrollBox.FImage.Picture.Bitmap.canvas do
  begin
    Pen.Mode := PenMode;
    Pen.Color := pnlFgBgInner.Color;
    Brush.Color := pnlFgBgBorder.Color;

    case DrawType of
      dtLineDraw:
        begin
          MoveTo(TL.X, TL.Y);
          LineTo(BR.X, BR.Y);
        end;
      dtRectangle:
        Rectangle(TL.X, TL.Y, BR.X, BR.Y);
      dtEllipse:
        Ellipse(TL.X, TL.Y, BR.X, BR.Y);
      dtRoundRect:
        RoundRect(TL.X, TL.Y, BR.X, BR.Y,
          (TL.X - BR.X) div 2, (TL.Y - BR.Y) div 2);
      dtClipRect:
        Rectangle(TL.X, TL.Y, BR.X, BR.Y);
      dttext: begin
          //mytext:= Start_Fpnttext(ff);
          if mytext <> '' then begin
            ImageScrollBox.Font.Size := ff.Size;
            ImageScrollBox.Font.Color := ff.Color;
            ImageScrollBox.Font.Name := ff.Name;
            TextOut(TL.X, TL.Y, mytext);
            //sbRectSelect.Down := true;
            //sbLineClick(sbRectSelect);
          end;
        end;
    end;
  end;
end;




procedure TImgIdt1f.ImageColorHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ColorMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TImgIdt1f.ImageOpHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  OperationMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TImgIdt1f.ImageScrollBoxBeforeSave(const Sender: TImageScrollBox;
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

procedure TImgIdt1f.ImageScrollBoxDblClick(Sender: TObject);
VAR
    InBmp, CroppedBmp, SizedBmp : TBitmap;////22/03/2016
    FromStream: TStream; ////22/03/2016
    ///
    Transform : TCropTransform;
    Graphic   : TDibGraphic;  ////22/03/2016
    Left      : LongInt;   ////22/03/2016
    Top       : LongInt;   ////22/03/2016
    Right     : LongInt;  ////22/03/2016
    Bottom    : LongInt;  ////22/03/2016
begin
  inherited;

 {  Left      := trunc(ImageScrollBox.Graphic.width/10);
    Top       := trunc(ImageScrollBox.Graphic.height/10);
    Right     := left;
    Bottom    := top;

  {  CropForm := TCropForm.Create(nil);
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
     }
    LEFT :=  ImageScrollBox.Graphic.width-MouseX-50;
    RIGHT := ImageScrollBox.Graphic.width-100-LEFT;
    TOP :=   ImageScrollBox.Graphic.height-MouseY-50;
    Bottom := ImageScrollBox.Graphic.height-100-TOP;
    Graphic := ImageScrollBox.Graphic;
    ImageScrollBox.Graphic.width;
    ImageScrollBox.Graphic.height;
    FUndoGraphic.Assign(Graphic);
    Transform := TCropTransform.Create;
    try
    //    Transform.OnProgress := Self.OnProgress;

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

procedure TImgIdt1f.ImageScrollBoxImageClick(Sender: TObject);
VAR
    InBmp, CroppedBmp, SizedBmp : TBitmap;////22/03/2016
    FromStream: TStream; ////22/03/2016
    ///
    Transform : TCropTransform;
    Graphic   : TDibGraphic;  ////22/03/2016
    Left      : LongInt;   ////22/03/2016
    Top       : LongInt;   ////22/03/2016
    Right     : LongInt;  ////22/03/2016
    Bottom    : LongInt;  ////22/03/2016
begin
  inherited;

 {  Left      := trunc(ImageScrollBox.Graphic.width/10);
    Top       := trunc(ImageScrollBox.Graphic.height/10);
    Right     := left;
    Bottom    := top;

  {  CropForm := TCropForm.Create(nil);
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
     }
  {  LEFT :=  ImageScrollBox.Graphic.width-MouseX-50;
    RIGHT := ImageScrollBox.Graphic.width-100-LEFT;
    TOP :=   ImageScrollBox.Graphic.height-MouseY-50;
    Bottom := ImageScrollBox.Graphic.height-100-TOP;
    Graphic := ImageScrollBox.Graphic;
    FUndoGraphic.Assign(Graphic);
    Transform := TCropTransform.Create;
    try
    //    Transform.OnProgress := Self.OnProgress;

        Transform.Left   := Left;
        Transform.Right  := Right;
        Transform.Top    := Top;
        Transform.Bottom := Bottom;

        Transform.ApplyOnDest(FUndoGraphic, Graphic);
    finally
        Transform.Free;
    end;

    FDirty := True;
    ImageScrollBox.Redraw(True);  //}

end;

procedure TImgIdt1f.ImageScrollBoxImageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
 MouseX := X;
 MouseY := Y;
end;



procedure TImgIdt1f.ImageScrollBoxQuickSelect(const Sender: TImageScrollBox;
  const Graphic: TDibGraphic; const Rect: TRect);
begin
  inherited;
if MessageDlg( 'Copy selection to clipboard ?', mtConfirmation,
                   [mbYes, mbNo], 0) = mrYes then
        Clipboard.Assign(Graphic);
end;

procedure TImgIdt1f.ImageScrollBoxRedraw(const Graphic: TDibGraphic);
begin
  inherited;
{XLbl.Caption := IntToStr(Graphic.Width);
    YLbl.Caption := IntToStr(Graphic.Height);  //}
end;

procedure TImgIdt1f.ImageScrollBoxRubberbandChange(const Rect: TRect);
begin
  inherited;
  { if (Rect.Left=0) and (Rect.Top=0) and (Rect.Right=0) and (Rect.Bottom=0) then
        BandLabel.Caption := ''
    else
        BandLabel.Caption := '(' + IntToStr(Rect.Left) + ',' + IntToStr(Rect.Top)
                             + '),(' + IntToStr(Rect.Right) + ',' +
                             IntToStr(Rect.Bottom) + ')';    //}
end;

procedure TImgIdt1f.ImageScrollBoxZoomChange(const Sender: TImageScrollBox;
  const Zoom: Single);
begin
  inherited;
    { set the OnChange handler to nil, to prevent this call back from
      changing the zoom a second time. }
  {  ZoomEdit.OnChange := nil;
    try
        ZoomEdit.Text := IntToStr(Round(Zoom));
    finally
        ZoomEdit.OnChange := ZoomEditChange;
    end;                  //}
end;






procedure TImgIdt1f.JQAfterInsert(DataSet: TDataSet);
begin
  inherited;
jq.fieldbyname('id').asstring:=Japp.DB.Get_maxSeq('jedms.DOC_FILE_ANNOTATION');
end;

procedure TImgIdt1f.JQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//jq.params.parambyname('pid').asstring:='1';
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
procedure TImgIdt1f.PageEditChange(Sender: TObject);
var
    FrameNo   : LongInt;
    NumberStr : AnsiString;
begin
  inherited;
  {if FMultiPageFileName <> '' then
    begin
        { remove comma or space separator, added by the TEdit control
          after 999 }
        {$Warnings Off}
   {     NumberStr := RemoveChar(AnsiString(PageEdit.Text), ',');
        NumberStr := RemoveChar(NumberStr, ' ');

        FrameNo := StrToInt(NumberStr);  //}
        {$Warnings On}
 {
        if (FrameNo < 1) or
           (FrameNo > PageUpDown.Max) then
            Exit;

        if (ImageScrollBox.FrameCount > 1) then  //}
            { all images loaded in memory }
{p            ImageScrollBox.CurrentFrame := FrameNo
        else
            ImageScrollBox.LoadFromFile(FMultiPageFileName, FrameNo);
    end;    //}

end;



procedure TImgIdt1f.RB1Click(Sender: TObject);
begin
  inherited;
{ This method uses the TDrawPanel component, a TPanel descendant which
  exposes its Canvas property and OnPaint event handler. This method
  sets the variables to indicate how the TDrawPanel is to be drawn. See
  the method NoFillPaint. }
  //if Sender is TDrawPanel then
  begin
    FillSelected := rb1.Checked;
    FillSelected := rb2.Checked;
    NoBorderSelected := rb3.Checked;
  end;
  SetDrawingStyle;

end;



procedure TImgIdt1f.save1Click(Sender: TObject);
begin
  inherited;
if ImageScrollBox.Graphic = nil then
        Exit;

    if FFileName = '' then
        saveas1Click(Sender)
    else
    begin
        ImageScrollBox.SaveToFile(FFileName);

      {  PageUpDown.Min := 1;
        PageUpDown.Max := 1;

        PageEdit.Text  := '1'; //}
        FDirty := False;
    end;
end;

procedure TImgIdt1f.saveas1Click(Sender: TObject);
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

procedure TImgIdt1f.sbRectSelectClick(Sender: TObject);
begin
  inherited;
 // First erase the cliprect if current drawing type
  if DrawType = dtClipRect then
     DrawToImage(MouseOrg, NextPoint, pmNotXOR);

  { Now set the DrawType field to that specified by the TSpeedButton
    invoking this method. The TSpeedButton's Tag values match a
    specific TDrawType value which is why the typecasting below
    succesfully assigns a valid TDrawType value to the DrawType field. }
  if Sender is TSpeedButton then
    DrawType := TDrawType(TSpeedButton(Sender).Tag);

  // Now make sure the dtClipRect style doesn't erase previous drawings
  if DrawType = dtClipRect then begin
    EraseClipRect := False;
  end;
  // Set the drawing style
//  SetDrawingStyle;
end;




procedure TImgIdt1f.undoHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
    if not FUndoGraphic.IsEmpty then
    begin
        ImageScrollBox.Graphic := FUndoGraphic;
        FUndoGraphic.Clear;
    end;
end;

procedure TImgIdt1f.ViewImageHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  ViewMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TImgIdt1f.ZoomEditChange(Sender: TObject);
begin
  inherited;
{  try
        ImageScrollBox.ZoomPercent := StrToInt(ZoomEdit.Text);
    except
        { trap exception in StrToIn }
  {      ImageScrollBox.ZoomPercent := 100;
    end;  //}
end;


procedure TImgIdt1f.FitHeightMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitHeight;
end;

procedure TImgIdt1f.FitToPageMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFitToPage;
end;







procedure TImgIdt1f.FrameDblClick(Sender: TObject);
begin
  inherited;
MouseImgX := MouseImgX;
MouseImgY := MouseImgY;
end;

procedure TImgIdt1f.FullPageMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmFullPage;
end;
procedure TImgIdt1f.setAnnotationClick(Sender: TObject);
   var result:AnsiString;
    AnnotationNo     : Integer;
    Mark             : TGenericMark;
    Count            : Integer;
    StrIndex         : Integer;
    AnnotationType   : Integer;
    Lrect : TRect;
    tmouseHandler:TAnnotationMouseHandler;
    temp: TAnnotationsEditor;
    InImageScrollBox : TImageScrollBox;
    tempV: Integer;
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
  result:='('+inttostr(jq.recordcount)+')';
  jq.open;
  while not jq.eof do begin
   if jq.fieldbyname('ZANNOTATION_TYPE_ID').asstring='1' then begin
     AnnotationType:=StrToInt(jq.FieldByName('ZANNOTATION_TYPE_ID').AsString);
     case AnnotationType of
            anStickNote :
            begin
                tmouseHandler:= TAnnotationMouseHandler.Create((ImageScrollBox));
                Mark := tmouseHandler.AddNote;
                Lrect.left := StrToInt(jq.fieldbyname('LEFTX').asstring);
                Lrect.Top := StrToInt(jq.fieldbyname('TOPX').asstring);;
                Lrect.Right := StrToInt(jq.fieldbyname('RIGHTX').asstring);
                Lrect.Bottom :=StrToInt(jq.fieldbyname('BOTTOMX').asstring);
                Mark.MarkRect := Lrect;
                tempV:=StrToInt(jq.fieldbyname('VISIBLEX').asstring);
                if tempV=0 then
                Mark.Visible:= false
                else Mark.Visible:=true;
                Mark.Color:=StrToInt(jq.fieldbyname('ANNOTATION_COLOR').asstring);
                TStickNoteMark(Mark).Text:=jq.fieldbyname('TEXT').asstring;
                TStickNoteMark(Mark).Font.Color:=StrToInt(jq.fieldbyname('FONT_COLOR').asstring);
                TStickNoteMark(Mark).Font.Name:=jq.fieldbyname('FONT_NAME').asstring;
                TStickNoteMark(Mark).Font.Size:=StrToInt(jq.fieldbyname('FONT_SIZE').asstring);
                TStickNoteMark(Mark).Font.Style := [];
                tempV:=StrToInt(jq.fieldbyname('ISITALIC').asstring);
                if tempV=1 then
                TStickNoteMark(Mark).Font.Style := Font.Style + [fsItalic];
                tempV:=StrToInt(jq.fieldbyname('ISUNDERLINE').asstring);
                if tempV=1 then
                TStickNoteMark(Mark).Font.Style := Font.Style + [fsUnderline];
                tempV:=StrToInt(jq.fieldbyname('ISSTRIKEOUT').asstring);
                if tempV=1 then
                TStickNoteMark(Mark).Font.Style := Font.Style + [fsStrikeOut];
                tempV:=StrToInt(jq.fieldbyname('ISBOLD').asstring);
                if tempV=1 then
                TStickNoteMark(Mark).Font.Style := Font.Style + [fsBold];
            end;
   end;
   {ZANNOTATION_TYPE_ID, LEFTX, TOPX, RIGHTX, BOTTOMX,
   VISIBLEX, ANNOTATION_COLOR, TEXT_LENGTH, TEXT, FONT_COLOR,
    FONT_NAME, FONT_SIZE, FONT_NAME_LENGTH, ISITALIC, ISUNDERLINE, ISSTRIKEOUT,
   ISBOLD, LINE_SIZE, LINE_ORIENTATION, ISHIGHLIGHT, ISFILLED, PENWIDTH}
  end;
  jq.next;
  end;
end;
procedure TImgIdt1f.getAnnotationClick(Sender: TObject);
var result:AnsiString;
  var
  myFile : TextFile;
  var
    AnnotationNo : Integer;
    Mark         : TGenericMark;
    temp: TAnnotationsEditor;
    var   Str   : AnsiString;
begin
  inherited;

temp:=TAnnotationMouseHandler(ImageScrollBox.FMouseHandler).FEditor;
if temp.count=0 then exit;
Str := Str + '(' + AnsiString(IntToStr(temp.count)) + ')';
    for AnnotationNo := 0 to temp.Count-1 do
    begin
        Mark := temp.Items[AnnotationNo];
        if Mark is TStickNoteMark then begin
            jq.insert;
            Str :=  AnsiString(IntToStr(anStickNote));
            jq.fieldbyname('ZANNOTATION_TYPE_ID').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Left));
            jq.fieldbyname('LEFTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Top));
            jq.fieldbyname('TOPX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Right));
            jq.fieldbyname('RIGHTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Bottom));
            jq.fieldbyname('BOTTOMX').asstring:=str;
            if TStickNoteMark(Mark).Visible then
              jq.fieldbyname('VISIBLEX').asstring:='1'
              else jq.fieldbyname('VISIBLEX').asstring:='0';
            str:=AnsiString(IntToStr(TStickNoteMark(Mark).Color));
            jq.fieldbyname('ANNOTATION_COLOR').asstring:=str;
            str:=IntToStr(Length(TStickNoteMark(Mark).Text));
            jq.fieldbyname('TEXT_LENGTH').asstring:=str;
            str:=AnsiString(TStickNoteMark(Mark).Text);
            jq.fieldbyname('TEXT').asstring:=str;
            str:=AnsiString(IntToStr((TStickNoteMark(Mark).Font).Color));
            jq.fieldbyname('FONT_COLOR').asstring:=str;
            str:=IntToStr(Length(TStickNoteMark(Mark).Font.Name));
            jq.fieldbyname('FONT_NAME_LENGTH').asstring:=str;
            str:=AnsiString(TStickNoteMark(Mark).Font.Name);
            jq.fieldbyname('FONT_NAME').asstring:=str;
            str:=AnsiString(IntToStr((TStickNoteMark(Mark).Font).Size));
            jq.fieldbyname('FONT_SIZE').asstring:=str;
            if fsItalic in (TStickNoteMark(Mark).Font).Style then
              jq.fieldbyname('ISITALIC').asstring:='1'
              else jq.fieldbyname('ISITALIC').asstring:='0';
            if fsUnderline in (TStickNoteMark(Mark).Font).Style then
              jq.fieldbyname('ISUNDERLINE').asstring:='1'
              else jq.fieldbyname('ISUNDERLINE').asstring:='0';
            if fsStrikeOut in (TStickNoteMark(Mark).Font).Style then
              jq.fieldbyname('ISSTRIKEOUT').asstring:='1'
              else jq.fieldbyname('ISSTRIKEOUT').asstring:='0';
            if fsBold in (TStickNoteMark(Mark).Font).Style then
              jq.fieldbyname('ISBOLD').asstring:='1'
              else jq.fieldbyname('ISBOLD').asstring:='0';
            jq.post;
        end
        else if Mark is TRectangleMark then begin
            jq.insert;
            Str :=  AnsiString(IntToStr(anRectangle));
            jq.fieldbyname('ZANNOTATION_TYPE_ID').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Left));
            jq.fieldbyname('LEFTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Top));
            jq.fieldbyname('TOPX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Right));
            jq.fieldbyname('RIGHTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Bottom));
            jq.fieldbyname('BOTTOMX').asstring:=str;
            if TRectangleMark(Mark).Visible then
              jq.fieldbyname('VISIBLEX').asstring:='1'
              else jq.fieldbyname('VISIBLEX').asstring:='0';
            str:=AnsiString(IntToStr(TRectangleMark(Mark).Color));
            jq.fieldbyname('ANNOTATION_COLOR').asstring:=str;
            if TRectangleMark(Mark).HightLight then
              jq.fieldbyname('ISHIGHLIGHT').asstring:='1'
              else jq.fieldbyname('ISHIGHLIGHT').asstring:='0';
            if TRectangleMark(Mark).Filled then
              jq.fieldbyname('ISFILLED').asstring:='1'
              else jq.fieldbyname('ISFILLED').asstring:='0';
            str:=AnsiString(IntToStr(TRectangleMark(Mark).LineSize));
            jq.fieldbyname('PENWIDTH').asstring:=str;
            jq.post;
            end
        else if Mark is TLineMark then  begin
            jq.insert;
            Str :=  AnsiString(IntToStr(anLine));
            jq.fieldbyname('ZANNOTATION_TYPE_ID').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Left));
            jq.fieldbyname('LEFTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Top));
            jq.fieldbyname('TOPX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Right));
            jq.fieldbyname('RIGHTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Bottom));
            jq.fieldbyname('BOTTOMX').asstring:=str;
            if TLineMark(Mark).Visible then
              jq.fieldbyname('VISIBLEX').asstring:='1'
              else jq.fieldbyname('VISIBLEX').asstring:='0';
            str:=AnsiString(IntToStr(TLineMark(Mark).Color));
            jq.fieldbyname('ANNOTATION_COLOR').asstring:=str;
            str:=AnsiString(IntToStr((TLineMark(Mark)).LineSize));
            jq.fieldbyname('LINE_SIZE').asstring:=str;
            str:=AnsiString(IntToStr(Ord((TLineMark(Mark)).Orientation)));
            jq.fieldbyname('LINE_ORIENTATION').asstring:=str;
            jq.post;
            end
        else if Mark is TTextMark then  begin//4
            jq.insert;
            Str :=  AnsiString(IntToStr(anText));
            jq.fieldbyname('ZANNOTATION_TYPE_ID').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Left));
            jq.fieldbyname('LEFTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Top));
            jq.fieldbyname('TOPX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Right));
            jq.fieldbyname('RIGHTX').asstring:=str;
            str:=AnsiString(IntToStr(Mark.MarkRect.Bottom));
            jq.fieldbyname('BOTTOMX').asstring:=str;
            if TTextMark(Mark).Visible then
              jq.fieldbyname('VISIBLEX').asstring:='1'
              else jq.fieldbyname('VISIBLEX').asstring:='0';
            str:=AnsiString(IntToStr(TTextMark(Mark).Color));
            jq.fieldbyname('ANNOTATION_COLOR').asstring:=str;
            str:=IntToStr(Length(TTextMark(Mark).Text));
            jq.fieldbyname('TEXT_LENGTH').asstring:=str;
            str:=AnsiString(TTextMark(Mark).Text);
            jq.fieldbyname('TEXT').asstring:=str;
            str:=AnsiString(IntToStr((TTextMark(Mark).Font).Color));
            jq.fieldbyname('FONT_COLOR').asstring:=str;
            str:=AnsiString(TStickNoteMark(Mark).Font.Name);
            jq.fieldbyname('FONT_NAME').asstring:=str;
            str:=AnsiString(IntToStr((TTextMark(Mark).Font).Size));
            jq.fieldbyname('FONT_SIZE').asstring:=str;
            if fsItalic in (TTextMark(Mark).Font).Style then
              jq.fieldbyname('ISITALIC').asstring:='1'
              else jq.fieldbyname('ISITALIC').asstring:='0';
            if fsUnderline in (TTextMark(Mark).Font).Style then
              jq.fieldbyname('ISUNDERLINE').asstring:='1'
              else jq.fieldbyname('ISUNDERLINE').asstring:='0';
            if fsStrikeOut in (TTextMark(Mark).Font).Style then
              jq.fieldbyname('ISSTRIKEOUT').asstring:='1'
              else jq.fieldbyname('ISSTRIKEOUT').asstring:='0';
            if fsBold in (TTextMark(Mark).Font).Style then
              jq.fieldbyname('ISBOLD').asstring:='1'
              else jq.fieldbyname('ISBOLD').asstring:='0';
            jq.post;
           end
        else if Mark is TImageMark then //5
           // WriteImage( TImageMark(Mark), Result)
    end; //}
end;



procedure TImgIdt1f.ActualSizeMenuClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.ZoomMode := zmOriginalSize;
end;

procedure TImgIdt1f.AddImageClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
   ImageScrollBox.AddImage;
end;

procedure TImgIdt1f.AddLineClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
ImageScrollBox.AddLine;
end;

procedure TImgIdt1f.AddNoteClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
ImageScrollBox.AddNote;
end;

procedure TImgIdt1f.AddRectangleClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
ImageScrollBox.AddRectangle;
end;

procedure TImgIdt1f.AddTextClick(Sender: TObject);
begin
  inherited;
ImageScrollBox.MouseMode := mmAnnotate;
ImageScrollBox.AddText;
end;

procedure TImgIdt1f.AddWatermarkClick(Sender: TObject);
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



procedure TImgIdt1f.openFileHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  fileMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;

procedure TImgIdt1f.open1Click(Sender: TObject);
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

procedure TImgIdt1f.AppendtoDCXMenuHandle(Sender: TObject;
  var IsFailed: Boolean; var ErrorMsg: string);
  var
    SaveDialog  : TSaveDialog;
begin
  inherited;
 { SaveDialog := TSaveDialog.Create(nil);
    try
        SaveDialog.Filter  := GraphicFilter(TDcxGraphic);
        SaveDialog.Title   := 'Append image to DCX file';
        SaveDialog.Options := SaveDialog.Options + [ofFileMustExist];
        if SaveDialog.Execute then
        begin
            ImageScrollBox.AppendToFile(SaveDialog.FileName);

            { clear FFileName to prevent saving over the same file with
              a single image inadvertently }
     {       FFileName           := '';
            FMultiPageFileName  := SaveDialog.FileName;
            Self.Caption        := FMultiPageFileName;

            PageUpDown.Min := 1;
            PageUpDown.Max := ImageScrollBox.ImageCountFromFile(SaveDialog.FileName);//}

            { set the event handler to prevent loading the image, as it is
              already loaded. }
{            PageEdit.OnChange := nil;
            try
                PageEdit.Text  := IntToStr(PageUpDown.Max);
            finally
                PageEdit.OnChange := PageEditChange;
            end;
        end;
    finally
        SaveDialog.Free;
    end;    //}

end;




procedure TImgIdt1f.cgDrawingColorsChange(Sender: TObject);
begin
  inherited;
{ This method draws the rectangle representing fill and border colors
  to indicate the users selection of both colors. pnlFgBgInner and
  pnlFgBgBorder are TPanels arranged one on to of the other for the
  desired effect }
  pnlFgBgInner.Color := cgDrawingColors.ForeGroundColor;
  pnlFgBgBorder.Color := cgDrawingColors.BackGroundColor;
  SetDrawingStyle;
end;




procedure TImgIdt1f.CheckDirty;
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



procedure TImgIdt1f.EditImageHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
  Var pt: TPoint;
begin
  inherited;
pt := TAmjNavButton(Sender).ClientToScreen(Point(0, 0));
  EditMenu.popup(pt.x + TAmjNavButton(Sender).Width, pt.Y + TAmjNavButton(Sender).Height);
end;





procedure TImgIdt1f.EnvisionFormHandle(Sender: TObject; var IsFailed: Boolean;
  var ErrorMsg: string);
begin
  inherited;
  //FUndoGraphic := TDibGraphic.Create;
  EditImageForm := TEditImageForm.create(self);
  EditImageForm.showmodal;
  EditImageForm.free;//}


 { FImagEditor := TFImagEditor.create(self);
  FImagEditor.showmodal;
  FImagEditor.free;//}
end;

procedure TImgIdt1f.LoadFile( const FileName : String );
var
    MultiLoad : Boolean;
    InBmp, CroppedBmp, SizedBmp : TBitmap;////22/03/2016
    FromStream: TStream; ////22/03/2016
    ///
    Transform : TCropTransform;
    Graphic   : TDibGraphic;  ////22/03/2016
    Left      : LongInt;   ////22/03/2016
    Top       : LongInt;   ////22/03/2016
    Right     : LongInt;  ////22/03/2016
    Bottom    : LongInt;  ////22/03/2016
begin
    Caption   := FileName;

    BeginHourglass;
    try
     { PageUpDown.Min := 1;
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
        else  //}
            MultiLoad := False;

        if MultiLoad then
            ImageScrollBox.LoadFromFile(FileName, 0)
        else
            ImageScrollBox.LoadFromFile(FileName, 1);

       { if PageUpDown.Max = 1 then
        begin
            FFileName          := FileName;
            FMultiPageFileName := '';
        end
        else //}
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
    {  this code was added on 22/03/2016 to test corping an image }
{
 InBmp := TBitmap.Create;
  CroppedBmp := TBitmap.Create;
  SizedBmp := TBitmap.Create;
 // InBmp.LoadFromFile(BmpFile);
FromStream := TMemoryStream.Create();
ImageScrollBox.SaveToStream(FromStream, 'jpg');
// InBmp := ImageScrollBox.image;
InBmp.loadfromstream(FromStream);
  // crop the image by takin only the upper left hand corner
  // and put it in the output bitmap
  CroppedBmp.Width := 10;
  CroppedBmp.Height := 10;
  CroppedBmp.Canvas.Copyrect(Rect(0,0,10,10),InBmp.Canvas,Rect(0,0,10,10));
  // compress the entire image to a smaller area
  SizedBmp.Width := 100;
  SizedBmp.Height := 100;
  SizedBmp.Canvas.Copyrect(Rect(0,0,100,100),
    InBmp.Canvas,Rect(0,0,200,200));
  CroppedBmp.savetostream(FromStream);
  FromStream.Seek(0, soFromBeginning) ;
  ImageScrollBox.loadfromStream(FromStream,'jpg',1);
   FromStream.free;
   InBmp.free;
  CroppedBmp.free;
  SizedBmp.free;

     //}
     {
     procedure TMainForm.CropMenuClick(Sender: TObject);
var


begin
    { prevent compiler warning }
    Left      := 10;
    Top       := 10;
    Right     := 10;
    Bottom    := 10;




    Left      := trunc(ImageScrollBox.Graphic.width/4);
    Top       := trunc(ImageScrollBox.Graphic.height/4);
    Right     := left;
    Bottom    := top;

  {  CropForm := TCropForm.Create(nil);
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
     }
{   Graphic := ImageScrollBox.Graphic;
    ImageScrollBox.Graphic.width;
    ImageScrollBox.Graphic.height;
    FUndoGraphic.Assign(Graphic);
    Transform := TCropTransform.Create;
    try
    //    Transform.OnProgress := Self.OnProgress;

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

     //}


end;



procedure TImgIdt1f.N22Click(Sender: TObject);
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

end.
