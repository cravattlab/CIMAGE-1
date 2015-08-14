#!/bin/bash

if [ $# -eq 0 ]; then
    files=$(\ls *.RAW *.raw)
else
    files=$@
fi

echo convert $files to mzXML fomrat

for p in $files
  do
  /cygdrive/c/Xcalibur/ReAdW-4.2.1/ReAdW.exe -c $p
done
exit
