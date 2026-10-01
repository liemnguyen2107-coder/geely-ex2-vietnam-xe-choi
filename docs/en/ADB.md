# 📲 How to enable ADB on the Geely EX2

[🏠 Home](../../README.en.md) · [📲 Enable ADB](ADB.md) · [⬇️ Install app](INSTALL.md) · [🎬 Entertainment apps](APPS.md) · [✨ Features](FEATURES.md) · [🤖 Telegram](TELEGRAM.md) · [🛠️ Troubleshooting](TROUBLESHOOTING.md) · 🌐 [Tiếng Việt](../ADB.md)

---

## 🗺️ Overview: just 5 steps

| Step | What to do | Time |
|:-:|---|:-:|
| 1️⃣ | Prepare a USB drive and the patch file | 5 min |
| 2️⃣ | Open the car's **hidden menu** with a code | 1 min |
| 3️⃣ | Install the **ADB patch** from USB | 5–10 min |
| 4️⃣ | Turn on Wi‑Fi and note the car's **IP address** | 2 min |
| 5️⃣ | From your computer, connect ADB and **install APKs** | 5 min |

> 💡 **What is ADB?** It is a port that lets a computer install apps on the car's screen. The car **locks this port by default**, so steps 2–4 unlock it. You only need to do this **once**.

> ⚠️ **Read before you start:** A wrong install can leave the head unit **stuck on the logo (bootloop) or permanently broken**. Follow every step exactly, **do not turn the car off or unplug the USB mid-way**, and use this guide at your own risk.

---

## 🧰 Preparation

You need these 4 things:

| # | You need | Notes |
|:-:|---|---|
| 1 | 🔌 **USB flash drive** | Formatted as **FAT32** (all old data will be erased) |
| 2 | 📦 **ADB patch file** (`update.zip`) | Pick the right one for your car: **1111** or **1114**. Download it and see how to choose in the [original Geely EX2 blog guide](https://geelyex2.blogspot.com/2026/07/desbloqueando-central-do-geely-ex2-com.html) |
| 3 | 💻 **A computer** on the same Wi‑Fi as the car | Windows, macOS or Linux |
| 4 | 🛠️ **An ADB tool** | Choose **one** of the two options below |

> 📌 This repo **does not host the patch file**. Get it from the source above and follow the steps below.

**ADB tool — choose one:**

- 🖱️ **Easiest (Windows):** download **ADB AppControl**. It has a point-and-click interface, no commands needed.
- ⌨️ **Command line (Windows / macOS / Linux):**

```bash
# macOS (Homebrew)
brew install android-platform-tools
```

```bash
# Windows (PowerShell / winget)
winget install Google.PlatformTools
```

Check that it is installed:

```bash
adb version
```

---

## 🔓 Enable ADB on the car

> 🚗 Turn the car on and **keep it on** for the whole process.

### Step 2.1 — Put the files on the USB drive

On the FAT32 USB drive, create exactly this folder structure and place `update.zip` in the innermost folder:

```text
3C6025_SW0E22H0128H111100000_user_995/
└── OS/
    └── update.zip
```

> ✍️ The folder name must match **character for character**. If you use version **1114**, use the folder name given for it in the original guide.

### Step 2.2 — Open the car's hidden menu

1. On the car screen, **turn Bluetooth off** (to disconnect your phone).
2. Open the **Phone** app on the car screen.
3. On the dial pad, enter the **hidden-menu code** using the formula below, then press call.

**Code formula:**

```text
#*  (month + 10)  (day)  (hour, 12-hour format)
```

**Worked example:** date **30/12/2025**, time **19:25**

| Part | Calculation | Result |
|---|---|:-:|
| Month | 12 + 10 | **22** |
| Day | 30 | **30** |
| Hour (12h) | 19:00 → 7 PM | **07** |

➡️ Enter: **`#*223007`**

**One more example:** date **29/09/2026**, time **17:40** → month 9 + 10 = **19**, day **29**, 17:00 = 5 PM = **05** → enter **`#*192905`**.

> 💡 Use the **date and time shown on the car screen**. If the hour just changed and the code is rejected, recalculate with the new hour.
> ⚠️ The original example only has 2-digit numbers. For 1-digit values (e.g. day 5, hour 3) we **assume** a leading zero (`05`, `03`). If the code is rejected, try with or without the zero.

If the code is correct, the **hidden menu** appears.

### Step 2.3 — Install the patch

1. **Plug the USB drive** into the car's USB port.
2. In the hidden menu, tap the **install / update icon**.
3. Confirm when asked to check for the update.
4. The head unit **restarts by itself** into **recovery mode** and starts installing.
5. Wait until the end. An **error message** will appear at the end.

> ✅ **Don't worry!** According to the original guide, this error is **expected**, nothing is broken.

6. **Press and hold the Back button** until the head unit restarts.

### Step 2.4 — Turn on Wi‑Fi and note the IP

1. After the car boots, **open the hidden menu again** (re-enter the code from step 2.2, calculated with the current time).
2. Choose the **Wi‑Fi settings** option.
3. **Connect** to your home Wi‑Fi (or a hotspot from your phone).
4. The screen shows the car's **IP address**, e.g. `192.168.0.130`. 📝 **Write it down.**

🎉 The hardest part is done. The car's **ADB port is now open**.

---

## 🔌 Connect ADB from your computer

The computer and the car must be on the **same Wi‑Fi**.

### Option A — ADB AppControl (easiest, Windows)

1. Open **ADB AppControl**.
2. In the address field, enter the **car's IP** (e.g. `192.168.0.130`) and port `5555`.
3. Click **Connect**.
4. If the car screen asks you to allow debugging → choose **Always allow** → **OK**.
5. When the device name appears, you are connected.

### Option B — Command line

```bash
adb connect 192.168.0.130:5555
```

Replace `192.168.0.130` with your car's IP. Check:

```bash
adb devices
```

A line like `192.168.0.130:5555   device` means **success** ✅.

If you see `unauthorized` or cannot connect, see [Troubleshooting](TROUBLESHOOTING.md).


---

<div align="center">

Made by **Xe Chơi** · 💬 [Join our Zalo group](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
