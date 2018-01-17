#
FROM resin/rpi-raspbian

RUN apt-get update ; apt-get install -yy build-essentials git

RUN git clone https://github.com/raspberrypi/firmware.git /opt/firmware; \
    cp -vr /opt/firmware/opt/vc /opt/vc

VOLUME /data
WORKDIR /data

CMD ["make"]
