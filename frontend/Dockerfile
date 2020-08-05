FROM node:12.5.0-alpine

ENV APP_ROOT /app

WORKDIR /app
COPY yarn.lock /app
COPY package.json /app

RUN yarn install --check-files

COPY . /app

RUN yarn build

ENV HOST 0.0.0.0
EXPOSE 3000

# start command
CMD [ "yarn", "start" ]
