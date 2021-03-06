#!/bin/bash

#Nicks original cert/key maker
if [ ! -f bin/cert.pem ]; then
    openssl genrsa -out bin/key.pem
    openssl req -new -key bin/key.pem -out bin/csr.pem << STDIN
US
Illinois
Lebanon
HellaFire
SeniorSeminar
.
hellafire.test@gmail.com
P@$$(0d3
HF
STDIN
    openssl x509 -req -days 9999 -in bin/csr.pem -signkey bin/key.pem -out bin/cert.pem
    rm bin/csr.pem
fi

##Brian's cert/key maker. use if Nick's doesn't work
#[ -f bin/cert.pem ] && [ -f bin/key.pem ] || \
#openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout bin/key.pem -out bin/cert.pem << STDIN
#US
#Illinois
#Lebanon
#HellaFire
#SeniorSeminar
#.
#hellafire.test@gmail.com
#STDIN

