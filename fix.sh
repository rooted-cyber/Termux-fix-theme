i-th() {
	printf "\n\033[1;96m Now setuping auto suggession and highlighting\n"
		cd ~/Theme2 > /dev/null 2>&1
		printf "\n\033[1;93m Cloning Auto Suggession\n\n"
		git clone https://github.com/zsh-users/zsh-autosuggestions
		printf "\n\033[1;93m Cloning Highlighting\n\n"
		git clone https://github.com/zsh-users/zsh-syntax-highlighting
		printf "\nCloning ohmyzsh\n\n"
		cd ~
		git clone https://github.com/ohmyzsh/ohmyzsh
		mv ohmyzsh .oh-my-zsh
		cd ~/Termux-fix-theme
		cd Theme2
		cp -f * ~/Theme2
		}
		chpy() {
			if [ -e $PREFIX/bin/python ];then
			cd ~/Termux-fix-theme
			cp -rf .termux ~
			cd files
			cp -rf .zshrc ~
					dpkg -i Font.deb
					dpkg -i Random.deb
					else
					printf "\n\033[1;91[×] Not installed python!!!\n\n"
					sleep 1
					printf "\n\033[1;92m Install python command :\033[0m apt install python\n"
					exit
					fi
					}
					cff() {
			cd ~
			if [ -e Theme2 ];then
			echo
			else
			mkdir Theme2
			fi
			}
				checsh() {
				if [ -e ~/Theme2/name.sh ];then
				cd ~/Theme2
				rm name.sh
				touch name.sh
				else
				cff
				cd Theme2
				touch name.sh
				fi
				}
				
					chname() {
				random
				echo -e -n "Enter You Name : \033[0m"
				read bb
				if [ $bb ];then
				checsh
				echo "toilet -f font -F metal $bb" >> ~/Theme2/name.sh
				printf "\n\n Successfully your name save\n\n"
				fi
				}
				
			verch() {
			sdk="$(getprop ro.build.version.sdk)"
			check=$(printf "$sdk"|grep -o "23")
			if [ -z "$check" ];then
			echo
			else
			cd ~/.termux
			rm -f termux*
			mv t.properties termux.properties
			fi
			}
				zsht() {
	printf "\n\n\033[1;92m Installing requirement..\n"
	for a in zsh lsd python proot figlet toilet neofetch tsu wget;do
	printf "\n Installing..\n"
	apt install $a || apt reinstall $a
	apt install --fix-broken
	apt update
	clear
	done
	chpy
	cff
	i-th
	checsh
	chname
	verch
	chsh -s zsh
	}
	fixc() {
		if [ -e apt ];then
		echo
		else
		unzip apt.zip
		fi
	cp -rf apt $PREFIX/etc
	apt update
	apt upgrade
	apt-get update
	apt-get upgrade
	}
fix() {
	echo -e "\033[1;92m"
	cat a
	printf "\n\n\033[1;92m[\033[0m1\033[1;92m]\033[1;93m Fix issue\n"
	printf "\033[1;92m[\033[0m2\033[1;92m]\033[1;93m Zsh Theme ++\n"
	printf "\033[1;92m[\033[0m3\033[1;92m]\033[1;93m Exit \n\n\n"
	echo -en "\033[1;96m Fix\033[0m —>> "
	read a
	case $a in
	1)fixc ;;
	2)zsht ;;
	3)exit ;;
	*)fix ;;
	esac
	}
	fix