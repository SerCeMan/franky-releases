#!/usr/bin/env bash

# just quick temporary solution instead of official repo

cd ../franky
./gradlew buildPlugin
cd -
cp ../franky/franky-intellij/build/distributions/* .
git add .
git commit -m"release" -a
git push

