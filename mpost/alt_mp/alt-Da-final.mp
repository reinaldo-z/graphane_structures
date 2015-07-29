%GNUPLOT Metapost output: Tue Jul 28 18:41:24 2015


%% Add \documentclass and \begin{dcoument} for latex
%% NB you should set the environment variable TEX to the name of your
%% latex executable (normally latex) inorder for metapost to work
%% or run
%% mpost --tex=latex ...

% BEGPRE
verbatimtex
\documentclass{article}
\begin{document}
etex
% ENDPRE

warningcheck:=0;
defaultmpt:=mpt:=4;
th:=.6;
%% Have nice sharp joins on our lines
linecap:=butt;
linejoin:=mitered;

def scalepen expr n = pickup pencircle scaled (n*th) enddef;
def ptsize expr n = mpt:=n*defaultmpt enddef;


textmag:= 1.000;
vardef makepic(expr str) =
  if picture str : str scaled textmag
  % otherwise a string
  else: str infont defaultfont scaled (defaultscale*textmag)
  fi
enddef;

def infontsize(expr str, size) =
  infont str scaled (size / fontsize str)
enddef;

color currentcolor; currentcolor:=black;
color fillcolor;
boolean colorlines,dashedlines;
colorlines:=true;
dashedlines:=true;

def _wc = withpen currentpen withcolor currentcolor enddef;
def _ac = addto currentpicture enddef;
def _sms = scaled mpt shifted enddef;
% drawing point-types
def gpdraw (expr n, x, y) =
  if n<0: _ac contour fullcircle _sms (x,y)
  elseif (n=1) or (n=3):
    _ac doublepath ptpath[n] _sms (x,y) _wc;
    _ac doublepath ptpath[n] rotated 90 _sms (x,y) _wc
  elseif n<6: _ac doublepath ptpath[n] _sms (x,y) _wc
  else: _ac contour ptpath[n] _sms (x,y) _wc
  fi
enddef;

% the point shapes
path ptpath[];
%diamond
ptpath0 = ptpath6 = (-1/2,0)--(0,-1/2)--(1/2,0)--(0,1/2)--cycle;
% plus sign
ptpath1 = (-1/2,0)--(1/2,0);
% square
ptpath2 = ptpath7 = (-1/2,-1/2)--(1/2,-1/2)--(1/2,1/2)--(-1/2,1/2)--cycle;
% cross
ptpath3 := (-1/2,-1/2)--(1/2,1/2);
% circle:
ptpath4 = ptpath8:= fullcircle;
% triangle
ptpath5 = ptpath9 := (0,1/2)--(-1/2,-1/2)--(1/2,-1/2)--cycle;

def linetype expr n =
  currentcolor:= if colorlines : col[n] else: black fi;
  if n = -1 :
      drawoptions(withcolor currentcolor withpen (currentpen scaled .5));
  elseif n < 1 :
    drawoptions(_wc);
  else :
    drawoptions( if dashedlines: dashed lt[n] fi _wc);
  fi
enddef;

% dash patterns
picture lt[];
lt1=dashpattern(on 2 off 2); % dashes
lt2=dashpattern(on 2 off 2 on 0.2 off 2); %dash-dot
lt3=lt1 scaled 1.414;
lt4=lt2 scaled 1.414;
lt5=lt1 scaled 2;
lt6:=lt2 scaled 2;
lt7=dashpattern(on 0.2 off 2); %dots

color col[],cyan, magenta, yellow;
cyan=blue+green; magenta=red+blue;yellow=green+red;
col[-2]:=col[-1]:=col0:=black;
col1:=red;
col2:=(.2,.2,1); %blue
col3:=(1,.66,0); %orange
col4:=.85*green;
col5:=.9*magenta;
col6:=0.85*cyan;
col7:=.85*yellow;

%placing text
picture GPtext;
def put_text(expr pic, x, y, r, j) =
  GPtext:=makepic(pic);
  GPtext:=GPtext shifted
    if j = 1: (-(ulcorner GPtext + llcorner GPtext)/2)
    elseif j = 2: (-center GPtext)
    else: (-(urcorner GPtext + lrcorner GPtext)/2)
    fi
    rotated r;
  addto currentpicture also GPtext shifted (x,y)
enddef;

beginfig(0);
w:=5.000in;h:=3.000in;
a:=w/1200.0;b:=h/720.0;
scalepen 1; ptsize 1.000;linetype -2;
draw (166.4a,128.9b)--(183.0a,128.9b);
put_text( btex -0.5 etex, 147.0a, 128.9b, 0, 3);
linetype -2;
draw (166.4a,184.1b)--(183.0a,184.1b);
put_text( btex -0.4 etex, 147.0a, 184.1b, 0, 3);
linetype -2;
draw (166.4a,239.3b)--(183.0a,239.3b);
put_text( btex -0.3 etex, 147.0a, 239.3b, 0, 3);
linetype -2;
draw (166.4a,294.6b)--(183.0a,294.6b);
put_text( btex -0.2 etex, 147.0a, 294.6b, 0, 3);
linetype -2;
draw (166.4a,349.8b)--(183.0a,349.8b);
put_text( btex -0.1 etex, 147.0a, 349.8b, 0, 3);
linetype -2;
draw (166.4a,405.0b)--(183.0a,405.0b);
put_text( btex  0 etex, 147.0a, 405.0b, 0, 3);
linetype -2;
draw (166.4a,460.2b)--(183.0a,460.2b);
put_text( btex  0.1 etex, 147.0a, 460.2b, 0, 3);
linetype -2;
draw (166.4a,515.4b)--(183.0a,515.4b);
put_text( btex  0.2 etex, 147.0a, 515.4b, 0, 3);
linetype -2;
draw (166.4a,570.7b)--(183.0a,570.7b);
put_text( btex  0.3 etex, 147.0a, 570.7b, 0, 3);
linetype -2;
draw (166.4a,625.9b)--(183.0a,625.9b);
put_text( btex  0.4 etex, 147.0a, 625.9b, 0, 3);
linetype -2;
draw (166.4a,681.1b)--(183.0a,681.1b);
put_text( btex  0.5 etex, 147.0a, 681.1b, 0, 3);
linetype -2;
draw (166.4a,128.9b)--(166.4a,145.5b);
put_text( btex  0.716 etex, 166.4a, 88.6b, 0, 2);
linetype -2;
draw (361.5a,128.9b)--(361.5a,145.5b);
put_text( btex  0.718 etex, 361.5a, 88.6b, 0, 2);
linetype -2;
draw (556.5a,128.9b)--(556.5a,145.5b);
put_text( btex  0.72 etex, 556.5a, 88.6b, 0, 2);
linetype -2;
draw (751.6a,128.9b)--(751.6a,145.5b);
put_text( btex  0.722 etex, 751.6a, 88.6b, 0, 2);
linetype -2;
draw (946.6a,128.9b)--(946.6a,145.5b);
put_text( btex  0.724 etex, 946.6a, 88.6b, 0, 2);
linetype -2;
draw (1141.7a,128.9b)--(1141.7a,145.5b);
put_text( btex  0.726 etex, 1141.7a, 88.6b, 0, 2);
linetype -2;
linetype -2;
currentcolor:=black;
draw (166.4a,405.0b)--(1141.7a,405.0b);
linetype -2;
draw (166.4a,681.1b)--(166.4a,128.9b)--(1141.7a,128.9b)--(1141.7a,681.1b)--(166.4a,681.1b);
linetype -2;
put_text( btex $D^{i}$ etex, 29.8a, 405.0b, -270, 2);
linetype -2;
put_text( btex Photon Energy (eV) etex, 654.0a, 28.2b, 0, 2);
linetype -2;
linetype -2;
scalepen 1.500;
currentcolor:=1*red+0*green+0*blue;
put_text( btex $D^{x}$ etex, 989.3a, 644.3b, 0, 3);
linetype -2;
currentcolor:=1*red+0*green+0*blue;
draw (1008.7a,644.3b)--(1102.9a,644.3b);
draw (166.4a,405.0b)--(176.2a,405.0b)--(185.9a,405.0b)--(195.7a,405.0b)--(205.4a,405.0b)
--(215.2a,405.0b)--(224.9a,405.0b)--(234.7a,405.0b)--(244.4a,405.0b)--(254.2a,405.0b)
--(263.9a,405.0b)--(273.7a,405.0b)--(283.4a,405.0b)--(293.2a,405.0b)--(302.9a,405.0b)
--(312.7a,405.0b)--(322.4a,405.0b)--(332.2a,405.0b)--(342.0a,405.0b)--(351.7a,405.0b)
--(361.5a,405.0b)--(371.2a,405.0b)--(381.0a,405.0b)--(390.7a,405.0b)--(400.5a,405.0b)
--(410.2a,654.2b)--(420.0a,654.5b)--(429.7a,654.8b)--(439.5a,655.1b)--(449.2a,655.1b)
--(459.0a,654.4b)--(468.7a,651.6b)--(478.5a,646.8b)--(488.2a,644.0b)--(498.0a,642.3b)
--(507.8a,641.3b)--(517.5a,640.7b)--(527.3a,640.5b)--(537.0a,640.8b)--(546.8a,642.5b)
--(556.5a,643.8b)--(566.3a,597.1b)--(576.0a,572.3b)--(585.8a,559.6b)--(595.5a,551.9b)
--(605.3a,546.8b)--(615.0a,541.8b)--(624.8a,534.8b)--(634.5a,530.4b)--(644.3a,527.4b)
--(654.1a,522.9b)--(663.8a,504.9b)--(673.6a,492.3b)--(683.3a,484.1b)--(693.1a,477.1b)
--(702.8a,458.1b)--(712.6a,449.9b)--(722.3a,437.4b)--(732.1a,424.5b)--(741.8a,414.2b)
--(751.6a,405.5b)--(761.3a,397.9b)--(771.1a,391.3b)--(780.8a,394.1b)--(790.6a,401.7b)
--(800.3a,410.4b)--(810.1a,419.3b)--(819.9a,424.7b)--(829.6a,421.8b)--(839.4a,419.0b)
--(849.1a,417.4b)--(858.9a,416.1b)--(868.6a,413.7b)--(878.4a,411.2b)--(888.1a,409.0b)
--(897.9a,406.7b)--(907.6a,404.5b)--(917.4a,402.3b)--(927.1a,400.1b)--(936.9a,403.1b)
--(946.6a,406.6b)--(956.4a,410.4b)--(966.1a,412.7b)--(975.9a,413.0b)--(985.7a,412.1b)
--(995.4a,410.7b)--(1005.2a,412.4b)--(1014.9a,414.6b)--(1024.7a,414.5b)--(1034.4a,414.1b)
--(1044.2a,413.7b)--(1053.9a,413.4b)--(1063.7a,412.9b)--(1073.4a,412.4b)--(1083.2a,412.0b)
--(1092.9a,411.5b)--(1102.7a,411.1b)--(1112.4a,410.6b)--(1122.2a,410.3b)--(1131.9a,410.5b)
--(1141.7a,409.9b);
linetype -2;
linetype 1;
currentcolor:=0*red+1*green+0*blue;
put_text( btex $D^{y}$ etex, 989.3a, 604.0b, 0, 3);
linetype -2;
linetype 1;
currentcolor:=0*red+1*green+0*blue;
draw (1008.7a,604.0b)--(1102.9a,604.0b);
draw (166.4a,405.0b)--(176.2a,405.0b)--(185.9a,405.0b)--(195.7a,405.0b)--(205.4a,405.0b)
--(215.2a,405.0b)--(224.9a,405.0b)--(234.7a,405.0b)--(244.4a,405.0b)--(254.2a,405.0b)
--(263.9a,405.0b)--(273.7a,405.0b)--(283.4a,405.0b)--(293.2a,405.0b)--(302.9a,405.0b)
--(312.7a,405.0b)--(322.4a,405.0b)--(332.2a,405.0b)--(342.0a,405.0b)--(351.7a,405.0b)
--(361.5a,405.0b)--(371.2a,405.0b)--(381.0a,405.0b)--(390.7a,405.0b)--(400.5a,405.0b)
--(410.2a,140.0b)--(420.0a,139.4b)--(429.7a,138.9b)--(439.5a,138.3b)--(449.2a,138.0b)
--(459.0a,137.9b)--(468.7a,138.4b)--(478.5a,139.6b)--(488.2a,140.1b)--(498.0a,140.4b)
--(507.8a,140.4b)--(517.5a,140.3b)--(527.3a,140.2b)--(537.0a,140.3b)--(546.8a,141.7b)
--(556.5a,141.3b)--(566.3a,279.4b)--(576.0a,353.4b)--(585.8a,391.8b)--(595.5a,415.3b)
--(605.3a,431.2b)--(615.0a,441.4b)--(624.8a,454.3b)--(634.5a,462.8b)--(644.3a,469.0b)
--(654.1a,471.8b)--(663.8a,461.9b)--(673.6a,455.1b)--(683.3a,450.9b)--(693.1a,442.1b)
--(702.8a,410.1b)--(712.6a,400.1b)--(722.3a,392.6b)--(732.1a,384.6b)--(741.8a,378.2b)
--(751.6a,372.6b)--(761.3a,367.4b)--(771.1a,362.9b)--(780.8a,364.6b)--(790.6a,369.6b)
--(800.3a,375.4b)--(810.1a,383.7b)--(819.9a,391.7b)--(829.6a,393.6b)--(839.4a,395.5b)
--(849.1a,396.2b)--(858.9a,396.6b)--(868.6a,398.4b)--(878.4a,400.9b)--(888.1a,403.6b)
--(897.9a,406.2b)--(907.6a,408.8b)--(917.4a,411.4b)--(927.1a,413.9b)--(936.9a,410.4b)
--(946.6a,406.4b)--(956.4a,402.3b)--(966.1a,400.3b)--(975.9a,400.6b)--(985.7a,401.9b)
--(995.4a,403.7b)--(1005.2a,402.4b)--(1014.9a,400.7b)--(1024.7a,401.1b)--(1034.4a,401.3b)
--(1044.2a,401.5b)--(1053.9a,401.7b)--(1063.7a,402.2b)--(1073.4a,402.9b)--(1083.2a,403.7b)
--(1092.9a,404.4b)--(1102.7a,405.1b)--(1112.4a,405.7b)--(1122.2a,406.6b)--(1131.9a,407.8b)
--(1141.7a,408.0b);
linetype -2;
linetype 6;
currentcolor:=0*red+0*green+1*blue;
put_text( btex $D^{z}$ etex, 989.3a, 563.7b, 0, 3);
linetype -2;
linetype 6;
currentcolor:=0*red+0*green+1*blue;
draw (1008.7a,563.7b)--(1102.9a,563.7b);
draw (166.4a,405.0b)--(176.2a,405.0b)--(185.9a,405.0b)--(195.7a,405.0b)--(205.4a,405.0b)
--(215.2a,405.0b)--(224.9a,405.0b)--(234.7a,405.0b)--(244.4a,405.0b)--(254.2a,405.0b)
--(263.9a,405.0b)--(273.7a,405.0b)--(283.4a,405.0b)--(293.2a,405.0b)--(302.9a,405.0b)
--(312.7a,405.0b)--(322.4a,405.0b)--(332.2a,405.0b)--(342.0a,405.0b)--(351.7a,405.0b)
--(361.5a,405.0b)--(371.2a,405.0b)--(381.0a,405.0b)--(390.7a,405.0b)--(400.5a,405.0b)
--(410.2a,567.5b)--(420.0a,567.5b)--(429.7a,567.5b)--(439.5a,567.5b)--(449.2a,568.0b)
--(459.0a,569.4b)--(468.7a,574.1b)--(478.5a,581.7b)--(488.2a,586.3b)--(498.0a,589.1b)
--(507.8a,591.0b)--(517.5a,592.1b)--(527.3a,592.8b)--(537.0a,591.9b)--(546.8a,586.8b)
--(556.5a,584.7b)--(566.3a,527.9b)--(576.0a,497.5b)--(585.8a,481.7b)--(595.5a,472.1b)
--(605.3a,465.7b)--(615.0a,459.9b)--(624.8a,451.9b)--(634.5a,446.8b)--(644.3a,443.2b)
--(654.1a,440.1b)--(663.8a,434.1b)--(673.6a,429.9b)--(683.3a,427.1b)--(693.1a,426.5b)
--(702.8a,426.4b)--(712.6a,425.2b)--(722.3a,422.0b)--(732.1a,418.7b)--(741.8a,416.0b)
--(751.6a,413.8b)--(761.3a,411.8b)--(771.1a,410.2b)--(780.8a,410.8b)--(790.6a,412.6b)
--(800.3a,414.8b)--(810.1a,416.5b)--(819.9a,417.0b)--(829.6a,415.4b)--(839.4a,413.8b)
--(849.1a,412.9b)--(858.9a,412.2b)--(868.6a,410.3b)--(878.4a,408.1b)--(888.1a,406.0b)
--(897.9a,404.0b)--(907.6a,402.0b)--(917.4a,400.1b)--(927.1a,398.3b)--(936.9a,401.1b)
--(946.6a,404.1b)--(956.4a,407.0b)--(966.1a,408.5b)--(975.9a,408.5b)--(985.7a,408.0b)
--(995.4a,407.5b)--(1005.2a,408.3b)--(1014.9a,409.3b)--(1024.7a,409.4b)--(1034.4a,409.5b)
--(1044.2a,409.5b)--(1053.9a,409.6b)--(1063.7a,409.3b)--(1073.4a,408.9b)--(1083.2a,408.5b)
--(1092.9a,408.1b)--(1102.7a,407.7b)--(1112.4a,407.3b)--(1122.2a,406.9b)--(1131.9a,406.6b)
--(1141.7a,406.1b);
scalepen 2.000;
linetype -2;
scalepen 1.000;
linetype -2;
draw (166.4a,681.1b)--(166.4a,128.9b)--(1141.7a,128.9b)--(1141.7a,681.1b)--(166.4a,681.1b);
linetype -2;
endfig;
% BEGPOST
verbatimtex
 \end{document}
etex
% ENDPOST
end.
