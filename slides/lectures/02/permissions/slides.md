---
layout: section
---
# File Types and Permissions

---
class: text-sm
---
# 🗂️ File Types in Linux

Linux treats everything as a **file**, but there are several types:

| Symbol | Type | Description | Example |
|:-------|:------|:-------------|:----------|
| `-` | 📄 **Regular file** | Text, binary, images, executables | `/etc/passwd`, `/bin/ls` |
| `d` | 📁 **Directory** | Contains other files or directories | `/home`, `/usr/bin` |
| `l` | 🔗 **Symbolic link** | Shortcut or reference to another file | `/lib64 → /usr/lib64` |
| `c` | ⚙️ **Character device** | Device file that handles data character by character | `/dev/tty`, `/dev/null` |
| `b` | 💾 **Block device** | Device file that handles data in blocks | `/dev/sda`, `/dev/loop0` |
| `p` | 🚇 **Named pipe (FIFO)** | Used for inter-process communication | Custom IPC files |
| `s` | 🌐 **Socket** | Used for network or inter-process communication | `/run/docker.sock` |


---
---
# Read, Write, Execute

Each file or directory has three types of permissions:

| Symbol | 🔢 Octal | Meaning | 🧾 For Files | 📁 For Folders |
|:------|:-----:|:--------|:-------------------------------|:--------------------------------|
| `r`   | 4     | 📖 Read | View file contents | List files inside the folder |
| `w`   | 2     | ✏️ Write | Modify or delete the file | Create, delete or rename files inside |
| `x`   | 1     | ⚙️ Execute | Run the file (if executable) | Enter the folder (`cd`) and access contents |

Example

```bash {none|1|2|3|all}
$ ls -l
drwxr-xr-x  2 alice alice 4096 Oct 15 09:00 Documents
-rw-r--r--  1 alice alice  123 Oct 14 20:30 notes.txt
```

---

# Read, Write, Execute for ...
to whom do these apply

<div grid="~ cols-2 gap-5">

<div>

| Group | Applies To |
|:------|:------------|
| **u** | 👤 User (owner) |
| **g** | 👥 Group |
| **o** | 🌍 Others (everyone else) |

</div>

<img src="./permissions.png" style="background-color: white; padding: 5px;" class="rounded">

</div>

### Rules

<v-clicks>

- each 📄 file has an 👤 owner
- each 📄 file belongs to a 👥 group
- there are **other** users that are not the owner of the file and do not belong to the file's group

</v-clicks>
