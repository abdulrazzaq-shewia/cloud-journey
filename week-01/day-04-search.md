# Week 1 · Day 4 – Searching cheat sheet (find, grep, pipes)

## find: search for files

```
find <where> <conditions>
```

| Command | What it does |
| --- | --- |
| `find . -name "*.md"` | Files whose name ends with `.md` |
| `find . -type f` | Files only |
| `find . -type d` | Folders (directories) only |
| `find . -size 1033c` | Exactly 1033 bytes (`c` = bytes) |
| `find . -size +10M` | Bigger than 10 MB |
| `find . ! -executable` | NOT executable (`!` = NOT) |
| `find / -user bandit7` | Owned by user `bandit7`, anywhere on the system |
| `find / -group bandit6` | Owned by group `bandit6` |

- `.` = search here and in all subfolders
- `/` = search the whole system
- Conditions can be combined: `find . -type f -size 1033c ! -executable`

## grep: search inside files

| Command | What it does |
| --- | --- |
| `grep word file` | Print lines that contain `word` |
| `grep -i word file` | Ignore upper/lower case |
| `grep -n word file` | Show line numbers |
| `grep -c word file` | Count matching lines |
| `grep -v word file` | Print lines that do NOT contain `word` |
| `grep -r word folder` | Search all files in a folder |

## Pipes: connect commands with |

The output of the first command becomes the input of the next.

| Command | What it does |
| --- | --- |
| `sort file \| uniq -u` | Lines that appear only once |
| `sort file \| uniq -c` | Count how many times each line appears |
| `strings file \| grep "=="` | Readable text from a binary file, filtered |
| `ls -l \| grep ".md"` | Only lines about `.md` files |
| `cat file \| wc -l` | Count lines |

⚠️ `uniq` only compares lines next to each other, so always `sort` first.

## Output and errors

| Symbol | Meaning |
| --- | --- |
| `>` | Send output into a file (replaces it) |
| `>>` | Add output to the end of a file |
| `2>/dev/null` | Hide error messages |
| `1` | Normal output stream |
| `2` | Error stream |
| `/dev/null` | A "black hole" that deletes anything sent to it |

## Other useful commands

| Command | What it does |
| --- | --- |
| `wc -l file` | Count lines |
| `strings file` | Extract readable text from binary data |
| `file file` | Show what type of data a file has |
| `reset` | Fix a broken terminal screen |

## What I learned

- Copy the full path that `find` prints (e.g. `./maybehere07/.file2`).
- Searching from `/` prints many `Permission denied` errors; `2>/dev/null` hides them.
- The password from one Bandit level only opens the next user.
- Check the prompt to know where I am: `bandit6@bandit` (server) vs `shewia@Marzouq` (my computer).

## Word of the day

**Pipe**: the `|` symbol that connects two commands, so the output of the first becomes the input of the second.
