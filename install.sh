#!/bin/bash
#
# parameter <target-name> : if exist, then only such <target-name> will be installed, otherwise if not exist then it will install all
#

# don't use ls, it's broken and will return unexpected number of files than we need
FILES=($(find ./src -type f -name '*.3' -exec basename {} \;))
TARGET=/usr/local/share/man/man3
WORKING_DIR=$(pwd)

if [ -z "$1" ]
then
	for f in "${FILES[@]}"; do
		ln -sf "$WORKING_DIR/src/$f" "$TARGET/$f"
		echo "[OK] $f"
	done
else
	if [ -f "$WORKING_DIR/src/$1.3" ]
	then
		ln -sf "$WORKING_DIR/src/$1.3" "$TARGET/$1.3"
		echo "[OK] $1"
	else
		echo "[FAILED] $1 - No such file"
	fi
fi

