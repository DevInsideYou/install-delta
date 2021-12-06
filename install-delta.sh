#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="0.11.0"
VERSION="${1:-$FALLBACK_VERSION}"

SOURCE=https://github.com/dandavison/delta/releases/download/$VERSION/git-delta_{$VERSION}_amd64.deb
TARGET="delta.deb"

curl -L $SOURCE -o $TARGET

# install
sudo dpkg -i $TARGET

# remove
rm $TARGET

echo
echo '"delta" is now on the path'
