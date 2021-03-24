FROM golang:latest

MAINTAINER atul <aanand@deqode.com>
WORKDIR /app

COPY go.mod   .

RUN go mod download

COPY . .

RUN go build

EXPOSE 8081/tcp

EXPOSE 8082/tcp

CMD ["./go_build_module1_"]