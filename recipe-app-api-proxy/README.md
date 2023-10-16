# Recipe App API Proxy

NGINX proxy app for our recipe app

## usage

### Env Variables

- `LISTEN_PORT` - port to listen to (default `8000`)
- `APP_HOST` - Hostname of the app to forward requests to (default: `app`)
- `APP_PORT` - Port of app to forward requests to (default: `9000`)
