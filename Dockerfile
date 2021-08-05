FROM        golang:1.16-alpine
WORKDIR     /app
RUN         go mod download
COPY        *.go ./
RUN         go build -o /login-ci
EXPOSE      8080
CMD         [ "/login-ci" ]
