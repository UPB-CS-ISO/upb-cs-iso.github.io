---
layout: section
---
# Terminal &  Shell


---
---
# The *Classic* Terminal

<img src="./terminal.svg" class="rounded" style="background-color: white; padding: 5px">

---

# The *Real* Terminal
Text Mode Linux

<div grid="~ cols-[5fr_2fr] gap-5">

<div>

<img src="./virtual_teletype.svg" class="rounded" style="background-color: white; padding: 5px">

</div>

<div>

````md magic-move
``` {*}{lines: false}
[PID 1]  systemd (called init)
│     # The first user-space
│     # process started by the kernel
│     ...
```

``` {*}{lines: false}
[PID 1]  systemd (called init)
│     # The first user-space
│     # process started by the kernel
|     ...
└── [PID 10+]  agetty
```

``` {*}{lines: false}
[PID 1]  systemd (called init)
│     # The first user-space
│     # process started by the kernel
|     ...
└── [PID 10+]  agetty
    └── [PID 20+]  agetty @ /dev/tty1
                # Login on tty1
```

``` {*}{lines: false}
[PID 1]  systemd (called init)
│     # The first user-space
│     # process started by the kernel
│     ...
└── [PID 10+]  agetty
    ├── [PID 20+]  agetty @ /dev/tty1
    ├── [PID 21+]  agetty @ /dev/tty2
    ├── [PID 22+]  agetty @ /dev/tty3
    ├── [PID 23+]  agetty @ /dev/tty4
    ├── [PID 24+]  agetty @ /dev/tty5
    └── [PID 25+]  agetty @ /dev/tty6
```

``` {*}{lines: false}
[PID 1]  systemd (called init)
│     # The first user-space
│     # process started by the kernel
│     ...
└── [PID 10+]  agetty
    ├── [PID 20+]  agetty @ /dev/tty1
    ├── [PID 21+]  agetty @ /dev/tty2
    ├── [PID 22+]  agetty @ /dev/tty3
    ├── [PID 23+]  agetty @ /dev/tty4
    ├── [PID 24+]  agetty @ /dev/tty5
    ├── [PID 25+]  agetty @ /dev/tty6
    └── [PID 8+]  gdm/sddm/lightdm
               # Graphical Login
```
````

<v-click>

`ALT` + `Fn` to change the terminal

</v-click>

</div>

</div>

---

# The *Virtual* Terminal
Graphical Mode Linux

<div grid="~ cols-[5fr_2fr] gap-5">

<div>

<img src="./terminal_emulator.svg" class="rounded" style="background-color: white; padding: 5px">

*Xorg* or *Wayland* (UI *servers*) own terminal `/dev/tty1` (print debug) and draw in `/dev/video` (frame buffer)

<v-click>

</v-click>

</div>

<div>

<v-clicks>

### Switch Modes

`CTRL` + `ALT` + `Fn` => text mode

`ALT` + `Fn+1` => graphical mode

</v-clicks>

<v-click>

### Console Application

</v-click>

<v-clicks>

- run in a terminal emulator (`kitty`, `ptyxis`, `alacritty`, ...)
- the terminal emulator inherits `/dev/tty1`
- provides a *pseduo terminal*

</v-clicks>

</div>

</div>

---

# Terminal Emulator
Provide pseudo-terminal

<div grid="~ cols-[3fr_5fr] gap-5">

<div>

<v-click>

`kitty`, `ptyxis`, `alacritty`, ...

</v-click>


<v-clicks>

- inherit `/dev/tty1` (from *Wayland*)
- create a *pseudo-terminal* master (open `/dev/ptmx`)
- draw through *Wayland* output from `/dev/pts/1`
- send input from Wayland to `/dev/pts/1`

</v-clicks>

<v-click>

`bash`, `sh`, `zsh`, ...
- owns the *pseudo-terminal* slave `/dev/pts/1`

</v-click>


</div>

<div align="right">

<v-switch>

<template #1>

<img src="./virtual_teletype.svg" class="rounded" style="background-color: white; padding: 5px">

</template>

<template #0>

<img src="./pseudo_terminal.svg" class="rounded" style="background-color: white; padding: 5px">

</template>

<template #-1>

<img src="./pseudo_terminal.svg" class="rounded" style="background-color: white; padding: 5px">

</template>

<template #-2>

<img src="./pseudo_terminal.svg" class="rounded" style="background-color: white; padding: 5px">

</template>

<template #-3>

<img src="./pseudo_terminal.svg" class="rounded" style="background-color: white; padding: 5px">

</template>

<template #-6>

<img src="./virtual_teletype.svg" class="rounded" style="background-color: white; padding: 5px">

</template>

</v-switch>

</div>


</div>

---
---
# Shell
Operating System Interaction

<center>

## <img src="./bash.png" class="w-20 rounded"> *A process who's main purpose is to allow the interaction with the Operating System*

</center>

<br>

<div grid="~ cols-2 gap-5">

<div>

<v-clicks>

- `cmd`
- `powershell`
- `bash` , `sh` , `zsh`
- `explorer.exe`
- `nautilus`
- `finder`

</v-clicks>

</div>

<div>

<v-clicks>

- `mc`
- `nnn`
- `yazi`
- `Total Commander`
- `Control Panel`
- `Settings`

</v-clicks>

</div>

</div>

---
---
# Foreground and Background Process
the terminal and shell define this

<center>
<img src="./fg_and_bg.svg" class="w-170 rounded" style="background-color: white; padding: 5px;">
</center>

---

# Make a Job
a background process

<img src="./fg_and_bg.svg" class="w-100 absolute top-70 left-140 rounded" style="background-color: white; padding: 5px;">

<v-clicks>

- run the command (`$ ...`)
  - ⚠️ make sure you redirect the output as it might write to the same terminal
- press `CTRL`+`Z` (sends `SIGTSTP` - 🙄 process might ignore it)
- find the job `ID` (`$ jobs`)
- run `$ bg %ID`
- run `$ jobs` to verify if it still runs

</v-clicks>

<v-click>

## Bring it back in foreground

- run `$ fg %ID`

</v-click>
