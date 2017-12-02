#!/bin/bash
rsync --progress -a -q ~/Projects/eldinero/dist/ ~/Projects/publish/mgnath.github.io/archive/$1
cd 'archive/'$1'/'
pwd
sed -i '' "s/z.z.z/$1/g" index.html
cd ../../
pwd
rsync --progress -a -q ~/Projects/eldinero/dist/ ~/Projects/publish/mgnath.github.io
sed -i '' "s/z.z.z/$1/g" index.html
git add .
git commit -a -m "$2"
git push 