#!/bin/bash
sort -m sort.* > sortall 
uniq -c sortall > countsOfWords
