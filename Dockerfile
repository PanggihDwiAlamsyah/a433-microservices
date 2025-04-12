# base image resmi Node.js versi 14
FROM node:14

# direktori kerja di dalam container
WORKDIR /app

# menyalin seluruh source code dari direktori lokal ke direktori kerja container
COPY . .

# environment sebagai production dan host database sebagai item-db
ENV NODE_ENV=production DB_HOST=item-db

# menginstal dependensi hanya untuk production dan melakukan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port 8080 yang digunakan oleh aplikasi
EXPOSE 8080

# perintah yang akan dijalankan ketika container dijalankan
CMD ["npm", "start"]
