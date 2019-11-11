FROM golang:1.13-alpine

LABEL maintainer="Hussein Al Abry <zidhussein@gmail.com>"

RUN apk update && apk add --no-cache git

WORKDIR /app

RUN go get github.com/cespare/reflex

CMD reflex -r '(\.go$|go\.mod)' -s -- sh -c 'go build -o out.exe && ./out.exe'
