#!/bin/bash
echo "==========="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git remote add origin https://github.com/Duhduh420/Duhduh420.git
git add .
git commit -m "Update feed"
echo -e "blahnikkai\n${secrets.GH_ACCESS_TOKEN}" | git push --set-upstream origin main



echo "==========="
