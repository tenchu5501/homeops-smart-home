# HomeOps Smart Home

Self-hosted smart home platform running on a UGREEN NAS with Docker, Home Assistant, Tailscale, Mosquitto MQTT, Apple Home integration, and secure remote access.

## Overview

HomeOps Smart Home is a personal home lab project designed to centralize smart home devices, automation workflows, remote access, monitoring, and future EV telemetry in a self-hosted environment.

The project uses Home Assistant as the main automation platform while keeping Apple Home as a clean mobile interface and Alexa available for simple voice commands.

## Project Goals

- Centralize smart home devices from multiple ecosystems.
- Use Home Assistant as the main automation platform.
- Keep Apple Home as a clean mobile interface.
- Keep Alexa available for basic voice commands.
- Enable secure remote access without exposing router ports.
- Prepare the architecture for MQTT-based integrations.
- Build a clean dashboard experience for daily use.
- Document the setup as a professional home lab portfolio project.

## Current Stack

- UGREEN NAS
- Docker
- Home Assistant Container
- Tailscale Docker Container
- Mosquitto MQTT Broker
- Apple Home / HomeKit Bridge
- Energy monitoring planned
- EV telemetry planned
- UPS monitoring planned for future compatible hardware

## Architecture

Smart Devices / Cameras / Sensors / EV

↓

Home Assistant running on Docker

↓

Apple Home for mobile UI

Alexa for voice control

Remote access:

iPhone → Tailscale VPN → UGREEN NAS → Home Assistant

## Remote Access

Remote access is provided through Tailscale running as a Docker container on the NAS.

This avoids exposing Home Assistant directly to the public internet and keeps access limited to authenticated Tailnet devices.

## Apple Home

Apple Home is connected through Home Assistant HomeKit Bridge.

Only selected entities should be exposed to Apple Home to keep the mobile experience clean and avoid unnecessary clutter.

## MQTT

Mosquitto MQTT is included as part of the base infrastructure for future IoT, automation, energy monitoring, and EV telemetry integrations.

The current MQTT setup is limited to local communication between Home Assistant and Mosquitto. No real NAS IP address, MQTT password, or private network information is stored in this repository.

## Security Principles

- No router ports exposed to the internet.
- Remote access through Tailscale.
- Home Assistant protected with multi-factor authentication.
- MQTT is not publicly exposed.
- Secrets excluded from Git.
- Sanitized examples only.
- Private repository during development.
- Public release only after security review.

## Documentation

- [Architecture](docs/architecture.md)
- [Installation Guide](docs/installation.md)
- [Remote Access](docs/remote-access.md)
- [Apple Home Integration](docs/apple-home.md)
- [eWeLink and Sonoff Integration](docs/ewelink-sonoff.md)
- [Blink Integration](docs/blink.md)
- [MQTT Broker](docs/mqtt.md)
- [EV Telemetry Integration](docs/ev-telemetry.md)
- [Security Guidelines](docs/security.md)

## Roadmap

- [x] Deploy Home Assistant using Docker
- [x] Configure secure remote access with Tailscale
- [x] Enable multi-factor authentication in Home Assistant
- [x] Add Mosquitto MQTT broker
- [x] Connect Apple Home through HomeKit Bridge
- [x] Integrate eWeLink devices
- [x] Integrate Blink cameras
- [x] Integrate Samsung Smart TVs
- [ ] Build smart home dashboards
- [ ] Add energy monitoring
- [x] Add EV telemetry via MQTT
- [ ] Publish sanitized documentation
