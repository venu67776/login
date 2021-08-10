FROM golang
RUN mkdir -p $GOPATH/src/app
ADD . $GOPATH/src/app/
WORKDIR $GOPATH/src/app
RUN go mod init
RUN go get 
RUN go build 
CMD ["./app"]