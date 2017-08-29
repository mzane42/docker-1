FROM debian

RUN apt update && apt install -y wget dos2unix bzip2 && \
    cd /tmp && \
    wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && \
    tar -xf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && mv teamspeak3-server_linux_amd64 /opt/teamspeak && \
    rm -f /tmp/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && \
    apt-get purge -y bzip2 wget && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh && dos2unix /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 9987/udp 10011 30033

CMD ["/opt/teamspeak/ts3server_startscript.sh", "start;"]
