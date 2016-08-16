FROM derekbarnhart/rpi-iotivity-node:latest

RUN git clone https://github.com/derekbarnhart/mock-ocf-devices
WORKDIR /mock-ocf-devices
RUN npm install

CMD node deviceManager
