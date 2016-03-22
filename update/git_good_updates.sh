#!/bin/sh
# Setup an alias for the update
git config --global alias.update '!git remote update -p; git merge --ff-only @{u}'
# Echo into a new bash: "move into ~/.gitgood and update from master. Close when done."
bash -c "cd ~/.gitgood && git checkout master && git update && exit"
