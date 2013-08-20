#!/bin/bash

while read sp1 sp2 sp3
do
  echo -e "$sp2\t$sp3"
done <./namen.dat
