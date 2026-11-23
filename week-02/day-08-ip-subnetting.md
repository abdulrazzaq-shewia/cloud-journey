# Week 2 · Day 8 – IP addresses, CIDR, and subnetting cheat sheet

## IPv4 address

- 4 numbers from 0 to 255, separated by dots: `192.168.1.10`
- Each number is an octet (8 bits) → 32 bits in total

## CIDR notation

The number after `/` = how many bits belong to the network part.

Number of addresses = 2^(32 − CIDR)

| CIDR | Addresses | Usable (normal) | Usable in AWS |
| --- | --- | --- | --- |
| `/16` | 65,536 | 65,534 | 65,531 |
| `/20` | 4,096 | 4,094 | 4,091 |
| `/24` | 256 | 254 | 251 |
| `/25` | 128 | 126 | 123 |
| `/26` | 64 | 62 | 59 |
| `/28` | 16 | 14 | 11 |

- Bigger number after `/` = smaller network
- Normal networks reserve 2 addresses (network + broadcast)
- AWS reserves 5 addresses in every subnet

## Parts of a network

| Part | Example (192.168.1.0/24) | Meaning |
| --- | --- | --- |
| Network | `192.168.1.0` | First address, the name of the network |
| HostMin | `192.168.1.1` | First usable address |
| HostMax | `192.168.1.254` | Last usable address |
| Broadcast | `192.168.1.255` | Last address, talks to all devices |

## Private IP ranges

| Range | Example |
| --- | --- |
| `10.0.0.0/8` | `10.0.1.25` (common in AWS VPCs) |
| `172.16.0.0/12` | `172.20.45.10` (WSL) |
| `192.168.0.0/16` | `192.168.1.10` (home Wi-Fi) |

- `127.0.0.1` = localhost (this same computer)

## Subnetting

- 1 extra bit = 2 subnets: `10.0.1.0/24` → `10.0.1.0/25` + `10.0.1.128/25`
- 2 extra bits = 4 subnets: `/24` → four `/26`

## Commands

| Command | What it does |
| --- | --- |
| `ip addr` | Show network interfaces and IP addresses |
| `hostname -I` | Show only the IP address |
| `ping -c 4 <host>` | Send 4 test messages to a host |
| `curl ifconfig.me` | Show my public IP |
| `ipcalc <network>/<cidr>` | Calculate network details |

## Word of the day

**Subnet**: a smaller network inside a bigger one.
