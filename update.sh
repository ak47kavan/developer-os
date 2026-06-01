#!/bin/bash

bash scripts/collect_arch.sh
python3 scripts/generate_readme.py

git add .
git commit -m "Developer OS update $(date '+%Y-%m-%d')"|| exit 0
git push
