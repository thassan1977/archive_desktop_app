unit DsRideU;

interface
 uses
   SysUtils, StrUtils;
type
    TDays_of_Ride = class
    public
    days:array[0..6]of boolean;
    Rtext:string;
    Procedure MakeText;
    Procedure MakeBool;

    published
    constructor create;
    procedure SetDayByInex(index:integer);
    Procedure AddDays(Rday:string);
    Procedure SetText(const text:string) ;


    property
       text:string read Rtext
                   write SetText;
    end;

implementation

    constructor TDays_of_Ride.create;
    var I:integer;
    begin
  //  inherited;
    for I := 0 to 6 do   days[I] := false;
    MakeText;
    end;

    Procedure  TDays_of_Ride.MakeText;
    var I :integer;
    begin
    Rtext := '';
    for I := 0 to 7 do  if days[I] then
     case I of
       0 : Rtext := Rtext + ' ' + 'ÃÍÏ' ;
       1 : Rtext := Rtext + ' ' + 'ÇËäíä';
       2 : Rtext := Rtext + ' ' + 'ËáÇËÇÁ';
       3 : Rtext := Rtext + ' ' + 'ÃÑÈÚÇÁ';
       4 : Rtext := Rtext + ' ' + 'ÎãíÓ' ;
       5 : Rtext := Rtext + ' ' + 'ÌãÚå';
       6 : Rtext := Rtext + ' ' + 'ÓÈÊ';
    end;
    end;

    Procedure  TDays_of_Ride.MakeBool;
    var position :integer;
    begin
     position := ansipos('ÃÍÏ', Rtext);
      if position  > 0 then  days[0] := true;
     position := ansipos('ÇËäíä', Rtext);
      if position  > 0 then  days[1] := true;
     position := ansipos('ËáÇËÇÁ', Rtext);
      if position  > 0 then  days[2] := true;
     position := ansipos('ÃÑÈÚÇÁ', Rtext);
      if position  > 0 then  days[3] := true;
     position := ansipos('ÎãíÓ', Rtext);
      if position  > 0 then  days[4] := true;
     position := ansipos('ÌãÚå', Rtext);
      if position  > 0 then  days[5] := true;
     position := ansipos('ÓÈÊ', Rtext);
      if position  > 0 then  days[6] := true;
    end;

    procedure TDays_of_Ride.SetDayByInex(index:integer);
    begin
    days[index] := true;
    MakeText;
    end;

    procedure TDays_of_Ride.AddDays(Rday:string);
    begin
     Rtext := Rtext + ' ' + Rday;
     MakeBool;
     MakeText;
    end;

    Procedure TDays_of_Ride.SetText(const text:string) ;
    begin
       Rtext := text;
       MakeBool;
       MakeText;
    end;


end.
