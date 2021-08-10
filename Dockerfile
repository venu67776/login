FROM golang:latest
RUN mkdir app
ADD . app
WORKDIR /app
RUN go mod init
RUN go get ./...
RUN go build
CMD ["./app-ci"]