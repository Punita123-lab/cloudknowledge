FROM centos:latest
MAINTAINER chpunita018@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/woodo.zip /var/www/html/  
WORKDIR /var/www/html
RUN unzip woodo.zip
RUN cp -rvf woodo/* .
RUN rm -rf woodo woodo.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
