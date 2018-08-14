#!/bin/bash

# don't use ls, it's broken and will return unexpected number of files than we need
FILES=($(find ./src -type f -exec basename {} \;))
TARGET=/usr/local/share/man/man3
WORKING_DIR=$(pwd)

for f in "${FILES[@]}"; do
	ln -s "$WORKING_DIR/src/$f" "$TARGET/$f"
done
