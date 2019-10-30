VERSION=$1
DOCS_PATH="./namicorn-formal-docs"
PUBLISH_FOLDER="$DOCS_PATH/docs"
rm -rf "$DOCS_PATH/*"
# // Copy eveything from $1 to /docs
mkdir -p $DOCS_PATH
cp -r $DOCS_PATH $PUBLISH_FOLDER
# // run git commands to push the changes
git add $VERSION
git status
git commit -m "$VERSION"
git push origin master