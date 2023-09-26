#!/bin/bash

# Assign the filename
filename='dist/index.html'

# Take the search string
search='{csp-content}'

# Take the replace string
replace="$(cat csp.txt)"

if [[ "${search}" != "" && "${replace}" != "" ]]; then
  sed -i -e "s%${search}%${replace}%" "${filename}"
fi
