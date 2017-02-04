unit JAppMainU;

interface

uses
  SysUtils, Classes, Forms, amjAppU, windows, amjDbU, AmjLookUpU, AmjAppDataU,
  AmjSetU, AmjStandardU;

const
  MsgUpdate = ' „ «·«‰ Â«¡ „‰ ⁄„·Ì… «· ÕœÌÀ.';
  MsgDropNKLI = ' „ «·«‰ Â«¡ „‰ Õ–› «·Ãœ«Ê·.';
  MsgStartImp = '»œ¡  ‰›Ì– ⁄„·Ì… «·«” Ì—«œ.';
  MsgConnected = '„ ’· »ﬁ«⁄œ… «·»Ì«‰« ';
  MsgEndImp = ' „ «·«‰ Â«¡ „‰ ⁄„·Ì… «·«” Ì—«œ ';

type

 TJMyApp = class(TamJApp)
   Public
    LookUp_Dest, LookUp_ZCURRNCY,LookUp_ZITEM,LookUp_ZACCOUNT,
    LookUp_ZBONDTYPE,LookUp_CLASS,LookUp_ZITEMCLASS,LookUp_ZACC_CAT
    ,LookUp_ZACC_MODULE,LookUp_ZSITE,LookUp_ZSELL_PRICE,LookUp_ZITEM_GROUP : TAmjLookUp;
    Ses_yy : integer;
    Current_proj,Current_fold,Current_doc,Current_file:integer; // 14/02/2016

    Procedure Localiz; override;
    Procedure Build_Menu; override;
 {   Procedure Init_LookUp; Override;//}
 end;

Var
  Japp : TJMyApp;

procedure Initapp;

implementation

uses JDests, Zdocu{, Zdocfileu}, docsFileNewU, zprojectdocsU, tempdocsU,
  mailBoxU, Zdocnewu, ImagEditor, ImgIdt, ZFoldersU, ZProjectsU, ZFoldernewu,
  ZDocNewJSonu, ZPrivsU, ZPRIVSnEW, SearchDocs, SearchFolders, SearchFull;

procedure Initapp;
begin
  JApp := TjMyApp.Create(application);

  with JApp do begin
    with info do begin
      dbUserName := 'jdms';
      dbPasswd := 'j';
      ProgID := 'jdms';
      info.DbMgrUser := 'jmanager_21'; //jmanager_21 jmgr  03/05/2016
      chuserdb := false;
      VersionMajor := 1;
      VersionMinor := 1;
      VersionBuild := 1;

      DecimalSeparator := '.';

      StartYY := '2016';
      DatYY := '2016/11/1';
      ProgName := '»—‰«„Ã «·√—‘›…';
    end;

    Init;
    if (Conn) then //and (IsAppPriv) then
      PostCon;
  end;
End;


Procedure TJMyApp.Localiz;
Begin
  with JDest do begin
    DestId := BASHAR;
     japp.info.ExpOpts := ' owner=JACC ';
     japp.info.ExpPrefix := 'JAcc_';
  end;
End;


Procedure TJMyApp.Build_Menu;
Var LHasPriv:boolean;
begin
 Ses_yy := 2014;

 AppAct.AddMenu(LHasPriv,'«·„‘—Ê⁄');
 if LHasPriv then begin
// AppAct.AddPage(LHasPriv,'„⁄«·Ã… ’Ê—…',TZdocf);
 //AppAct.AddPage(LHasPriv,'mailbox',TmailBoxf);
 //AppAct.AddPage(LHasPriv,'ÊÀ«∆ﬁ «·„‘—Ê⁄',Ttempdocsf);
 AppAct.AddPage(LHasPriv,'  «·„‘—Ê⁄',Tzprojectdocsf);
// AppAct.AddPage(LHasPriv,' ≈œŒ«· ’Ê— ÊÀ«∆ﬁ',TDocsfilenewF,1,'S');
// AppAct.AddPage(LHasPriv,'≈œŒ«· ÊÀÌﬁ…',TZdocnewf,1,'S');
// AppAct.AddPage(LHasPriv,'„Ã·œ ÃœÌœ',TZFoldernewf,1,'S');
 //AppAct.AddPage(LHasPriv,'  „Õ—— «·’Ê—',TFImagEditor);
// AppAct.AddPage(LHasPriv,'  „Õ—— «·’Ê—',TImgIdtf,1);  //
//  AppAct.AddPage(LHasPriv,'  JSonTry',TZDocNewJSonf,1,'S');//TZDocNewJSonf  TZdocnew2f
 end;

  AppAct.AddMenu(LHasPriv,'«·»ÕÀ');
 if LHasPriv then begin
 AppAct.AddPage(LHasPriv,'  «·»ÕÀ ⁄‰ «·„” ‰œ« ',TFSearchDocs);
 AppAct.AddPage(LHasPriv,'  «·»ÕÀ ⁄‰ «·„·›« ',TFSearchFolders);
 AppAct.AddPage(LHasPriv,'  «·»ÕÀ «·⁄‹‹‹‹‹‹«„',TFSearchFull);
 end;

 AppAct.AddMenu(LHasPriv,'«·»—Ìœ «·≈·ﬂ —Ê‰Ì');
 if LHasPriv then begin
   AppAct.AddPage(LHasPriv,'«·»—Ìœ «·≈·ﬂ —Ê‰Ì',TmailBoxf);
 end;

{  AppAct.AddMenu(LHasPriv,' —„Ì“');
 if LHasPriv then begin
  AppAct.AddPage(LHasPriv,'«·„Ã·œ« ',TZFoldersF);
  AppAct.AddPage(LHasPriv,'«·„‘«—Ì⁄',TZProjectsF);
 end; //}
 {AppAct.RegPage(TBillNewF, 1);} //
 AppAct.RegPage(TZPrivsf, 1);
  AppAct.RegPage(TZPRIVSnEW2, 1) ;
end;


{Procedure TJMyApp.Init_LookUp;
Begin
  LookUp_Dest := TAmjLookUp.Create2(nil, 'jshop.ZDEST');
  LookUp_ZCURRNCY := TAmjLookUp.Create2(nil, 'jshop.ZCURRENCY');
  LookUp_ZCURRNCY.lfields.add('EQUAL');
  LookUp_ZACCOUNT := TAmjLookUp.Create2(nil, 'jshop.ZACCOUNTS');
  LookUp_ZBONDTYPE:=  TAmjLookUp.Create2(nil, 'jshop.ZBOND_TYPE');
  LookUp_CLASS:=  TAmjLookUp.Create2(nil, 'jshop.ZCLASS');
  LookUp_ZITEMCLASS  :=  TAmjLookUp.Create2(nil, 'jshop.ZITEMCLASS');
  LookUp_ZITEM  :=  TAmjLookUp.Create2(nil, 'jshop.ZITEM');
  LookUp_ZITEM.lfields.add('NO');
  LookUp_ZITEM.lfields.add('VAL_ONE');
  LookUp_ZACC_CAT  :=  TAmjLookUp.Create2(nil, 'jshop.ZACC_CAT');
  LookUp_ZACC_MODULE  :=  TAmjLookUp.Create2(nil, 'jshop.ZACC_MODULE');
  LookUp_ZSITE  :=  TAmjLookUp.Create2(nil, 'jshop.ZSITE');
  LookUp_ZSELL_PRICE  :=  TAmjLookUp.Create2(nil, 'jshop.ZSELL_PRICE');
  LookUp_ZITEM_GROUP :=TAmjLookUp.Create2(nil,'jshop.ZITEM_GROUP');

End;  //}

initialization

end.
