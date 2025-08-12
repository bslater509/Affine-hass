ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base:latest
FROM ghcr.io/toeverything/affine-self-hosted:latest

# Copy run script
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
