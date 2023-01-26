FROM nginx:alpine

WORKDIR /var/www/html

COPY ./nginx/custom.conf /etc/nginx/conf.d/default.conf

COPY ./nginx/www /var/www/html

CMD ["nginx", "-g", "daemon off;"]
