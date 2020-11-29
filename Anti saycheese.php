import  so'rovlari
dan  batareya  import  Image , ImageDraw
import  Base64
import  os
import  sys

sinf  ranglari :
    HEADER  =  ' \ 033 [1m'
    OKBLUE  =  ' \ 033 [ 94m '
    OKGREEN  =  ' \ 033 [92m'
    OGOHLANTIRISH  =  ' \ 033 [93m'
    FAIL  =  ' \ 033 [91m'
    ENDC  =  ' \ 033 [0m'
    BOLD  =  ' \ 033 [1m'
    UNDERLINE  =  ' \ 033 [4m'

def  yozish ( xabar ):
    img  =  Rasm . yangi ( 'RGB' , ( 400 , 300 ), rang  = ( 0 , 0 , 0 ))
    d  =  ImageDraw . Chizish ( img )
    d . matn (( 160 , 150 ), xabar , to'ldirish = ( 255 , 255 , 255 ))
    img . saqlash ( 'a.png' )

def  kodlash ():
    bilan  ochiq ( "a.png" , "Rb" ) deb  imageFile :
        string  =  base64 . b64encode ( imageFile . o'qing ())
        qaytish  satri . dekodlash ( 'utf-8' )

def  spam ( data_ , base_url ):    
    sarlavhalar  = {
        "Xost" : base_url ,
        'User-Agent' : 'Mozilla / 5.0 (X11; Linux x86_64; rv: 75.0) Gecko / 20100101 Firefox / 75.0' ,
        'Qabul qilish' : 'application / json, text / javascript, * / *; q = 0,01 ' ,
        'Accept-Language' : 'en-US, en; q = 0,5' ,
        'Qabul qilish-kodlash' : 'gzip, deflate' ,
        'Content-Type' : 'application / x-www-form-urlencoded; charset = UTF-8 ' ,
        'X-Requested-With' : 'XMLHttpRequest' ,
        "Tarkib uzunligi" : "4115" ,
        'Kelib chiqishi' : 'https: //'  +  base_url ,
        "Ulanish" : "yopish" ,
        'Yo'naltiruvchi' : 'https: //'  +  base_url ,
    }
    javob  =  so'rovlar . post ( «https: // '  +  base_url  + " /post.php » , sarlavhalarini = sarlavhalarini , ma'lumotlar = data_ )
    qaytib  javob . matn

def  scan_cheese ( url ):
    sarlavhalar  = {
        'User-Agent' : 'Nima deb o'ylaysiz?' ,
        'Qabul qilish' : 'application / json, text / javascript, * / *; q = 0,01 ' ,
        'Accept-Language' : 'en-US, en; q = 0,5' ,
    }
    javob  =  so'rovlar . get ( 'https: //'  +  url , sarlavhalar = sarlavhalar )
    qaytib  javob . matn

def  main ():
    url  =  kirish ( bcolors . BOLD  +  bcolors . OKBLUE  +  '  urlni kiriting:' +  bcolors . ENDC )
    agar  urlda 'https: //'  bo'lsa  :
        url  =  url . split ( ': //' ) [ 1 ]
    boshqa :
        o'tish
    chop etish ( bcolors . BOLD  +  bcolors . HEADER  +  'Saycheese qidirilmoqda ...'  +  bcolors . ENDC )
    check_data  =  str ( scan_cheese ( url ))

    Agar  ": imgdata mushuk  ham  check_data :
        chop etish ( bcolors . BOLD  +  bcolors . OKGREEN  +  '[+] Saycheese'  +  bcolors uchun ijobiy topildi . ENDC )
    boshqa :
        chop ( bcolors . BOLD  +  bcolors . Xato  +  "[-] saycheese uchun Topilgan salbiy"  +  bcolors . ENDC )
        chiqish ( 0 )
    vaqt = 1
    time  =  int ( input ( bcolors . BOLD  +  bcolors . OKBLUE  +  ')'  +  bcolors . ENDC  +  bcolors . UNDERLINE  +  bcolors . OKBLUE  +  '(Default: 1)'  +  bcolors . ENDC ))
    message  =  input ( bcolors . BOLD  +  bcolors . OGOHLANTIRISH  + 'Message>'  +  bcolors . ENDC )
    yozish ( xabar )
    data  =  'cat = data: image / octet-stream; base64,'  +  str ( kodlash ())
    uchun  I  -yilda  qator ( vaqt ):
        chop etish ( bcolors . BOLD  +  bcolors . OKBLUE  +  'Sending ['  +  str ( i ) + ']'  +  bcolors . ENDC )
        harakat qilib ko'ring :
            spam ( ma'lumotlar , url )
            chop etish ( bcolors . BOLD  +  bcolors . OKGREEN  +  '[+] Bajarildi ..'  +  bcolors . ENDC )
        bundan tashqari :
            chop ( bcolors . BOLD  +  bcolors . Xato  +  "[-] bo'lmadi .."  +  bcolors . ENDC )
    os . tizim ( "aniq" )

def  connection_check ():
    javob  =  so'rovlar . olish ( 'https://example.com' )
    agar  javob bo'lsa . status_code  ==  200 :
        qaytarish  True
    boshqa :
         False-ni qaytaring

def  banner ():
    chop etish ( bcolors . BOLD  +  bcolors . OKBLUE )
    chop etish ( '' '__ .__ .___ __            
_____ ____ _ / | _ | __ | __ | _ / ____ _ / | _ ____  
\ __ \ / \ \ __ \ | | / __ | / _ \ \ __ \ _ / __ \
/ __ \ _ | | \ | | | | / / _ / | (<_>) | | \ ___ /
(____ / | ___ | / | __ | | __ | \ ____ | \ ____ / | __ | \ ___>
     \ / \ / \ / \ / \ / '' ' )
    chop etish ( bcolors . ENDC )
    print ( bcolors . BOLD  +  bcolors . OGOHLANTIRISH  +  'Muallif: 0x0is1 (https://github.com/0x0is1)'  +  bcolors . ENDC )
    chop etish ( bcolors . BOLD  +  bcolors . OGOHLANTIRISH  +  'Sizga StrinTH (https://github.com/StrinTH) tomonidan keltirilgan'  +  bcolors . ENDC )
    chop etish ()

agar  __name__  ==  "__main__" :
    banner ()
    harakat qilib ko'ring :
        agar  sys . argv [ 1 ] ==  '-v'  yoki  '--versiya' :
            chop etish ( bcolors . BOLD  +  bcolors . OGOHLANTIRISH  +  'Saycheese antidote v0.1'  +  bcolors . ENDC )
            chiqish ( 0 )
    faqat  istisno  sifatida  e :
        banner_pre  =  bcolors . BOLD  +  'Internet Check:'  +  bcolors . ENDC
        harakat qilib ko'ring :
            x  =  ulanish_check ()
            chop etish ( banner_pre  +  bcolors . BOLD  +  bcolors . OKGREEN  +  'available'  +  bcolors . ENDC . join ( '' ))
            chop etish ()
            esa  x  ==  True :
                harakat qilib ko'ring :
                    asosiy ()
                faqat  istisno  sifatida  e :
                    chop ( bcolors . BOLD  +  bcolors . Xato  +  "Noto'g'ri URL !!!"  +  bcolors . ENDC )
                    #prin
