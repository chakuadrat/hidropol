# Gunakan image resmi Node-RED
FROM nodered/node-red:latest

# Masuk sebagai user root untuk install dependency tambahan
USER root

# Install node-red-dashboard agar dashboard bisa muncul
RUN npm install node-red-dashboard

# Salin flow Node-RED (pastikan kamu punya flows.json)
COPY flows.json /data/flows.json
COPY package.json /data/package.json

# Kembali ke user Node-RED
USER node-red
