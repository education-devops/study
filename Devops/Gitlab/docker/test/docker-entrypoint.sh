#!/bin/sh

echo -en "\033[37;1;42m Check start page: \033[0m"

curl -H "Host: 10.10.10.136:8080" --silent --show-error --fail -I http://10.10.10.136:8080/

echo -e "---------\n"

sleep 1

echo -en "\033[37;1;42m Check PHP_FPM work: \033[0m"

curl -H "Host: 10.10.10.136:8080" --silent --show-error --fail -I http://10.10.10.136:8080/phpinfo/
