# base image Node.js versi 14
FROM node:14

# working directory di dalam container
WORKDIR /app

# menyalin seluruh source code ke dalam working directory di container
COPY . /app

# environment variables
ENV NODE_ENV=production
ENV DB_HOST=item-db

# menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port yang digunakan aplikasi
EXPOSE 8080

# menjalankan server dengan perintah npm start saat container diluncurkan
CMD ["npm", "start"]
