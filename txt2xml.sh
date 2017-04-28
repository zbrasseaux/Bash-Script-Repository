# Credit for this one goes to sgzUk74r3T3BCGmRJ from the Linus Tech Tips Forum.
# Requires txt2html and tidy be installed, which can be done with "sudo apt-get install txt2xml: and "sudo apt-get install tidy".

for i in *.txt; do txt2html $i | tidy -q -asxml > ${i%.txt}.xml; done

mkdir TextFiles

mv *.txt TextFiles
