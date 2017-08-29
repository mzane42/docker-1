FROM debian

RUN apt update && apt install -y wget tar bzip2 && \
    cd /tmp && \
    wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && \
    tar -xf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && mv teamspeak3-server_linux_amd64 /opt/teamspeak && \
    rm -f /tmp/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && \
    apt-get purge -y bzip2 wget && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
EXPOSE 9987/udp 10011 30033
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/opt/teamspeak/ts3server_startscript.sh", "start;"]