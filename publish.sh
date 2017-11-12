#!/bin/bash
rsync --progress -a ~/Projects/eldinero/dist/ ~/Projects/publish/mgnath.github.io/
sed -i '' 's/z.z.z/$1/g' index.html
git add .
git commit -a -m "$2"
git push