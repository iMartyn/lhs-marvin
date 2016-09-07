FROM python:2-alpine
RUN apk --update add --virtual build-dependencies python-dev build-base mysql-dev \
  && pip install crc16 mysql-python pyserial python-daemon setproctitle \
  && apk del build-dependencies \
  && apk add mariadb-client-libs
ADD ../doord.py /root/doord.py
ADD doordwrapper.sh /root/doordwrapper.sh
ADD marvin.conf /etc/marvin.conf
CMD python /root/
