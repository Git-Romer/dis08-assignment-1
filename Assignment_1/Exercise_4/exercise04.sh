#!/bin/bash
grep -Eciw "chin(a|ese)" *.tsv > aufg1.txt
for i in `ls *.tsv`; do echo China in $i:`cut -f9 $i | grep -Eicw "chin(a|ese)"`; done > aufg2.txt; echo Summe:`cut *.tsv -f9 | grep -Eciw "chin(a|ese)"` > aufg2.txt
cut -f6 *.tsv | grep -Ec "([[:digit:]]-[[:digit:]])" > aufg3.txt
