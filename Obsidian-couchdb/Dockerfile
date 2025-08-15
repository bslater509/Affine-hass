ARG BUILD_FROM
FROM oleduc/docker-obsidian-livesync-couchdb:latest

# Environment variables will be set by run.sh based on user options
ENV SERVER_DOMAIN=homeassistant.local
ENV COUCHDB_USER=obsidian_user
ENV COUCHDB_PASSWORD=changeme123
ENV COUCHDB_DATABASE=obsidian

# Copy the startup script
COPY run.sh /
RUN chmod a+x /run.sh

# Use our custom startup script
CMD [ "/run.sh" ]
