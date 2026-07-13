# MQTT Broker

## Overview

This project uses Eclipse Mosquitto as the MQTT broker for future IoT, sensor, automation, energy monitoring, and EV telemetry integrations.

MQTT is included as part of the base infrastructure, even though no external MQTT devices are connected yet.

## Current Setup

Mosquitto runs as a Docker container on the UGREEN NAS.

The current setup is intentionally limited to local communication between Home Assistant and Mosquitto.

## Listener Strategy

The broker is configured to listen only on localhost.

Example sanitized configuration:

```text
listener 1883 127.0.0.1
allow_anonymous true
```

This does not expose MQTT to the local network or the public internet.

## Why Localhost Only

The current deployment keeps MQTT limited to local communication between Home Assistant and Mosquitto.

Benefits:

- MQTT is not exposed to the local network.
- MQTT is not exposed to the public internet.
- No router port forwarding is required.
- Home Assistant can communicate with Mosquitto locally.
- The setup remains simple and stable for the initial phase.

## Future Security Plan

When external devices need to connect to MQTT, the broker will be reconfigured with:

- Authenticated users
- Strong passwords
- A dedicated listener for trusted devices
- Network restrictions where possible
- No public internet exposure

## Future Use Cases

- EV telemetry
- Energy monitoring
- Custom sensors
- IoT buttons
- Automation events
- Device state publishing

## Privacy Notes

This documentation must not include:

- Real NAS IP addresses
- MQTT passwords
- Home Assistant tokens
- Tailscale auth keys
- Device IDs
- Vehicle identifiers
- Home location data
