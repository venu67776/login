FROM golang
RUN mkdir -p $GO/src/app
ADD . $GO/src/app/
WORKDIR $GO/src/app
RUN go mod init
RUN go get 
RUN go build 
CMD ["./app"]