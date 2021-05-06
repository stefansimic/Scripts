#!/bin/sh

#
# INFORMATION
# USE ME LIKE THIS:
# 1. GO TO DESIRED DIRECTORY WITH YOUR COMMAND LINE
# EXECUTE FOLLOWING COMMAND: bash /path/to/this/command/download.sh
# ENJOY!
#


preLocaleUrl=https://tel.local.ch/de/q?rid=BiMt&what=*ic&where=schweiz&filter%5Bentry_type%5D=private
locales=(de)
postLocaleUrl=lca.html
parameter=is-oekobilanz=true

echo "https://tel.local.ch/de/q/schweiz/*ic?rid=beGA"
echo "https://tel.local.ch/de/q?rid=BiMt&what=*ic&where=schweiz&filter%5Bentry_type%5D=private"

echo "Downloading pages and resources"
for locale in "${locales[@]}"
do
  echo "Downloading ${locale} locale"
  wget -E -H -k -K -p ${preLocaleUrl}/${postLocaleUrl}?${parameter}
done


echo "Rename language nav links"

for locale in "${locales[@]}"
do
  LC_ALL=C find . -type f -name '*.html' -exec sed -i '' s,${preLocaleUrl}${locale}/${postLocaleUrl},../${locale}/${postLocaleUrl}%3F${parameter}.html,g {} +
done



echo "Done!"