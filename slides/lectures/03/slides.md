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
title: ISO - 03 - Processes
mdc: true
layout: cover
themeConfig:
  primary: '#004d65'
download: true
exportFilename: iso-03
background:
---

# Processes
Lecture 3

---
---
# Bibliography

---
layout: two-cols
---
# Operating System
abstractions

<style>
.two-columns {
    grid-template-columns: 2fr 3fr;
}
</style>

**Actions**
- *Applications*
- use the *Processor* and *Accelerators* (GPU, Neural Engine, etc)

**Data**
- everything is a file
- peripherals are viewed as files (*POSIX*)
  - `/dev/input/keyboard` - keyboard
  - `/dev/fb` - screen (framebuffer)
  - `/dev/sda` - Disk Drive A (first)

:: right ::

<img src="./abstractions.svg" class="w-120 rounded" />

---
src: ./process/slides.md
---

---
src: ./fd/slides.md
---

---
src: ./shell/slides.md
---

---
---
# Conclusion
we talked about

- Process and threads
- Context switching
- Blocking and waking up
- Process context
