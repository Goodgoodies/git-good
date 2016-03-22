#!/bin/sh
echo '# Git Good Update Export' >> ~/.bashrc
echo '# Git Good Update Export' >> ~/.zshrc
echo 'export PATH="$HOME/.gitgood/update:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/.gitgood/update:$PATH"' >> ~/.zshrc
bash -c "chmod a+x ~/.gitgood/update/git_good_updates.sh"
# Configure alias
bash -c "git config --global alias.good '!sh ~/.gitgood/gitgood.sh'"
