# Week 2 · Day 9 – Subnetting drills and network tools

## Subnetting method

1. Block size = 2^(32 − CIDR)
2. Subnets start at multiples of the block size
3. Network = first address, Broadcast = last address
4. Usable hosts = block size − 2 (AWS: − 5)
5. Number of subnets when splitting = 2^(new CIDR − old CIDR)

## My drill answers

| # | Network | Block size | Network address | Broadcast | Usable hosts | Usable in AWS |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | 192.168.10.0/24 | 256 | 192.168.10.0 | 192.168.10.255 | 254 | 251 |
| 2 | 192.168.10.0/27 | 32 | 192.168.10.0 | 192.168.10.31 | 30 | 27 |
| 3 | 10.0.5.64/26 | 64 | 10.0.5.64 | 10.0.5.127 | 62 | 59 |
| 4 | 172.16.0.0/20 | 4,096 | 172.16.0.0 | 172.16.15.255 | 4,094 | 4,091 |
| 5 | 10.0.0.0/28 | 16 | 10.0.0.0 | 10.0.0.15 | 14 | 11 |

**Question 6.** Which /27 subnet does 192.168.1.100 belong to?
→ **192.168.1.96/27** (range .96 – .127), because 100 ÷ 32 = 3.125 → 3 × 32 = 96

**Question 7.** How many /24 subnets fit in 10.0.0.0/16?
→ **256**, because 2^(24 − 16) = 2^8 = 256 (10.0.0.0/24 to 10.0.255.0/24)

**Question 8.** What is the smallest subnet for 50 devices?
→ **/26** (62 usable hosts, 59 in AWS). A /27 has only 30 usable, which is too small.

## Tricks

- Which subnet contains an IP: divide the last number by the block size, drop the decimals, multiply back.
- For /17 to /24, the block changes in the third octet: size = 2^(24 − CIDR). Example: /20 → 16.

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
