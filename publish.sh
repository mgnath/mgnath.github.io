#!/bin/bash
rsync --progress -a -q ~/Projects/eldinero/dist/ ~/Projects/publish/mgnath.github.io/$1
cd $1
sed -i '' "s/z.z.z/$1/g" index.html
cd ..
rsync --progress -a -q ~/Projects/eldinero/dist/ ~/Projects/publish/mgnath.github.io
sed -i '' "s/z.z.z/$1/g" index.html
git add .
git commit -a -m "$2"
git push 