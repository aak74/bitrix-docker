FROM centos:7
MAINTAINER Andrew Kopylov

RUN yum -y update
RUN rpm --import "https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7"
RUN rpm -Uvh "https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm"
RUN echo "exclude=ansible1.9" >> /etc/yum.conf

RUN yum clean all >/dev/null 2>&1
RUN yum install -y yum-fastestmirror >/dev/null 2>&1
# yum_update
#
# # configure repositories
# configure_epel
# configure_remi
# pre_php
# configure_percona
# configure_bitrix
# configure_nodejs
#
# # prepare for percona
# prepare_percona_install
#
# # exclude settings
# configure_exclude
#
# # update all packages (EPEL and REMI packages)
# yum_update
#
# print "Install php packages. Please wait." 1
# yum -y install php php-mysql \
#     php-pecl-apcu php-pecl-zendopcache >>$LOGS_FILE 2>&1 || \
#     print_e "An error occurred during installation of php-packages"
#
# print "Install $BX_PACKAGE package. Please wait." 1
# yum -y install $BX_PACKAGE >>$LOGS_FILE 2>&1 || \
#     print_e "An error occurred during installation of $BX_PACKAGE package"
#
# # upload bitrix proc
# . /opt/webdir/bin/bitrix_utils.sh || exit 1
#
# configure_mysql_passwords


EXPOSE 80
# COPY /bootstrap/bitrix-env.sh /var/www/
# RUN /var/www/bitrix-env.sh

COPY ./bootstrap/html /home/bitrix/www
COPY ./bootstrap/php.ini /etc/php.ini
