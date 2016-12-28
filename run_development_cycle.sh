#!/bin/bash

set -o errexit

clear

jekyll build

echo
echo "Duplicated URLs"
echo "---------------"
FILES=$(
  git ls-files \
  | grep -v \
    -e ".*\.png$" -e ".*\.jpg$" -e ".*\.svg$" -e ".*\.pdf$" \
    -e "^run_development_cycle.sh$" -e "^README.md$" -e "^_privexes.*$" \
    -e "^_site/.*$" \
)
grep "http.\?://" $FILES \
| sed $'s/http/\\\nhttp/g' \
| grep http \
| sed "s/^\(http[^ )\"]*\).*$/\1/g" \
| sort | uniq -c | sort -n \
| grep -v "^   1 " \
|| echo None

echo
echo "Unresolved links"
echo "----------------"
FILES=$(
  git ls-files _site \
  | grep -v \
    -e "^_site/feed.xml$" \
)
grep -e "\[" -e "\]" $FILES \
| grep -v "^Binary file _site/.* matches$" \
|| echo None

echo
echo "Todos"
echo "-----"
FILES=$(
  git ls-files \
  | grep -v \
    -e "^_site/.*$" \
)
grep -n "@todo" $FILES | grep -v run_development_cycle.sh:$LINENO

echo
jekyll serve --watch --host=0.0.0.0
