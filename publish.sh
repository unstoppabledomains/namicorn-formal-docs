# // To publish we want to copy all files from the last version to a folder /docs. Before we do such we need to delete /docs
echo $1
# // Delete /docs/*
sudo rm -rf ./docs/*
# // Copy eveything from $1 to /docs
mkdir -p ./docs
sudo cp -r $1 ./docs
# // run git commands to push the changes
echo $PWD
# git commit -m "$1"
# git push origin master