#!/usr/bin/with-contenv bashio

bashio::log.info "Starting AFFiNE..."

# Create data directory inside HA config path
mkdir -p /config/affine-data

# Start AFFiNE, pointing to config storage
exec yarn start
