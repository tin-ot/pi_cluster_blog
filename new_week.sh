#!/usr/bin/env bash

# Create new structure

date_file=$(date +%Y'_w'%V)
monday_thisweek=$(date -d "$(date +%Y-%m-%d) -$(date +%u) days +1 day" +%d)
sunday_thisweek=$(date -d "$(date +%Y-%m-%d) -$(date +%u) days +7 days" +%d)
date_title="$monday_thisweek-$sunday_thisweek$(date +/%m/%Y)"


echo "# week num $(date +%V) $date_title

Summary:

- [week num $(date +%V) $date_title](#$(echo week num """$(date +%V)""" """$date_title""" | sed 's/ /-/g' | sed 's@/@@g' | sed 's/.*/\L&/'))
  - [Technical](#technical)
  - [Issues](#issues)
  - [Procurements](#procurements)
  - [Next Week objective](#next-week-objective)

---

## Technical

## Issues

## Procurements

## Next Week objective" > ./weeks/"$date_file".md
