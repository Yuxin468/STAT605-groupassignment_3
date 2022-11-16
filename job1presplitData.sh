#!/bin/bash

#wget shakespeare.tar
#tar shakespeare.tar
mkdir output
mkdir error
mkdir log
cat comedies/* histories/* poetry/* tragedies/* > play
nProcessors=5
file="play"
nfileLines=$(wc -l < $file)
nLinesPerSplitFile=$(($nfileLines / $nProcessors))
remainder=$(($nfileLines % $nProcessors))
if [[ $remainder > 0 ]]; then
    nLinesPerSplitFile=$(($nLinesPerSplitFile + 1))
fi
split -d -l $nLinesPerSplitFile $file "$file."
