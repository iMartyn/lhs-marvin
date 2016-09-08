FROM python:2-alpine
RUN apk --update add --virtual build-dependencies python-dev build-base mysql-dev \
  && pip install crc16 mysql-python pyserial python-daemon setproctitle \
  && apk del build-dependencies \
  && apk add mariadb-client-libs gettext
ADD doord.py /root/doord.py
ADD docker-doord/doordwrapper.sh /root/doordwrapper.sh
ADD docker-doord/marvin.conf.template /root/marvin.conf.template
CMD python /root/doordwrapper.sh
