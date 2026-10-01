# 🎬 Entertainment apps and utilities for the car

[🏠 Home](../../README.en.md) · [📲 Enable ADB](ADB.md) · [⬇️ Install app](INSTALL.md) · [🎬 Entertainment apps](APPS.md) · [✨ Features](FEATURES.md) · [🤖 Telegram](TELEGRAM.md) · [🛠️ Troubleshooting](TROUBLESHOOTING.md) · 🌐 [Tiếng Việt](../APP-GIAI-TRI.md)

---

## 🎬 Install entertainment apps and utilities

All apps are in the [`v1.0.0-apps`](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases/tag/v1.0.0-apps) release. You can install them **manually with ADB** as shown below, or open the **App Store** inside EX2 VN Control and install with a few taps.

### App list

| App | Type | Package | Notes |
|---|---|---|---|
| 🗺️ **Vietmap Live** v3.4.0 | Navigation | `vn.vietmap.live` | Speed-camera alerts, traffic-fine cameras for Vietnam. `.xapk` file |
| 📺 **YouTube Morphe** | Entertainment | `app.morphe.android.youtube` | Watch videos on the car screen, ad-free |
| 🎶 **YT Music Morphe** v9.30.52 | Music | `app.morphe.android.apps.youtube.music` | Ad-free music |
| 🎵 **Spotify** v9.0.24 | Music | `com.spotify.music` | Online music library |
| ⚙️ **microG (ReVanced)** v0.3.13.2 | Utility | `app.revanced.android.gms` | **Install first** for YouTube / YT Music; needed for Google sign-in |
| 🗣️ **Google Text‑to‑Speech** v25.2.1 | Utility | `com.google.android.tts` | Lets Vietmap and other apps speak Vietnamese |

### Recommended install order

1. **microG** (replacement Google services)
2. **Google Text‑to‑Speech**
3. **YouTube Morphe** and **YT Music Morphe**
4. **Spotify**
5. **Vietmap Live**

### Install commands

Put the downloaded files in one folder and open a terminal there:

```bash
adb install -r -g microG_ReVanced_v0.3.13.2.apk
adb install -r -g Google_TTS_v25.2.1.apk
adb install -r -g YouTube_Morphe_Ext_v21.07.243.apk
adb install -r -g YT_Music_Morphe_v9.30.52.apk
```

Spotify:

```bash
adb install -r -g Spotify_Music_v9.0.24.apk
```

### Installing the `.xapk` file (Vietmap Live)

An `.xapk` is a multi-part package that `adb install` cannot install directly. Unzip it and install all parts at once:

```bash
unzip Vietmap_Live_v3.4.0.xapk -d vietmap
cd vietmap
adb install-multiple -r *.apk
```

### After installing

- **YouTube / YT Music:** open **microG** first, sign in to your Google account, then open YouTube.
- **Vietmap:** go to the car's Settings → *Text-to-speech* → choose **Google** to get Vietnamese voice guidance.
- You can pin your 3 favourite apps to the **3 quick-launch slots** in EX2 VN Control (long-press a slot to change the app).


---

<div align="center">

Made by **Xe Chơi** · 💬 [Join our Zalo group](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
