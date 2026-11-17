# Week 1 · Day 1 – Linux files and folders cheat sheet

## Command shape

```
command  -options  target
```
Always put a **space** between each part.

## Where am I? / Moving around

| Command | What it does |
| --- | --- |
| `pwd` | Show the folder you're in |
| `cd folder` | Go into a folder |
| `cd ..` | Go up one level (parent folder) |
| `cd ~` | Go to your home folder (`/home/shewia`) |

## Looking at files

| Command | What it does |
| --- | --- |
| `ls` | List files and folders |
| `ls -l` | Long format: permissions, owner, size, date |
| `ls -a` | Show hidden files too (names start with `.`) |
| `ls -la` | Both together |
| `cat file` | Print a file's content |

In `ls -l`: a line starting with `d` = folder, `-` = file.

## Creating

| Command | What it does |
| --- | --- |
| `mkdir name` | Create a folder |
| `mkdir -p a/b/c` | Create a folder and any missing parent folders |
| `mkdir -p a/{x,y,z}` | Create several folders at once (brace expansion) |
| `touch file` | Create an empty file |
| `touch .name` | Create a hidden file |

## Copying, moving, renaming

| Command | What it does |
| --- | --- |
| `cp file dest/` | Copy a file |
| `cp -r folder dest/` | Copy a folder and everything inside it |
| `mv file dest/` | Move a file |
| `mv old new` | Rename (same folder, new name) |

Rule: `cp` / `mv`  →  **WHAT** first, then **WHERE**.

⚠️ If the destination folder doesn't exist, `cp -r docs backup/` creates `backup` as the copy itself (no `docs` inside it). Check with `ls` first.

## Finding

| Command | What it does |
| --- | --- |
| `find folder -name "*.md"` | Find all `.md` files in a folder and its subfolders |

`*` = anything. Keep the quotes `" "`.

## Deleting ⚠️ (there is no recycle bin)

| Command | What it does |
| --- | --- |
| `rm file` | Delete a file |
| `rm a b c` | Delete several files |
| `rm -r folder` | Delete a folder and everything inside it |

## Writing text into files

| Command | What it does |
| --- | --- |
| `echo "text" > file` | Write text, **replacing** the content |
| `echo "text" >> file` | **Add** text to the end |

## Keyboard shortcuts

| Key | What it does |
| --- | --- |
| `Tab` | Auto-complete names |
| `↑` / `↓` | Previous / next command |
| `Ctrl + R` | Search your command history |
| `Ctrl + C` | Stop the running command |
| `Ctrl + L` or `clear` | Clear the screen |

## Mistakes I made (and the lesson)

| Mistake | Lesson |
| --- | --- |
| `linux-lab/docs,linux-lab/scripts` | Start with a command (`mkdir`), and use spaces, not commas |
| `lslinux-lab/backup` | Put a space after the command |
| `cannot stat 'linux-lab/docs'` | Run `pwd` first: I was in the wrong folder |
| `backup/docs` missing | The destination folder must exist before `cp -r` |
| `note.md` vs `notes.md` | Use `Tab` to avoid typos |

## Word of the day

**Working directory**: the folder you're in right now. `pwd` prints it.
