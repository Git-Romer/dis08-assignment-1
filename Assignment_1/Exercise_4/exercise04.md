## Explanation of the commands used in Exercise 4

### Number 1
`grep -Eciw "chin(a|ese)" *.tsv > aufg1.txt`
1. **grep** is used to find specific text in certain file
2. **Attributes** to grep
	* **-E** used to tell the program that this is an extended regular expression
	* **-c** prints the reslult into a list rather than showing one combined number while using multiple files
	* **-i** ignores the fact that the searched word is or is not uppercase
	* **-w** searches only for the word when it stands alone 
3. Searching for the word **china or chinese** by using: `(e|ese)`
4. Searching the word in every **.tsv** file located in the folder
5. Printing it to a new File called **aufg1.txt**
___
### Number 2
``for i in `ls *.tsv`; do echo China in $i:`cut -f9 $i | grep -Eicw "chin(a|ese)"`; done > aufg2.txt; echo Summe:`cut *.tsv -f9 | grep -Eciw "chin(a|ese)"` > aufg2.txt``

___
### Number 3
`cut -f6 *.tsv | grep -Ec "([[:digit:]]-[[:digit:]])" > aufg3.txt`

___
### Number 4
`cut -f2 *.tsv | grep -viw "creator" | sed '/^$/d' > aufg4.txt`

___
### Number 5
`cut -f2 *.tsv | grep -viw "creator" | sed '/^$/d' | sort | uniq > aufg5.txt`
