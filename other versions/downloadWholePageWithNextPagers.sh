echo "skript pocinje:"

# Tu gde je Zuerich tu pisi mesto (na primer Zuerich, Bern, Aargau). Ne sme da se pise ü ö ä nego mora se Umlaut ae oe ue da se pise.
# Bei page=[1-30] (also ganz am Schluss vom Link) wird 30 durch die Anzahl der Seiten ersetzt (Falls die Suche in Zuerich 3000 Treffer hat, muss 30 durch 3000 : 10 errsetzt werden. Also 300).
# ein Beispiel:
# Aarau, 209 Menschen leben dort: https://tel.local.ch/de/q/Aarau/*ic?filter%5Bentry_type%5D=private&page=[1-21]

curl -L --remote-name-all --compressed --remote-time --fail 'https://tel.local.ch/de/q/Zuerich/*ic?filter%5Bentry_type%5D=private&page=[1-30]'

echo "gotovo!"