#!/usr/bin/env bash
LIST=`wget -O - -q --no-check-certificate https://wiki.apertium.org/wiki/Welsh_to_English/Regression_tests | grep '<li>' | perl -wpne 'if (m~<li>(.+)</li>~) {$_="$1\n";}' | sed 's/ /_/g'`;

for LINE in $LIST; do
	dir=`echo $LINE | cut -f2 -d'(' | cut -f1 -d')'`;

	if [ $dir = "en" ]; then
		mode="eng-cym";
	elif [ $dir = "cy" ]; then
		mode="cym-eng";
	else 
		continue;
	fi

#	echo $LINE;
	SL=`echo $LINE | cut -f2 -d')' | sed 's/<i>//g' | sed 's/<\/i>//g' | cut -f2 -d'*' | sed 's/→/@/g' | cut -f1 -d'@' | sed 's/_/ /g'`;
	TL=`echo $LINE | sed 's/(\w\w)//g' | sed 's/<i>//g' | cut -f2 -d'*' | sed 's/<\/i>_→/@/g' | cut -f2 -d'@' | sed 's/(note:.*$//g' | sed 's/_/ /g'`;

	TR=`echo $SL | apertium -d . $mode`;

	if [[ `echo $TR | tr '[A-Z]' '[a-z]'` != `echo $TL | tr '[A-Z]' '[a-z]'` ]]; then 
		echo -e $mode"\t "$SL"\n\t-$TL\n\t+ "$TR"\n";
	fi

done
