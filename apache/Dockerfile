FROM debian:12

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 libapache2-mod-auth-openidc vim \
 && a2enmod cgi 

COPY .vimrc /root/
COPY env.sh /usr/lib/cgi-bin/
COPY 000-default.conf /etc/apache2/sites-enabled/
COPY index.html /var/www/html/
COPY apache.sh /
EXPOSE 8080
CMD ["/apache.sh"]
