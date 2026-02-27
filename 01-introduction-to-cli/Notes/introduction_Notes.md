✅ Day 1 Completed 

---

# 🧠 PHASE 1 — WHAT IS LINUX REALLY?

Before touching commands, you must understand what you are controlling.

We build foundations correctly — or everything collapses later.

No skipping. No shortcuts.

---

# 1️⃣ What Is Linux?

Linux is:

- ❌ Not the full Operating System 
- ❌ Not Ubuntu 
- ❌ Not a Terminal 
- ❌ Not a Desktop Environment 

Linux **is the Kernel**.

defination :- Linux is a kernel that manages hardware resources and provides core system services like process management, memory management, filesystem control, and security for an operating system.
---

## 🧩 What Is a Kernel?

The Kernel is the core program of the operating system. 

It:

- Manages CPU scheduling 
- Manages memory (RAM) 
- Controls disk and filesystems 
- Handles device drivers 
- Manages processes 
- Enforces permissions 
- Handles networking 

Everything else runs **on top of it**.

Without the kernel, nothing works.

# Kernel Version

Kernel version refers to: The version of the Linux kernel currently running in memory.


# COMMANDS
 
 1.  uname -a    :- it shows all details in kernel version.....
 2.  uname -r    :- shows running version of kernel....
 3.  rpm -q kernel :- shoes installed kernel version....

🔎 Example (on Red Hat Enterprise Linux) :-  < 5.14.0-362.8.1.el9_3.x86_64 >

   🧩 Breakdown
 Part	      Meaning
5.14.0	Base Linux kernel version
362.8.1	RHEL patch/build number
el9_3	Built for RHEL 9.3
x86_64	64-bit architecture

Q - Why can two RHEL 10 servers have different kernel versions?
 
Strong answer:

"Because kernel packages can be updated independently of the OS version. 
 One server may have installed a newer kernel, may not have rebooted yet, 
 or may intentionally be version-locked for stability.
 Multiple kernels can also coexist, with only one active at boot."

# Default Kernel Set in GRUB (Bootloader) - with the help of this we can switch to other installed kernel version in system but onky one kernel will be active at once. 
  Now we enter boot-level understanding.

To check default kernel entry:
         grubby --default-kernel      Or:            grubby --info=ALL 

On RHEL-based systems, grubby manages GRUB entries.

check which index is default:  ``` grubby --default-index ```

## Why This Matters (Production Scenario)

Imagine........................
You updated kernel.
You rebooted.
But system still booted old kernel.

Why? Because:-1.  Default boot entry was not updated,2. reboot is not done properly,3. some one have set versionlock for kernel and setted through grubby..


# Distro Version.
 there are many diffent distros are which are build on linux open source kernel ex :- ubuntu rhel and other families of linux,
 basically these are the diffrent versions of linux operating system.

``` bash 
cat /etc/os-release 
```

this command will show distro type and versions and some more detail...


---


# 2️⃣ Linux System Architecture

Linux follows a layered structure:

```
+----------------------+
|     Applications     |
+----------------------+
|        Shell         |
+----------------------+
|   System Libraries   |
+----------------------+
|        Kernel        |
+----------------------+
|       Hardware       |
+----------------------+
```

---

## 🔎 Command Execution Flow

When you type:

```bash
ls
```

Internally, this happens:

1. The Shell receives the command 
2. The Shell asks the Kernel to create a process 
3. The Kernel schedules CPU time 
4. The Kernel reads the filesystem 
5. The output is returned to the terminal 

You are **never directly controlling hardware**.

You are always interacting through the **Kernel**.

This understanding is critical for debugging.

---

# 3️⃣ What Is a Distribution?

Linux = Kernel 

Ubuntu / RHEL / Debian = Distributions 

A Distribution includes:

- Linux Kernel 
- Package Manager 
- Default System Utilities 
- Configuration Standards 
- Desktop (optional) 

---

## 💼 Common Distributions in DevOps

- Ubuntu 
- RHEL 
- Rocky Linux 
- CentOS 

Most production servers run one of these.

---

# 4️⃣ What Is the Shell?

The Shell is:

- A Command Interpreter 
- The interface between User and Kernel 

Most common shell:

```bash
bash
```

When someone says:

> “Learn Linux”

What they actually mean is:

Learn to control the Linux system using **bash and core utilities**.

---

# 🎯 Why This Matters in DevOps

Linux powers:

- Docker containers 
- Kubernetes nodes 
- Cloud Virtual Machines 
- CI/CD runners 
- Production servers 

If Linux fundamentals are weak:

You cannot debug production systems.

---

# 🧨 Core System-Level Model (Memorize This)

```
User → Shell → Kernel → Hardware
Hardware → Kernel → Shell → User
```

This explains:

- Permission errors 
- Segmentation faults 
- Memory exhaustion 
- CPU starvation 
- I/O blocking 
- Zombie processes 

Everything traces back to this model.

---

# Last question of the day

  Q - Why does DevOps require strong Linux fundamentals?
 
ans :- DevOps is about automation, reliability, and production troubleshooting. Since most infrastructure runs on Linux,
   understanding process management, networking, filesystem behavior, permissions, and kernel interactions is essential to diagnose failures 
   and build resilient systems.


# ✅ Day 1 Outcome

After completing Day 1, you now understand:

- What Linux truly is 
- What the Kernel does 
- What a Distribution is 
- What the Shell does 
- How command execution flows internally 
- The core interaction model of Linux systems 

---
