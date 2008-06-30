LIST=`wget -O - -q http://wiki.apertium.org/wiki/Welsh_to_English/Regression_tests | grep '<li>' | sed 's/<.*li>//g' | sed 's/ /_/g'`;

cp *.mode modes/

for LINE in $LIST; do
	dir=`echo $LINE | cut -f2 -d'(' | cut -f1 -d')'`;

	if [ $dir = "en" ]; then
		mode="en-cy";
	elif [ $dir = "cy" ]; then
		mode="cy-en";
	else 
		continue;
	fi

#	echo $LINE;
	SL=`echo $LINE | cut -f2 -d')' | sed 's/<i>//g' | sed 's/<\/i>//g' | cut -f2 -d'*' | sed 's/→/@/g' | cut -f1 -d'@' | sed 's/(note:/@/g' | sed 's/_/ /g'`;

	echo -e $mode"\t"$SL"\n\t "`echo $SL | apertium -d . $mode`"\n";

done
