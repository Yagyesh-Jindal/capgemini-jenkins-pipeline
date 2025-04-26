FROM node:14

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

RUN npm install --production --silent

COPY . .

EXPOSE 3000

USER node

CMD ["npm", "start"]
