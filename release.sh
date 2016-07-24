#!/usr/bin/env bash

# just quick temporary solution instead of official repo

cd ../franky
./gradlew buildPlugin
cd -
cp ../franky/franky-intellij/build/distributions/* .
FRANKY_RELEASE_NAME=`ls -1 | grep zip`
sed -e "s/\$NAME/$FRANKY_RELEASE_NAME/" updatePlugins.xml.dist > updatePlugins.xml
git add .
git commit -m"release $FRANKY_RELEASE_NAME" -a
git push

