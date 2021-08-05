FROM        golang:1.14.3-alpine
RUN         mkdir /app
WORKDIR     /app
COPY        main.go .
RUN         go get -d
RUN         go build
CMD         [ "/app-ci" ]