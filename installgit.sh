#!/bin/bash

sudo apt-get -y install meld
sudo apt-get -y install git-core git-doc git-gui gitk

git config --global user.name "Gustavo Rezende"
git config --global user.email "nsigustavo@gmail.com"
git config --global color.ui auto
git config --global core.editor gedit

git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.st status

echo '#!/bin/bash' >> $HOME/.config/git_meld_diff.sh
echo 'meld "$5" "$2"' >> $HOME/.config/git_meld_diff.sh

chmod +x $HOME/.config/git_meld_diff.sh
git config --global diff.external $HOME/.config/git_meld_diff.sh

