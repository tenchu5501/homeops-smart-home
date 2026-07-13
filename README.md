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

## Upcoming Automations

The next phase will focus on presence, security, vehicle, and energy automations after the final dashboards are customized.

- **Away Mode:** when everyone leaves home, turn off selected lights, verify televisions are off, and arm Blink.
- **Arrival Mode:** disarm Blink and turn on selected entrance lights when someone returns.
- **Vehicle Departure:** use vehicle movement or departure as an additional presence signal.
- **Vehicle Arrival:** detect when the EV returns and trigger selected home actions.
- **Low EV Battery:** notify when the vehicle returns home below a configured battery level.
- **Charging Started:** notify when the charging session begins.
- **Charging Complete:** notify when the configured charge level is reached.
- **Tire Pressure Alert:** notify when a tire is outside the configured safe range.
- **Stale EV Telemetry:** warn when the vehicle has not reported data for an unexpected period.
- **Night Mode:** turn off selected lights and televisions and arm the required cameras.
- **Energy-Aware Automations:** react to high household consumption after energy monitoring is installed.

Presence and security automations will use multiple signals when possible, including Home Assistant Companion app presence, household status, and EV telemetry. Security-critical actions will not rely on a single source.

## Screenshots

Sanitized screenshots will be added after the dashboards are fully customized.

Planned images:

- Vehicle dashboard
- HomeOps dashboard
- Apple Home controls
- Security dashboard without live camera feeds
- System architecture diagram

Before publication, screenshots must not show:

- Local or Tailscale IP addresses
- Browser address bars
- Email addresses or account names
- Wi-Fi network names
- HomeKit pairing codes or QR codes
- HiveMQ hostnames or MQTT credentials
- GPS coordinates or home location maps
- Camera feeds, faces, license plates, or private rooms
- Device serial numbers, VINs, tokens, or unique identifiers

## Roadmap

### Completed

- [x] Deploy Home Assistant using Docker
- [x] Configure secure remote access with Tailscale
- [x] Enable multi-factor authentication in Home Assistant
- [x] Add Mosquitto MQTT broker
- [x] Connect Apple Home through HomeKit Bridge
- [x] Integrate eWeLink devices
- [x] Integrate Blink cameras
- [x] Integrate Samsung Smart TVs
- [x] Add EV telemetry via MQTT
- [x] Publish sanitized documentation

### In progress

- [ ] Build smart home dashboards
  - Dedicated Vehicle dashboard completed
  - Main HomeOps dashboard customization pending
  - Security, infrastructure, and energy views planned

### Planned

- [ ] Add energy monitoring
  - Whole-home consumption monitoring
  - Historical energy usage
  - Energy-aware notifications and automations
