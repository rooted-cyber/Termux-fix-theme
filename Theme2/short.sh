alias a='apt install'
alias p='python'
alias p2='python2'
alias ad='apt download'
alias p3='python3'
alias g='git clone'
alias ap='apt update && apt upgrade'
alias pi='pip install'
alias pi2='pip2 install'
alias pi3='pip3 install'
alias pr='pip install -r'
alias pr2='pip2 install -r'
alias pr3='pip3 install -r'
alias pd='pip download'
alias pd2='pip2 download'
alias pd3='pip3 download'
alias t='termux-reload-settings'
alias ep='exit'
alias pk='pkg install'
alias pu='pkg update && pkg upgrade'
alias fix='apt install --fix-broken'
alias ar='apt remove'
alias fix2='dpkg --configure -a'
alias n='nano'
alias arr='apt autoremove'
alias af='apt show'
alias sudo='proot -0'
alias root="sudo"
alias ai='apt reinstall'
alias ls='lsd'

fdd() {
	mkdir ~/Downloads2
	cd ~/Downloads2
	wget https://github.com/rooted-cyber/Random-Theme/raw/main/files/Font.deb
	dpkg -i Font.deb
	}
	rdd() {
		mkdir ~/Downloads2
	cd ~/Downloads2
	wget https://github.com/rooted-cyber/Random-Theme/raw/main/files/Random.deb
	dpkg -i Random.deb
	}
		
ne() {
	if [ -e ~/.config ];then
	echo
	else
	neofetch
	mkdir ~/.config
	mkdir ~/.config/neofetch
	cp -f ~/Theme2/config.conf ~/.config/neofetch
	clear
	random
	printf "\n\n Successfully changing your neofetch\n\n"
	fi
	if [ -e ~/.config/neofetch ];then
	echo
	else
	mkdir ~/.config/neofetch
	cp -f ~/Theme2/config.conf ~/.config/neofetch
	clear
	random
	printf "\n\n Successfully changing your neofetch\n\n"
	fi
	if [ -e ~/.config/neofetch/config.conf ];then
	cp -f ~/Theme2/config.conf ~/.config/neofetch
	clear
	random
	printf "\n\n Successfully changing your neofetch\n\n"
	else
	neofetch
	cp -f ~/Theme2/config.conf ~/.config/neofetch
	clear
	random
	printf "\n\n Successfully changing your neofetch\n\n"
	fi
	}
	
	
	
i() {
echo -e -n "\033[1;92m Enter tool name : \033[0m"
read a
if [ $a ];then
git clone https://github.com/rooted-cyber/$a
fi
}

cd ~
nc() {
	if [ -e ~/Theme2/name.sh ];then
	rm -f ~/Theme2/name.sh
	fi
	}
c-name() {
	nc
	random
	echo
	echo -e -n "Enter your name : \033[0m"
	read a
	if [ $a ];then
	touch ~/Theme2/name.sh
	echo "toilet -f font -F metal $a" >> ~/Theme/name.sh
	fi
	}
