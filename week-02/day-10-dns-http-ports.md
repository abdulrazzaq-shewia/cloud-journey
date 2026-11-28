# Week 2 · Day 10 – DNS, HTTP/HTTPS, TLS, and ports cheat sheet

## DNS (Domain Name System)

Translates names like `github.com` into IP addresses.
Linux checks `/etc/hosts` first, then asks a DNS server.

| Record | What it stores | Example |
| --- | --- | --- |
| A | name → IPv4 address | `github.com` → `140.82.112.3` |
| AAAA | name → IPv6 address | addresses with `:` |
| CNAME | name → another name (alias) | `www.github.com` → `github.com` |
| MX | mail server for a domain | `gmail.com` → Google mail servers |
| NS | servers in charge of the domain | `google.com` → `ns1.google.com` |

| Command | What it does |
| --- | --- |
| `dig <name> A +short` | Show the IPv4 address |
| `dig <name> CNAME +short` | Show the alias target |
| `dig <name> MX +short` | Show the mail servers |
| `dig <name> NS +short` | Show the name servers |
| `cat /etc/hosts` | Show local name overrides |
| `echo "127.0.0.1 myapp.local" \| sudo tee -a /etc/hosts` | Add a local name (`-a` = append) |

## HTTP status codes

| Code | Meaning |
| --- | --- |
| 200 | OK |
| 301 | Moved permanently (redirect) |
| 403 | Forbidden |
| 404 | Not found |
| 500 | Server error |

## HTTP vs HTTPS

- HTTP = port 80, not encrypted
- HTTPS = port 443, encrypted with TLS
- `curl -I http://github.com` → `301` redirect to `https://`

## Common ports

| Port | Service |
| --- | --- |
| 22 | SSH |
| 53 | DNS |
| 80 | HTTP |
| 443 | HTTPS |
| 3306 | MySQL |
| 5432 | PostgreSQL |

## Run a test web server

| Command | What it does |
| --- | --- |
| `python3 -m http.server 8000 &` | Start a web server on port 8000 in the background |
| `ss -tuln \| grep 8000` | Check that port 8000 is listening |
| `curl http://localhost:8000` | Get the page |
| `curl -I <url>` | Show only the response headers and status code |
| `curl -vI https://<site> 2>&1 \| grep -E "SSL connection\|subject:\|expire date"` | Show TLS certificate details |
| `kill %1` | Stop the background server |

## Word of the day

**DNS (Domain Name System)**: the system that translates names like `github.com` into IP addresses.
