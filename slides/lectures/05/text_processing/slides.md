---
layout: section
---
# Text Processing
using redirects and pipes to handle text

---
---
# Redirects
trick processes about the keyboard, display and error display

```bash {none|1,2|4,5|7,8|10,11|13,14|16,17|19,20|all}
# Redirect stdout (standard output) to a file
ls > files.txt                      # Save the list of files into files.txt

# Append stdout to a file instead of overwriting it
ls >> files.txt                     # Add more output to files.txt

# Redirect stderr (standard error) to a file
ls /nonexistent 2> errors.txt       # Save only the error message to errors.txt

# Redirect both stdout and stderr to the same file
ls /etc /nonexistent > all.txt 2>&1 # Combine normal output and errors into all.txt

# Shortcut for redirecting both stdout and stderr (Bash 4+)
ls /etc /nonexistent &> all.txt     # Equivalent to the previous command

# Redirect stdin (standard input) from a file
sort < input.txt                    # Read lines from input.txt and sort them

# Redirect stdin and stdout at once
sort < unsorted.txt > sorted.txt    # Sort contents of unsorted.txt into sorted.txt
```

---
---
# Advanced Redirects
trick processes about the keyboard, display and error display

```bash {none|1,2|4,5|7-11|all}
# Suppress all output (stdout and stderr)
command > /dev/null 2>&1            # Run silently; discard all output and errors

# Redirect stderr to stdout and pipe to another command
command 2>&1 | grep "warning"       # Merge both streams, then search for "warning"

# Use a heredoc (redirect stdin from inline text)
cat <<EOF                           # Start a heredoc input for the 'cat' command
Hello, world!                       # This line is passed to 'cat' as input
This is a heredoc example.          # Another line sent to standard input
EOF                                 # End of heredoc marker
```

---
class: compact-table text-sm
---
# Globbing
used by the shell

<style>
.compact-table table {
  font-size: 0.8rem;
  line-height: 1.1;
  border-collapse: collapse;
}
.compact-table th,
.compact-table td {
  padding: 2px 6px;
  border-bottom: 1px solid rgba(255,255,255,0.1);
}
.compact-table thead {
  background: rgba(255,255,255,0.05);
}
</style>

<v-clicks>

| Pattern | Meaning | Example |
|---------|---------|---------|
| `*` | Matches zero or more characters | `*.txt` → all files ending with `.txt` |
| `?` | Matches exactly one character | `file?.txt` → `file1.txt`, `fileA.txt` |
| `[abc]` | Matches any one character inside brackets | `file[12].txt` → `file1.txt`, `file2.txt` |
| `[a-z]` | Matches any one character in the range | `file[a-c].txt` → `filea.txt`, `fileb.txt`, `filec.txt` |
| `[!abc]` | Matches any character **not** in brackets | `file[!0-9].txt` → `fileA.txt`, `fileB.txt` (not `file0.txt`) |
| `{foo,bar}` | Matches one of the comma-separated options | `{foo,bar}.txt` → `foo.txt` or `bar.txt` |
| `**` | Matches directories recursively (bash `globstar`) | `**/*.txt` → all `.txt` files in current and subdirectories |

</v-clicks>

<v-click>

<br>

⚠️ These are interpreted by the shell and are valid only when writing commands. The commands **do not receive** these special characters in their parameters, the shell replaces them with valid file names.

</v-click>


---
class: compact-table text-sm
---
# Regular Expressions
a way to describe a string used by `grep`

<div class="text-xs leading-tight max-w-[900px] mx-auto mt-4">

<v-clicks>

| Regex Symbol | Name / Meaning | Example |
|---------------|----------------|----------|
| `.` | Any single character | `a.c` → matches `abc`, `a_c`, etc. |
| `^` | Start of string | `^a` → matches strings starting with `a` |
| `$` | End of string | `a$` → matches strings ending with `a` |
| `*` | Zero or more repetitions | `ab*` → `a`, `ab`, `abb`, ... |
| `+` | One or more repetitions | `ab+` → `ab`, `abb`, ... |
| `?` | Zero or one occurrence | `colou?r` → `color` or `colour` |
| `{n}` | Exactly n repetitions | `a{3}` → `aaa` |
| `{n,}` | At least n repetitions | `a{2,}` → `aa`, `aaa`, ... |
| `{n,m}` | Between n and m repetitions | `a{2,4}` → `aa`, `aaa`, `aaaa` |
| `[]` | Character class | `[aeiou]` → any vowel |
| `[^]` | Negated class | `[^0-9]` → non-digit |
| `()` | Grouping / capture | `(ab)+` → `ab`, `abab`, ... |
| `\|` | Alternation (OR) | `cat|dog` → `cat` or `dog` |
| `\` | Escape character | `\.` → literal `.` |
| `\d` | Digit class | `\d+` → `123`, `42`, ... |
| `\w` | Word character | `\w+` → `hello_123` |
| `\s` | Whitespace | `\s+` → space, tab, newline |
| `\b` | Word boundary | `\bcat\b` → matches `cat` as a whole word |

</v-clicks>

</div>

<style>
.compact-table table {
  font-size: 0.8rem;
  line-height: 1.1;
  border-collapse: collapse;
}
.compact-table th,
.compact-table td {
  padding: 2px 6px;
  /*border-bottom: 1px solid rgba(255,255,255,0.1);*/
}
.compact-table thead {
  background: rgba(255,255,255,0.05);
}
</style>

---

# ✅ The Power of Pipes

<br>
<br>
<br>
<br>
<br>
<br>

<center>

## *Do one thing well — and chain them together.*

</center>


---

# Basics — Input and Output

All these commands:

- **Read input** from a **file** given on the command line,
  e.g. `cat notes.txt`
- If **no file** is provided, they **read from the keyboard** (`stdin`)
- You can type text, then press <kbd>Ctrl</kbd>+<kbd>D</kbd> to signal end of input.

Example:
```bash {*}{lines: false}
$ sort
```
Type lines, then press Ctrl+D:
``` {*}{lines: false}
pear
apple
orange
```
Output:
``` {*}{lines: false}
apple
orange
pear
```

---

# 🐱 `cat` — Concatenate & Display Files

```bash {*}{lines: false}
$ cat file.txt
```

**Usage:**
- Display contents of a file
- Combine multiple files
- Read from keyboard if no file is given

Example:
```bash {*}{lines: false}
$ cat
```
(Type)
``` {*}{lines: false}
Hello world
This is live input
```
Press Ctrl+D to end → prints the same lines back.

---

# 🔤 `sort` — Sort Lines Alphabetically or Numerically

```bash {*}{lines: false}
$ sort names.txt
```

Input:
``` {*}{lines: false}
pear
apple
orange
```
Output:
``` {*}{lines: false}
apple
orange
pear
```

**Options:**
- `-r` → reverse order
- `-n` → numeric sort
- `-u` → unique results

---

# 🔁 `uniq` — Filter Out Repeated Lines

```bash {*}{lines: false}
$ uniq data.txt
```

Input:
``` {*}{lines: false}
apple
apple
pear
pear
banana
```
Output:
``` {*}{lines: false}
apple
pear
banana
```

**Often used after `sort`:**
```bash {*}{lines: false}
$ sort names.txt | uniq
```

---

# 🔍 `grep` — Search for Patterns

```bash {*}{lines: false}
$ grep "error" logfile.txt
```

Input:
``` {*}{lines: false}
Info: startup complete
Warning: low memory
Error: missing file
Error: failed to open
```
Output:
``` {*}{lines: false}
Error: missing file
Error: failed to open
```

**Regex example:**
```bash {*}{lines: false}
$ grep -E "^[A-Z].*end$" file.txt
```

---

# 🔢 `wc` — Word, Line, and Character Count

```bash {*}{lines: false}
$ wc file.txt
```
Output format: `lines  words  bytes  filename`

Example:
```bash {*}{lines: false}
$ wc sample.txt
```
Output:
``` {*}{lines: false}
3  8  42  sample.txt
```

Count only lines:
```bash {*}{lines: false}
$ wc -l file.txt
```

---

# 🔝 `head` — View the First Few Lines

```bash {*}{lines: false}
$ head -n 2 file.txt
```
Shows first 2 lines by default.

Input:
``` {*}{lines: false}
1
2
3
4
5

```
Output:
``` {*}{lines: false}
1
2
```

---

# 🔚 `tail` — View the Last Few Lines

```bash {*}{lines: false}
$ tail file.txt
```
Shows last 2 lines by default.

**Example:**
```bash {*}{lines: false}
tail -n 2 data.txt
```
Output:
``` {*}{lines: false}
line 9
line1 0
```

**Live updates:**
```bash {*}{lines: false}
tail -f /var/log/syslog
```

---

# 🔄 `tac` — Reverse `cat` (print file backwards)

```bash {*}{lines: false}
$ tac file.txt
```
Input:
``` {*}{lines: false}
line1
line2
line3
```
Output:
``` {*}{lines: false}
line3
line2
line1
```

---

# 🔁 `rev` — Reverse Characters in Each Line

```bash {*}{lines: false}
$ rev file.txt
```
Input:
``` {*}{lines: false}
hello
world
```
Output:
``` {*}{lines: false}
olleh
dlrow
```

---

# 🔢 `nl` — Number Lines

```bash {*}{lines: false}
$ nl file.txt
```
Input:
``` {*}{lines: false}
alpha
beta
gamma
```
Output:
``` {*}{lines: false}
     1  alpha
     2  beta
     3  gamma
```

---

# ✂️ `cut` — Extract Columns or Fields

```bash {*}{lines: false}
$ cut -d',' -f1,3 data.csv
```
Input (`data.csv`):
``` {*}{lines: false}
name,age,city
Alice,30,Paris
Bob,25,London
```
Output:
``` {*}{lines: false}
name,city
Alice,Paris
Bob,London
```

---

# 🔡 `tr` — Translate or Delete Characters

```bash {*}{lines: false}
$ tr 'a-z' 'A-Z' < names.txt
```
Input:
``` {*}{lines: false}
apple
banana
```
Output:
``` {*}{lines: false}
APPLE
BANANA
```

Delete digits:
```bash {*}{lines: false}
$ tr -d '0-9' < mixed.txt
```

---

# 🧩 Combine Commands — Pipelines

Combine commands with the **pipe operator (`|`)**.

```bash {*}{lines: false}
$ cat data.txt | sort | uniq
```
→ Display unique sorted lines

```bash {*}{lines: false}
$ grep "error" logfile.txt | wc -l
```
→ Count matching lines

---

# 🔗 Advanced Combinations

**Top 5 most frequent words:**
```bash {*}{lines: false}
$ tr -cs 'A-Za-z' '\n' book.txt | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | head -n 5
```

**Reverse numbered lines:**
```bash {*}{lines: false}
$ nl file.txt | tac | rev
```

---
---

# 📋 Summary

<style>
table {
  font-size: 1rem;
  line-height: 1.5;
}
th,
td {
  padding: 2px 6px;
}
</style>

| Command | Purpose |
|----------|----------|
| `cat` | View or combine files |
| `sort` | Sort lines |
| `uniq` | Remove duplicates |
| `grep` | Search patterns |
| `wc` | Count lines, words, bytes |
| `head` / `tail` | View start/end of files |
| `tac` | Reverse file lines |
| `rev` | Reverse text per line |
| `nl` | Add line numbers |
| `cut` | Extract columns |
| `tr` | Translate/delete characters |

---

# 🎯 Practice Idea

Try chaining:
```bash {*}{lines: false}
$ cat access.log | grep "404" | cut -d ' ' -f1 | sort | uniq -c | sort -nr | head
```
→ Top IPs causing 404 errors!
