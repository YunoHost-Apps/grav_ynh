#!/bin/bash

#############################
#  PACKAGE UPDATING HELPER  #
#############################

# This script is meant to be run by GitHub actions: check .github/workflows/updater.yml
# Since each app is different, maintainers can adapt its contents
# so as to perform automatic actions when a new upstream release is detected.

# The ASSETS environment variable is a space-separated list of urls
# of assets published with the latest upstream release.
# Let's convert it into an array.
eval "ASSETS=($ASSETS)"
echo "${#ASSETS[@]} available asset(s)"

# Let's loop over the array of assets URLs
for asset_url in ${ASSETS[@]}; do

echo "Handling asset at $asset_url"

# Assign the asset to a source file in conf/ directory
# Leave $src empty to ignore the asset
case $asset_url in
  *"admin"*)
    src="app"
    ;;
  *"update"*)
    src="app-upgrade"
    ;;
  *)
    src=""
    ;;
esac

# If $src is not empty, let's process the asset
if [ ! -z "$src" ]; then

# Create the temporary directory
tempdir="$(mktemp -d)"

# Download sources and calculate checksum
filename=${asset_url##*/}
curl --silent -4 -L $asset_url -o "$tempdir/$filename"
checksum=$(sha256sum "$tempdir/$filename" | head -c 64)

# Delete temporary directory
rm -rf $tempdir

# Get extension
if [[ $filename == *.tar.gz ]]; then
  extension=tar.gz
else
  extension=${filename##*.}
fi

# Rewrite source file
cat <<EOT > conf/$src.src
SOURCE_URL=$asset_url
SOURCE_SUM=$checksum
SOURCE_SUM_PRG=sha256sum
SOURCE_FORMAT=$extension
SOURCE_IN_SUBDIR=true
EOT
echo "... conf/$src.src updated"

else
echo "... asset ignored"
fi

done
echo "Done!"
