#!/bin/bash

#fresh installation

sudo apt-get update
sudo apt-get upgrade

#simple soft
#sudo add-apt-repository ppa:webupd8team/sublime-text-3
#sudo apt-get install sublime-installer
sudo apt-get install vim git subversion mysql-server ack-grep cloc curl

#core update
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
sudo add-apt-repository -y ppa:gnome3-team/gnome3
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo echo `deb http://download.videolan.org/pub/debian/stable/ /` | tee -a /etc/apt/sources.list.d/libdvdcss.list &&
sudo echo `deb-src http://download.videolan.org/pub/debian/stable/ /` | sudo tee -a /etc/apt/sources.list.d/libdvdcs.list  && wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install dist-upgrade
sudo apt-get install synaptic vlc gimp gimp-data gimp-data-extras y-ppa-manager bleachbit oracle-java8-installer flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview mpeg3-utils mpegdemux mpeg2dec vorbis-tools id3v2 mpg123 icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4
sudo dpkg-reconfigure libdvd-pkg

if [[ $(getconf LONG_BIT) = "64" ]]
then
	echo "64bit detected" &&
	echo "installing google chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
	sudo dpkg -i google-chrome-stable_current_amd64.deb &&
	rm -f google-chrome-stable_current_amd64.deb
else
	echo "32 bit detected" &&
	echo "installing google chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb &&
	sudo dpkg -i google-chrome-stable_current_i386.deb &&
	rm -f google-chrome-stable_current_i386.deb
fi
echo "cleaning up"


sudo apt-get -f install
sudo apt-get autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean

#### Development PHP ####
sudo apt-get install apache2 phpmyadmin php
mkdir -p ~/dev_git && cd ~/dev_git && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && sudo php composer-setup.php --install-dir=/usr/bin && php -r "unlink('composer-setup.php');" && sudo mv /usr/bin/composer.phar /usr/bin/composer && sudo chmod +x /usr/bin/composer
mkdir -p ~/dev_git && cd ~/dev_git && git clone https://github.com/RoverWire/virtualhost.git && cd virtualhost && chmod +x virtualhost.sh && sudo cp virtualhost.sh /usr/bin/virtualhost && chmod +x virtualhost-nginx.sh && sudo cp virtualhost-nginx.sh /usr/bin/virtualhost-nginx
#### Development JS ####
mkdir -p ~/dev_git && cd ~/dev_git && curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh && bash install_nvm.sh && source ~/.profile && nvm install 8.11.4 && nvm use 8.11.4
sudo apt install npm build-essential && sudo npm install -g gulp