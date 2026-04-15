FROM n8nio/n8n:latest

USER root

# Install Chromium and minimal dependencies for Puppeteer on Alpine
RUN apk add --no-cache \
    chromium \
        nss \
            freetype \
                harfbuzz \
                    ca-certificates \
                        ttf-freefont

                        # Tell Puppeteer to use system Chromium instead of downloading its own
                        ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
                            PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

                            # Install puppeteer (no bundled Chromium = much smaller)
                            RUN npm install -g puppeteer
