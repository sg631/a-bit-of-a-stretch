#!/bin/sh
echo -ne '\033c\033]0;A Bit of A Stretch\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/A Bit of A Stretch.x86_64" "$@"
