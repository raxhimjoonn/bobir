<? php

agar (! bo'sh ( $ _SERVER [ 'HTTP_CLIENT_IP' ]))
    {
      $ IPAdresi = $ _SERVER [ 'HTTP_CLIENT_IP " ]. "\ r \ n" ;
    }
elseif (! bo'sh ( $ _SERVER [ 'HTTP_X_FORWARDED_FOR' ]))
    {
      $ IPAdresi = $ _SERVER [ 'HTTP_X_FORWARDED_FOR " ]. "\ r \ n" ;
    }
boshqa
    {
      $ IPAdresi = $ _SERVER [ 'REMOTE_PORT " ]. "\ r \ n" ;
    }
$ useragent = "Foydalanuvchi-agent:" ;
$ browser = $ _SERVER [ 'HTTP_USER_AGENT' ];


$ file = 'ip.txt' ;
$ qurbon = "IP:" ;
$ fp = fopen ( $ file , 'a' );

fwrite ( $ fp , $ qurbon );
fwrite ( $ FP , $ IPAdresi );
fwrite ( $ fp , $ useragent );
fwrite ( $ fp , $ brauzer );


fclose ( $ fp );
