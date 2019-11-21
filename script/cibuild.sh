#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
# bundle exec htmlproofer ./_site

echo "www.godot-francophone.org" > ./_site/CNAME
