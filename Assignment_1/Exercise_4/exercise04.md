## Explanation of the commands used in Exercise 4

### Number 1
`grep -Eciw "chin(a|ese)" *.tsv > aufg1.txt`
1. **grep** is used to find specific text in certain file.
2. **Attributes** to grep:
	* **-E** used to tell the program that this is an extended regular expression.
	* **-c** prints the reslult into a list rather than showing one combined number while using multiple files.
	* **-i** ignores the fact that the searched word is or is not uppercase.
	* **-w** searches only for the word when it stands alone.
3. Searching for the word **china or chinese** by using: `(a|ese)`. The pipe symbol is equivalent to "OR"
4. Searching the word in every **.tsv** file located in the folder.
5. Printing it to a new File called **aufg1.txt**.
___
### Number 2
``for i in `ls *.tsv`; do echo China/ese in $i:`cut -f9 $i | grep -Eicw "chin(a|ese)"`; done > aufg2.txt; echo Summe:`cut *.tsv -f9 | grep -Eciw "chin(a|ese)"` >> aufg2.txt``
1. **for** is used to create a loop that will tell the program to run the following script "i" times wich results the number of **.tsv** files found in the directory.
2. **echo** is used to describe or explain the shown results in the final file.
3. **cut -f9** is used to only search in the ninth coloumn (**-f9**) of the **.tsv** file, being the title one.
___
### Number 3
`cut -f6 *.tsv | grep -Eci "\b(([[:digit:]]{4})-([[:digit:]]{3})([[:digit:]]|x))" > aufg3.txt`
1. The **grep** part only searches for the pattern of an ISSN being:
	* Eight digits **(`([[:digit:]])`)** divided by a hyphen **(`(-)`)** into two groups of four digits each, where the last digit can be an "x" **(`([[:digit:]]|x)`)**.
2. **{x}** describes how often the `[[:digit:]]` should occur in a row.
___
### Number 4
`cut -f2 *.tsv | grep -viw "creator" | sed '/^$/d' > aufg4.txt`
1. **Attributes** to grep:
	* **-v** used to invert the search by excluding the term/s specified.
2. **sed** is used to get rid of blank spaces created in the file .
___
### Number 5
`cut -f2 *.tsv | grep -viw "creator" | sed '/^$/d' | sort | uniq > aufg5.txt`
1. **sort** is used to sort the found items or terms by name.
2. **uniq** only works when the list is sorted and outputs everything but duplicates.
___
### Number 6
`cut -f6 *.tsv | grep -Ewi "([[:digit:]][[:digit:]][[:digit:]][[:digit:]]-[[:digit:]][[:digit:]][[:digit:]]([[:digit:]]|x))" | sort > aufg6.txt; uniq aufg6.txt uniq-issn.txt`
1. Does the **same** thing as **Number 5** but with another row of the table
2. Output are two **.txt** files:
	* **aufg6.txt** contains the sorted List of ISSN's
	* **uniq-issn.txt** contains the unique ISSN's
