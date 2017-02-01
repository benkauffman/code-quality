#!/bin/bash
gjslint -r .\src > gjslint.initial.report.txt

git add --all
git commit -m "changes before cleanup from fixjsstyle"

cat gjslint.initial.report.txt | grep -- '----- FILE  :  ' > gjslint.files.txt
sed -i 's/----- FILE  :  //g' gjslint.files.txt
sed -i 's/ -----//g' gjslint.files.txt

fixjsstyle -r .

gjslint -r . > gjslint.final.report.txt