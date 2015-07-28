%GNUPLOT Metapost output: Sun Jul 26 23:24:04 2015


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
dashedlines:=false;

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
put_text( btex -0.8 etex, 147.0a, 128.9b, 0, 3);
linetype -2;
draw (166.4a,220.9b)--(183.0a,220.9b);
put_text( btex -0.6 etex, 147.0a, 220.9b, 0, 3);
linetype -2;
draw (166.4a,313.0b)--(183.0a,313.0b);
put_text( btex -0.4 etex, 147.0a, 313.0b, 0, 3);
linetype -2;
draw (166.4a,405.0b)--(183.0a,405.0b);
put_text( btex -0.2 etex, 147.0a, 405.0b, 0, 3);
linetype -2;
draw (166.4a,497.0b)--(183.0a,497.0b);
put_text( btex  0 etex, 147.0a, 497.0b, 0, 3);
linetype -2;
draw (166.4a,589.1b)--(183.0a,589.1b);
put_text( btex  0.2 etex, 147.0a, 589.1b, 0, 3);
linetype -2;
draw (166.4a,681.1b)--(183.0a,681.1b);
put_text( btex  0.4 etex, 147.0a, 681.1b, 0, 3);
linetype -2;
draw (166.4a,128.9b)--(166.4a,145.5b);
put_text( btex  0.07 etex, 166.4a, 88.6b, 0, 2);
linetype -2;
draw (361.5a,128.9b)--(361.5a,145.5b);
put_text( btex  0.08 etex, 361.5a, 88.6b, 0, 2);
linetype -2;
draw (556.5a,128.9b)--(556.5a,145.5b);
put_text( btex  0.09 etex, 556.5a, 88.6b, 0, 2);
linetype -2;
draw (751.6a,128.9b)--(751.6a,145.5b);
put_text( btex  0.1 etex, 751.6a, 88.6b, 0, 2);
linetype -2;
draw (946.6a,128.9b)--(946.6a,145.5b);
put_text( btex  0.11 etex, 946.6a, 88.6b, 0, 2);
linetype -2;
draw (1141.7a,128.9b)--(1141.7a,145.5b);
put_text( btex  0.12 etex, 1141.7a, 88.6b, 0, 2);
linetype -2;
linetype -2;
currentcolor:=black;
draw (166.4a,497.0b)--(1141.7a,497.0b);
linetype -2;
draw (166.4a,681.1b)--(166.4a,128.9b)--(1141.7a,128.9b)--(1141.7a,681.1b)--(166.4a,681.1b);
linetype -2;
put_text( btex $D^{i}$ etex, 29.8a, 405.0b, -270, 2);
linetype -2;
put_text( btex Photon Energy (eV) etex, 654.0a, 28.2b, 0, 2);
linetype -2;
currentcolor:=0.5216*red+0.6*green+0*blue;
put_text( btex $D^{x}$ etex, 989.3a, 445.2b, 0, 3);
linetype -2;
currentcolor:=0.5216*red+0.6*green+0*blue;
draw (1008.7a,445.2b)--(1102.9a,445.2b);
draw (166.4a,497.0b)--(185.9a,497.0b)--(205.4a,497.0b)--(224.9a,497.0b)--(244.4a,497.0b)
--(263.9a,497.0b)--(283.4a,497.0b)--(302.9a,497.0b)--(322.4a,652.5b)--(342.0a,652.6b)
--(361.5a,651.6b)--(381.0a,651.7b)--(400.5a,624.5b)--(420.0a,588.4b)--(439.5a,567.9b)
--(459.0a,554.7b)--(478.5a,545.5b)--(498.0a,538.7b)--(517.5a,533.4b)--(537.0a,529.2b)
--(556.5a,525.7b)--(576.0a,522.8b)--(595.5a,520.3b)--(615.0a,518.2b)--(634.5a,516.3b)
--(654.1a,514.6b)--(673.6a,513.1b)--(693.1a,511.7b)--(712.6a,510.5b)--(732.1a,509.1b)
--(751.6a,507.5b)--(771.1a,525.2b)--(790.6a,521.1b)--(810.1a,516.3b)--(829.6a,504.3b)
--(849.1a,490.4b)--(868.6a,489.1b)--(888.1a,488.6b)--(907.6a,488.1b)--(927.1a,487.6b)
--(946.6a,487.0b)--(966.1a,486.4b)--(985.7a,485.8b)--(1005.2a,485.6b)--(1024.7a,488.6b)
--(1044.2a,491.8b)--(1063.7a,495.3b)--(1083.2a,495.4b)--(1102.7a,495.2b)--(1122.2a,495.1b)
--(1141.7a,494.9b);
linetype -2;
currentcolor:=0.8627*red+0.1961*green+0.1843*blue;
put_text( btex $D^{y}$ etex, 989.3a, 404.9b, 0, 3);
linetype -2;
currentcolor:=0.8627*red+0.1961*green+0.1843*blue;
draw (1008.7a,404.9b)--(1102.9a,404.9b);
draw (166.4a,497.0b)--(185.9a,497.0b)--(205.4a,497.0b)--(224.9a,497.0b)--(244.4a,497.0b)
--(263.9a,497.0b)--(283.4a,497.0b)--(302.9a,497.0b)--(322.4a,428.2b)--(342.0a,428.6b)
--(361.5a,427.2b)--(381.0a,428.4b)--(400.5a,441.1b)--(420.0a,457.4b)--(439.5a,466.7b)
--(459.0a,472.8b)--(478.5a,477.1b)--(498.0a,480.3b)--(517.5a,482.9b)--(537.0a,485.0b)
--(556.5a,486.8b)--(576.0a,488.3b)--(595.5a,489.6b)--(615.0a,490.8b)--(634.5a,491.9b)
--(654.1a,492.9b)--(673.6a,493.9b)--(693.1a,494.8b)--(712.6a,495.7b)--(732.1a,496.5b)
--(751.6a,497.3b)--(771.1a,489.9b)--(790.6a,492.0b)--(810.1a,495.9b)--(829.6a,502.7b)
--(849.1a,503.0b)--(868.6a,502.6b)--(888.1a,502.2b)--(907.6a,501.9b)--(927.1a,501.5b)
--(946.6a,501.1b)--(966.1a,500.6b)--(985.7a,500.1b)--(1005.2a,499.5b)--(1024.7a,498.8b)
--(1044.2a,498.2b)--(1063.7a,497.8b)--(1083.2a,497.7b)--(1102.7a,497.6b)--(1122.2a,497.5b)
--(1141.7a,497.4b);
linetype -2;
currentcolor:=0.1647*red+0.6314*green+0.5961*blue;
put_text( btex $D^{z}$ etex, 989.3a, 364.6b, 0, 3);
linetype -2;
currentcolor:=0.1647*red+0.6314*green+0.5961*blue;
draw (1008.7a,364.6b)--(1102.9a,364.6b);
draw (166.4a,497.0b)--(185.9a,497.0b)--(205.4a,497.0b)--(224.9a,497.0b)--(244.4a,497.0b)
--(263.9a,497.0b)--(283.4a,497.0b)--(302.9a,497.0b)--(322.4a,194.3b)--(342.0a,195.3b)
--(361.5a,196.6b)--(381.0a,197.9b)--(400.5a,251.8b)--(420.0a,322.5b)--(439.5a,362.6b)
--(459.0a,388.5b)--(478.5a,406.8b)--(498.0a,420.4b)--(517.5a,431.0b)--(537.0a,439.5b)
--(556.5a,446.5b)--(576.0a,452.5b)--(595.5a,457.6b)--(615.0a,462.2b)--(634.5a,466.2b)
--(654.1a,469.8b)--(673.6a,473.2b)--(693.1a,476.3b)--(712.6a,479.2b)--(732.1a,482.4b)
--(751.6a,485.8b)--(771.1a,461.8b)--(790.6a,468.6b)--(810.1a,477.5b)--(829.6a,495.5b)
--(849.1a,511.0b)--(868.6a,511.6b)--(888.1a,511.5b)--(907.6a,511.4b)--(927.1a,511.2b)
--(946.6a,511.0b)--(966.1a,510.8b)--(985.7a,510.6b)--(1005.2a,509.9b)--(1024.7a,506.5b)
--(1044.2a,503.1b)--(1063.7a,499.9b)--(1083.2a,499.8b)--(1102.7a,500.0b)--(1122.2a,500.1b)
--(1141.7a,500.3b);
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
