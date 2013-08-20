#!/bin/sh
sum=0
i=$1
while [ $i -le $2 ]; do
	sum=`expr $sum + $i`
	i=`expr $i + 1`
done
echo $sum
		
