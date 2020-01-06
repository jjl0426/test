#!/bin/bash

#count the number of times a word appears in a text
#paramter1:the first N rows in the result.
#paramter2:the file path


end=$1

cat $2|
	tr -cs "[a-z][A-Z]" "\n" |
	tr A-Z a-z |
	sort |
	uniq -c |
	sort -k1nr -k2 |
	head -n $end
