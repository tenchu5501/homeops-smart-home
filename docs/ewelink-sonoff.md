# eWeLink and Sonoff Integration

## Overview

This project integrates eWeLink/Sonoff devices into Home Assistant using the Sonoff LAN custom integration installed through HACS.

Home Assistant acts as the central automation platform, while Apple Home receives selected lights and switches through HomeKit Bridge.

## Integration Flow

eWeLink / Sonoff devices

↓

Sonoff LAN integration

↓

Home Assistant

↓

HomeKit Bridge

↓

Apple Home

## Current Strategy

Only selected lights and switches should be exposed to Apple Home.

This avoids clutter, duplicate entities, and unnecessary internal devices appearing in the Apple Home app.

## Naming Convention

Device names should be clear, room-based, and voice-assistant friendly.

Examples:

- Bedroom Main Light
- Living Room Light
- Kitchen Light
- Hallway Light
- Garage Light

## Alexa Coexistence

Alexa remains connected directly to eWeLink for simple voice commands.

Home Assistant and Apple Home are used for unified control, dashboards, and future automations.

## Privacy Notes

This repository must not include:

- eWeLink account email
- eWeLink password
- Device IDs
- Real device serial numbers
- Screenshots with private room names if sensitive
- Internal entity IDs that reveal personal details

## Future Improvements

- Add room-based automations
- Add away mode
- Add night mode
- Add Apple Home scenes backed by Home Assistant automations
- Add energy-aware automations when energy monitoring is available
