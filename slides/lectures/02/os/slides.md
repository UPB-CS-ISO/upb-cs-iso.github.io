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
# System Call
the OS API

<style>
.two-columns {
    grid-template-columns: 2fr 3fr;
}

.overlap{
    top: -500px;
    position: relative;
    left: 190px;
    border: 1px dashed;
    padding: 3px;
}
</style>

**accessing hardware** can be **performed** only **by the kernel**

The application:

<v-clicks>

1. puts values in the registers / stack
2. triggers an exception 
   - `svc` instruction for ARM 
   - `sysenter` instruction for x86

</v-clicks>

The kernel:

<v-clicks>

1. looks at the registers and determines what the required action is
2. performs the action
3. puts the return values in registers / stack

</v-clicks>

:: right ::

<img src="./system_call.svg" class="w-120 rounded" />

<v-click at="-3">
<img src="./exceptions.svg" class="w-80 rounded overlap" />
</v-click>
