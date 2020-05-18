#!/bin/bash
grep -Eciw "chin(a|ese)" *.tsv > aufg1.txt
for i in `ls *.tsv`; do echo China/ese in $i:`cut -f9 $i | grep -Eicw "chin(a|ese)"`; done > aufg2.txt; echo Summe:`cut *.tsv -f9 | grep -Eciw "chin(a|ese)"` >> aufg2.txt
cut -f6 *.tsv | grep -Eci "\b([[:digit:]][[:digit:]][[:digit:]][[:digit:]]-[[:digit:]][[:digit:]][[:digit:]]([[:digit:]]|x))" > aufg3.txt
cut -f2 *.tsv | grep -viw "creator" | sed '/^$/d' > aufg4.txt
cut -f2 *.tsv | grep -viw "creator" | sed '/^$/d' | sort | uniq > aufg5.txt
cut -f6 *.tsv | grep -E "\b([[:digit:]][[:digit:]][[:digit:]][[:digit:]]-[[:digit:]][[:digit:]][[:digit:]]([[:digit:]]|x))" | sort > aufg6.txt; uniq aufg6.txt uniq-issn.txt
