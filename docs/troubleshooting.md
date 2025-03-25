---
hide:
  - navigation
---

# Troubleshooting

During your use of mods on rabbit r1, you may encounter some unexpected issues.

We can't do much about these unless appropriate logs are shared to us.

## Report an issue

!!! Note
    Make sure you are running the latest version of mods on rabbit r1 available for your device before opening a ticket.

To report an issue, Open a Ticket on our Github Issue Tracker.

To properly report an issue, the following logs must be provided in the ticket:

- `logcat` (System Log).
- `dmesg` (Kernel Log).

### Logcat

To grab a `logcat` it is required to have `USB debugging` enabled:

* Go into `Settings` -> `About Phone` and press 7 times the `Build Number`.
* Go into `Settings` -> `System` -> `Developer options` and enable `USB Debugging`.
* Open an `ADB & Fastboot tools` window on your PC and run this:

``` bash
$ adb logcat -d > logcat.log
```

* If a radio buffer log is requested, run this as well:

``` bash
$ adb logcat -db radio > radio.log
```

### Dmesg

Grabbing a `dmesg` requires root access. Fortunately, userdebug builds of mods on rabbit r1 can access a root shell enviroment out-of-the box:

* Go into `Settings` -> `About Phone` and press 7 times the `Build Number`.
* Go into `Settings` -> `System` -> `Developer options` and enable `USB Debugging` and `Rooted debugging`.
* Open a `ADB & Fastboot tools` window on your PC and run this:

``` bash
$ adb root # Enables root shell
$ adb shell dmesg > dmesg.log
```
