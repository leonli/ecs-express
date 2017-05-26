FROM node:6.10.3-alpine
MAINTAINER Leon Li <lileon@amazon.com>
RUN mkdir ecs-express
ADD . ecs-express/
WORKDIR ecs-express
RUN npm install
EXPOSE 3000
ENTRYPOINT ["node", "./bin/www"]

