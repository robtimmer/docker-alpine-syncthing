#!/bin/sh

set -e

CONFIG_FOLDER="/data/config"
CONFIG_FILE="$CONFIG_FOLDER/config.xml"

if [ ! -f "$CONFIG_FILE" ]; then
    /go/bin/syncthing -generate="$CONFIG_FOLDER"
fi

exec /go/bin/syncthing -home=$CONFIG_FOLDER
