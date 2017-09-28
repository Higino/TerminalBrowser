#!/bin/bash

if [ $# -ne 1 ]
then 
    echo "Usage: $0 [File]"
    echo ""
    echo "Tool to export http end point to a file. The end points are stored in a file"
    echo "    File - Is the file containing a list of http end points to fetch"
    exit 1
fi


if [ ! -e $1 ] 
then
    echo "A valid file must be given as argument. $1 does not exist"
    exit 1
else
    endpointlist=$1
fi

if [ ! -d ./output ]
then
    mkdir ./output
fi

while read p; do
  echo "Exporting $p ..."
  baseurl=${p#*//}
  baseurlwithoutslashes=${baseurl/\//_}
  cleanedBaseUrl=`echo $baseurl | sed -e "s/\./_/g" -e "s/\//./g"`
  echo $cleanedBaseUrl
  curl -s $p > ./output/$cleanedBaseUrl
done < $endpointlist
