program Franska;
uses crt;
type dunder=array[1..50] of string;
var  paus : char;
     ford : dunder;
     sord : dunder;
     svar : string;
     poang : integer;
     nummer : integer;
     x,y : integer;

begin
  clrscr;
    x:=32;
    y:=12;
    gotoxy(x,y);
    writeln('Made by Björn Olsson.');
    paus:=readkey;
  clrscr;
    randomize;
    textattr:=(154);
    gotoxy(1,1);
    writeln('Nu börjar ditt läxprogram.');
    writeln('Tryck på valfri tagent för att börja.');
    writeln('Stor bokstav på det franska ordet.');
    writeln('När du skrivit det franska ordet tryck [ENTER].');
    repeat
      paus:=readkey;
    until paus=#13;
    textcolor(white);
    textbackground(black);
  clrscr;
    sord[1]:='Hej';
    ford[1]:='Salut';
    sord[2]:='Katt';
    ford[2]:='Chat';
    poang:=0;
    nummer:=1;
    while nummer<>3 do
    begin
    writeln(sord[nummer]);
    readln(svar);
    if svar=ford[nummer] then
    begin
    writeln('RÄTT');
    poang:=poang+1;
    end;
    if svar<>ford[nummer] then
    begin
    writeln('FEL');
    poang:=poang-1;
    end;
    nummer:=nummer+1;
    writeln(' ');
    end;
    writeln('Du fick ',poang,' poäng.');
    paus:=readkey;
  clrscr;
end.
