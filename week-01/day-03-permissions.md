# Week 1 · Day 3 – Permissions and users cheat sheet

## Reading permissions

Example from `ls -l`:

```
-rwxr-xr--  1  shewia  shewia  35  Nov 18  hello.sh
```

| Part | Meaning |
| --- | --- |
| `-` | Type: `-` = file, `d` = folder |
| `rwx` | Owner: read, write, execute |
| `r-x` | Group: read, execute |
| `r--` | Others: read only |
| `shewia shewia` | Owner and group |

- `r` = read (see the content)
- `w` = write (change or delete the content)
- `x` = execute (run as a program)
- `-` = permission is off

## Changing permissions with letters

| Command | What it does |
| --- | --- |
| `chmod u+x file` | Add execute for the owner (user) |
| `chmod g-w file` | Remove write from the group |
| `chmod o-r file` | Remove read from others |
| `chmod a+r file` | Add read for all (owner, group, others) |

## Changing permissions with numbers

`r = 4`, `w = 2`, `x = 1`. Add them for each group: owner, group, others.

| Number | Letters |
| --- | --- |
| 7 | `rwx` |
| 6 | `rw-` |
| 5 | `r-x` |
| 4 | `r--` |
| 0 | `---` |

| Command | Result | Common use |
| --- | --- | --- |
| `chmod 755 file` | `rwxr-xr-x` | Scripts and programs |
| `chmod 644 file` | `rw-r--r--` | Normal files |
| `chmod 600 file` | `rw-------` | Private files (SSH keys) |
| `chmod 740 file` | `rwxr-----` | Owner runs it, group reads it |

## Users and admin

| Command | What it does |
| --- | --- |
| `whoami` | Show my username |
| `id` | Show my user ID and groups |
| `sudo <command>` | Run one command as admin (root) |
| `sudo chown <user> file` | Change the owner of a file |

⚠️ `sudo` gives full power over the system. Never run a `sudo` command you don't understand.

## Running a script

```
./hello.sh
```

- `./` = the file in the current folder
- `Permission denied` = the file has no `x` permission → fix with `chmod u+x`

## What I learned

- Without `x`, Linux refuses to run a file.
- `/etc/shadow` is owned by `root`, so a normal user can't read it.
- After `chown root`, I lost access to my own file, because `600` gives the group nothing.
- `ls -1` (one name per line) is not the same as `ls -l` (long format).

## Word of the day

**Permission**: what someone is allowed to do with a file: read, write, or execute.
