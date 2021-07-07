#!/bin/sh

echo "Running custom post build script"

echo "Writing ASC key to file"

echo "$ASC_API_KEY" >> "${CI_WORKSPACE}/ASC_KEY.p8"

#xcodebuild -exportArchive -archivePath $CI_ARCHIVE_PATH -exportOptionsPlist "${CI_WORKSPACE}/ExportOptions.plist" -allowProvisioningUpdates -exportPath $CI_WORKSPACE

xcodebuild -exportArchive -archivePath $CI_ARCHIVE_PATH -exportOptionsPlist "${CI_WORKSPACE}/ExportOptions.plist" -authenticationKeyIssuerID 69a6de71-cbb0-47e3-e053-5b8c7c11a4d1 -authenticationKeyID M37FNNDGV3 -authenticationKeyPath "${CI_WORKSPACE}/ASC_KEY.p8" -allowProvisioningUpdates -exportPath $CI_WORKSPACE

echo "Attempted signed export"
