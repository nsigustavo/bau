#!/bin/bash

sudo apt-get install meld
sudo apt-get install git

git config --global user.name "Gustavo Rezende"
git config --global user.email "nsigustavo@gmail.com"
git config --global color.ui auto
git config --global core.editor gedit

git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.st status

echo '#!/bin/bash' >> ~/.config/git_meld_diff.sh
echo 'meld "$5" "$2"' >> ~/.config/git_meld_diff.sh


git config --global diff.external ~/.config/git_meld_diff.sh

