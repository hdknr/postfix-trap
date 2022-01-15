#!/bin/bash
# https://zenn.dev/flyingbarbarian/articles/5bb1d38b1ada40

/etc/init.d/postfix stop
cp /etc/resolv.conf /var/spool/postfix/etc/resolv.conf
/etc/init.d/saslauthd restart

# keep container running
# tail -f /dev/null
/usr/sbin/postfix start-fg