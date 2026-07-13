# Architecture

## Overview

HomeOps Smart Home is a self-hosted smart home platform designed to run on a UGREEN NAS using Docker.

The architecture uses Home Assistant as the central automation engine, while Apple Home and Alexa remain as user-facing interfaces.

## Main Components

### Home Assistant

Home Assistant is the main automation platform. It manages devices, dashboards, scenes, automations, and integrations.

### Docker

Docker is used to run Home Assistant and future services such as Mosquitto MQTT.

### Tailscale

Tailscale provides secure remote access without exposing Home Assistant directly to the internet.

### Apple Home

Apple Home is used as a clean mobile interface for selected entities exposed by Home Assistant through HomeKit Bridge.

### Alexa

Alexa remains available for basic voice commands such as turning lights on or off.

### MQTT

MQTT will be used for future integrations, including vehicle telemetry and custom sensors.

## Network Design

No public ports are exposed from the router.

Remote access path:

~~~text
Mobile Device
     |
     v
Tailscale VPN
     |
     v
UGREEN NAS
     |
     v
Home Assistant
~~~

## Security Notes

Sensitive information must never be committed to GitHub.

Examples of excluded data:

- Passwords
- API keys
- Tokens
- Home address
- GPS coordinates
- Tailscale device URLs
- MQTT credentials
- Device serial numbers
- Camera credentials
