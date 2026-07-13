# Samsung Smart TV Integration

## Overview

This project integrates Samsung Smart TVs into Home Assistant for centralized control, dashboard visibility, and future automation workflows.

Home Assistant is used as the main control layer. Apple Home may receive selected TV entities through HomeKit Bridge only if they are useful and stable.

## Integration Strategy

Samsung TVs are added to Home Assistant using their local network IP address.

Each TV should have a DHCP reservation in the router or mesh system to keep its IP address stable over time.

## Current Scope

- Add Samsung Smart TVs to Home Assistant
- Rename TVs using clean room-based names
- Assign TVs to Home Assistant areas
- Test power, volume, mute, and source controls
- Expose only selected TV entities to Apple Home if useful

## Naming Convention

Recommended names:

- Living Room TV
- Bedroom TV
- Dining Room TV
- Second Floor TV

## Apple Home Strategy

Only selected media player entities should be exposed to Apple Home.

The full media player domain should not be exposed unless reviewed first, because it may publish unnecessary or duplicated entities.

## Power Control Notes

Power-off usually works when the TV is connected and available on the network.

Power-on support depends on the Samsung TV model, standby network behavior, Wake-on-LAN support, and whether the TV remains powered while off.

If a wall switch cuts power to the TV, Home Assistant cannot turn it on until power is restored.

## Privacy Notes

This repository must not include:

- Real TV IP addresses
- MAC addresses
- Samsung account information
- Device serial numbers
- Screenshots showing private rooms if sensitive
- Internal entity IDs that reveal personal details

## Future Improvements

- Add dashboard media controls
- Add scene-based TV actions
- Add night mode routines
- Add power-state notifications
- Combine TV state with lighting automations
