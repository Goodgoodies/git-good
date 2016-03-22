#!/bin/sh
echo '# Git Good Update Export' >> ~/.bashrc
echo '# Git Good Update Export' >> ~/.zshrc
echo 'export PATH="$HOME/.gitgood/update:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/.gitgood/update:$PATH"' >> ~/.zshrc
echo 'chmod a+x ~/.gitgood/update/git_good_updates.sh'
