#!/bin/bash

# don't use ls, it's broken and will return unexpected number of files than we need
FILES=($(find ./src -type f -name '*.3' -exec basename {} \;))
TARGET=/usr/local/share/man/man3
WORKING_DIR=$(pwd)

for f in "${FILES[@]}"; do
	ln -sf "$WORKING_DIR/src/$f" "$TARGET/$f"
	echo "[OK] $f"
done

echo "done"

