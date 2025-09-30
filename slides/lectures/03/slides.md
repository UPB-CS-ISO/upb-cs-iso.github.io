---
theme: seriph
# background: https://source.unsplash.com/collection/94734566/1920x1080
class: text-center
highlighter: shiki
lineNumbers: true
info: |
  ## Introduction to Operating Systems Internals
drawings:
  persist: false
defaults:
  foo: true
transition: slide-left
title: SISO - 03 - Processes
mdc: true
layout: cover
themeConfig:
  primary: '#b51a00'
download: true
exportFilename: siso-03
background:
---

# Processes
Lecture 3

---
---
# Processes

- Process and threads
- Context switching
- Blocking and waking up
- Process context

---
---
# Process
groups together resources

- An address space
- One or more threads
- Opened files
- Sockets
- Semaphores
- Shared memory regions
- Timers
- Signal handlers

Many other resources and status information, all stored in the **Process Control Block** (*PCB*)

---
---
# Threads

A thread is the basic unit that the kernel process scheduler uses to allow applications to run the CPU. A thread has the following characteristics:

- Each thread has its own stack and together with the register values it determines the thread execution state
- A thread runs in the context of a process and all threads in the same process share the resources
- The kernel schedules threads not processes and user-level threads (e.g. fibers, coroutines, etc.) are not visible at the kernel level

---
src: ./tock.md
---

---
src: ./linux.md
---

---
---
# Conclusion
we talked about

- Process and threads
- Context switching
- Blocking and waking up
- Process context
