FROM node:4.7
## These are all the packages present in the file.

RUN npm install -g gulp
RUN npm install -g webpack
RUN npm install -g jshint
RUN npm install -g nodemon
RUN npm install -g pm2

ADD binaries/node.tar.gz /var/www/html

WORKDIR /var/www/html

EXPOSE 3000

ENTRYPOINT ["pm2-docker", "bin/www"]


