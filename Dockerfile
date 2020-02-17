FROM alpine:3

RUN apk update && apk upgrade && apk add curl bind
