FROM golang  
WORKDIR /app
ADD . .
RUN export GOPATH=/go
RUN go mod init
RUN go get -dR
RUN go build
CMD ["./app"]