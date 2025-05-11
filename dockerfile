FROM node:14-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# expose port 3009 order-service 
EXPOSE 3000

CMD ["npm", "start"]
