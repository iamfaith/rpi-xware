FROM resin/rpi-raspbian:wheezy
MAINTAINER rzg <134161558@qq.com>

WORKDIR /xware
ADD EmbedThunderManager /xware
ADD ETMDaemon /xware
ADD portal /xware
ADD vod_httpserver /xware

ADD monitor.sh /xware
RUN chmod +x monitor.sh && chmod +x portal
RUN ln -s /lib/ld-linux-armhf.so.3 /lib/ld-linux.so.3

VOLUME /data

EXPOSE 9000

CMD ["./monitor.sh"]
