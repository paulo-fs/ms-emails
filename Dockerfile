FROM node:18
WORKDIR /home/node/app
COPY package*.json ./
RUN yarn
COPY ./dist/src .
EXPOSE 3000
CMD ["yarn", "dev"]