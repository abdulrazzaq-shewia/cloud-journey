# Week 2 · Day 9 – Subnetting drills and network tools

## Subnetting method

1. Block size = 2^(32 − CIDR)
2. Subnets start at multiples of the block size
3. Network = first address, Broadcast = last address
4. Usable hosts = block size − 2 (AWS: − 5)

## My drill answers

| # | Network | Block size | Network address | Broadcast | Usable hosts |
| --- | --- | --- | --- | --- | --- |
| 1 | 192.168.10.0/24 | | | | |
| 2 | 192.168.10.0/27 | | | | |
| 3 | 10.0.5.64/26 | | | | |
| 4 | 172.16.0.0/20 | | | | |
| 5 | 10.0.0.0/28 | | | | |

- 6. 192.168.1.100 belongs to:
- 7. Number of /24 subnets in 10.0.0.0/16:
- 8. Smallest CIDR for 50 devices:

## Network troubleshooting tools

| Command | Question it answers |
| --- | --- |
| `ping -c 4 <host>` | Is the host reachable? How fast? |
| `traceroute <host>` | What path (hops) does the data take? |
| `dig <name> +short` | What IP address does this name point to? |
| `curl -I <url>` | Does the web server answer? What status code? |
| `ss -tuln` | Which ports are listening on my machine? |
| `ip addr` | What is my IP address? |

## Word of the day

**Latency**: the time a message takes to travel to a server and back, in milliseconds.
