---
layout: section
---
# Signals
notifications for the processes

---

# Signals
✉️ the OS sends a message to a process

- a messages send from the OS to a process
- a number
- may have an *extra payload number*

List of signals
```tex {none|1|1-9|10-|all}{lines: false}
$ kill -l # sends a signal, does not kill a process
 1) SIGHUP       2) SIGINT       3) SIGQUIT      4) SIGILL
 5) SIGTRAP      6) SIGABRT      7) SIGBUS       8) SIGFPE
 9) SIGKILL     10) SIGUSR1     11) SIGSEGV     12) SIGUSR2
13) SIGPIPE     14) SIGALRM     15) SIGTERM     16) SIGSTKFLT
17) SIGCHLD     18) SIGCONT     19) SIGSTOP     20) SIGTSTP
21) SIGTTIN     22) SIGTTOU     23) SIGURG      24) SIGXCPU
25) SIGXFSZ     26) SIGVTALRM   27) SIGPROF     28) SIGWINCH
29) SIGIO       30) SIGPWR      31) SIGSYS      34) SIGRTMIN
35) SIGRTMIN+1  36) SIGRTMIN+2  37) SIGRTMIN+3  38) SIGRTMIN+4
39) SIGRTMIN+5  40) SIGRTMIN+6  41) SIGRTMIN+7  42) SIGRTMIN+8
43) SIGRTMIN+9  44) SIGRTMIN+10 45) SIGRTMIN+11 46) SIGRTMIN+12
...             64) SIGRTMAX
```

---

# Handling Signals
override the default signal handler

<div grid="~ cols-2 gap-5">

<div>

When a ✉️ signal arrives, the process will
<v-clicks depth="2">

1. 🛑 stop whatever its doing
2. 🚥 executes
    - (*if no signal handler is registered*) the **default action** OR
    - the signal handler and continues its task


</v-clicks>

<v-after>
```bash {*}{lines: false}
trap function_name SIGNAL
```

```c {*}{lines: false}
#include <signal.h>

sighandler_t signal(int sigal_number, f sighandler_t);

int signal_handler(int signal_number) {
  // execute this when a signal arrives
}
```
</v-after>


</div>

<div>

```bash {1,11-14|none|1,3-6,16|16|1,3-6,8-9|all}{at:'-3'}
#!/bin/bash

# the signal handler
function no_interruptions_please () {
    echo "No interruptions please"
}

# register the signal handler
trap no_interruptions_please SIGINT

while true; do
  echo "working"
  sleep 1
done

# exit (default action for SIGINT)
```

</div>

</div>

---
---
# 🚥 Default Signal Actions

| Default Action        | Description |
|:----------------------|:-------------|
| **Terminate**         | Immediately ends the process. Can usually be caught or ignored. |
| **Terminate (Unblockable)** | Ends the process and **cannot** be caught, blocked, or ignored (`SIGKILL`, `SIGSTOP`). |
| **Core Dump**         | Terminates the process **and creates a core dump** for debugging. |
| **Stop**              | Suspends the process until it receives `SIGCONT`. |
| **Stop (Unblockable)**| Suspends the process, and **cannot** be caught or ignored. |
| **Continue**          | Resumes a process that was previously stopped. |
| **Ignore**            | Signal is discarded; no effect on the process. |



---
---
# ✉️ Linux Signals — Default Actions (1/2)

<style>
table {
  font-size: 0.7rem;
  line-height: 1.7;
  border-spacing: 0 0.1rem;
}
th, td {
  padding: 0.1rem 0.3rem;
}
th {
    font-weight: bold;
}
</style>

| #  | Signal        | Default Action         | Description |
|:--:|:--------------|:----------------------|:-------------|
| 1  | `SIGHUP`      | Terminate              | Hangup detected on controlling terminal |
| 2  | `SIGINT`      | Terminate              | Interrupt from keyboard (Ctrl+C) |
| 3  | `SIGQUIT`     | Core Dump              | Quit from keyboard (Ctrl+\\) |
| 4  | `SIGILL`      | Core Dump              | Illegal instruction |
| 5  | `SIGTRAP`     | Core Dump              | Trace/breakpoint trap |
| 6  | `SIGABRT`     | Core Dump              | Abort signal from `abort()` |
| 7  | `SIGBUS`      | Core Dump              | Bus error (bad memory access) |
| 8  | `SIGFPE`      | Core Dump              | Floating-point exception |
| 9  | `SIGKILL`     | Terminate (Unblockable) | Kill signal |
| 10 | `SIGUSR1`     | Terminate              | User-defined signal 1 |
| 11 | `SIGSEGV`     | Core Dump              | Invalid memory reference |
| 12 | `SIGUSR2`     | Terminate              | User-defined signal 2 |
| 13 | `SIGPIPE`     | Terminate              | Broken pipe |
| 14 | `SIGALRM`     | Terminate              | Timer signal from `alarm()` |
| 15 | `SIGTERM`     | Terminate              | Termination signal |
| 16 | `SIGSTKFLT`   | Terminate              | Stack fault on coprocessor (unused) |

---
---
# ✉️ Linux Signals — Default Actions (2/2)

<style>
table {
  font-size: 0.7rem;
  line-height: 1.7;
  border-spacing: 0 0.1rem;
}
th, td {
  padding: 0.1rem 0.3rem;
}
th {
    font-weight: bold;
}
</style>

| #  | Signal        | Default Action         | Description |
|:--:|:--------------|:----------------------|:-------------|
| 17 | `SIGCHLD`     | Ignore                 | Child stopped or terminated |
| 18 | `SIGCONT`     | Continue               | Continue if stopped |
| 19 | `SIGSTOP`     | Stop (Unblockable)     | Stop process |
| 20 | `SIGTSTP`     | Stop                   | Stop from terminal (Ctrl+Z) |
| 21 | `SIGTTIN`     | Stop                   | Background read from tty |
| 22 | `SIGTTOU`     | Stop                   | Background write to tty |
| 23 | `SIGURG`      | Ignore                 | Urgent condition on socket |
| 24 | `SIGXCPU`     | Core Dump              | CPU time limit exceeded |
| 25 | `SIGXFSZ`     | Core Dump              | File size limit exceeded |
| 26 | `SIGVTALRM`   | Terminate              | Virtual timer expired |
| 27 | `SIGPROF`     | Terminate              | Profiling timer expired |
| 28 | `SIGWINCH`    | Ignore                 | Window resize signal |
| 29 | `SIGIO`       | Terminate              | I/O now possible |
| 30 | `SIGPWR`      | Terminate              | Power failure |
| 31 | `SIGSYS`      | Core Dump              | Bad system call |
| 34–64 | `SIGRTMIN–SIGRTMAX` | Terminate     | Real-time signals (implementation-defined) |
