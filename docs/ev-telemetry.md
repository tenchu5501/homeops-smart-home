# EV Telemetry Integration

## Overview

This project integrates electric vehicle telemetry into Home Assistant using Electro, HiveMQ Cloud, Eclipse Mosquitto, and MQTT.

The integration provides vehicle status, battery information, estimated range, tire pressure, odometer data, electrical measurements, and historical visualization.

## Architecture

```text
Electro Mobile Application
        |
        | MQTT over TLS
        v
HiveMQ Cloud Broker
        |
        | Encrypted MQTT Bridge
        v
Eclipse Mosquitto on UGREEN NAS
        |
        | Localhost MQTT
        v
Home Assistant
        |
        v
Vehicle Dashboard
```

## Data Flow

Electro publishes selected vehicle telemetry to a dedicated HiveMQ Cloud cluster.

Mosquitto creates an outbound encrypted bridge connection to HiveMQ and imports the vehicle topic into the local broker.

Home Assistant consumes the local MQTT message and creates multiple sensor entities from the JSON payload.

## Update Strategy

Telemetry is published only while the vehicle is powered on.

Current configuration:

- Send condition: Car on
- Send interval: 10 minutes
- MQTT QoS: 1
- Retained state enabled only after sensitive location fields were removed

This reduces unnecessary vehicle queries, mobile battery consumption, network traffic, and historical database growth.

## Home Assistant Sensors

The current implementation includes:

- Battery level
- Estimated electric range
- Extended estimated range
- Battery health
- Traction battery voltage
- 12-volt battery voltage
- Battery temperature
- Vehicle power state
- Lock state
- Door state
- Gear position
- Odometer
- Tire pressure
- Last telemetry update

## Security Design

- MQTT traffic between Electro and HiveMQ uses TLS.
- The cloud broker uses separate publisher and subscriber credentials.
- Mosquitto initiates an outbound connection; no MQTT router port is opened.
- The local MQTT listener remains restricted to localhost.
- Broker credentials and bridge configuration are excluded from Git.
- Home Assistant is accessed remotely through Tailscale.

## Privacy and Data Minimization

The following telemetry should not be published or stored unless specifically required:

- Exact latitude and longitude
- Altitude
- Wi-Fi network names
- VIN
- License plate information
- Unique vehicle identifiers
- Detailed trip records
- Exact charging session identifiers

## Dashboard

A dedicated Vehicle dashboard displays battery status, estimated range, vehicle state, electrical information, tire pressure, and historical trends.

## Future Improvements

- Detect charging state automatically
- Add low-battery notifications
- Add tire-pressure alerts
- Add stale telemetry detection
- Add charging-complete notifications
- Add historical charging analytics
- Add virtual controls or scenes for Apple Home where useful
