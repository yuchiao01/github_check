#!/bin/bash
echo "# shell-scripts" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:yuchiao01/shell-scripts.git
git push -u origin main
