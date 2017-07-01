programs:
lemonbar
quicktile-git
irrsi
mpd
ncmpcpp
stalonetray
network-manager-applet
rtile
tint2
compton
dunst
fish
volumeicon
rxvt-unicode
feh
megasync
clipmenu
screen
st
rofi

curl -sLf https://spacevim.org/install.sh | bash
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
source /etc/profile
rbenv install 2.4.1
rbenv rehash
rbenv global 2.4.1

git config --global user.name "Gazaunga"
git config --global user.email "jeremy.ottley@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true

bundle install --path vendor/bundle 