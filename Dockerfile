#
FROM resin/rpi-raspbian

RUN apt-get update ; apt-get install -yy \
        build-essential \
        git \
        libasound2-dev \
        libsdl1.2-dev \
        libraspberrypi-dev

RUN git clone --depth 1 https://github.com/raspberrypi/firmware.git /opt/firmware; \
    cp -r /opt/firmware/opt/vc /opt/vc

VOLUME /data
WORKDIR /data
COPY run.sh /usr/local/bin

CMD ["/usr/local/bin/run.sh"]
