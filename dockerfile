FROM node:16-alpine

# directory
WORKDIR /usr/server/app

COPY ./package.json ./
RUN npm install

COPY ./ .

# will build remix app
RUN npm run build
ENV NODE_ENV=production
CMD ["npm", "run" ,"start"]
