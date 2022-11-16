#!/bin/bash

cat play.$1 |
sed -e 's/[^[:alpha:]]/ /g' | 
sed -e 's/[[:blank:]]/\n/g' | 
sed -e '/^[[:space:]]*$/ d' | 
sed -e '/^[^[:alpha:]]/ d' |
sort | tr '[:upper:]' '[:lower:]'> sort.$1
