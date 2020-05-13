## Exercise 4

Download the dataset [`shell-lesson.zip`](https://librarycarpentry.org/lc-shell/data/shell-lesson.zip) from the previous lecture 02 and unzip it.

Write a set of shell commands to do the following things:

1. Print an overview of the number of lines per `.tsv` file on the occurence of the terms `china` or `chinese`.
2. Do the same, but search only in the title column. _Hint: Make use of the `cut` command._
3. Count the number of lines that contain an ISSN in all `.tsv` files. _Hint: Check on the correct pattern with `grep`._
4. Print an overview of all entries on creators in the `.tsv` files.
5. Print an overview of unique creator names in all `.tsv` files. _Hint: Make use of the `uniq` command._
6. Print an overview of the ISSN numbers, sort them, delete duplicates and save the result to a file named `uniq-issn.txt`.

### Submission instructions for Exercise 4

Create a file `exercise04.sh` that will contain your solutions to the 6 tasks.

* First line has to be `#!/bin/bash`
* Each line contains the command to solve one of the tasks above.
* We want to see one commit in GitHub per solution!

Additionally, create a text file `exercise04.md` and comment on each solution. To do that,

* copy your commands into the Markdown file,
* and explain what you did and why.

Push all commits to your repository.
