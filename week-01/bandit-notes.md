
cat > week-01/bandit-notes.md << 'EOF'
# OverTheWire Bandit – Levels 0 to 10

Notes on how I solved each level. **No passwords are stored here.**

Game: https://overthewire.org/wargames/bandit/

## How to connect

```
ssh banditX@bandit.labs.overthewire.org -p 2220
```

- `banditX` = the username for the level (bandit0, bandit1, ...)
- `-p 2220` = the port (SSH normally uses 22)
- The password found in one level opens the **next** user
- `exit` (or `Ctrl + D`) closes the connection

## Solutions

| Level | Problem | Solution | New skill |
| --- | --- | --- | --- |
| 0 | Log in to a remote server | `ssh bandit0@bandit.labs.overthewire.org -p 2220` | SSH, host, port |
| 0 → 1 | Read a file in the home folder | `cat readme` | `cat` |
| 1 → 2 | A file named `-` | `cat ./-` | `./` makes a name a path |
| 2 → 3 | A file name with spaces | `cat "./--spaces in this filename--"` | Quotes, Tab completion |
| 3 → 4 | A hidden file | `ls -a` then `cat` the file | Hidden files start with `.` |
| 4 → 5 | Find the only readable file | `file ./*` | `file` shows the data type |
| 5 → 6 | A file with size 1033 bytes, not executable | `find . -type f -size 1033c ! -executable` | `find` by properties |
| 6 → 7 | A file anywhere on the server, owned by bandit7 / group bandit6, 33 bytes | `find / -user bandit7 -group bandit6 -size 33c 2>/dev/null` | Search the whole system, hide errors |
| 7 → 8 | The password is next to the word "millionth" | `grep millionth data.txt` | `grep` searches inside files |
| 8 → 9 | The only line that appears once | `sort data.txt \| uniq -u` | Pipes, `sort`, `uniq` |
| 9 → 10 | Readable text inside a binary file, after `==` | `strings data.txt \| grep "=="` | `strings` |

## Key lessons

- **Placeholders:** names like `<file-name>` in tutorials must be replaced with the real name.
- **Full paths:** copy the exact path that `find` prints (e.g. `./maybehere07/.file2`).
- **Know where you are:** `bandit6@bandit` = remote server, `shewia@Marzouq` = my computer.
- **Username must match the password:** each password opens only the next user.
- **`2>/dev/null`:** `2` is the error stream, `/dev/null` is a black hole that throws it away.
- **Pipe `|`:** sends the output of one command into the next.
- **`uniq` needs `sort` first:** it only compares lines that are next to each other.
- **Binary files:** check with `file` before using `cat`; if the screen breaks, run `reset`.

## Commands learned

| Command | What it does |
| --- | --- |
| `ssh` | Connect to a remote server |
| `file` | Show what type of data a file has |
| `find` | Search for files by name, size, owner, type |
| `grep` | Search for text inside files |
| `sort` | Sort lines |
| `uniq -u` | Show only lines that appear once |
| `strings` | Extract readable text from binary data |
| `wc -l` | Count lines |
| `reset` | Fix a broken terminal screen |
