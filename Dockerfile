From ubuntu:latest
Run apt-get -y update
Run apt-get install -y apache2 curl
EXPOSE 8080
WORKDIR /var/www/html
copy index.html /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
