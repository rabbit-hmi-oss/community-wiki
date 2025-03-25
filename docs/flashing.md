---
hide:
  - navigation
---

# Flashing Mods on rabbit r1

Before going forward, make sure you have read our Get Started Guide.

## Flashing via fastboot

* If your device's build package archive has `-images.zip` appended at the last, follow this steps:-

  - `adb reboot bootloader`  # Reboots to bootloader
  - `fastboot update build.zip` # Applies the update, No data wipe.
  - If you are flashing Mods on rabbit r1 for the first time, then pass the -w parameter in the above command.
  - ie, `fastboot update build.zip -w` # Wipes the data and applies the update.
  - Flashing would take few mins and device would reboot couple of times, dont worry, sit back & relax.
  - Voila, Enjoy Mods on rabbit r1!

## Flashing via recovery.

* If your device's build package archive is a recovery package then:-

  - Flash any custom recovery or Mods on rabbit r1 Recovery.
  - `adb reboot sideload`  # Reboots to Sideload
  - `adb sideload build.zip` # Applies the update, No data wipe.
  - If you are flashing Mods on rabbit r1 for the first time, then you might need to wipe data.
  - In recovery menu, select "wipe data/factory reset" option & wipe the data.
  - Flashing would take few mins and device would reboot once it's done, dont worry, sit back & relax.
  - Voila, Enjoy Mods on rabbit r1!




## Support
You can get in touch with us on our official discord channel.
 

<div style="text-align: right">
    <a href="https://rabbitmods.net" class="md-button">Visit us</a>
</div>
