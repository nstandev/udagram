FROM node:16-alpine3.15 AS build
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm ci
# Bundle app source
COPY . .
RUN ionic build
RUN node --version
RUN npm list ionic
## Run 
FROM nginx:alpine
#COPY www /usr/share/nginx/html
COPY --from=build  /usr/src/app/www /usr/share/nginx/html
# COPY nginx.conf /etc/nginx/nginx.conf
