#!/bin/bash

#1. sed: Punktion ("." ",") entfernen + Leerzeichen in Zeilenumbrüche umwandeln
#2. tr: Groß- gegen Kleinbuchstaben tauschen
#3. sort: Ausgabe sortieren
#4. uniq -c: Doubletten entfernen, Häufigkeit feststellen
#5. sort -nr: Sortierung nach Häufigkeitswert (1.Spalte) und reverse

sed  -e 's/\,//g' -e 's/\.//g' -e 's/\ /\
/g' $1 | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr

