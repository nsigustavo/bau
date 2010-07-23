sudo apt-get -y install zlib1g zlib1g-dev
sudo apt-get -y install build-essential libssl-dev libreadline5-dev

sudo apt-get -y install ruby, irb, rails, rubygems
cd
wget http://www.blue.sky.or.jp/atelier/ruby/ruby-zlib-0.6.0.tar.gz
tar xvzf ruby-zlib-0.6.0.tar.gz
cd ruby-zlib-0.6.0
ruby extconf.rb
make
make install
cd
rm ruby-zlib-0.6.0.tar.gz
rm -rf ruby-zlib-0.6.0



sudo gem install cucumber
sudo gem install rails


cd

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >>  ~/.bashrc

echo 'export PS1="\`ruby=\$(which ruby 1> /dev/null && ruby -v 2> /dev/null | grep -oP \"^.+?[0-9]+(\.[0-9]+)+\") && echo \"(\$ruby) \"\`$PS1"' >> ~/.bashrc

source ~/.bashrc

bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )

rvm 1.8.7
rvm 1.9.2

rvm use 1.8.7

gem install rails
gem install cucumber





