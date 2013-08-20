#!/bin/bash

anzZufZahlen=600
maxZahl=6
eins=0
zwei=0
drei=0
vier=0
fuenf=0
sechs=0
cntZufZahlen=1

wurzelFkt() {
  wurzel=`echo "sqrt ($1)" | bc -l`
}

while [ "$cntZufZahlen" -le $anzZufZahlen ]
do
  number=$RANDOM
  let "number %= $maxZahl"
  # echo "$number"
  case $number in
    0) let "eins += 1";;
    1) let "zwei += 1";;
    2) let "drei += 1";;
    3) let "vier += 1";;
    4) let "fuenf += 1";;
    5) let "sechs += 1";;
  esac 
  let "cntZufZahlen += 1"
done

wurzelFkt $anzZufZahlen
let "N = $anzZufZahlen / $maxZahl"
echo "---------"
echo "Script Würfel-Generator (für $anzZufZahlen Würfe)"
echo "Erwartungswert für jede Augenzahl: $N +- $wurzel"
echo "Ergebnis Augenzahlen:"
echo "1: $eins; 2: $zwei 3: $drei 4: $vier 5: $fuenf 6: $sechs"
echo "---------"

