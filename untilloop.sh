#!/bin/bash

a=1

until [ ! $a -lt 20 ]
do
    echo $a
    a=$((a + 2))
done
