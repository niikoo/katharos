#!/bin/bash
# Requires 7-zip (e.g. p7zip-full)
echo "Packing file"
if [ -f ./katharos.zip ] 
then
	echo "Deleting existing archive"
	rm -f ./katharos.zip
fi;
7z a -tzip ./katharos.zip ./assets/* ./LICENSE ./pack.png ./pack.mcmeta ./package.json ./README.md
echo "done!"
