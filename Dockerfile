FROM golang  
WORKDIR /app
ADD . .
RUN export GOPATH=/go
RUN go get -d
RUN go build
CMD ["./app"]