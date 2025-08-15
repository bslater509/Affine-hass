#!/usr/bin/with-contenv bashio

set -e

bashio::log.info "Starting Obsidian LiveSync CouchDB..."

# Read configuration from Home Assistant
DATABASE_NAME=$(bashio::config 'database_name')
COUCHDB_USER=$(bashio::config 'couchdb_user') 
COUCHDB_PASSWORD=$(bashio::config 'couchdb_password')
SERVER_DOMAIN=$(bashio::config 'server_domain')

# Validate required configuration
if bashio::var.is_empty "${DATABASE_NAME}"; then
    bashio::log.fatal "Database name is required!"
    bashio::exit.nok
fi

if bashio::var.is_empty "${COUCHDB_USER}"; then
    bashio::log.fatal "CouchDB username is required!"
    bashio::exit.nok
fi

if bashio::var.is_empty "${COUCHDB_PASSWORD}"; then
    bashio::log.fatal "CouchDB password is required!"
    bashio::exit.nok
fi

# Export environment variables for the container
export SERVER_DOMAIN="${SERVER_DOMAIN}"
export COUCHDB_USER="${COUCHDB_USER}"
export COUCHDB_PASSWORD="${COUCHDB_PASSWORD}"
export COUCHDB_DATABASE="${DATABASE_NAME}"

# Log configuration (without sensitive data)
bashio::log.info "Database Name: ${DATABASE_NAME}"
bashio::log.info "CouchDB User: ${COUCHDB_USER}"
bashio::log.info "Server Domain: ${SERVER_DOMAIN}"

# Ensure data directory exists
mkdir -p /config/data
chown -R couchdb:couchdb /config/data || true

# Start CouchDB with the original entrypoint
bashio::log.info "Starting CouchDB server..."
exec /docker-entrypoint.sh couchdb
