# Gunakan image resmi Node-RED
FROM nodered/node-red:latest

# Masuk sebagai user root untuk install dependency tambahan
USER root

# Install node tambahan (dashboard & MQTT client opsional)
RUN npm install \
    node-red-dashboard \
    node-red-contrib-mqtt-broker \
    --save

# Salin flows dan konfigurasi ke direktori data Node-RED
COPY flows.json /data/flows.json
COPY package.json /data/package.json

# Pastikan permission data dimiliki user node-red
RUN chown -R node-red:node-red /data

# Kembali ke user Node-RED
USER node-red
