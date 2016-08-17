FROM derekbarnhart/rpi-iotivity-node:latest
WORKDIR /
RUN git clone https://github.com/derekbarnhart/mock-ocf-devices
WORKDIR /mock-ocf-devices
RUN npm install
RUN npm link iotivity-node
RUN node deviceManager init

CMD node deviceManager
