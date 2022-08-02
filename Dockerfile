FROM node:18

RUN \
    set -x \
    && apt-get update \
    && apt-get install -y net-tools build-essential python3 python3-pip valgrind

WORKDIR /usr/code

COPY package*.json ./
RUN npm install
RUN npm install -g  watchify
COPY . .
# EXPOSE 3000
# EXPOSE 3300-2000/udp
CMD ["npm","run", "start"]