#!/bin/sh

for dir in */; do
  NAME=$(echo $dir | sed 's/\///')
  echo $NAME
  docker build -t ghcr.io/alaust-dev/$NAME:latest ./$NAME/
  docker push ghcr.io/alaust-dev/$NAME:latest
done
