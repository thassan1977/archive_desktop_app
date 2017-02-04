unit ImagEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, ActnList, ComCtrls, ToolWin, ColorGrd,
  Buttons, ImgList, StdCtrls,{ TMultiP, IToolB, ilmitb, Printers,
  DB, NCOci, NCOciWrapper, NCOciDB, }EnImgScr;

Const
  ConfirmSave = '��� ������� ��� ����ݡ �� ���� ����ٿ';
  crMove = 1;

type

  TDrawType = (dtLineDraw, dtRectangle, dtEllipse, dtRoundRect,
               dtClipRect, dtCrooked, dtpaint, dterase, dttext);

  // The DrawPanel Tag values coorespond to the colors below
  TDrawStyle = (dsNoFill, dsFill, dsNoBorder);

  TFImagEditor = class(TForm)
    sbxMain: TScrollBox;
    ActionList1: TActionList;
    FileNew: TAction;
    EditCopy: TAction;
    FileOpen: TAction;
    FileSave: TAction;
    FilesaveAs: TAction;
    ApplicationClose: TAction;
    EditCut: TAction;
    EditPaste: TAction;
    ToolBar1: TToolBar;
    stbMain: TStatusBar;
    SizeMaxmizer: TAction;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    pnlToolBar: TPanel;
    sbLine: TSpeedButton;
    sbRectangle: TSpeedButton;
    sbEllipse: TSpeedButton;
    sbRoundRect: TSpeedButton;
    sbRectSelect: TSpeedButton;
    sbFreeForm: TSpeedButton;
    pnlColors: TPanel;
    pnlFgBgBorder: TPanel;
    pnlFgBgInner: TPanel;
    pnlFillStyle: TPanel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    cgDrawingColors: TColorGrid;
    ImageList1: TImageList;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton33: TToolButton;
    ToolButton32: TToolButton;
    Size100: TAction;
    Size200: TAction;
    Size400: TAction;
    Size600: TAction;
    SizeMinimize: TAction;
    Bevel1: TBevel;
    Size50: TAction;
    Size800: TAction;
    Size1000: TAction;
    Size1200: TAction;
    size1400: TAction;
    sbpaint: TSpeedButton;
    Format24: TAction;
    Format1: TAction;
    Format4: TAction;
    Format8: TAction;
    Format16: TAction;
    Format32: TAction;
    MachinSavefile: TSaveDialog;
    SstatusBar: TAction;
    SToolBar: TAction;
    SToolBox: TAction;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    mmMain: TMainMenu;
    mmiFile: TMenuItem;
    mmiNewFile: TMenuItem;
    mmiOpenFile: TMenuItem;
    mmiSaveFile: TMenuItem;
    mmiSaveAs: TMenuItem;
    N2: TMenuItem;
    mmiExit: TMenuItem;
    mmiEdit: TMenuItem;
    mmiCut: TMenuItem;
    mmiCopy: TMenuItem;
    mmiPaste: TMenuItem;
    N1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N15: TMenuItem;
    sz50: TMenuItem;
    sz100: TMenuItem;
    sz200: TMenuItem;
    sz400: TMenuItem;
    sz600: TMenuItem;
    sz800: TMenuItem;
    sz1000: TMenuItem;
    Sz1200: TMenuItem;
    sz1400: TMenuItem;
    N9: TMenuItem;
    stBar: TMenuItem;
    MSToolBar: TMenuItem;
    MSToolBox: TMenuItem;
    N8: TMenuItem;
    FM1: TMenuItem;
    FM4: TMenuItem;
    FM8: TMenuItem;
    FM16: TMenuItem;
    FM24: TMenuItem;
    FM32: TMenuItem;
    N3: TMenuItem;
    AImgOcr: TAction;
    AComment: TAction;
    AFilters: TAction;
    N4: TMenuItem;
    N6: TMenuItem;
    ToolButton6: TToolButton;
    ToolButton10: TToolButton;
    AMirror: TAction;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    N7: TMenuItem;
    ARotat: TAction;
    N16: TMenuItem;
    AFixing: TAction;
    N17: TMenuItem;
    Aelem: TAction;
    N18: TMenuItem;
    ToolButton16: TToolButton;
    Acolor: TAction;
    N19: TMenuItem;
    ASmooth: TAction;
    N20: TMenuItem;
    ALighten: TAction;
    N21: TMenuItem;
    PastePanel: TPanel;
    pbPasteBox: TPaintBox;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    SpeedButton1: TSpeedButton;
    FilePrnt: TAction;
    FilePrnt1: TMenuItem;
    PrintDialog1: TPrintDialog;
    ToolButton21: TToolButton;
    PrintPicWithAnno: TAction;
    N5: TMenuItem;
    SpeedButton2: TSpeedButton;
    Action1: TAction;
    Undo: TAction;
    N12: TMenuItem;
    N13: TMenuItem;
    ImageScrollBox1: TImageScrollBox;
    procedure FileSaveExecute(Sender: TObject);
    procedure FileNewExecute(Sender: TObject);
    procedure FileOpenExecute(Sender: TObject);
    procedure FilesaveAsExecute(Sender: TObject);
    procedure ApplicationCloseExecute(Sender: TObject);
    procedure EditCutExecute(Sender: TObject);
    procedure EditCopyExecute(Sender: TObject);
    procedure EditPasteExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pbPasteBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pbPasteBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pbPasteBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pbPasteBoxPaint(Sender: TObject);
    procedure mmiEditClick(Sender: TObject);
    procedure aaimgDrawingPadMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure aaimgDrawingPadMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure aaimgDrawingPadMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbLineClick(Sender: TObject);
    procedure cgDrawingColorsChange(Sender: TObject);
    procedure Size50Execute(Sender: TObject);
    procedure Size100Execute(Sender: TObject);
    procedure Size200Execute(Sender: TObject);
    procedure Size400Execute(Sender: TObject);
    procedure Size600Execute(Sender: TObject);
    procedure Size800Execute(Sender: TObject);
    procedure Size1000Execute(Sender: TObject);
    procedure Size1200Execute(Sender: TObject);
    procedure size1400Execute(Sender: TObject);
    procedure SizeMinimizeExecute(Sender: TObject);
    procedure SizeMaxmizerExecute(Sender: TObject);
    procedure Format1Execute(Sender: TObject);
    procedure Format4Execute(Sender: TObject);
    procedure Format8Execute(Sender: TObject);
    procedure Format16Execute(Sender: TObject);
    procedure Format24Execute(Sender: TObject);
    procedure Format32Execute(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure AImgOcrExecute(Sender: TObject);
    procedure ACommentExecute(Sender: TObject);
    procedure AFiltersExecute(Sender: TObject);
    procedure ALightenExecute(Sender: TObject);
    procedure ASmoothExecute(Sender: TObject);
    procedure AcolorExecute(Sender: TObject);
    procedure AelemExecute(Sender: TObject);
    procedure AFixingExecute(Sender: TObject);
    procedure ARotatExecute(Sender: TObject);
    procedure FilePrntExecute(Sender: TObject);
    procedure SstatusBarExecute(Sender: TObject);
    procedure SToolBarExecute(Sender: TObject);
    procedure SToolBoxExecute(Sender: TObject);
    procedure AMirrorExecute(Sender: TObject);
    procedure PrintPicWithAnnoExecute(Sender: TObject);
    procedure UndoExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Imgfilpth :string;
    ImgfilID :string;
    Modified: Boolean;     // Image modified flag
    FileName: String;      // Holds the filename of the image
    PasteBitMap: TBitmap;  // Stores a bitmap image of the pasted data

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
    OldClipViewHwnd: Hwnd; // Holds the old clipboard view window
    { Paste Image variables }
    PBoxMoving: Boolean;   // PasteBox is moving flag
    PBoxMouseOrg: TPoint;  // Stores mouse coordinates for moving PasteBox

    Pasted: Boolean;       // Data pasted flag
    LastDot: TPoint;       // Hold the TPoint coordinate for performing
                           // free line drawing
    SizeView : Integer;

// colors
    ArColor : Array[1..16] of record ch : Char; co :Tcolor; end;
// File
    pFile : Text;

// optimization
  picline : String[255]; //Array [1..1000] of char;
  parLine : Array [1..1000] of Record co:integer; ch:char; end;
  partindx : integer;
  OPline : String;

    procedure DrawToImage(TL, BR: TPoint; PenMode: TPenMode);
    { This procedure paints the image specified by the DrawType field
      to imgDrawingPad }
    procedure SetDrawingStyle;
    { This procedure sets various Pen/Brush styles based on values
      specified by the form's controls. The Panels and color grid is
      used to set these values }
    procedure CopyPasteBoxToImage;
    { This procedure copies the data pasted from the Windows clipboard
      onto the main image component imgDrawingPad }
    procedure WMDrawClipBoard(var Msg: TWMDrawClipBoard);
       message WM_DRAWCLIPBOARD;
    { This message handler captures the WM_DRAWCLIPBOARD messages
      which is sent to all windows that have been added to the clipboard
      viewer chain. An application can add itself to the clipboard viewer
      chain by using the SetClipBoardViewer() Win32 API function as
      is done in FormCreate() }
    procedure CopyCut(Cut: Boolean);
    { This method copies a portion of the main image, imgDrawingPad, to the
      Window's clipboard. }
    Procedure SetGridImg;
    Procedure SetImageView(Sz : Integer);
    Function SetRealCoord(c : Integer):Integer;
    ////     thair    //////
    function GetTmpFileName( pid : String ) : string ;
    procedure DB_to_File(ID : string);

    procedure ConvertFile;
  end;

Var
  FImagEditor: TFImagEditor;

Function Start_FImagEditor( pImgfile, pImgfilID :String):Boolean;

implementation

uses ClipBrd, Math{, Ocr, UDbAnnot, UMyFilter, MAINUNIT, DBM, ConstLocal,
  pnttext, DLL96V1};

{$R *.DFM}

Function Start_FImagEditor( pImgfile, pImgfilID :String):Boolean;
var   Bitmap     : TBitmap;
Begin
  if FImagEditor = nil then
    Application.CreateForm(TFImagEditor, FImagEditor);

  with FImagEditor do
    begin
      Imgfilpth := pImgfile;
      ImgfilID := pImgfilID;
      {imgDrawingPad.ImageName := pImgfile;
      //ImageScrollBox1.LoadFromFile(pImgfile, 1);
      stbMain.Panels[1].Text := '�����: ' + IntToStr(imgDrawingPad.Bwidth);
      stbMain.Panels[2].Text := '��������: ' + IntToStr(imgDrawingPad.BHeight);
      stbMain.Panels[3].Text := '�������: ' + IntToStr(imgDrawingPad.Bnumcolors);
      stbMain.Panels[4].Text := '��� ������: ' + imgDrawingPad.BFileType;
      stbMain.Panels[5].Text := '�����: ' + imgDrawingPad.Bcompression;
      stbMain.Panels[6].Text := '�����: ' + IntToStr(imgDrawingPad.BSize);}

       {Edit3.Text:=IntToStr(MultiImage1.Bbitspixel);
       Edit4.Text:=IntToStr(MultiImage1.Bplanes);
       Edit11.Text:=IntToStr(MultiImage1.BTiffPages);
       Label5.Caption:=IntToStr(MultiImage1.Picture.Bitmap.Width);
       Label6.Caption:=IntToStr(MultiImage1.Picture.Bitmap.Height);}
       //imgDrawingPad.ResetImage;
       //imgDrawingPad.Refresh;

      if showmodal = mrok then begin
        ConvertFile;
        Start_FImagEditor := true ;
      end
      else begin
        ConvertFile;
        Start_FImagEditor := false;
      end;
      Destroy;
    end;
  FImagEditor := nil;
End;

procedure TFImagEditor.ConvertFile;
var
 FilePath : string;
 FileExt : string;
begin
  FilePath := Imgfilpth;
  FileExt := ExtractFileExt(FilePath);
  try
    if (UpperCase(FileExt) = '.JPG') or (UpperCase(FileExt) = '.JPEG') then begin
      //imgDrawingPad.SaveAsJpg(FilePath)
    end
    else if UpperCase(FileExt) = '.BMP' then begin
      //imgDrawingPad.SaveAsBMP(FilePath)
    end
    else if (UpperCase(FileExt) = '.TIF') or (UpperCase(FileExt) = '.TIFF') then begin
     // imgDrawingPad.SaveAsTIF(FilePath)
    end
    else if UpperCase(FileExt) = '.EPS' then begin
     // imgDrawingPad.SaveAsEPS(FilePath)
    end
    else if UpperCase(FileExt) = '.TGA' then begin
    //  imgDrawingPad.SaveAsTGA(FilePath)
    end
    else if UpperCase(FileExt) = '.GIF' then begin
     // imgDrawingPad.SaveAsGIF(FilePath)
    end
    else if UpperCase(FileExt) = '.PCX' then begin
     // imgDrawingPad.SaveAsPCX(FilePath)
    end
    else if UpperCase(FileExt) = '.PNG' then begin
      //imgDrawingPad.SaveAsPNG(FilePath)
    end;
  finally

  end;
end;

procedure TFImagEditor.SetGridImg;
Begin
//  IMGrid.Height := imgDrawingPad.Height;
//  IMGrid.Width := imgDrawingPad.Width;

{  with IMGrid do
  begin
    SetBounds(0, 0, 600, 200);
    Picture.Graphic := TBitMap.Create;
    Picture.Graphic.Width := 600;
    Picture.Graphic.Height := 200;
    Brush.Style := bsSolid;
    Brush.Color := clWhite;  // clWhite erases the image
    canvas.FillRect(canvas.ClipRect);      // Erase the image
  end;

  IMGrid.Canvas.MoveTo(0, 100);
  IMGrid.Canvas.LineTo(imgDrawingPad.Height, 100);
  IMGrid.Canvas.MoveTo(0, 110);
  IMGrid.Canvas.LineTo(imgDrawingPad.Height, 110);
  IMGrid.Canvas.MoveTo(0, 50);
  IMGrid.Canvas.LineTo(imgDrawingPad.Height, 50);
  IMGrid.Canvas.MoveTo(0, 60);
  IMGrid.Canvas.LineTo(imgDrawingPad.Height, 60);
  IMGrid.Canvas.MoveTo(0, 90);
  IMGrid.Canvas.LineTo(imgDrawingPad.Height, 90);
  IMGrid.Canvas.MoveTo(0, 150);
  IMGrid.Canvas.LineTo(imgDrawingPad.Height, 150);
  IMGrid.Canvas.MoveTo(0, 180);
  IMGrid.Canvas.LineTo(imgDrawingPad.Height, 180);

  IMGrid.Canvas.MoveTo(0, 200);
  IMGrid.Canvas.LineTo(imgDrawingPad.Height, 200);
}
End;

procedure TFImagEditor.WMDrawClipBoard(var Msg: TWMDrawClipBoard);
begin
  { This method will be called whenever the clipboard data
    has changed. Because the main form was added to the clipboard
    viewer chain, it will recieve the WM_DRAWCLIPBOARD message
    indicating the the clipboard's data was changed. }
  inherited;
  { Make sure that the data contained on the clipboard is actually
    bitmap data. }
  if ClipBoard.HasFormat(CF_BITMAP) then
    EditPaste.Enabled := True
  else
    EditPaste.Enabled := False;
  Msg.Result := 0;
end;


procedure TFImagEditor.DrawToImage(TL, BR: TPoint; PenMode: TPenMode);
{ This method performs the specified drawing operation. The
  drawing operation is specified by the DrawType field }
var mytext : string; ff :Tfont;  
begin
 // with imgDrawingPad.Picture.Bitmap.Canvas do
  begin
    {Pen.Mode := PenMode;
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
          mytext:= Start_Fpnttext(ff);
          if mytext <> '' then begin
            imgDrawingPad.Picture.Bitmap.Canvas.Font.Size := ff.Size;
            imgDrawingPad.Picture.Bitmap.Canvas.Font.Color := ff.Color;
            imgDrawingPad.Picture.Bitmap.Canvas.Font.Name := ff.Name;
            TextOut(TL.X, TL.Y, mytext);
           // sbRectSelect.Down := true;
           // sbLineClick(sbRectSelect);
          end;
        end;
    end;}
  end;
end;

procedure TFImagEditor.CopyCut(Cut: Boolean);
{ This method copies a portion of the main image to the clipboard.
  The portion copied is specified by a bounding rectangle
  on the main image. If Cut is true, the area in the bounding rectandle
  is erased. }
var
   CopyBitMap: TBitmap;
   DestRect, SrcRect: TRect;
   OldBrushColor: TColor;
begin
  CopyBitMap := TBitMap.Create;
  try
    { Set CopyBitmap's size based on the coordinates of the
      bounding rectangle }
    CopyBitMap.Width := Abs(NextPoint.X - MouseOrg.X);
    CopyBitMap.Height := Abs(NextPoint.Y - MouseOrg.Y);
    DestRect := Rect(0, 0, CopyBitMap.Width, CopyBitmap.Height);
    SrcRect := Rect(Min(MouseOrg.X, NextPoint.X)+1,
                    Min(MouseOrg.Y, NextPoint.Y)+1,
                    Max(MouseOrg.X, NextPoint.X)-1,
                    Max(MouseOrg.Y, NextPoint.Y)-1);
    { Copy the portion of the main image surrounded by the bounding
      rectangle to the Windows clipboard }
   // CopyBitMap.Canvas.CopyRect(DestRect, imgDrawingPad.Canvas, SrcRect);
    { Previous versions of Delphi required the bitmap's Handle property
      to be touched for the bitmap to be made available. This was due to
      Delphi's caching of bitmapped images. The step below may not be
      required. }
    CopyBitMap.Handle;
    // Assign the image to the clipboard.
    ClipBoard.Assign(CopyBitMap);
    { If cut was specified the erase the portion of the main image
      surrouned by the bounding Rectangle }
    if Cut then
      //with imgDrawingPad.Picture.Bitmap.Canvas do
      begin
        OldBrushColor := Brush.Color;
        Brush.Color := clWhite;
        try
          //FillRect(SrcRect);
        finally
          Brush.Color := OldBrushColor;
        end;
      end;
  finally
    CopyBitMap.Free; 
  end;
end;

procedure TFImagEditor.CopyPasteBoxToImage;
{ This method copyies the image pasted from the Windows clipboard onto
  imgDrawingPad. It first erases any bounding rectangle drawn by PaintBox
  component, pbPasteBox. It then copies the data from pbPasteBox onto
  imgDrawingPad at the location where pbPasteBox has been dragged
  over imgDrawingPad. The reason we don't copy the contents of
  pbPasteBox's canvas and use PasteBitmap's canvas instead, is because
  when a portion of pbPasteBox is dragged out of the viewable area,
  Windows does not paint the portion pbPasteBox not visible. Therefore,
  it is necessary to the pasted bitmap from the off-screen bitmap }
var
  SrcRect, DestRect: TRect;
begin
  // First, erase the rectangle drawn by pbPasteBox
  with pbPasteBox do
  begin
    Canvas.Pen.Mode := pmNotXOR;
    Canvas.Pen.Style := psDot;
    Canvas.Brush.Style := bsClear;
    Canvas.Rectangle(0, 0, Width, Height);
    DestRect := Rect(PastePanel.Left, PastePanel.Top, PastePanel.Left+Width, PastePanel.Top+Height);
    SrcRect := Rect(0, 0, Width, Height);
  end;
  { Here we must use the PasteBitmap instead of the pbPasteBox because
    pbPasteBox will clip anything outside if the viewable area. }
  //imgDrawingPad.Picture.Bitmap.Canvas.CopyRect(DestRect, PasteBitmap.Canvas, SrcRect);
  pbPasteBox.Visible := false;
  PastePanel.Visible := false;
  pbPasteBox.Enabled := false;
  Pasted := False;  // Pasting operation is complete
end;

procedure TFImagEditor.SetDrawingStyle;
{  This method sets the various drawing styles based on the selections
   on the pnlFillStyle TPanel for Fill and Border styles }
begin
 // with imgDrawingPad do
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

procedure TFImagEditor.aaimgDrawingPadMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Drawing then
  { Prevent the clipping rectangle from destroying the images already
    on the image }
    if not (DrawType = dtClipRect) then
      DrawToImage(MouseOrg, Point(SetRealCoord(X), SetRealCoord(Y)), pmCopy);
  Drawing := False;
end;

procedure TFImagEditor.sbLineClick(Sender: TObject);
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
  SetDrawingStyle;
end;

procedure TFImagEditor.cgDrawingColorsChange(Sender: TObject);
begin
{ This method draws the rectangle representing fill and border colors
  to indicate the users selection of both colors. pnlFgBgInner and
  pnlFgBgBorder are TPanels arranged one on to of the other for the
  desired effect }
  pnlFgBgInner.Color := cgDrawingColors.ForeGroundColor;
  pnlFgBgBorder.Color := cgDrawingColors.BackGroundColor;
  SetDrawingStyle;
end;

procedure TFImagEditor.aaimgDrawingPadMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);

{ This method determines the drawing operation to be performed and
  either performs free form line drawing, or calls the
  DrawToImage method which draws the specified shape }
begin
  if Drawing then
  begin
    if DrawType = dtCrooked then
    begin
      {imgDrawingPad.Picture.Bitmap.Canvas.MoveTo(LastDot.X, LastDot.Y);
      imgDrawingPad.Picture.Bitmap.Canvas.LineTo(SetRealCoord(X), SetRealCoord(Y));
      LastDot := Point(SetRealCoord(X), SetRealCoord(Y));  }
    end
    else if DrawType = dtpaint then
    begin
      //imgDrawingPad.Picture.Bitmap.Canvas.Pixels[SetRealCoord(X), SetRealCoord(Y)] := imgDrawingPad.Picture.Bitmap.Canvas.Pen.Color;
    end
    else if DrawType = dterase then begin
     { imgDrawingPad.Picture.Bitmap.Canvas.Pen.Color := clWhite;
      imgDrawingPad.Picture.Bitmap.Canvas.Pen.Style :=  psSolid;
      imgDrawingPad.Picture.Bitmap.Canvas.MoveTo(LastDot.X, LastDot.Y);
      imgDrawingPad.Picture.Bitmap.Canvas.LineTo(SetRealCoord(X), SetRealCoord(Y));
      LastDot := Point(SetRealCoord(X), SetRealCoord(Y)); }
    end
    else begin
      DrawToImage(MouseOrg, NextPoint, pmNotXor);
      NextPoint := Point(SetRealCoord(X), SetRealCoord(Y));
      DrawToImage(MouseOrg, NextPoint, pmNotXor)
    end;
  end;
  // Update the status bar with the current mouse location
  stbMain.Panels[0].Text := Format('X: %d, Y: %D', [SetRealCoord(X), SetRealCoord(Y)]);
end;


procedure TFImagEditor.aaimgDrawingPadMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Modified := True;
  // Erase the clipping rectangle if one has been drawn
  if (DrawType = dtClipRect) and EraseClipRect then
    DrawToImage(MouseOrg, NextPoint, pmNotXOR)
  else if DrawType = dtClipRect then
    EraseClipRect := True // Re-enable cliprect erasing
  else if (DrawType = dtpaint) then
    //imgDrawingPad.Picture.Bitmap.Canvas.Pixels[SetRealCoord(X), SetRealCoord(Y)] := imgDrawingPad.Picture.Bitmap.Canvas.Pen.Color;

  { If an bitmap was pasted from the clipboard, copy it to the
    image and remove the PaintBox. }
  if Pasted then
    CopyPasteBoxToImage;

  Drawing := True;
  // Save the mouse information
  MouseOrg := Point(SetRealCoord(X), SetRealCoord(Y));
  NextPoint := MouseOrg;
  LastDot := NextPoint;   // Lastdot is updated as the mouse moves
  //imgDrawingPad.Picture.Bitmap.Canvas.MoveTo(SetRealCoord(X), SetRealCoord(Y));
end;


procedure TFImagEditor.FileSaveExecute(Sender: TObject);
{ This method saves the image to the file specified by FileName. If
  FileName is blank, however, SaveAs1Click is called to get a filename.}
begin
  if FileName = '' then
    FileSaveAsExecute(nil)
  else begin
    //imgDrawingPad.Picture.SaveToFile(FileName);
//    stbMain.Panels[0].Text := FileName;
    Modified := False;
  end;
end;

procedure TFImagEditor.FileNewExecute(Sender: TObject);
{ Ths method erases any drawing on the main image after prompting the
  user to save it to a file in which case the mmiSaveFileClick event handler
  is called. }
var
  Rslt: Word;
begin
{  if Modified then begin
      Rslt := AboutBox.AMessageBox(ConfirmSave,MB_ICONQUESTION or mb_YesNOCancel);
    case Rslt of
      IDYes: FileSaveExecute(nil);
      IDNo: ;  // no need to do anything.
      IDCancel: Exit;
    end
  end;

  FNewImage.showmodal;

   with imgDrawingPad.Canvas do begin
//    SetBounds(0, 0, strtoint(FNewImage.HSz.text), strtoint(FNewImage.VSz.text));
//    Picture.Graphic := TBitMap.Create;
    imgDrawingPad.Picture.Graphic.Width := strtoint(FNewImage.HSz.text);
    imgDrawingPad.Picture.Graphic.Height := strtoint(FNewImage.VSz.text);
     Brush.Style := bsSolid;
     Brush.Color := clWhite;  // clWhite erases the image
     FillRect(ClipRect);      // Erase the image
     FileName := '';
     stbMain.Panels[0].Text := FileName;
     imgDrawingPad.Picture.Bitmap.PixelFormat := pf4bit;
   end;
   SetDrawingStyle;   // Restore the previous drawing style
   Modified := False;
   SetGridImg;
}
//imgDrawingPad.Picture.Bitmap.Canvas.rectangle(0, 0, imgDrawingPad.Width, imgDrawingPad.Height);
end;

procedure TFImagEditor.FileOpenExecute(Sender: TObject);
{ This method opens a bitmap file specified by OpenDialog.FileName. If
  a file was already created, the user is prompted to save
  the file in which case the mmiSaveFileClick event is called. }
var
  Rslt: Word;
begin
  if OpenDialog.Execute then
  begin

{    if Modified then begin
      Rslt := AboutBox.AMessageBox(ConfirmSave,MB_ICONQUESTION or mb_YesNOCancel);
      case Rslt of
        IDYes: FileSaveExecute(nil);
        IDNo: ;  // no need to do anything.
        IDCancel: Exit;
      end
    end;
}
//    imgDrawingPad.Picture.LoadFromFile(OpenDialog.FileName);
      //imgDrawingPad.ImageName := OpenDialog.FileName; //Picture.LoadFromFile(pImgfile);

    FileName := OpenDialog.FileName;
//    stbMain.Panels[0].Text := FileName;
    Modified := false;
{    CASE imgDrawingPad.Picture.Bitmap.PixelFormat of
      pf1bit: FM1.Checked := true;
      pf4bit: FM4.Checked := true;
      pf8bit: FM8.Checked := true;
//      pf15bit:
      pf16bit: FM16.Checked := true;
      pf24bit: FM24.Checked := true;
      pf32bit: FM32.Checked := true;
      pfCustom: FM32.Checked := true;
    End;
}    SetGridImg;
  end;
end;

procedure TFImagEditor.FilesaveAsExecute(Sender: TObject);
{ This method launches SaveDialog to get a file name to which
  the image's contents will be saved. }
begin
  if SaveDialog.Execute then
  begin
    FileName := SaveDialog.FileName;  // Store the filename
    FileSaveExecute(nil)
  end;
end;

procedure TFImagEditor.ApplicationCloseExecute(Sender: TObject);
var test : integer;
begin
  test := application.MessageBox(ConfirmSave, '��ٿ', MB_YESNO);
  if test = idyes then
    ModalResult := mrOk
  else
    ModalResult := mrCancel;
end;

procedure TFImagEditor.EditCutExecute(Sender: TObject);
begin
  CopyCut(True);
end;

procedure TFImagEditor.EditCopyExecute(Sender: TObject);
begin
  CopyCut(False);
end;

procedure TFImagEditor.EditPasteExecute(Sender: TObject);
{ This method pastes the data contained in the clipboard to the
  paste bitmap. The reason it is pasted to the PasteBitmap, an off-
  screen bitmap, is so that the user can relocate the pasted image
  elsewhere on to the main image. This is done by having the pbPasteBox,
  a TPaintBox component, draw the contents of PasteImage. When the
  user if done positioning the pbPasteBox, the contents of TPasteBitmap
  is drawn to imgDrawingPad at the location specified by pbPasteBox's location.}
begin
  { Clear the bounding rectangle }

  pbPasteBox.Enabled := True;
  PastePanel.Visible := True;
  if DrawType = dtClipRect then
  begin
    DrawToImage(MouseOrg, NextPoint, pmNotXOR);
    EraseClipRect := False;
  end;

  PasteBitmap.Assign(ClipBoard);   // Grab the data from the clipboard
  Pasted := True;
  // Set position of pasted image to top left
  PastePanel.Left := 0;
  PastePanel.Top := 0;

  // Set the size of pbPasteBox to match the size of PasteBitmap
  pbPasteBox.Width := PasteBitmap.Width;
  pbPasteBox.Height := PasteBitmap.Height;
  PastePanel.Width := PasteBitmap.Width;
  PastePanel.Height := PasteBitmap.Height;

  pbPasteBox.Visible := True;
  PastePanel.Visible := True;
  pbPasteBox.Invalidate;
end;

procedure TFImagEditor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
{ If the user attempts to close the form before saving the image, they
  are prompted to do so in this method. }
var
  Rslt: Word;
begin
{  CanClose := False; // Assume fail.
  if Modified then begin
      Rslt := AboutBox.AMessageBox(ConfirmSave,MB_ICONQUESTION or mb_YesNOCancel);
    case Rslt of
      IDYes: FileSaveExecute(nil);
      IDNo: ;  // no need to do anything.
      IDCancel: Exit;
    end
  end;
  CanClose := True;    // Allow use to close application
}
end;

procedure TFImagEditor.FormCreate(Sender: TObject);
{ This method sets the form's field to their default values. It then
  creates a bitmap for the imgDrawingPad.  This is the image on which
  drawing is done. Finally, it add's this application as part of the
  Windows clipboard viewer chain by using the SetClipBoardViewer()
  function. This makes enables the form to get WM_DRAWCLIPBOARD messages
  which are sent to all windows in the clipboard viewer chain whenever
  the clipboard data is modified. }
begin
  Screen.Cursors[crMove] := LoadCursor(hInstance, 'MOVE');
  NoFillSelected := True;
  Modified := False;
  FileName := '';
  Pasted := False;
  pbPasteBox.Enabled := False;
  PastePanel.Visible := False;

  // Create a bitmap for imgDrawingPad and set its boundries
  //with imgDrawingPad do
  begin
    SetBounds(0, 0, 600, 400);
    //Picture.Graphic := TBitMap.Create;
    //Picture.Graphic.Width := 100;
    //Picture.Graphic.Height := 100;
  end;
  // Now create a bitmap image to hold pasted data
  PasteBitmap := TBitmap.Create;
  PastePanel.BringToFront;
  SizeView := 100;
  { Add the form to the Windows clipboard viewer chain. Save the handle
    of the next window in the chain so that it may be restored by the
    ChangeClipboardChange() Win32 API function in this form's
    FormDestroy() method. }
  OldClipViewHwnd := SetClipBoardViewer(Handle);
end;

procedure TFImagEditor.FormDestroy(Sender: TObject);
begin
  // Remove the form from the clipboard chain
  ChangeClipBoardChain(Handle, OldClipViewHwnd);
  PasteBitmap.Free; // Free the PasteBitmap instance
end;

procedure TFImagEditor.pbPasteBoxMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
{ This method set's up pbPasteBox, a TPaintBox for being moved by the
  user when the left mouse button is held down }
  if Button = mbLeft then
  begin
    PBoxMoving := True;
    Screen.Cursor := crMove;
    PBoxMouseOrg := Point(X, Y);
  end
  else
    PBoxMoving := False;
end;

procedure TFImagEditor.pbPasteBoxMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
{ This method moves pbPasteBox if the PBoxMoving flag is true indicating
  that the user is holding down the left mouse button and is dragging
  PaintBox }
  if PBoxMoving then
  begin
    PastePanel.Left := PastePanel.Left + (X - PBoxMouseOrg.X);
    PastePanel.Top := PastePanel.Top + (Y - PBoxMouseOrg.Y);
//    pbPasteBox.Left := pbPasteBox.Left + (X - PBoxMouseOrg.X);
//    pbPasteBox.Top := pbPasteBox.Top + (Y - PBoxMouseOrg.Y);
  end;
end;

procedure TFImagEditor.pbPasteBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
{ This method disables moving of pbPasteBox when the user lifts the left
  mouse button }
  if PBoxMoving then
  begin
     PBoxMoving := False;
     Screen.Cursor := crDefault;
  end;
  pbPasteBox.Refresh; // Redraw the pbPasteBox.
end;

procedure TFImagEditor.pbPasteBoxPaint(Sender: TObject);
{ The paintbox is drawn whenever the user selects the Paste option
  form the menu. pbPasteBox draws the contents of PasteBitmap which
  holds the image gotten from the clipboard. The reason for drawing
  PasteBitmap's contents in pbPasteBox, a TPaintBox class, is so that
  the user can also move the object around on top of the main image.
  In otherwords, pbPasteBox can be moved, and hidden when necessary. }
var
  DestRect, SrcRect: TRect;
begin
  // Display the paintbox only if a pasting operation occurred.
  if Pasted then
  begin
    { First paint the contents of PasteBitmap using canvas's CopyRect
      but only if the paintbox is not being moved. This reduces
      flicker }
    if not PBoxMoving then
    begin
      DestRect := Rect(0, 0, pbPasteBox.Width, pbPasteBox.Height);
      SrcRect := Rect(0, 0, PasteBitmap.Width, PasteBitmap.Height);
      pbPasteBox.Canvas.CopyRect(DestRect, PasteBitmap.Canvas, SrcRect);
    end;
    { Now copy a bounding rectangle to indicate that pbPasteBox is
      a moveable object. We use a pen mode of pmNotXOR because we
      must erase this rectangle when the user copies PaintBox's
      contents to the main image and we must preserve the original
      contents. }
    pbPasteBox.Canvas.Pen.Mode := pmNotXOR;
    pbPasteBox.Canvas.Pen.Style := psDot;
    pbPasteBox.Canvas.Brush.Style := bsClear;
    pbPasteBox.Canvas.Rectangle(0, 0, pbPasteBox.Width, pbPasteBox.Height);
  end;
end;

procedure TFImagEditor.mmiEditClick(Sender: TObject);
{ The timer is used to determine if an area on the main image is
  surrounded by a bounding rectangle. If so, then the Copy and Cut
  menu items are enabled. Otherwise, they are disabled. }
var
  IsRect: Boolean;
begin
  IsRect := (MouseOrg.X <> NextPoint.X) and (MouseOrg.Y <> NextPoint.Y);
  if (DrawType = dtClipRect) and IsRect then
  begin
    EditCut.Enabled := True;
    EditCopy.Enabled := True;
  end
  else begin
    EditCut.Enabled := False;
    EditCopy.Enabled := False;
  end;
end;

Function TFImagEditor.SetRealCoord(c : Integer):Integer;
Begin
  SetRealCoord := round( c * 100 /SizeView);
End;

Procedure TFImagEditor.SetImageView(Sz : Integer);
Begin
  SizeView := Sz;

  {imgDrawingPad.Stretch := False;
  imgDrawingPad.AutoSize := true;

  imgDrawingPad.Stretch := True;
  imgDrawingPad.AutoSize := False;}

  Case Sz Of
  50:begin
       //imgDrawingPad.Width := imgDrawingPad.Width div 2;
      // imgDrawingPad.Height := imgDrawingPad.Height div 2;
//       Sz50.Checked := true;
     end;
  100:begin
      //  imgDrawingPad.Stretch := False;
       // imgDrawingPad.AutoSize := true;
//        Sz100.Checked := true;
     end;
  200:begin
      // imgDrawingPad.Width := imgDrawingPad.Width * 2;
      // imgDrawingPad.Height := imgDrawingPad.Height * 2;
//       Sz200.Checked := true;
     end;
  400:begin
      // imgDrawingPad.Width := imgDrawingPad.Width * 4;
      // imgDrawingPad.Height := imgDrawingPad.Height * 4;
//       Sz400.Checked := true;
     end;
  600:begin
      // imgDrawingPad.Width := imgDrawingPad.Width * 6;
      // imgDrawingPad.Height := imgDrawingPad.Height * 6;
//       Sz600.Checked := true;
     end;
  800:begin
      // imgDrawingPad.Width := imgDrawingPad.Width * 8;
     //  imgDrawingPad.Height := imgDrawingPad.Height * 8;
//       Sz800.Checked := true;
     end;
  1000:begin
      // imgDrawingPad.Width := imgDrawingPad.Width * 10;
     //  imgDrawingPad.Height := imgDrawingPad.Height * 10;
//       Sz1000.Checked := true;
     end;
  1200:begin
      // imgDrawingPad.Width := imgDrawingPad.Width * 12;
      // imgDrawingPad.Height := imgDrawingPad.Height * 12;
//       Sz1200.Checked := true;
     end;
  1400:begin
     //  imgDrawingPad.Width := imgDrawingPad.Width * 14;
     //  imgDrawingPad.Height := imgDrawingPad.Height * 14;
//       Sz1400.Checked := true;
     end;
  End;
End;

procedure TFImagEditor.Size50Execute(Sender: TObject);
begin
  SetImageView(50);
end;

procedure TFImagEditor.Size100Execute(Sender: TObject);
begin
  SetImageView(100);
end;

procedure TFImagEditor.Size200Execute(Sender: TObject);
begin
  SetImageView(200);
end;

procedure TFImagEditor.Size400Execute(Sender: TObject);
begin
  SetImageView(400);
end;

procedure TFImagEditor.Size600Execute(Sender: TObject);
begin
  SetImageView(600);
end;

procedure TFImagEditor.Size800Execute(Sender: TObject);
begin
  SetImageView(800);
end;

procedure TFImagEditor.Size1000Execute(Sender: TObject);
begin
  SetImageView(1000);
end;

procedure TFImagEditor.Size1200Execute(Sender: TObject);
begin
  SetImageView(1200);
end;

procedure TFImagEditor.size1400Execute(Sender: TObject);
begin
  SetImageView(1400);
end;

procedure TFImagEditor.SizeMinimizeExecute(Sender: TObject);
begin
  if SizeView <> 50 then
    Begin
      if SizeView > 200 then
        SizeView := SizeView -200
      else
        SizeView := SizeView div 2;
      SetImageView(SizeView);
    End;
end;

procedure TFImagEditor.SizeMaxmizerExecute(Sender: TObject);
begin
  if SizeView <> 1400 then
    Begin
      if SizeView > 100 then
        SizeView := SizeView + 200
      else
        SizeView := SizeView * 2;
      SetImageView(SizeView);
    End;
end;

procedure TFImagEditor.Format1Execute(Sender: TObject);
begin
  //imgDrawingPad.Picture.Bitmap.PixelFormat := pf1bit;
end;

procedure TFImagEditor.Format4Execute(Sender: TObject);
begin
  //imgDrawingPad.Picture.Bitmap.PixelFormat := pf4bit;
end;

procedure TFImagEditor.Format8Execute(Sender: TObject);
begin
  ///imgDrawingPad.Picture.Bitmap.PixelFormat := pf8bit;
end;

procedure TFImagEditor.Format16Execute(Sender: TObject);
begin
 // imgDrawingPad.Picture.Bitmap.PixelFormat := pf16bit;
end;

procedure TFImagEditor.Format24Execute(Sender: TObject);
begin
 // imgDrawingPad.Picture.Bitmap.PixelFormat := pf24bit;
end;

procedure TFImagEditor.Format32Execute(Sender: TObject);
begin
//  imgDrawingPad.Picture.Bitmap.PixelFormat := pf32bit;
end;

procedure TFImagEditor.RB1Click(Sender: TObject);
begin
{ This method uses the TDrawPanel component, a TPanel descendant which
  exposes its Canvas property and OnPaint event handler. This method
  sets the variables to indicate how the TDrawPanel is to be drawn. See
  the method NoFillPaint. }
//  if Sender is TDrawPanel then
  begin
    FillSelected := rb1.Checked;
    FillSelected := rb2.Checked;
    NoBorderSelected := rb3.Checked;
  end;
  SetDrawingStyle;
end;

procedure TFImagEditor.AImgOcrExecute(Sender: TObject);
begin
 // Start_FOcr(Imgfilpth);
end;

procedure TFImagEditor.ACommentExecute(Sender: TObject);
begin
  //Start_FDbAnno(Imgfilpth, ImgfilID);
  ConvertFile;
end;

procedure TFImagEditor.AFiltersExecute(Sender: TObject);
begin
//  Start_FFilter(Imgfilpth, ImgfilID);
end;

procedure TFImagEditor.ALightenExecute(Sender: TObject);
begin
  //Start_FFilter(Imgfilpth, ImgfilID, 'Light');
 // imgDrawingPad.ImageName := Imgfilpth;
end;

procedure TFImagEditor.ASmoothExecute(Sender: TObject);
begin
 // Start_FFilter(Imgfilpth, ImgfilID, 'Smooth');
 // imgDrawingPad.ImageName := Imgfilpth;
end;

procedure TFImagEditor.AcolorExecute(Sender: TObject);
begin
 // Start_FFilter(Imgfilpth, ImgfilID, 'Color');
 // imgDrawingPad.ImageName := Imgfilpth;
end;

procedure TFImagEditor.AelemExecute(Sender: TObject);
begin
 // Start_FFilter(Imgfilpth, ImgfilID, 'DelBug');
 // imgDrawingPad.ImageName := Imgfilpth;
end;

procedure TFImagEditor.AFixingExecute(Sender: TObject);
begin
 // Start_FFilter(Imgfilpth, ImgfilID, 'Scale');
 // imgDrawingPad.ImageName := Imgfilpth;
end;

procedure TFImagEditor.ARotatExecute(Sender: TObject);
begin
 // Start_FFilter(Imgfilpth, ImgfilID, 'Rotat');
 // imgDrawingPad.ImageName := Imgfilpth;
end;

{function Printer: TPrinter;
begin
  Result := TPrinter.Create;
end;}

procedure TFImagEditor.FilePrntExecute(Sender: TObject);
var
 F : TForm;
 OB,  CB: TBitBtn;
 OS,  FS: TRadioButton;
 Old, ProcessInternal : Boolean;
begin
// imgDrawingPad.PrintMultiImage(0, 0, imgDrawingPad.BWidth, imgDrawingPad.BHeight);
if Assigned(PrintDialog1) then
  try
    F :=TForm.Create(Self);
    F.Height:=100;
    F.Position:=poScreenCenter;
    F.BorderStyle:=bsDialog;
    F.Visible:=False;
    F.Caption:='��� �������';
    F.BiDiMode:= bdRightToLeft;
    OS:=TRadioButton.Create(F);
    OS.Parent:=F;
    OS.Visible:=True;
    OS.Top:=15;
    OS.Width:=90;
    OS.Left:=10;
    OS.Caption:='��� ������';
    FS:=TRadioButton.Create(F);
    FS.Parent:=F;
    FS.Visible:=True;
    FS.Top:=OS.Top+OS.Height+10;
    FS.Width:=OS.Width;
    FS.Left:=10;
    FS.Caption:='��� ������';
    F.ActiveControl:=OS;
    OB:=TBitBtn.Create(F);
    OB.Kind:=bkOk;
    OB.Caption := '�����';
    OB.Parent:=F;
    OB.Left:=OS.Left+OS.Width+20;
    OB.Top:=5;
    CB:=TBitBtn.Create(F);
    CB.Kind:=bkCancel;
    CB.Caption := '�����';
    CB.Left:=OS.Left+OS.Width+20;
    CB.Top:=OB.Top+OB.Height+10;
    CB.Parent:=F;
    F.Width:=CB.Left+CB.Width+15;
    F.ShowModal;
   // Old:=imgDrawingPad.P_Begin_End_Doc;
    //imgDrawingPad.P_Begin_End_Doc:=True;
    If F.ModalResult = mrOk then begin
    if PrintDialog1.ExeCute then
       Screen.Cursor:=crHourGlass;
       if OS.Checked then begin
         {imgDrawingPad.PrintMultiImage(0,
                                       0,
                                       imgDrawingPad.BWidth,
                                       imgDrawingPad.BHeight);
       end else begin
          imgDrawingPad.PrintMultiImage(0,
                                        0,
                                        Printer.PageWidth,
                                        Printer.PageHeight);  }
       end;
       Screen.Cursor:=crDefault;
     end;
  finally
     //imgDrawingPad.P_Begin_End_Doc:=Old;
     F.Destroy;
  end;
end;

procedure TFImagEditor.SstatusBarExecute(Sender: TObject);
begin
  stbMain.Visible := not stbMain.Visible;
end;

procedure TFImagEditor.SToolBarExecute(Sender: TObject);
begin
  ToolBar1.Visible := not ToolBar1.Visible;
end;

procedure TFImagEditor.SToolBoxExecute(Sender: TObject);
begin
  pnlToolBar.Visible := not pnlToolBar.Visible;
end;

procedure TFImagEditor.AMirrorExecute(Sender: TObject);
begin
  //Start_FFilter(Imgfilpth, ImgfilID, 'Mirror');
  //imgDrawingPad.ImageName := Imgfilpth;
end;

/////////////////////  TH  //////////////////////////////

function TFImagEditor.GetTmpFileName( pid : String ) : string ;
var
   dr : string ;
begin
   // dr := ExtractFileDir(Application.ExeName)+'\'+TmpDir ;
    ForceDirectories(dr);
    result := dr + '\'+ pid +'.ant' ;
end;

procedure TFImagEditor.DB_to_File(ID : string);
var
    s: TStream;
    fs: TFileStream;
   // bm : Tbookmark;
    fn : string;
begin
    try
        try

            {StoredProc.ParamByName('PNB').AsString := ID ;
            StoredProc.ParamByName('TABLENAME').asstring := 'ARCHIVEDB.DOCFILEANNOTATION' ;
            StoredProc.ParamByName('PKNAME').asstring := 'ANNOTATIONID' ;
            StoredProc.ParamByName('FLDIMGNAME').asstring := 'ANNOTATION' ;
            fmain.GDB.StartTransaction ;
            StoredProc.ExecProc;
            s := StoredProc.ParamByName('PIMG').CreateBlobStream(0, bmRead); }


            try
                fn := GetTmpFileName(ID) ;
                fs := TFileStream.Create(fn,  fmCreate or fmOpenWrite);
                fs.CopyFrom(s, 0);
            finally
                fs.Free;
            end;
        finally
            s.free;
        end;
        //fmain.GDB.Commit;
    except
        //fmain.GDB.Rollback;
        raise;
    end;
end;





procedure TFImagEditor.PrintPicWithAnnoExecute(Sender: TObject);
var
 F : TForm;
 OB,  CB: TBitBtn;
 OS,  FS: TRadioButton;
 Old, ProcessInternal : Boolean;
 FlName : string ;
 AnnID  : string;
begin
// imgDrawingPad.PrintMultiImage(0, 0, imgDrawingPad.BWidth, imgDrawingPad.BHeight);
if Assigned(PrintDialog1) then
  try
    F :=TForm.Create(Self);
    F.Height:=100;
    F.Position:=poScreenCenter;
    F.BorderStyle:=bsDialog;
    F.Visible:=False;
    F.Caption:='��� �������';
    F.BiDiMode:= bdRightToLeft;
    OS:=TRadioButton.Create(F);
    OS.Parent:=F;
    OS.Visible:=True;
    OS.Top:=15;
    OS.Width:=90;
    OS.Left:=10;
    OS.Caption:='��� ������';
    FS:=TRadioButton.Create(F);
    FS.Parent:=F;
    FS.Visible:=True;
    FS.Top:=OS.Top+OS.Height+10;
    FS.Width:=OS.Width;
    FS.Left:=10;
    FS.Caption:='��� ������';
    F.ActiveControl:=OS;
    OB:=TBitBtn.Create(F);
    OB.Kind:=bkOk;
    OB.Caption := '�����';
    OB.Parent:=F;
    OB.Left:=OS.Left+OS.Width+20;
    OB.Top:=5;
    CB:=TBitBtn.Create(F);
    CB.Kind:=bkCancel;
    CB.Caption := '�����';
    CB.Left:=OS.Left+OS.Width+20;
    CB.Top:=OB.Top+OB.Height+10;
    CB.Parent:=F;
    F.Width:=CB.Left+CB.Width+15;
    F.ShowModal;


   { Old:=TempMulti.P_Begin_End_Doc;
    TempMulti.P_Begin_End_Doc:=True;
    If F.ModalResult = mrOk then begin

        // Open query
        tempAnnoDb.Close;
        tempAnnoDb.ParamByName('FID').AsString := ImgfilID ;
        tempAnnoDb.Open;

        TempMulti.Picture :=  imgDrawingPad.Picture;
        tempAnnoDb.First;
        while not tempAnnoDb.Eof do
        begin
            // load annotation file from DB ...
            AnnID  := tempAnnoDbANNOTATIONID.AsString;
            FlName := GetTmpFileName(tempAnnoDbANNOTATIONID.AsString) ;

            DB_to_File(AnnID);
            if FileExists(FlName) then
                 TempMulti.LoadAnnotation(0,FlName);
            // save aanotation  to the image
            TempMulti.HardDrawAnnotation;


            tempAnnoDb.Next;
        end;

    if PrintDialog1.ExeCute then
       Screen.Cursor:=crHourGlass;
       if OS.Checked then begin
         TempMulti.PrintMultiImage(0,
                                       0,
                                       TempMulti.BWidth,
                                       TempMulti.BHeight);
       end else begin
          TempMulti.PrintMultiImage(0,
                                        0,
                                        Printer.PageWidth,
                                        Printer.PageHeight);
       end;
       Screen.Cursor:=crDefault;

     end;    }

  finally
     //TempMulti.P_Begin_End_Doc:=Old;
     F.Destroy;
  end;

end;

procedure TFImagEditor.UndoExecute(Sender: TObject);
begin
  //imgDrawingPad.UndoImage;
  //imgDrawingPad.ImageName := Imgfilpth;
end;

end.

