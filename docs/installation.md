# Installation Guide

## Requirements

- UGREEN NAS
- Docker installed
- Local network access
- GitHub repository
- Tailscale installed or planned
- Home Assistant Docker image

## Folder Structure

~~~text
homeops-smart-home
├── config
│   └── homeassistant
├── docker
│   └── compose.yaml
├── docs
│   ├── architecture.md
│   ├── installation.md
│   └── security.md
├── examples
├── backups
├── scripts
├── .env.example
├── .gitignore
└── README.md
~~~

## Docker Compose

Home Assistant runs as a Docker container using host networking.

~~~yaml
services:
  homeassistant:
    container_name: homeassistant
    image: ghcr.io/home-assistant/home-assistant:stable
    restart: unless-stopped
    network_mode: host
    privileged: true
    environment:
      TZ: America/Costa_Rica
    volumes:
      - /volume1/docker/homeops-smart-home/config/homeassistant:/config
      - /etc/localtime:/etc/localtime:ro
~~~

> The NAS path must be adjusted depending on the real folder path used by the NAS.

## Access

Local access:

~~~text
http://NAS_LOCAL_IP:8123
~~~

Remote access will be configured through Tailscale.
