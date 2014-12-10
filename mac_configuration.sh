# brew
panht$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install mysql mcrypt nodejs zlib
brew link openssl --force
exec $SHELL -l
brew tap josegonzalez/homebrew-php
# then add the following two lines to ~/.bashrc
# export LDFLAGS=-L/usr/local/opt/openssl/lib $LDFLAGS
# export CPPFLAGS=-I/usr/local/opt/openssl/include $CPPFLAGS
brew install php56-mcrypt
# them add the following line to ~/.bashrc
# export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
source ~/.bashrc

# zsh
brew install zsh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

# npm
npm config set registry http://registry.npm.taobao.org
npm install -g gulp bower
npm install del gulp-jshint gulp-ng-annotate gulp-uglify gulp-sass gulp-minify-css gulp-concat --save-dev

# rvm
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.1.4

# laravel project
curl -sS https://getcomposer.org/installer | php
# clone sth
# git clone 
bower install
gulp all
