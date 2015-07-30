#!/bin/bash

authors=(andersonPRB15 arzate2014optical atanasov1996coherent bhat2005excitonic bloembergen1962light boehm1994nomenclature bottegoni2013experimental bottegoni2013photoinduced cabellos2009stress cabellos2011optical chen1981surface dadap1997second daum1993identification dyakonov1984theory elias2009control fert2008nobel fraser1999quantum geim2007rise godefroy1996electric guisinger2009exposure han2007energy hartwigsen1998relativistic kleinman1982efficacious kral2000photogalvanic mcgilp1994probing mele2000coherent mendoza1998microscopic mendoza2012optical nair2008fine nastos2006optical nastos2007full novoselov2005two novoselov2005two ohta2006controlling olevanoDP pezzoli2012optical power1995resonant rao2009graphene rioux2010optical salazar2014molecular samarakoon2010tunable sipe2000second tancogne2014effect torrent2008implementation troullier1991efficient vzutic2004spintronics zhang2009direct)

for i in ${authors[@]}; do
    # echo "$i"
    count=`ack "$i" graphane_structures.tex | wc -l`
    echo -e "$count   $i "
done


