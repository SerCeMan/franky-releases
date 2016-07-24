#!/usr/bin/env bash

# just quick temporary solution instead of official repo

cd ../franky
./gradlew plugin
cd -
cp ../franky/franky-intellij/build/distributions/* .
FRANKY_RELEASE_NAME=`ls -1 | grep zip`
VERSION=`echo ${FRANKY_RELEASE_NAME} | sed -e "s/Franky-//g" -e "s/.zip//g"`
sed -e "s/\$NAME/$FRANKY_RELEASE_NAME/" -e "s/\$VERSION/$VERSION/" updatePlugins.xml.dist > updatePlugins.xml
git add .
git commit -m"release $FRANKY_RELEASE_NAME" -a
git push

