#!/bin/bash
# https://zenn.dev/flyingbarbarian/articles/5bb1d38b1ada40

/etc/init.d/postfix start
cp /etc/resolv.conf /var/spool/postfix/etc/resolv.conf
/etc/init.d/postfix start

# keep container running
tail -f /dev/null