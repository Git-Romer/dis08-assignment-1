### Google Spreadsheats was used to solve this exercise
___
## Task Nr.1 
Data fields:
	* **A** - First coloumn shows an enumeration beginning with 0.
	* **B / char** - Second coloumn describes the characters that are supposed to speak.
	* **C / dialog** - Third coloumn shows the text that the character is supposed to read.
	* **D / movie** - Fourth coloumn shows the name of the movie in wich the character is reading the Text.
___
## Task Nr.2
Used the search and replace function by pressing `STRG + H`
Also making sure to check the box "Search with regular expressions"
Working steps: 
	* **`[\s]{2,}`** Searches every whitespace longer than 2 chars **&rarr;** Replaced by one Whitspace.
	* **`^\s`** Searches every whitespace at the beginning of a cell **&rarr;** Replaced by nothing.
	* **`^,|\s,`** Searches every text that starts with a comma **&rarr;** Replaced by nothing.
        * **`^\s`** Searches every whitespace at the beginning of a cell **&rarr;** Replaced by nothing.
	* **`[.]{4,}`** Searches where a dot occurs more than three times in a row **&rarr;** Replaced by three dots.
	* **`!\s,`** Searches for commas after an exclamation point (start of phrase) **&rarr;** Replaced by an exclamation point.
	* **`\s,`** Searches for commas standing alone **&rarr;** Replaced by a single comma.
	* **`.,`** Searches for commas at the begin of a sentence **&rarr;** Replaced by single dot.
	* **`[(|)]``** Searches (only in coloumn B by selecting "certain section") where character names contain brackets **&rarr;** Replaced by nothing.
        * **`^\s`** Searches every whitespace at the beginning of a cell **&rarr;** Replaced by nothing.
