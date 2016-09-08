#/usr/bin/env sh

envsubst < /root/marvin.conf.template > /etc/marvin.conf
python /root/doord.py -d
