# ⬇️ Install EX2 VN Control and update it

[🏠 Home](../../README.en.md) · [📲 Enable ADB](ADB.md) · [⬇️ Install app](INSTALL.md) · [🎬 Entertainment apps](APPS.md) · [✨ Features](FEATURES.md) · [🤖 Telegram](TELEGRAM.md) · [🛠️ Troubleshooting](TROUBLESHOOTING.md) · 🌐 [Tiếng Việt](../CAI-APP.md)

---

## 📲 Install the EX2 VN Control app

1. Go to [**Releases**](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases) and download the latest EX2 VN Control APK (`EX2VNControl_v1.3.2.apk`).
2. Install it on the car:

```bash
adb install -r -g EX2VNControl_v1.3.2.apk
```

> `-r` reinstalls over the old version, `-g` grants the required permissions automatically.

3. Open **EX2 VN Control** on the car screen and follow the first-run guide (grant permissions, activate your key if you have one).
4. To use voice commands, see [Voice commands](FEATURES.md#️-voice-commands).

---

## 🔄 Update to a new version (OTA)

- In the app: open **EX2 VN Control settings → Check for updates**. The app reads `version.json` on GitHub and offers an update when a new version or patch is available.
- Manually: download the new APK from [Releases](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases) and run `adb install -r -g <file>.apk` again.


---

<div align="center">

Made by **Xe Chơi** · 💬 [Join our Zalo group](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
