#!/bin/bash

SOURCE=$1

[ "$SOURCE" == "" ] && echo "Update sources from original WebScaleSQL project." && echo "Usage: `basename $0` {source path}" && exit 1


for f in $(find . -regex ".*\.[hc]"); do
  cp $SOURCE/$f $f
done
