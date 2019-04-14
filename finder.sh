#!/bin/sh
#Get artist and songs title running in mpsyt

#This print out whole song title like 'Billie Eilish - lovely (with Khalid)'
title=`ps aux | grep "[m]player -title"| sed 's/.*title \(.*\)-volume.*/\1/'`

#If mplayer is not playing check for mpv
if [ -z "$title" ];then
    title=`ps aux | grep "[m]pv --title"| sed 's/.*title \(.*\)--no.*/\1/'`
fi

# [m] for searching regix, because ps display echo process itself
# \1 is a 'Remember pattern' that remembers everything that is within \(.*\) 
# .*xyz --> represent starting of string

#Extract artist and song title
#Artist name
#first sed removes song name (after '-'), send sed removes all after '(' ,third sed removes word all after 'ft', forth remove all after ',' and fifth removes all after  '['
artist=`echo $title | sed 's/-.*//; s/(.*//; s/ft.*//; s/feat.*//; s/&.*//; s/,.*//; s/\[.*//'`
echo "$artist"

#Song title
#first sed removes artist name (before '-'), send sed removes all after '(' ,third sed removes all after word 'ft', forth removes after '[' and fifth sed removes first white space 
song=`echo $title | sed 's/.*-//; s/(.*//; s/ft.*//; s/feat.*//; s/\[.*//; s/|.*//; s/ //'`
echo "$song"
