#!/bin/sh

foreach x ( *.html)
echo $x
tr -d '\r' < $x > foo/$x
end
