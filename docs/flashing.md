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


## ⚠️ Bootloader Unlocking and Cipher OS Installation on Rabbit R1
### ATTENTION: Follow this procedure at your own RISK. Rabbit Inc and the creator of this guide  DO NOT ASSUME ANY LIABILITY for any damage to your device or any malfunctions. Ensure you fully understand the risks before proceeding.
### [Angetyde](https://github.com/atdvfegerf) and [Asquare]()
### 🔹 Step 1: Obtain Unlock Authorization

* Step 1: Read and Complete the Documentation
Read the official instructions from Rabbit Inc. for unlocking the bootloader → Click here to read the instructions.
Submit your data via the official Rabbit Inc. contact form → Click here to submit your data.

* Step 2: Wait for Authorization and Unlock
After submitting your data, an operator from Rabbit Inc. will contact you via email. The following will be requested:
IMEI of the Rabbit R1.
Other authentication details as required.
After approximately 1-2 days, the option will appear in your Rabbit Hole: "Developer allow R1 bootloader to be unlocked".

* Step 3: Change Bootloader Status
Access your Rabbit Hole.
Find the option "Developer allow R1 bootloader to be unlocked".
Change the status from "UNLOCK" to "LOCK". This step is critical to enable access to the bootloader and proceed with installing the new operating system.
IMPORTANT: Make sure you’re R1 is turned on, idle on the Home Screen (bouncing Rabbit) and is connected to Wifi while you are licking on the Unlock button on Rabbithole) - This is because you need to be connected to the Cloud while this toggle takes place.

### 🔹 Step 2: Prepare Your PC
* Step 1: Download Necessary Tools
Download the required software based on your operating system:
Windows: SDK Platform-Tools for Windows
Mac: SDK Platform-Tools for Mac
Linux: SDK Platform-Tools for Linux

* Step 2: Install USB Drivers (For Windows Only, If Mac skip to 🔹Step 5)
If you're using Windows, you must install the Google USB Drivers to communicate with the Rabbit R1:
Download USB drivers here: Google USB Driver.
Extract the drivers from the downloaded ZIP file into a folder on your PC.
For Mac, drivers are typically included with the system.

### 🔹 Step 3: Enter Fastboot Mode
* Step 1: Enter Fastboot Mode
Go to the Rabbit R1 flashing page → Click here to enter Fastboot Mode.
Click on "Enter Fastboot Mode".
Connect the Rabbit R1 to the PC via USB cable.
A device selection window will appear. You must quickly select "MT65 Preloader" within 1.5 seconds and click OK.
The device should now display "FASTBOOT" on the screen.

### 🔹 Step 4: Install USB Drivers in Fastboot (For Windows Only)
* Step 1: Manage Drivers
Open "Device Manager" on Windows.
Look for "Android Phone" in the list.
You should see a device called "Android ADB Interface". Click on it.
Uninstall the device and select the option to remove the drivers.
When prompted to restart your PC, click "NO".
Disconnect and reconnect the Rabbit R1 to the PC.
* Step 2: Update the Drivers
The device should now be recognized as "Android".
Right-click on it and select "Update driver".
Select "Search for drivers on my computer".
Choose "Select from a list of drivers".
Navigate to the folder where you extracted the drivers and select the file "android_winusb.inf".
Click "Open" and then "OK".
Select the first driver from the list and click "Next".

### 🔹 Step 5: Verify Fastboot Connection
* Step 1: Verify Connection
Open the platform-tools folder you previously extracted.
In the folder, press Shift + Right-Click and select "Open terminal here" (or "Open PowerShell window here").
Type the following command to check if your device is correctly recognized .\fastboot devices


If the device is correctly connected, you will see a list of numbers followed by "fastboot".

if it gives problems make sure you are out of the r1 flashing page   

### 🔹 Step 6: Install Cipher OS
* Step 1: Download and Prepare Cipher OS
Download Cipher OS for Rabbit R1 from THIS LINK. (This link is based on current information, but it's crucial to use a reliable source for the Cipher OS image. Double-check the source.)
Rename the Cipher OS file:
If the file is build, rename it to "build.zip".
If file extensions are visible, make sure the file is exactly named "build.zip".
Place the "build.zip" file in a folder of your choice, but remember its full path. There is no need to move it into the platform-tools folder.
* Step 2: Install Cipher OS
Open the terminal in the platform-tools folder.
Use the fastboot update command, indicating the full path to the build.zip file:


### Example path:
### fastboot update "C:\Path\to\file\build.zip" -w


### If the previous command doesn't work, try with:
### .\fastboot update "C:\Path\to\file\build.zip" -w

### if all this doesn't work, try doing .\fastboot flashing unlock 


If everything goes well, the Rabbit R1 screen will show "fastbootd" in large letters, with other text below it. DO NOT TOUCH ANYTHING and let the process complete.

### 🔹 Step 7: Fixing the Screen after Installation
After Cyper OS is installed most likely the screen will show as not fitting on the R1 screen, its too big, at this point you will have to disconnect USB cord and reconnect (while R1 is turned on) then while the terminal is open write the following commands “adb devices” or “.\adb devices”  it should then give a string of numbers that means its detected your R1 device. Then type the screen adjustment command - “adb shell wm density 190 command”.    

### Fix "Corrupted OS" Error
 
* Step 1: If "Corrupted OS" Error Appears
If the "Corrupted OS" error appears during installation, along with this message showing “Waiting for any device” in the terminal simultaneously,

then follow these steps:
Download the vbmeta.img file. (https://discord.com/channels/1185274945786359889/1352370182038753362/135340386459372753) (It is located in the rabbit r1 discord server) 
Rename it to "vbmeta.img".
Place the vbmeta.img file in the same folder where you ran the fastboot commands (the platform-tools folder).
Step 2: Flash the vbmeta.img File
Open the terminal and use the following command:
fastboot flash --disable-verity --disable-verification vbmeta vbmeta.img

### If it doesn't work, try with:
### .\fastboot flash --disable-verity --disable-verification vbmeta vbmeta.img


After doing this, repeat the command to install Cipher OS (from Step 6).
### 🔹 If Something Doesn’t Work:
Ensure the USB drivers are correctly installed (check in Device Manager on Windows).
Make sure the Rabbit R1 flashing site is closed during the process.
Also, if it keeps getting stuck at this command in the terminal “Waiting for any device” AND it shows a flashing screen on R1 saying “Device is Corrupted”
Then try connecting and disconnecting the USB cord from the R1 and run the Cypher OS Installation command once again - .\fastboot update "C:\Path\to\file\build.zip" -w

 

<div style="text-align: right">
    <a href="https://rabbitmods.net" class="md-button">Visit us</a>
</div>
