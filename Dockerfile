# Gunakan image resmi Node-RED
FROM nodered/node-red:latest

# Masuk sebagai user root untuk install dependency tambahan
USER root

# (Opsional) install package tambahan jika kamu pakai node khusus
# RUN npm install node-red-dashboard

# Salin flow Node-RED (pastikan kamu punya flows.json)
COPY flows.json /data/flows.json

# Kembali ke user Node-RED
USER node-red