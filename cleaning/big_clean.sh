#!/usr/bin/env bash
tmp_directory_name="$(mktemp -d)"
previous_location="$(pwd)"
tar -x -z -f "$1" -C "$tmp_directory_name"
cd "$tmp_directory_name" || exit
grep -e "DELETE ME!" -r -l | while IFS='' read -r line
do 
	# Delete the file
	rm "$line" 
done
tar -c -z -f "cleaned_$1" "$(basename "$1" .tgz)"
mv "cleaned_$1" "$previous_location"
