FROM alpine:3 AS shell

RUN apk update && apk upgrade && apk add curl bind

# test kubectl run -it ???

FROM node:lts-alpine AS server

RUN apk update && apk upgrade && apk add curl bind

WORKDIR /app
CMD ["npm", "start"]

ADD src/package*.json ./
# RUN npm ci --production

ADD src .

# try to run this in kube/minikube? docker kube?