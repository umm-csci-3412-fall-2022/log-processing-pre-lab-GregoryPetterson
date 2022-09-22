#!/usr/bin/env bash

contents=$1
headfoot=$2
filename=$3

touch "$filename"

cat "$headfoot"_header.html "$contents"  "$headfoot"_footer.html > "$filename"

