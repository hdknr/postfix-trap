#!/bin/bash
apt update 
apt-get install postfix libsasl2-modules sasl2-bin -y
apt-get install mailutils lsof net-tools vim -y
adduser postfix sasl
#
mkdir -p /var/spool/postfix/var/run/saslauthd