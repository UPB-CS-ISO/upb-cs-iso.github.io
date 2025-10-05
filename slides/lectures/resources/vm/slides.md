---
layout: section
---
# Virtual Machine
*run an OS within an application*

---

# The Idea
*run an operating system within an application*

Why?
- Debug operating systems
- Run software that is not compatible with the OS your computer runs
- Securely share a server

Virtualization Software

- [VirtualBox](https://www.virtualbox.org/)
- [VMWare](https://www.vmware.com/)
- [QEMU](https://www.qemu.org/)

---

# Simulation / Emulation
simulate all the hardware - very slow

<img src="./vmm_simulation.svg" class="rounded">

QEMU

- is able to simulate most of the available architectures
  - most used `x86`, `AMD64`, `arm`, `aarch64`, `powerpc`, `risc-v`

---
layout: two-cols
---

# Virtualization
use a part of the avalable hardware, emulates as if the system was running alone on the hardware

<style>
.two-columns {
    grid-template-columns: 6fr 3fr;
}
</style>

<img src="./vmm_emulation.svg" class="rounded">

- Requires VT-x (Intel), ... (AMD) and ... (ARM) enabled
- The guest OS has to be built for the same CPU architecture as the host OS
  - *Apple Silicon* is ARM64 (`aarch64`)

> Make sure you download a Linux version for `arm64` or `aarch64`

:: right ::

## Hypervisors

<div align="center">

VMWare

<img src="./vmware.png" class="w-20">

<br>

VirtualBox

<img src="./virtualbox.svg" class="w-20">

<br>

QEMU \
via `hyper-v`, `KVM` or TODO macOS

<img src="./qemu.png" class="w-30">

</div>

---
---
# Virtual Box
A Virtual Box Machine Settings Example
