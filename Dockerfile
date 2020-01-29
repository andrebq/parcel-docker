FROM node:lts-alpine

RUN yarn global add parcel-bundler

WORKDIR /usr/src
CMD ["parcel", "index.html"]
