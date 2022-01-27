FROM node:12-alpine
MAINTAINER Form.io <support@form.io>

COPY ./ /src
WORKDIR /src

RUN npm cache clean --force && \
    npm install && \
    npm uninstall -g npm && \
    apk del .build-deps

EXPOSE      80
ENTRYPOINT  ["node", "index"]
