---
theme: seriph
# background: https://source.unsplash.com/collection/94734566/1920x1080
class: text-center
highlighter: shiki
lineNumbers: true
info: |
  ## Introduction to Operating Systems
drawings:
  persist: false
defaults:
  foo: true
transition: slide-left
title: ISO - 01 - Introduction
mdc: true
layout: cover
themeConfig:
  primary: '#004d65'
download: true
exportFilename: iso-01
background:
---

# Introduction
Lecture 1

---

# Welcome
to the *Internal Strcuture of Operating* class

## You will learn, understand and experiment

- learn how operating systems work
- understand how an embedded operating system works (Tock)
- *understand how a new generation research oriented operating system works (Redox OS)*
- understand how a production grade operating system works (Linux)
- write code using the Linux and Tock architecture language that boots a computer
- experiment with building your own small operating system

## We expect
- to come to class
- ask a lot of questions

<!-- Team -->
---
src: ./team.md
---

---
src: ./admin.md
---

---
---
# Notation

- *name* - this is a name
- **important** - this is important
- `command` - this is a command or a part of a source code


Code
```bash
$ command arguments
this is what the command wrote
$ command2 arguments
```

> `$` sigifies that the user can write a command, but is **not part of the command**.

---
layout: section
---
# *If you can't explain it simply, you don't understand it well enough*
Albert Einstein

---
src: ../resources/os/slides.md
---

---
src: ../resources/vm/slides.md
---

---
src: ../resources/distributions/slides.md
---

---
---
# Conclusion
we talked about

- Types of OS kernel
- Preemptive and cooperative kernel
- Memory management and address space
- Execution Contexts
- Linux and Tock architecture
