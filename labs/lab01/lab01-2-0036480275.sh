#!/bin/bash
sed -i '/[0-9]/!d' Top10
sed -ri 's/(.*) ([0-9]+.*)/\2 \1/' Top10
sed -ri 's/(.*)/\L\1/' Top10
sed -ri 's/([aeiou])/\U\1/g' Top10
sort -n Top10 -o Top10
