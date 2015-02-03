#!/bin/bash

BOOTSTRAP_GIT_ROOT=$1
BOOTSTRAP_ROOT='lib'
BOOTSTRAP_DIRS="less js fonts"
BOOTSTRAP_JS="transition alert button carousel collapse dropdown modal tooltip popover scrollspy tab affix"
METEOR_PACKAGE_FILE=package.js

# check if the path is given and exists
if [ ! -d $BOOTSTRAP_GIT_ROOT ]
then
	echo "You must have a copy of bootstrap-material-design git repository and give a valid path as parameter to this script"
	exit 1
fi


# check if all reaquired directories exist
for DIR in $BOOTSTRAP_DIRS
do
	if [ ! -d "$BOOTSTRAP_ROOT/$DIR" ]
	then
		echo "The required directory '$DIR' wasn't found in your bootstrap-material-design copy"
		exit 2
	fi
done

echo "bootstrap installation found, delete old files..."
rm -r $BOOTSTRAP_ROOT/less/* $BOOTSTRAP_ROOT/js/* $BOOTSTRAP_ROOT/fonts/*


echo "copy files from bootstrap installation..."
cp -rv $BOOTSTRAP_GIT_ROOT/scripts/*.js $BOOTSTRAP_ROOT/js
cp -rv $BOOTSTRAP_GIT_ROOT/fonts/* $BOOTSTRAP_ROOT/fonts
cp -rv $BOOTSTRAP_GIT_ROOT/less/* $BOOTSTRAP_ROOT/less

# versions of meteor after v0.7.0.1 (excluding) want .import.less instead of .lessimport
rename -v "s/\\.less/\\.import.less/" lib/less/*.less
sed -i '' "s/\\.less/\\.import.less/g" lib/less/*.less



echo "done!"
