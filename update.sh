#!/bin/bash

set -e

CURRENT_DIR=$PWD
DIR=`mktemp -d`

cd $DIR

git clone https://github.com/cdrage/charts && cd charts

echo "Enter your GPG key:"
read gpgkey

export HELM_KEY_PASSPHRASE=$gpgkey

for i in */; do
  helm package --sign --key "Charlie Drage <charlie@charliedrage.com>" --keyring ~/.gnupg/secring.gpg gitea
done

mv *.tgz *.tgz.prov $CURRENT_DIR

cd $CURRENT_DIR

helm repo index .

git add .
DATE=`date`
git commit -m "Update $DATE"
git push origin gh-pages
