
-------------------------------------------
Базовый образ    -	FROM ubuntu:20.04
-------------------------------------------
Описание образа	 -	LABEL author=user
-------------------------------------------
Рабочие директории  -   WORKDIR /var/www/html
-------------------------------------------
Указание переменных -	ENV OWNER="user"
окружения 		ENV TYPE=demo
			
Определяет переменную - ARG CODE_VERSION=latest
для передачи Docker'у   FROM nginx:${CODE_VERSION}
во время сборки
-------------------------------------------
Команды		 -	RUN apt-get update
			RUN chmod +x /opt/script.sh
			RUN adduser --system --group myuser
-------------------------------------------
Пользователь	 -	USER myuser 
по-умолчанию
-------------------------------------------
Файлы		 -	COPY files2/index.html /opt

COPY/ADD	 -	COPY hom* /mydir/
			COPY --chown=user:user files* /somedir

Работа с файлами -	ADD git@git.example.com:foo/bar.git /bar
-------------------------------------------
Порты(для информации) -	EXPOSE 80
-------------------------------------------
Описание команд при запуске контейнера - ENTRYPOINT ["echo"]	(ENTRYPOINT - фиксированная команда. Менять не можем.)
					 CMD ["Hello my FIRST Docker"] (CMD - можем менять.)
---------------------------------------------------------------------------------------------------------------------------------
mkdir docker
cd docker
-------------------------------------------
FROM ubuntu:22.04
CMD echo "Hello my FIRST Docker"

docker build .

docker tag 6b4183f8cdfa mydocker:v01
docker run --rm --name mydocker mydocker:v01
docker image inspect mydocker:v01
-------------------------------------------
docker rmi mydocker:v01
docker build -t myimage:v01 .
docker run --rm --name mydocker myimage:v01
docker run -it --rm --name mydocker myimage:v01 bash
-------------------------------------------
FROM ubuntu:22.04
ENTRYPOINT echo "Hello MY FIRST Docker"

docker build -t myimage:v02 .

docker run --rm --name mydocker myimage:v02
docker run -it --rm --name mydocker myimage:v02 bash
-------------------------------------------
FROM ubuntu:22.04
CMD ["echo", "Hello my first Docker"]

docker build -t myimage:v03 .

docker run --rm --name mydocker myimage:v03 
docker run -it --rm --name mydocker myimage:v03 bash
-------------------------------------------
FROM ubuntu:22.04
ENTRYPOINT ["echo"]
CMD ["Hello my first Docker"]

docker build -t myimage:v04 .

docker run --rm --name mydocker myimage:v04
docker run  --rm --name mydocker myimage:v04 Hello RomNero
-------------------------------------------
FROM ubuntu:22.04
LABEL author=user
LABEL type=demo
LABEL platform=YouTube
CMD ["echo","Hello my first Docker"]

docker build -t myimage:05 .
docker run  --rm --name mydocker myimage:v05
-------------------------------------------
FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install nginx -y
CMD ["echo","Hello my first Docker"]

docker build -t myimage:v06 .
docker run --rm --name mydocker myimage:v06
-------------------------------------------
FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install nginx -y
CMD ["nginx","-g", "daemon off;"]

docker build -t myimagex:v01 .
docker run --rm --name mydocker myimagex:v01
docker run -d --rm --name mydocker myimagex:v01

docker exec -it mydocker bash
ps ax

ss -ltnp
docker stop mydocker

docker run -d --rm --name mydocker -p 80:80 myimagex:v01
ss -ltnp
curl -Li http://localhost
docker stop mydocker
-------------------------------------------
FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install nginx -y
EXPOSE 80    
EXPOSE 443/tcp
CMD ["nginx","-g", "daemon off;"]

docker build -t myimagex:v02 .
docker image inspect myimagex:v01
docker image inspect myimagex:v02
docker run -d --rm --name mydocker myimagex:v02

docker stop mydocker
docker run -d --rm --name mydocker -P myimagex:v02
docker ps
docker stop mydocker
---------------------------------------------------------------------------------------------------------------------------------
mkdir apache
cd apache
cp ../Dockerfile .
-------------------------------------------
FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install apache2 -y
EXPOSE 80
CMD ["apache2ctl","-D", "FOREGROUND"]

docker build -t myapache:v01 .
docker run -d --rm --name mydocker -p 80:80 myapache:v01
docker stop mydocker
---------------------------------------------------------------------------------------------------------------------------------
cd ..
mkdir files
cd files

nano index.html

<HTML>
<BODY BGCOLOR="FFFFFF">
<HR>
<H1>Docker DEMO</H1>
Send me mail at <a href="mailto:infotube@example.com">
infotube@example.com</a>.
<HR>
</BODY>
</HTML>
-------------------------------------------
cd ..

docker run -d --rm --name mydocker -p 80:80 -v /root/docker/files:/var/www/html myimagex:v02
---------------------------------------------------------------------------------------------------------------------------------
FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
COPY files/index.html /var/www/html/
EXPOSE 80
CMD ["nginx","-g", "daemon off;"]
-------------------------------------------
docker build -t myimagex:v04 .

docker run -d --rm --name mydocker -p 80:80 myimagex:v04
docker exec -it mydocker bash
cd /var/www/html/
ll
-------------------------------------------
FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
COPY files/index.html /var/www/html/
EXPOSE 80
CMD ["nginx","-g", "daemon off;"]
-------------------------------------------
docker build -t myimagex:v05 .

docker run -d --rm --name mydocker -p 80:80 myimagex:v05
docker exec -it mydocker bash
docker stop mydocker
-------------------------------------------
FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
COPY files/index.html .             
EXPOSE 80
CMD ["nginx","-g", "daemon off;"]

docker build -t myimagex:v06 .
docker run -d --rm --name mydocker -p 80:80 myimagex:v06
docker exec -it mydocker bash
docker stop mydocker
---------------------------------------------------------------------------------------------------------------------------------
FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
COPY files/index.html .
ENV OWNER=user
ENV TYPE=demo
EXPOSE 80
CMD ["nginx","-g", "daemon off;"]

docker build -t myenv:v01 .
docker run -d --rm --name mydocker -p 80:80 myenv:v01
docker exec -it mydocker bash
env

docker run -d --rm --name mydocker2 -e TYPE=prod12345 myenv:v01
docker exec -it mydocker2 bash
env

docker image inspect myenv:v01

docker exec -it mydocker3 bash
env

docker stop mydocker mydocker2 mydocker3
---------------------------------------------------------------------------------------------------------------------------------
mkdir env-test
cp Dockerfile env-test/

FROM ubuntu:22.04
ENV OWNER=user
RUN echo $OWNER > /opt/info
CMD ["cat","opt/info"]

docker build -t myenv:v02 .
docker run --rm --name mydocker myenv:v02

docker run --rm --name mydocker -e OWNER=Billi myenv:v02
docker run -it --rm --name mydocker -e OWNER=Billi myenv:v02 bash
env
cat /opt/info
-------------------------------------------
cd ../files/

nano index.html

<HTML>
<BODY BGCOLOR="FFFFFF">
<HR>
<H1>%OWNER% Docker %TYPE%</H1>
Send me mail at <a href="mailto:infotube@romnero.de">
infotube@romnero.de</a>.
<HR>
</BODY>
</HTML>
-------------------------------------------
nano script.sh

#!/bin/bash

sed -i 's/%OWNER%/'"$OWNER"'/g' /var/www/html/index.html
sed -i 's/%TYPE%/'"$TYPE"'/g' /var/www/html/index.html

echo "Start Script --- OK"
nginx -g 'daemon off;'
-------------------------------------------
cd ..

nano Dockerfile

FROM ubuntu:22.04
LABEL author=user
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
COPY files/index.html .
COPY files/script.sh /opt/script.sh
RUN chmod +x /opt/script.sh
ENV OWNER=user
ENV TYPE=demo
EXPOSE 80
CMD ["/opt/script.sh"]

docker build -t myimagex:v07 .
docker run -d --rm --name mydocker -p 80:80 myimagex:v07
docker run -d --rm --name mydocker2 -p 81:80 -e OWNER=Billi myimagex:v07
---------------------------------------------------------------------------------------------------------------------------------
mkdir php
cd php

nano Dockerfile

FROM php:7.2-apache
COPY index.php /var/www/html/
-------------------------------------------
nano index.php

<?php
phpinfo();
phpinfo(INFO_MODULES);
?>
-------------------------------------------
docker build -t myphp:v01 .
docker stop mydocker2 mydocker
docker run -d --rm --name mydocker -p 80:80 myphp:v01
---------------------------------------------------------------------------------------------------------------------------------
cd ..
mkdir python
cd python
nano sum.py

num1 = input('Enter first number: ')
num2 = input('Enter second number: ')

sum = float(num1) + float(num2)

print('The sum of {0} and {1} is {2}'.format(num1, num2, sum))
-------------------------------------------
nano Dockerfile

FROM python:3

WORKDIR /usr/src/app
COPY sum.py ./
CMD ["python", "./sum.py"]
-------------------------------------------
docker build -t mypyth:v01 .
docker run -it --rm mypyth:v01
---------------------------------------------------------------------------------------------------------------------------------
nano app.py

#!/usr/bin/env python
# -*- coding: utf-8 -*-

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
  return 'Hello World'

if __name__=='__main__':
  app.run(debug=True,host='0.0.0.0', port=5000)
-------------------------------------------
nano requirements.txt

click==8.1.3
Flask==2.2.2
importlib-metadata==6.0.0
itsdangerous==2.1.2
Jinja2==3.1.2
MarkupSafe==2.1.1
Werkzeug==2.2.2
zipp==3.11.0
-------------------------------------------
nano Dockerfile

FROM ubuntu:latest
ENV author=user

RUN apt-get update; apt-get install python3 pip python3-dev -y

RUN adduser --system --group myuser
USER myuser

WORKDIR /app
COPY --chown=myuser:myuser . /app

ENV PATH="/home/myuser/.local/bin:${PATH}"
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
-------------------------------------------
docker build -t nginx_app:v1 .
docker run -it -d --rm --name nginx -p 8080:80 nginx
---------------------------------------------------------------------------------------------------------------------------------
nano docker-compose.yml

version: '3.5'

services:
  php:
    build: ./php/
    volumes:
      - ./:/app
    working_dir: /app
    ports:
      - 8000:8000
    user: '1000:1000'
    command: php -S 0.0.0.0:8000 -t /app
-------------------------------------------
nano index.php

<?php
phpinfo();
-------------------------------------------
nano php/Dockerfile 

FROM php:8-cli

RUN apt-get update && apt-get install curl git zip -y \
  && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo mysqli pdo_mysql

COPY --from=composer /usr/bin/composer /usr/bin/composer
-------------------------------------------
docker-compose build
docker-compose run --rm php composer require guzzle/guzzle
docker-compose up
---------------------------------------------------------------------------------------------------------------------------------











