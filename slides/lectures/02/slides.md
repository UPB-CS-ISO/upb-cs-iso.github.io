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
title: SISO - 01 - System Calls
mdc: true
layout: cover
themeConfig:
  primary: '#b51a00'
download: true
exportFilename: siso-02
background:
---

# System Calls
Lecture 2

---
---
# Bibliography
for this section

1. **Alexandru Radovici, Ioana Culic**, *Getting Started with Secure Embedded Systems*
    - Chapter 3 - *The Tock system architecture*

2. **Daniel P. Bovet, Marco Cesati**, *Understanding the LINUX KERNEL*
    - Chapter 10 - *System Calls*

---
---

# System Calls

- What is a system call?
- What is vDSO?
- How a system call is performed?
- Tock system calls
- Linux system calls



---
src: ./os/slides.md
---

# Questions

- Can we avoid system calls in some places?
- How many system call do we export?
- How do we switch privilege modes?
- How do we share data?
- How do we report the result?
- How do we make sure the application does not share wrong memory addresses?

---
src: ./vdso/slides.md
---

---
src: ./tock/slides.md
---

---
src: ./linux/slides.md
---

---
---
# Conclusion
we talked about

- What is a system call?
- What is vDSO?
- How a system call is performed?
- Tock system calls
- Linux system calls
