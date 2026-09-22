FROM n8nio/n8n:2.34.6

USER root

# Chromium + Puppeteer (commit del 10/08, nunca deployado; activar cuando se quiera probar)
# RUN apk add --no-cache chromium
# ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
# ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
# RUN npm install -g puppeteer
