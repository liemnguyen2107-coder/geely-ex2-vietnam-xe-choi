# 🛠️ Troubleshooting

[🏠 Home](../../README.en.md) · [📲 Enable ADB](ADB.md) · [⬇️ Install app](INSTALL.md) · [🎬 Entertainment apps](APPS.md) · [✨ Features](FEATURES.md) · [🤖 Telegram](TELEGRAM.md) · [🛠️ Troubleshooting](TROUBLESHOOTING.md) · 🌐 [Tiếng Việt](../LOI-THUONG-GAP.md)

---

## 🛠️ Common problems

| Problem | Fix |
|---|---|
| Hidden-menu code is not accepted | Re-check the formula and use the time shown on the car. Try adding/removing the leading zero for day or hour. Is Bluetooth off? |
| Error screen at the end of the patch install | **This is normal.** Press and hold Back until the car restarts |
| No IP shown / cannot join Wi‑Fi | Open the hidden menu again → Wi‑Fi settings, try another network (e.g. phone hotspot) |
| `adb: command not found` | ADB is not installed or not in PATH. Reinstall as in [Preparation](ADB.md#-preparation) |
| `failed to connect to 192.168.x.x:5555` | Check that the car and computer are on the same Wi‑Fi, the IP is correct, and the ADB patch is installed (see [Enable ADB](ADB.md)). Restart the car and retry |
| `device unauthorized` | Look at the car screen and tap **Allow**. If nothing appears: `adb kill-server`, then `adb connect …` again |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | Remove the old version: `adb uninstall <package>`, then install again |
| `INSTALL_FAILED_NO_MATCHING_ABIS` | The APK has the wrong CPU architecture. Download the `arm64` build |
| `INSTALL_FAILED_INSUFFICIENT_STORAGE` | Out of storage. Remove some apps or clean apps in EX2 VN Control |
| YouTube shows a sign-in error | Install and sign in to **microG** first |
| Vietmap does not speak Vietnamese | Install **Google Text‑to‑Speech** and set it as the default engine |

---

## ⚠️ Notes

- This is an **unofficial** project, not affiliated with Geely. You install third-party apps on your car at your own risk.
- Do not use controls (windows, trunk, drive mode…) while driving unless you are sure it is safe.
- YouTube / YT Music (Morphe builds) and Spotify are third-party builds: use them for personal purposes only and respect the providers' copyright and terms.
- Only download APKs from this repo's [Releases](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases) to avoid fake files.


---

<div align="center">

Made by **Xe Chơi** · 💬 [Join our Zalo group](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
