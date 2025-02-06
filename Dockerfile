FROM node:lts

WORKDIR /app 

COPY package.json ./

RUN mkdir -p /app/uploads

RUN npm install

COPY . .

EXPOSE 4300

CMD ["npm", "run", "dev"]

