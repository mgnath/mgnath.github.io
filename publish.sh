#!/bin/bash
rsync --progress -a ~/Projects/eldinero/dist/ ~/Projects/publish/mgnath.github.io/
git add .
git commit -a -m "$1"
git push