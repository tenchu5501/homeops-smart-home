# Blink Integration

## Overview

This project integrates Blink cameras into Home Assistant for smart home monitoring and automation workflows.

Blink is used for camera status, motion-related entities, and alarm arming/disarming workflows.

## Integration Strategy

Home Assistant is used as the main automation layer for Blink.

Apple Home is not used as the primary interface for Blink cameras in the initial phase.

## Current Scope

- Connect Blink account to Home Assistant
- Detect Blink cameras and related entities
- Use Blink alarm control panel for arm/disarm workflows
- Prepare future away and home automations

## Initial Automation Ideas

- Away Mode: turn off selected lights and arm Blink
- Home Mode: disarm Blink when arriving home
- Motion Alerts: notify when movement is detected while away
- Night Mode: arm selected cameras at night

## Privacy Notes

This repository must not include:

- Blink account email
- Blink password
- Camera serial numbers
- Camera screenshots showing private areas
- Exact camera locations if sensitive
- Private Home Assistant entity IDs that reveal personal information

## Future Improvements

- Add presence-based automations
- Add motion-based notifications
- Add dashboard camera cards
- Add snapshot actions where useful
- Combine Blink state with Apple Home scenes and Sonoff lights
