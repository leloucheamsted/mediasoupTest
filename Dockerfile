FROM node:18

RUN \
    set -x \
    && apt-get update \
    && apt-get install -y net-tools build-essential python3 python3-pip valgrind

WORKDIR /usr/code

COPY package.json .
RUN npm install

COPY . .

RUN ./node_modules/webpack/bin/webpack.js --config ./webpack.config.js

EXPOSE 2000-3300


ENTRYPOINT ["npm","run", "start"]
