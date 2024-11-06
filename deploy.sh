#!/bin/sh

echo "Switching to branch master"
git checkout master

echo "Building app"
npm run build

echo "Deploying files to server"
rsync -avP build/ mutu@143.198.157.18:/var/www/project-mutu.com/
echo "Deployment complete"