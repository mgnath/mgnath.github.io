#!/bin/bash
cp -R  ~/Projects/eldinero/dist/ ~/Projects/publish/mgnath.github.io/
git add .
git commit -a -m "My test message"
git push