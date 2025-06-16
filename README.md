# Open WebUI Compose

A simple Docker Compose setup for running [Open WebUI](https://github.com/open-webui/open-webui), a user-friendly web interface for chatbots.

## Quick Start

Start the service:
```bash
make up
```

Stop the service:
```bash
make down
```

## Access

Once running, Open WebUI will be available at:
- **URL**: http://localhost:3000
- **Port**: 3000 (mapped from container port 8080)

## Features

- **Persistent Data**: Uses Docker volume `open-webui` to persist your data
- **Auto-restart**: Container automatically restarts unless manually stopped
- **Latest Version**: Always pulls the latest Open WebUI image

## Manual Commands

If you prefer not to use the Makefile:

```bash
# Start services in detached mode
docker compose up -d

# Stop and remove containers
docker compose down

# View logs
docker compose logs -f

# Pull latest image
docker compose pull
```

## Data Persistence

Your Open WebUI data is stored in the `open-webui` Docker volume. To backup or inspect:

```bash
# List volumes
docker volume ls

# Inspect volume
docker volume inspect open-webui
```

## Troubleshooting

- **Port conflict**: If port 3000 is in use, modify the port mapping in `docker-compose.yml`
- **Container won't start**: Check logs with `docker compose logs open-webui`
- **Data loss**: Ensure the `open-webui` volume exists and is properly mounted
