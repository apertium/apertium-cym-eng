#!/usr/bin/env bash
echo "==Welsh->English==========================";

bash inconsistency.sh cym-eng ../../../apertium-cym/apertium-cym.cym.dix  > /tmp/cym-eng.testvoc; bash inconsistency-summary.sh /tmp/cym-eng.testvoc cym-eng; grep ' #' /tmp/cym-eng.testvoc > ./testvoc-errors.cym-eng.txt; grep '@' /tmp/cym-eng.testvoc >> ./testvoc-errors.cym-eng.txt

echo "==English->Welsh==========================";

bash inconsistency.sh eng-cym ../../../apertium-eng/apertium-eng.eng.dix  > /tmp/eng-cym.testvoc; bash inconsistency-summary.sh /tmp/eng-cym.testvoc eng-cym; grep ' #' /tmp/eng-cym.testvoc > ./testvoc-errors.eng-cym.txt; grep '@' /tmp/eng-cym.testvoc >> ./testvoc-errors.eng-cym.txt
