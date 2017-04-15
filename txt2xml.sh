for i in *.txt; do txt2html $i | tidy -q -asxml > ${i%.txt}.xml; done

mkdir TextFiles

mv *.txt TextFiles
