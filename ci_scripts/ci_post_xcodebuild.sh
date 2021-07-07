#!/bin/sh

echo "Running custom post build script"

xcodebuild -exportArchive -archivePath $CI_ARCHIVE_PATH -exportOptionsPlist "${CI_WORKSPACE}/ExportOptions.plist" -allowProvisioningUpdates -exportPath $CI_WORKSPACE

echo "Attempted signed export"
