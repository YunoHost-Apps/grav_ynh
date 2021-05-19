#!/bin/bash

source /usr/share/yunohost/helpers

repo="getgrav/grav"

#=================================================
# META HELPER FOR PACKAGE RELEASES
#=================================================

# This script is meant to be manually run by the app packagers
# to automatically update the source files.

# Thanks @lukechild and @jbellocastro
# https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c
version=$(curl --silent "https://api.github.com/repos/$repo/releases/latest" | jq -r ".tag_name")
app_url=$(curl --silent "https://api.github.com/repos/$repo/releases/latest" | jq -r ".assets[0].browser_download_url")
app_upgrade_url=$(curl --silent "https://api.github.com/repos/$repo/releases/latest" | jq -r ".assets[0].browser_download_url")

###
#  APP.SRC
###

# Create the temporary directory
tempdir="$(mktemp -d)"

# Download sources and calculate checksum
filename=${app_url##*/}
curl --silent -4 -L $app_url -o "$tempdir/$filename"
checksum=$(sha256sum "$tempdir/$filename" | head -c 64)
ynh_secure_remove $tempdir

# Get extension
if [[ $filename == *.tar.gz ]]; then
  extension=tar.gz
else
  extension=${filename##*.}
fi

cat <<EOT > ../conf/app.src
SOURCE_URL=$app_url
SOURCE_SUM=$checksum
SOURCE_SUM_PRG=sha256sum
SOURCE_FORMAT=$extension
SOURCE_IN_SUBDIR=true
SOURCE_FILENAME=
EOT

###
#  APP.UPDATE.SRC
###

# Create the temporary directory
tempdir="$(mktemp -d)"

# Download sources and calculate checksum
filename=${app_upgrade_url##*/}
curl --silent -4 -L $app_upgrade_url -o "$tempdir/$filename"
checksum=$(sha256sum "$tempdir/$filename" | head -c 64)
ynh_secure_remove $tempdir

# Get extension
if [[ $filename == *.tar.gz ]]; then
  extension=tar.gz
else
  extension=${filename##*.}
fi

cat <<EOT > ../conf/app.src
SOURCE_URL=$app_upgrade_url
SOURCE_SUM=$checksum
SOURCE_SUM_PRG=sha256sum
SOURCE_FORMAT=$extension
SOURCE_IN_SUBDIR=true
SOURCE_FILENAME=
EOT

###
#  README and COMMIT
###

sed -i "s#\*\*Shipped version:\*\*.*#\*\*Shipped version:\*\* ${version}#" ../README.md
sed -i "s#\*\*Version incluse :\*\*.*#\*\*Version incluse :\*\* ${version}#" ../README_fr.md
sed -i "s#    \"version\": \".*#    \"version\": \"${version}\~ynh1\",#" ../manifest.json

# TODO: Run README maker

message="Upgrade to v$version"
if [ "$message" == "$(git show -s --format=%s)" ]; then
  git commit ../README.md ../README_fr.md ../manifest.json ../conf/app.src --amend -m "$message"
else
  git commit ../README.md ../README_fr.md ../manifest.json ../conf/app.src -m "$message"
fi
