ARG VERSION=unspecified

FROM ubuntu/apache2:latest


RUN apt-get clean && apt-get update && apt-get install -y apt-utils
RUN apt-get install -y ssl-cert
RUN a2enmod rewrite proxy proxy_http headers cache ssl
RUN a2dismod -f deflate
RUN a2ensite default-ssl.conf
