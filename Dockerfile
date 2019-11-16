FROM node:lts-alpine as install
RUN npm i -g yarn
ENTRYPOINT ["yarn", "install"]

FROM node:lts-alpine as app
RUN npm i -g yarn
WORKDIR /app
COPY ./package.json .
RUN yarn install
COPY . .
RUN yarn build
CMD yarn start
