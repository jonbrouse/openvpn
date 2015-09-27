# Basic OpenVPN POC using Docker

## What is this repository? - WIP WIP WIP WIP WIP WIP WIP WIP

This is a VPN POC using Docker and Docker-Compose. This is based on [OpenVPN's Mini-HOWTO](https://openvpn.net/index.php/open-source/documentation/miscellaneous/78-static-key-mini-howto.html),  and [kylemanna/docker-openvpn](https://github.com/kylemanna/docker-openvpn).

## Getting Started

### Prerequisites 

### Configuring OpenVPN

The OpenVPN Docker-Compose file contains services that are used to configure your containers. Possibly break the single compose file into a config.yml and docker-compose.yml

#### OpenVPN Configuration File

The top stanza configures your server. The lower stanza should be used be your client. The server (10.8.0.1) will receive requests from the client (10.8.0.2) using the static.key key.

openvpn.conf:

    dev tun
	ifconfig 10.8.0.1 10.8.0.2
	secret static.key

	# Client Settings
	#dev tun
	#ifconfig 10.8.0.2 10.8.0.1
	#secret static.key

#### KeyGen

The OpenVPN configuration file lives in `assets/etc/openvpn/` which is where we'll store the key we generate.

    docker-compose build
    docker-compose up keygen
    docker-compose up vpn
