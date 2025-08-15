# Home Assistant Obsidian LiveSync Addon

This addon provides a CouchDB instance configured specifically for Obsidian LiveSync synchronization.

## Installation

1. Add this repository to your Home Assistant addon store
2. Install the "Obsidian LiveSync" addon
3. Configure your settings
4. Start the addon

## Configuration

### Basic Options

- **Database Name**: Name of the CouchDB database (default: `obsidian`)
- **Username**: Admin username for CouchDB access
- **Password**: Admin password for CouchDB access
- **Port**: Internal CouchDB port (default: 5984)

### Advanced Options

- **Server Domain**: Domain name for CORS configuration
- **Enable SSL**: Whether to enable SSL/TLS support
- **Persistent Storage**: Enable persistent storage for database files

## Connecting Obsidian

1. Install the "Self-hosted LiveSync" plugin in Obsidian
2. In plugin settings, configure:
   - **URI**: `http://homeassistant.local:5984` (or your HA IP)
   - **Username**: The username you configured
   - **Password**: The password you configured
   - **Database Name**: The database name you configured

## Network Access

The addon exposes CouchDB on port 5984. Ensure this port is accessible from your devices running Obsidian.

## Data Persistence

Database files are stored in `/addon_configs/obsidian-livesync/` for persistence across addon restarts and updates.

## Troubleshooting

### Connection Issues
- Verify the addon is running and healthy
- Check that port 5984 is not blocked by firewall
- Ensure Home Assistant is accessible from your device

### Sync Issues
- Check addon logs for CouchDB errors
- Verify database permissions are correct
- Ensure network connectivity is stable

## Support

For issues specific to the Obsidian LiveSync plugin, refer to:
- [Obsidian LiveSync GitHub](https://github.com/vrtmrz/obsidian-livesync)

For addon-specific issues, check the addon logs in Home Assistant.