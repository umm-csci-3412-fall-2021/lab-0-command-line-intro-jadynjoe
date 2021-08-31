tmp_directory_name="$(mktemp -d)"
tar -x -z -f "$1" -C "$tmp_directory_name"
