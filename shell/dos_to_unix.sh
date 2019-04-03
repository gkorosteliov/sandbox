#!/bin/sh

foreach x ( *.html)
  echo $x
  tr -d '\r' < $x > foo/$x
end

for filename in *.html
do
  echo $filename
  cp $filename $filename.bak
done
