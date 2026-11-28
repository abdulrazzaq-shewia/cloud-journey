# Week 2 · Day 11 – Bash scripting cheat sheet

## Script basics

```
#!/bin/bash
```
- First line (shebang): run this file with Bash
- Make it executable: `chmod +x script.sh`
- Run it: `./script.sh`

## Variables and arguments

| Syntax | Meaning |
| --- | --- |
| `NAME="Ali"` | Create a variable (no spaces around `=`) |
| `$NAME` | Use the variable |
| `$1`, `$2` | First and second argument passed to the script |
| `${1:-80}` | Use `$1`, or 80 if no argument is given |
| `$(command)` | Run a command and use its result |

## if conditions

```
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "ALERT"
else
    echo "OK"
fi
```

| Test | Meaning |
| --- | --- |
| `-gt` / `-lt` | greater than / less than (numbers) |
| `-eq` / `-ne` | equal / not equal (numbers) |
| `==` / `!=` | equal / not equal (text) |
| `-f file` | file exists |
| `-d folder` | folder exists |

Spaces inside `[ ]` are required.

## for loops

```
for HOST in google.com github.com; do
    echo "$HOST"
done
```

## Useful patterns

| Pattern | Meaning |
| --- | --- |
| `> /dev/null 2>&1` | Hide all output and errors |
| `if ping -c 1 "$HOST" > /dev/null 2>&1; then` | Run code only if a command succeeds |
| `df / --output=pcent \| tail -1 \| tr -d ' %'` | Get the disk usage number |

## My scripts (week-02/scripts)

| Script | What it does |
| --- | --- |
| `greet.sh` | Variables, arguments, and `$(date)` |
| `check-file.sh` | `if` with `-f` to check if a file exists |
| `ping-check.sh` | `for` loop that pings several hosts |
| `disk-monitor.sh` | Alerts when disk usage is above a threshold |

## Word of the day

**Variable**: a named box that stores a value, so you can use it again later in a script.
