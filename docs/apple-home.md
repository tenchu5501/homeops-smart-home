# Apple Home Integration

## Overview

This project uses Home Assistant HomeKit Bridge to expose selected Home Assistant entities to Apple Home.

Apple Home is used as a clean mobile interface for day-to-day control, while Home Assistant remains the main automation engine.

## Integration Strategy

The integration is intentionally filtered.

Only selected entities should be exposed to Apple Home to avoid clutter, duplicate devices, unnecessary sensors, or internal Home Assistant entities.

## Initial Scope

The first HomeKit Bridge configuration should expose only basic entity types such as:

- Lights
- Switches

Cameras, sensors, media players, climate devices, and advanced entities should be added later only when needed.

## Architecture

Home Assistant

↓

HomeKit Bridge

↓

Apple Home

↓

iPhone / Apple Watch / Siri

## Security and Privacy Notes

The repository must not include:

- HomeKit pairing QR codes
- HomeKit pairing codes
- Real device names if they reveal private information
- Home location data
- Screenshots showing private rooms or personal details
- Internal Home Assistant entity IDs that reveal personal information

## Remote Access Note

Apple Home remote access normally requires an Apple home hub such as a HomePod or Apple TV.

This project does not rely on Apple Home for remote access.

Remote access is handled through Home Assistant and Tailscale instead.

## Future Improvements

- Expose selected eWeLink lights and switches
- Expose selected Samsung TV controls if supported
- Add selected camera-related controls only if useful
- Create Apple Home scenes backed by Home Assistant automations
- Keep Home Assistant as the source of truth for automations
