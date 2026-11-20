# Week 1 · Day 5 – Processes, services, logs, and apt cheat sheet

## Key words

| Word | Meaning |
| --- | --- |
| Program | A file on disk, like `/usr/bin/sleep` |
| Process | A program that is running now, with a PID (process ID) |
| Service | A process that runs in the background all the time (web server, SSH, cron) |
| Log | A record of what happened, with times |

## Processes

| Command | What it does |
| --- | --- |
| `ps` | Show my processes in this terminal |
| `ps aux` | Show all processes on the system |
| `ps aux \| grep <name>` | Find a process by name |
| `top` / `htop` | Live view of processes, CPU, and memory (`q` to quit) |
| `<command> &` | Run a command in the background |
| `jobs` | List background jobs in this terminal |
| `kill <PID>` | Stop a process by its PID |
| `kill %1` | Stop background job number 1 (from `jobs`) |

`ps aux` options: `a` = all users, `u` = show user and CPU/memory, `x` = include background processes.

⚠️ Only kill processes I started and understand.

## Installing software with apt

| Command | What it does |
| --- | --- |
| `sudo apt update` | Refresh the list of available software (installs nothing) |
| `sudo apt install <package> -y` | Install a package, answering "yes" automatically |
| `sudo apt upgrade` | Upgrade installed packages |
| `sudo apt remove <package>` | Uninstall a package |
| `<package> --version` | Check that it's installed |

## Services with systemctl

| Command | What it does |
| --- | --- |
| `systemctl status <service>` | Show if a service is running |
| `sudo systemctl start <service>` | Start a service |
| `sudo systemctl stop <service>` | Stop a service |
| `sudo systemctl restart <service>` | Restart a service |
| `sudo systemctl enable <service>` | Start it automatically at boot |

`Active: active (running)` = the service is working.

## Logs with journalctl

| Command | What it does |
| --- | --- |
| `journalctl -u <service>` | Logs for one service (unit) |
| `journalctl -u <service> -n 10` | Only the last 10 lines |
| `journalctl -u <service> -f` | Follow new log lines live (`Ctrl + C` to stop) |
| `journalctl --since "1 hour ago"` | Logs from the last hour |

## What I learned

- Every running program is a process with a PID.
- `&` runs a command in the background so I keep my prompt.
- `apt` installs software, and it needs `sudo`.
- `systemctl` controls services; `journalctl` reads their logs.
- When something breaks, the logs are the first place to look.

## Word of the day

**Process**: a program that is running right now. Every process has an ID number (PID).
