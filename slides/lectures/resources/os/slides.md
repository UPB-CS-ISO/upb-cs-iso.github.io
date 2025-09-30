---
layout: section
---
# Operating System
the purpose of an OS


---
layout: two-cols
---
# Operating System
the main role

<style>
.two-columns {
    grid-template-columns: 2fr 3fr;
}
</style>

**Allow Portability**
- provides a hardware independent API
- applications should run on any hardware

**Resources Management and Isolation**
- allow applications to access resources
- prevent applications from accessing hardware directly
- isolate applications

:: right ::

<img src="./os.svg" class="w-120 rounded" />

---
layout: two-cols
---
# Desktop and Server Operating Systems
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
layout: two-cols
---
# Embedded Operating Systems
<div></div>

<style>
.two-columns {
    grid-template-columns: 2fr 3fr;
}
</style>

**Actions**
- Simple *applications*
- use the *Processor* and *Accelerators* (Crypto Engines, Neural Engine, etc)

**Peripheral**
- provide a hardware independent API
- prevent processes from accessing the peripheral

*usually* the applications and the kernel are compiled together into a **single binary**

:: right ::

<img src="./embedded_os.svg" class="w-120 rounded" />

---
---
# The OS Stack

kernel / libc / libraries / basic tools (commands) / applications

<div align="center">
  <img src="./os_stack.svg" class="rounded w-140">
</div>

---
---
# Application Examples

| What it does | Windows | Linux | macOS |
|-|-|-|-|
| Desktop | `explorer.exe` | [`nautilus`](https://gitlab.gnome.org/GNOME/nautilus) | `Finder` |
| Applications | `taskbar.exe` | [`gnome-shell`](https://gitlab.gnome.org/GNOME/gnome-shell) | `Dock` |
| Files | `explorer.exe` | [`nautilus`](https://gitlab.gnome.org/GNOME/nautilus) | `Finder` |
| Settings | `start ms-settings:` | [`gnome-control-center`](https://gitlab.gnome.org/GNOME/gnome-control-center) | `System Settings` |
| Commands | `cmd.exe` or `powershell.exe` | `bash` or `zsh` | `bash` or `zsh` |
| Documents | `powerpoint.exe` | [`libreoffice`](https://www.libreoffice.org) | `Pages` |
| Edit Code | `code.exe` | `code ` | `code` |
| Terminal | *handled by the OS* | [`ptyxis`](https://gitlab.gnome.org/chergert/ptyxis) | `Terminal` |

---
---
# Where can we see the OS

<v-switch>
  <template #1>

  <div align="center">
    <img src="./linuxboot.png" class="w-120">

  <img src="../distributions/linux.png" class="w-10"> During Boot
  </div>

  </template>
  <template #2>

  <div align="center">
    <img src="./bluescreen.png" class="w-120">

  <img src="./windows.jpg" class="rounded w-10"> Blue Screen
  </div>

  </template>
  <template #3>

  <div align="center">
    <img src="./kernelpanic.jpg" class="w-120">

  <img src="../distributions/linux.png" class="w-10"> Linux Kernel Panic
  </div>
  </template>
  <template #4>

  <div align="center">
    <img src="./kernelpanic_macos.jpg" class="w-120">

  <img src="../distributions/macos.png" class="w-10"> macOS Kernel Panic
  </div>

  </template>
  <template #5>

  | During Boot | Blue Screen (BSoD) | Kernel Panic |
  |-|-|-|
  | <img src="./linuxboot.png" class="w-60"> | <img src="./bluescreen.png" class="w-60"> | <img src="./kernelpanic.jpg" class="w-60"> <br> <img src="./kernelpanic_macos.jpg" class="w-60"> |

  </template>
  </v-switch>



---
---
# The Kernel

- is a collection of applications that run in priviliged mode
- one *main application* and several *utilities apps*


<v-switch>
  <template #1>

  <div align="center">
    <img src="./kernel_times.png" class="w-100">

  <img src="./windows.jpg" class="rounded w-10">Windows Task Manager
  </div>

  </template>
  <template #2>
  
  <div align="center">
    <img src="./htop.png" class="w-100">
    <img src="../distributions/linux.png" class="w-10">

  `htop`
  </div>
  </template>
</v-switch>




