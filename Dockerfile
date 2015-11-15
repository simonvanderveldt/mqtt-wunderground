FROM gliderlabs/alpine:3.2

RUN apk-install python py-pip && pip install paho-mqtt

ADD mqtt-wunderground.py /
CMD ["/mqtt-wunderground.py"]
