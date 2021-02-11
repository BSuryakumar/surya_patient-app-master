#!/bin/bash
#versionCode=2
cp release-signing.properties \
 platforms/android/release-signing.properties
cordova build android --release #--gradleArg=-PcdvVersionCode=$versionCode
today=$(date +%d-%h-%y)
mv platforms/android/build/outputs/apk/android-release.apk \
platforms/android/build/outputs/apk/$today.apk