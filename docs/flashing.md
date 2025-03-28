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

# ⚠️ Bootloader Unlocking and Cipher OS Installation on Rabbit R1

**ATTENTION:** Follow this procedure at your own **RISK**. Neither **Rabbit Inc.** nor the creator of this guide **assumes any liability** for any damage to your device or malfunctions. Make sure you fully understand the risks before proceeding.

---

## 🔹 Step 1: Obtain Unlock Authorization

### Step 1: Read and Complete the Documentation
- Read the official instructions from Rabbit Inc. for unlocking the bootloader →  
  **[Click here to read the instructions](https://www.rabbit.tech/support/article/unlock-bootloader-rabbit-r1)**
- Submit your data via the official Rabbit Inc. contact form →  
  **[Click here to submit your data](https://www.rabbit.tech/contact-us)**

### Step 2: Wait for Authorization and Unlock
- After submitting your data, an operator from Rabbit Inc. will contact you via email. The following will be requested:
  - **IMEI** of the Rabbit R1.
  - Other authentication details as required.
- After approximately 1-2 days, the option will appear in your **Rabbit Hole**:  
  `"Developer allow R1 bootloader to be unlocked"`

### Step 3: Change Bootloader Status
- Access your **Rabbit Hole**.
- Find the option `"Developer allow R1 bootloader to be unlocked"`.
- Change the status from **"UNLOCK"** to **"LOCK"**.
- **IMPORTANT:** Make sure your R1 is:
  - Turned on
  - Idle on the Home Screen (bouncing Rabbit)
  - Connected to Wi-Fi  
  _While clicking the Unlock button in Rabbit Hole._

---

## 🔹 Step 2: Prepare Your PC

### Step 1: Download Necessary Tools
- Download the required software based on your operating system:
  - **Windows:** [SDK Platform-Tools for Windows](https://developer.android.com/studio/releases/platform-tools)
  - **Mac:** [SDK Platform-Tools for Mac](https://developer.android.com/studio/releases/platform-tools)
  - **Linux:** [SDK Platform-Tools for Linux](https://developer.android.com/studio/releases/platform-tools)

### Step 2: Install USB Drivers (Windows Only)
- If you're using **Windows**, install the Google USB Drivers:
  - **[Download Google USB Driver](https://developer.android.com/studio/run/win-usb)**
  - Extract the ZIP file into a folder on your PC.

---

## 🔹 Step 3: Enter Fastboot Mode

### Step 1: Enter Fastboot Mode
- Go to the **Rabbit R1 flashing page** →  
  **[Click here to enter Fastboot Mode](https://www.rabbit.tech/support/article/unlock-bootloader-rabbit-r1)**
- Click on `"Enter Fastboot Mode"`.
- Connect the **Rabbit R1** to the PC via USB cable.
- A device selection window will appear. **Quickly select** `"MT65 Preloader"` within **1.5 seconds** and click **OK**.
- The device should now display `"FASTBOOT"` on the screen.

---

## 🔹 Step 4: Install USB Drivers in Fastboot (Windows Only)

### Step 1: Manage Drivers
1. Open **"Device Manager"** on Windows.
2. Look for **"Android Phone"** in the list.
3. You should see a device called **"Android ADB Interface"**. Click on it.
4. **Uninstall** the device and select the option to **remove the drivers**.
5. When prompted to restart your PC, click **"NO"**.
6. Disconnect and reconnect the **Rabbit R1** to the PC.

### Step 2: Update the Drivers
1. The device should now be recognized as `"Android"`.
2. Right-click on it and select **"Update driver"**.
3. Select **"Search for drivers on my computer"**.
4. Choose **"Select from a list of drivers"**.
5. Navigate to the folder where you extracted the drivers and select **"android_winusb.inf"**.
6. Click **"Open"** → **"OK"**.
7. Select the **first driver** from the list and click **"Next"**.

---

## 🔹 Step 5: Verify Fastboot Connection

### Step 1: Verify Connection
1. Open the **platform-tools** folder you previously extracted.
2. Inside the folder, **Shift + Right-Click** and select `"Open terminal here"` (or `"Open PowerShell window here"`).
3. Type the following command:
    ```sh
    .\fastboot devices
    ```
4. If the device is correctly connected, you will see a list of numbers followed by `"fastboot"`.

---

## 🔹 Step 6: Install Cipher OS

### Step 1: Download and Prepare Cipher OS
- Download **Cipher OS for Rabbit R1** from:  
  **[THIS LINK](  https://cipheros.org.in/devices/r1)**
- Rename the Cipher OS file:
  - If the file is named `"build"`, rename it to **"build.zip"**.
- Place **"build.zip"** in a folder of your choice.

### Step 2: Install Cipher OS
- Open the **terminal** in the **platform-tools** folder.
- change the path with your true path  
- Run:
    ```sh
    fastboot update "C:\Path\to\file\build.zip" -w
    ```
- If the previous command doesn't work, try:
    ```sh
    .\fastboot update "C:\Path\to\file\build.zip" -w
    ```
- If this fails, try:
    ```sh
    .\fastboot flashing unlock
    ```
- If successful, the **Rabbit R1** screen will show `"fastbootd"` in large letters.
- don't touch anything and leave it alone until everything is completed  

---

## 🔹 Step 7: Fix the Screen After Installation

1. Disconnect and reconnect the **USB cable** (while R1 is turned on).
2. Open the terminal and type:
    ```sh
    adb devices
    ```
    or  
    ```sh
    .\adb devices
    ```
3. If your R1 is detected, run:
    ```sh
    adb shell wm density 190
    ```

---

## 🔹 Fix "Corrupted OS" Error

### Step 1: If "Corrupted OS" Error Appears
- If `"Corrupted OS"` appears and the terminal shows **"Waiting for any device"**, follow these steps:
- Download **vbmeta.img** from:  
  **[THIS LINK]( https://discord.com/channels/1185274945786359889/1352370182038753362/1353403864593727538)**
- Rename the file to **"vbmeta.img"**.
- Place the file in the **platform-tools** folder.

### Step 2: Flash vbmeta.img
- Open the terminal and run:
    ```sh
    fastboot flash --disable-verity --disable-verification vbmeta vbmeta.img
    ```
- If it doesn't work, try:
    ```sh
    .\fastboot flash --disable-verity --disable-verification vbmeta vbmeta.img
    ```
- After this, **repeat the Cipher OS installation command** from Step 6.

---

## 🔹 If Something Doesn’t Work:
- Ensure the USB drivers are correctly installed.
- Close the **Rabbit R1 flashing site** during the process.
- If it gets stuck at `"Waiting for any device"` and `"Device is Corrupted"`:
  - Disconnect and reconnect the USB cable.
  - Run:
    ```sh
    .\fastboot update "C:\Path\to\file\build.zip" -w
    ```


<div style="text-align: right">
    <a href="https://rabbitmods.net" class="md-button">Visit us</a>
</div>
