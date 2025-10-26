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

1. **Brian Ward**, *How LINUX Works*, 3<sup>rd</sup> Edition, No Starch Press, 2021
    - Chapter 6 - *How User space Starts*
      - Sections 6.1 - 6.6
    - Chapter 8 - *A Closer Look at Processes and Resources*
      - Sections 8.1 - 8.3
2. **Razvan Deaconescu, Razbvan Rughinis, Mihai Carabas, Alexandru Radovici**, *Utilizarea Sistemelor de Operare*, Printech 2021, [download](https://github.com/systems-cs-pub-ro/carte-uso/releases/download/uso-ed1-2021/uso.pdf)
    - Capitolul 6 - *Procese*

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
src: ./signals/slides.md
---

---
---
# Conclusion
we talked about

- Process
- PID
- Process Loading
- Process States
- `fork` and `exec`
- How signals work
- How Linux starts
