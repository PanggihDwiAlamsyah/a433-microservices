FROM node:14-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# expose port 3001 shipping-service 
EXPOSE 3001

CMD ["npm", "start"]
