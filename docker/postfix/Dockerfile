FROM ubuntu:20.04

WORKDIR /usr/src/app

ENV DEPLOY=devel \
    APP_BASE=/usr/src/app  \
    SRC=./docker/postfix

COPY ${SRC}/bin  ${APP_BASE}/bin
RUN ${APP_BASE}/bin/setup_postfix.sh

# configuration
COPY ${SRC}/etc/default/saslauthd /etc/default/saslauthd 
COPY ${SRC}/etc/postfix/sasl/smtpd.conf /etc/postfix/sasl/smtpd.conf
EXPOSE 25

# Entry
CMD ["/usr/src/app/bin/entrypoint.sh"]