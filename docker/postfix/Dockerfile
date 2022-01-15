FROM ubuntu:20.04

ENV DEPLOY=devel \
    USER=app \
    PASSWORD=Yaejeet1 \
    APP_BASE=/usr/src/app  \
    SRC=./docker/postfix

RUN useradd -m -d ${APP_BASE} ${USER}
RUN echo ${USER}:${PASSWORD} | chpasswd
WORKDIR ${APP_BASE}
COPY ${SRC}/bin  ${APP_BASE}/bin
RUN chown -R ${USER}:${USER} ${APP_BASE}
RUN ${APP_BASE}/bin/setup_postfix.sh

# configuration
COPY ${SRC}/etc/mailname /etc/mailname
COPY ${SRC}/etc/default/saslauthd /etc/default/saslauthd 
COPY ${SRC}/etc/postfix/sasl/smtpd.conf /etc/postfix/sasl/smtpd.conf
COPY ${SRC}/etc/postfix/main.cf /etc/postfix/main.cf
COPY ${SRC}/etc/postfix/master.cf /etc/postfix/master.cf

EXPOSE 25

# Entry
CMD ["/usr/src/app/bin/entrypoint.sh"]