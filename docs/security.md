
Security Guidelines
Repository Safety

This repository must not include personal or sensitive data.

Do not commit:

Real .env files
Home Assistant .storage folder
API keys
Passwords
Tokens
Home address
GPS coordinates
Tailscale URLs
Tailscale auth keys
MQTT credentials
Device serial numbers
Camera credentials
Vehicle telemetry identifiers
Remote Access

Remote access is handled through Tailscale.

Router port forwarding must not be used for Home Assistant.

Home Assistant Security

Home Assistant should use:

Strong administrator password
Multi-factor authentication
No public exposure to the internet
Regular backups
Limited external integrations
Home Assistant Secrets

When YAML secrets are needed, use secrets.yaml locally and keep it excluded from Git.

Public Release Checklist

Before making the repository public:

Review all committed files.
Search for private IPs.
Search for email addresses.
Search for tokens and passwords.
Search for Tailscale auth keys.
Remove screenshots with personal data.
Replace real device names with generic names where needed.
Confirm .gitignore is working correctly.
