FROM ibmcom/informix-innovator-c:latest

WORKDIR /opt/ibm/config
COPY informix1.sql .
COPY informix_pops.sh .
RUN mkdir -p /opt/ibm/files/tmp
WORKDIR /opt/ibm/files/tmp

ENV BASEDIR=/opt/ibm
ENV INFORMIX_CONFIG_DIR=/opt/ibm/config
ENV INFORMIX_DATA_DIR=/opt/ibm/data
ENV INFORMIX_FILES_DIR=/opt/ibm/files
ENV INFORMIX_HOME=/home/informix
ENV INFORMIX_KSTORE=/opt/ibm/data/kstore
ENV INFORMIXDIR=/opt/ibm/informix
ENV INFORMIXSERVER=informix
ENV INFORMIXSQLHOSTS=/opt/ibm/informix/etc/sqlhosts
ENV INIT_LOG=/opt/ibm/data/init_status.log
ENV LANG=C.utf8
ENV LD_LIBRARY_PATH=/opt/ibm/informix/lib:/opt/ibm/informix/lib/esql:
ENV LICENSE=accept
ENV ONCONFIG=onconfig
ENV PATH=/opt/ibm/informix/bin:.:/home/informix/.local/bin:/home/informix/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/bin
ENV RUN_FILE_POST_INIT=informix_pops.sh
ENV SCRIPTS=/opt/ibm/scripts
ENV SIZE=small
ENV STORAGE=local
ENV TYPE=oltp
