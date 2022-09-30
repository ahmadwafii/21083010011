#!/bin/bash
a=3

while [ $a -lt 20 ]
do
   echo $a
   a=$((a + 2))
done
