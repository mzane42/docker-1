FROM golang:latest
RUN adduser --disabled-login --gecos 'Gogs' git
USER git
RUN go get -u github.com/gogits/gogs
WORKDIR $GOPATH/src/github.com/gogits/gogs
RUN go build
RUN mkdir -p custom/conf && cp -f conf/app.ini custom/conf/
RUN echo "INSTALL_LOCK = true" >> custom/conf/app.ini && cat custom/conf/app.ini 
EXPOSE 3000
CMD ["./gogs", "web"]
