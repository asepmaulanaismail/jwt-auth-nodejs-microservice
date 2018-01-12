# latest official node image
FROM node:latest

MAINTAINER Asep Maulana Ismail <asepmaulanaismail@gmail.com>

# use nodemon for development
RUN npm install nodemon

# use cached layer for node modules
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /usr/src && cp -a /tmp/node_modules /usr/src/

# add project files
WORKDIR /usr/src
ADD . /usr/src

EXPOSE 3000

CMD ["nodemon", "-L", "/usr/src"]