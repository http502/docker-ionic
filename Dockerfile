FROM runmymind/docker-android-sdk:ubuntu-standalone as ionic
RUN apt-get update 1>/dev/null && apt-get install --no-install-recommends --assume-yes wget gradle 1>/dev/null
RUN wget https://nodejs.org/dist/latest-v10.x/node-v10.20.1-linux-x64.tar.gz -O /tmp/node.tar.gz && \
    tar xfk /tmp/node.tar.gz --strip-components=1 -C /usr/local
RUN npm install --loglevel=error -g ionic cordova yarn
