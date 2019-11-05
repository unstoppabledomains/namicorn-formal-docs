#!/bin/bash
VERSION=$1
FORMALDOCS="${PWD}/formal-docs"
DOCPATH="${FORMALDOCS}/docs"
NEW_DOCS="${FORMALDOCS}/${VERSION}"
echo $VERSION
echo $DOCPATH
echo $NEW_DOCS
# #Delete old docs 
rm -rf "${DOCPATH}"
# #Recreate docs folder with new data
mkdir $DOCPATH
cp -r "${NEW_DOCS}/." "${DOCPATH}/"
# #Push updates to github
cd ${FORMALDOCS}
echo $PWD
git add .
git status
