unit AddFolderForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFAddFolder = class(TForm)
    EfolderName: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddFolder: TFAddFolder;

implementation

{$R *.dfm}

procedure TFAddFolder.Button1Click(Sender: TObject);
begin
  if EfolderName.Text <> '' then
      ModalResult := mrOK ;

end;

procedure TFAddFolder.Button2Click(Sender: TObject);
begin
   modalResult := mrCancel;
end;

end.
