FROM node:18
WORKDIR /home/node/app
COPY package*.json ./

RUN chown -R node:node /home/node
USER node

RUN yarn
COPY ./src ./src

EXPOSE 3000
ENTRYPOINT ["yarn", "dev"]