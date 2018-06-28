TMPDIR=/tmp

if [[ $1 = "cym-eng" ]]; then

lt-expand $2 | grep -v REGEX | sed 's/:>:/%/g' | grep -v ':<:' | sed 's/:/%/g' | cut -f2 -d'%' |  sed 's/^/^/g' | sed 's/$/$ ^.<sent>$/g' | tee $TMPDIR/tmp_testvoc1-$1.txt |\
        apertium-pretransfer |\
        lt-proc -b ../../cym-eng.autobil.bin |\
        apertium-transfer -b ../../apertium-cym-eng.cym-eng.t1x  ../../cym-eng.t1x.bin | apertium-interchunk ../../apertium-cym-eng.cym-eng.t2x  ../../cym-eng.t2x.bin | apertium-postchunk ../../apertium-cym-eng.cym-eng.t3x  ../../cym-eng.t3x.bin | tee $TMPDIR/tmp_testvoc2-$1.txt |\
        lt-proc -d ../../cym-eng.autogen.bin > $TMPDIR/tmp_testvoc3-$1.txt
paste -d _ $TMPDIR/tmp_testvoc1-$1.txt $TMPDIR/tmp_testvoc2-$1.txt $TMPDIR/tmp_testvoc3-$1.txt | sed 's/ \^.<sent>\$//g' | sed 's/_/   --------->   /g' | grep -v '@'
rm $TMPDIR/tmp_testvoc1-$1.txt
rm $TMPDIR/tmp_testvoc2-$1.txt
rm $TMPDIR/tmp_testvoc3-$1.txt

elif [[ $1 = "eng-cym" ]]; then

lt-expand $2 | grep -v REGEX | sed 's/:>:/%/g' | grep -v ':<:' | sed 's/:/%/g' | cut -f2 -d'%' |  sed 's/^/^/g' | sed 's/$/$ ^.<sent>$/g' | tee $TMPDIR/tmp_testvoc1-$1.txt |
        apertium-pretransfer |\
        lt-proc -b ../../eng-cym.autobil.bin |\
        apertium-transfer -b ../../apertium-cym-eng.eng-cym.t1x  ../../eng-cym.t1x.bin | apertium-interchunk ../../apertium-cym-eng.eng-cym.t2x  ../../eng-cym.t2x.bin | apertium-postchunk ../../apertium-cym-eng.eng-cym.t3x  ../../eng-cym.t3x.bin | tee $TMPDIR/tmp_testvoc2-$1.txt |\
        lt-proc -d ../../eng-cym.autogen.bin > $TMPDIR/tmp_testvoc3-$1.txt
paste -d _ $TMPDIR/tmp_testvoc1-$1.txt $TMPDIR/tmp_testvoc2-$1.txt $TMPDIR/tmp_testvoc3-$1.txt | sed 's/ \^.<sent>\$//g' | sed 's/_/   --------->   /g' | grep -v '@'
rm $TMPDIR/tmp_testvoc1-$1.txt
rm $TMPDIR/tmp_testvoc2-$1.txt
rm $TMPDIR/tmp_testvoc3-$1.txt

else
	echo "sh inconsistency.sh <direction>";
fi
