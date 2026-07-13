# Remote Access

## Overview

Remote access is handled through Tailscale instead of exposing Home Assistant directly to the public internet.

This setup allows trusted devices, such as a personal iPhone or laptop, to access Home Assistant securely through the Tailnet.

## Architecture

```text
iPhone / Laptop
      |
      v
Tailscale VPN
      |
      v
Tailscale Docker Container
      |
      v
UGREEN NAS
      |
      v
Home Assistant Container
Why Tailscale

Tailscale was selected because it avoids router port forwarding and keeps Home Assistant private.

Benefits:

No public router ports required.
No dynamic DNS required.
No public reverse proxy required.
Access limited to authenticated Tailnet devices.
Works well for mobile access.
Docker Mode

This deployment uses Tailscale in Docker with userspace networking.

The NAS version used in this project does not provide native Tailscale installation through its app center, so the Tailscale container is used as the remote access layer.

Access Pattern

Local access:

http://NAS_LOCAL_IP:8123

Remote access through Tailscale:

http://TAILSCALE_NAS_IP:8123

Real IP addresses, MagicDNS names, device names, and private URLs must not be committed to this repository.

Security Notes
Router port forwarding is not used.
Home Assistant is protected with multi-factor authentication.
Tailscale authentication keys are never committed.
The repository only includes sanitized configuration examples.
Screenshots must be reviewed before publishing.
