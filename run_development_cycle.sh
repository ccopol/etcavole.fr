#!/bin/bash

set -o errexit

clear

jekyll build

echo
echo "Duplicated URLs"
echo "---------------"
grep "http.\?://" $(git ls-files | grep -v -e ".*\.png$" -e ".*\.jpg$" -e ".*\.svg$" -e ".*\.pdf$" -e "^run_development_cycle.sh$" -e "^README.md$" -e "^_privexes.*$") \
| sed $'s/http/\\\nhttp/g' \
| grep http \
| sed "s/^\(http[^ )\"]*\).*$/\1/g" \
| sort | uniq -c | sort -n \
| grep -v "^   1 " \
|| echo None

echo
echo "Unresolved links"
echo "----------------"
grep -e "\[" -e "\]" -R _site \
| grep -v "^Binary file _site/.* matches$" \
|| echo None

echo
echo "Todos"
echo "-----"
git grep "@todo"

echo
jekyll serve --watch --host=0.0.0.0
