FROM golang:alpine
RUN mkdir -p $GOPATH/src/build
ADD . $GOPATH/src/build/
WORKDIR $GOPATH/src/build
RUN go mod init
RUN go get ./...
RUN go build -o main .
CMD ["./main"]