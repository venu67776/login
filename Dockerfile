FROM    golang:1.13.15
RUN     mkdir -p /go/src/app
COPY    . /go/src/app
WORKDIR /go/src/app
RUN     GOPATH=~/go
RUN     go get
RUN     go build
EXPOSE  80
CMD     ["./app"]