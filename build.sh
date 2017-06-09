#!/bin/sh

echo "Building sia-coldstorage-json"
echo "Installing gopherjs"
echo "go get -v -u github.com/gopherjs/gopherjs\n"

go get -v -u github.com/gopherjs/gopherjs 

echo "Creating build directory"
echo "rm -rf ./build && mkdir build\n"

rm -rf ./build && mkdir build

echo "Convert to JavaScript"
echo "gopherjs build main.go -o ./build/sia-coldstorage-json.min.js --minify\n"
gopherjs build main.go -o ./build/sia-coldstorage-json.min.js --minify

echo "Create regular Go binary
echo "go build -o ./build -v -work\n""
go build -o ./build/sia-coldstorage-json -v -work
echo "Your files are compiled and located in the ./build directory"
