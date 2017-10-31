#!/bin/sh

echo Building application

export FILE=hello
docker build -f dockerfile.build -t docker4devs:builder .

docker create --name builder docker4devs:builder

docker cp builder:/index.html ./

docker rm -f builder

cat index.html

echo Building application

docker build --no-cache -f dockerfile.run -t docker4devs:run .

rm index.html
