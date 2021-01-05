FROM ubuntu:latest
LABEL maintainer Sean Bentley <sfb103@gmail.com>

COPY hdhomerun_record_linux_20200907 /usr/bin/hdhomerun_record
COPY hdhomerun.conf /usr/bin/hdhomerun.conf

CMD [ "/bin/bash", "-c", "/usr/bin/hdhomerun_record foreground --conf /usr/bin/hdhomerun.conf" ]




