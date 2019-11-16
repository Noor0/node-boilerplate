FROM node:lts-alpine
RUN npm i -g yarn
WORKDIR /app
COPY ./package.json .
RUN yarn install
COPY . .
RUN yarn build
CMD yarn start
