#!/bin/bash
#
set -e

while getopts c: flag
do
    case "${flag}" in
        c) configuration=${OPTARG};;
        *) echo 'Set configuration by -c flag';;
    esac
done

folder="configurations/$configuration"

echo "Setup configuration files"
#Setup logo image
cp "$folder"/configuration.json assets
#

echo "Setup logo image"
#Setup logo image
cp -R "$folder"/assets/. assets
#

echo "Setup android icon"
#Setup android icon
cp -R "$folder"/android/icon/. android/app/src/main/res/

echo "Setup ios icon"
#Setup ios icon
rm -r ios/Runner/Assets.xcassets/AppIcon.appiconset
cp -R "$folder"/ios/icon/AppIcon.appiconset ios/Runner/Assets.xcassets