FROM node:12-alpine
MAINTAINER Form.io <support@form.io>

COPY ./ /src
WORKDIR /src

RUN npm cache clean --force && \
    npm install

EXPOSE      80
ENTRYPOINT  ["node", "index"]
