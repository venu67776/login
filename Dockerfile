FROM golang:alpine as builder
RUN mkdir -p $GOPATH/src/build
ADD . $GOPATH/src/build/
WORKDIR $GOPATH/src/build
RUN go get ./...
RUN go build -o main .
COPY --from=builder /go/src/build/main /app/
WORKDIR /app
CMD ["./main"]