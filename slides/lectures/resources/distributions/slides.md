---
layout: section
---
# Distribution
what poeple think an OS is

---
---
# UNIX

<div grid="~ cols-2 gap-5">

<div>

- allows several users
  - connect to the mainframe using several terminals
  - run several programs in paralel
- is open source up to version *UNIX System III*

</div>

<div>
Ken Thompson & Dennis Ritchie (Bell Labs, AT&T)

TODO image

- mainframes provide a lot of hardware
  - needs to be shared by several users
  - each user has a terminal connected to the mainframe
- writes UNIX

</div>

</div>

---
---
# The POSIX Standard
Portable Operating System Interface

<div grid="~ cols-2 gap-5">

<div>

Defines:
  - how an OS should work (*everything is a file*)
  - how the C API looks like (ex `stdio.h`, `unistd.h`)
  - what commands (basic software) should be available

Allows:
  - applications to be portable
    - *in C/C++ source code format only*
 ->

When UNIX became closed source ->

</div>

<div>


UC **Berkely Software Distribution (BSD)**

| FreeBSD | Darwin | OpenBSD | NetBSD | 
|-|-|-|-|
| <img src="./freebsd.png" class="w-20"> | <img src="./macos.png" class="w-20">| <img src="./openbsd.png" class="w-20">| <img src="./netbsd.png" class="w-20">|

New kernels

| **Minix** | **Linux** |
|-|-|
| <img src="./minix.png" class="w-20"> | <img src="./linux.png" class="w-20"> |

</div>

</div>

---
---

<img src="./unix_tree.svg">

---
---
# The Linux Kernel

<div grid="~ cols-2 gap-5">

<div>

- is the actual operating system
- invisible to the user
  - except when it boots 🏁 and panics 😱
- 25 mil line of code (LOC)
- manages all the system resources


<div align="center">

  <img src="./linux.png" class="w-40">

  Meet *Tux*

</div>

</div>

<div>

*Linus Torvalds* (University of Helsinky)

<div align="center">
  <img src="./linus_torvalds.jpeg" class="w-50">
</div>

- did not agree with A Tannenbaum about how Minix should work
- wrote this own 👨‍💻 *POSIX compliant* OS, called it *Linu**x***
</div>

</div>
---
---
# GNU Software


<div grid="~ cols-2 gap-5">

<div>

Basic *UNIX* commands and software **rewritten**
- startup software (`init`)
- most of what we call today [*coreutils*]()
- C Compiler -> GNU Compiler Collection ([`gcc`](https://gcc.gnu.org))
  - C and C++ standard libraries
  - `flex` / `yacc`
- X Windows Systsem ([`x11`](https://www.x.org/wiki/))

**Modern Software**
- *coreutils* are being rewritten in Rust ([*uutils*](https://uutils.github.io))
- `gcc` is being slowly replaced by [LLVM](https://llvm.org)
- `x11` is being replaced by [Wayland](https://wayland.freedesktop.org)

</div>

<div>

*Richard Stallman* (MIT)


<div align="center">
  <div grid="~ cols-2 gap-5">
  <img src="./richard_stallman.jpg" class="w-60">
     <img src="./gnu.png" class="w-30">
  </div>
</div>

His vision is that software should be:
- free to share and modify
- [GPL](https://www.gnu.org/licenses/gpl-3.0.en.html) and [LGPL](https://www.gnu.org/licenses/lgpl-3.0.en.html) licenses
  - allows selling and modifying 
  - modified code must be relicensed under GPL
</div>

</div>

---
---
# GNU/Linux = ❤️
GNU Software on top of the Linux kernel

<img src="./os_timeline.png" class="rounded w-170">

- GNU Hurd 👷🚧🏗️ (*work in progress for many many years*)
- The Linux kernel 🐧 still is the *temporary replacement*


---
---
# Which is the most used Linux distribution?

<v-click>
TODO image
</v-click>

---
---
# Base Distributions
The main Linux distributions that started it

*Took the Linux kernel, added the GNU libraries and tools and wrote a package manager to install software*

| | Name | Tagline | Package Format | Package Manager | Release Year |
|-|-|-|-|-|-|
| <img src="./slackware.png" class="w-10"> | [Slackware](http://www.slackware.com) | *Oldest distribution* | `tgz` | `pkgtool` | 1993 |
| <img src="./debian.png" class="w-10">| [Debian](https://www.debian.org) | *Free Software* | `deb` | `apt` / `dpkg` | 1993 |
| <img src="./red-hat.svg" class="w-10">| [Red Hat Linux](https://www.redhat.com) | *Enterprise* | `rpm` | `dnf` / `rpm` | 1995 |

These are the base for most of the modern distributions that we have today.

---
---
# Modern Distributions

| | Name | Tagline | Parent | Package Format | Package Manager | Release Year |
|-|-|-|-|-|-|-|
| <img src="./opensuse.png" class="w-10"> | [SUSE Linux](https://www.suse.com) | *Enterprise-grade Linux* | *Originally Slackware, later RPM-based* | `rpm` | `zypper`, `yast` | 1994 |
| | [ArchLinux](https://archlinux.org) | *Minimal Linux* | N/A | `pkg.tar.zst` | `pacman` | 2002 |
| <img src="./fedora.png" class="w-10"> | [Fedora](https://www.redhat.com) | *Desktop Linux* | *Red Hat Linux renamed* | `rpm` | `dnf` / `rpm` | 2003 |
| <img src="./ubuntu.png" class="w-10"> | [Ubuntu](https://www.ubuntu.org) | *Linux for Humans* | Debian | `deb` and `snap` | `apt` / `dpkg` and `snap` | 2004 |
| <img src="./opensuse.png" class="w-10"> | [openSUSE](https://www.opensuse.org) | *Stable, usable Linux for everyone* | SUSE Linux | `rpm` | `zypper`, `rpm` | 2005 |

---
---
# Non GNU Distributions
They use Linux, but most of the software is not from GNU

| | Distribution | Tagline | Parent | Package Format | Package Manager | Release Year |
|-|-|-|-|-|-|-|
| <img src="./slackware.png" class="w-10"> | [Android](https://source.android.com) | *Mobile Linux platform* | Linux kernel (AOSP) | `.apk` (only Android apps) | AOSP tools (not typical package manager) | 2008 |
| <img src="./chromeos.png" class="w-10"> | [ChromeOS](https://chromeos.google) | *The cloud-first OS* | Gentoo Linux | Custom (`.crx`, `.apk`, others) | `portage`, `cros_sdk`, Flatpak (via Crostini) | 2011 |
