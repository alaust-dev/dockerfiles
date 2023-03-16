#!/bin/sh

for dir in */; do
  NAME=$(echo $dir | sed 's/\///')
  echo $NAME
  docker build -t alaust/$NAME:latest ./$NAME/
  docker push alaust/$NAME:latest
done
