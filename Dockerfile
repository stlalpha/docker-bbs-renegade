FROM jgoerzen/dos-bbs

LABEL MAINTAINER="stlalpha@vision2bbs.com"
COPY setup/ /tmp/setup/
RUN /tmp/setup/setup.sh && rm -r /tmp/setup
COPY nodeprephook.sh /dos/nodeprephook.sh

VOLUME ["/dos/drive_g"]
EXPOSE 5901 23
CMD ["/usr/local/bin/boot-supervisord"]

