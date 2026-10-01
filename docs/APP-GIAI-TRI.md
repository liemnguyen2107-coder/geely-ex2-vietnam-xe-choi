# 🎬 App giải trí và tiện ích cho xe

[🏠 Trang chính](../README.md) · [📲 Mở ADB](ADB.md) · [⬇️ Cài app](CAI-APP.md) · [🎬 App giải trí](APP-GIAI-TRI.md) · [✨ Tính năng](TINH-NANG.md) · [🤖 Telegram](TELEGRAM.md) · [🛠️ Lỗi thường gặp](LOI-THUONG-GAP.md) · 🌐 [English](en/APPS.md)

---

## 🎬 Cài app giải trí và tiện ích

Tất cả app nằm ở release [`v1.0.0-apps`](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases/tag/v1.0.0-apps). Bạn có thể cài **thủ công bằng ADB** như dưới đây, hoặc mở **Kho app** ngay trong EX2 VN Control để cài bằng vài chạm.

### Danh sách app

| App | Loại | Gói (package) | Ghi chú |
|---|---|---|---|
| 🗺️ **Vietmap Live** v3.4.0 | Dẫn đường | `vn.vietmap.live` | Cảnh báo tốc độ, phạt nguội, camera giao thông VN. File `.xapk` |
| 📺 **YouTube Morphe** | Giải trí | `app.morphe.android.youtube` | Xem video trên màn xe, không quảng cáo |
| 🎶 **YT Music Morphe** v9.30.52 | Âm nhạc | `app.morphe.android.apps.youtube.music` | Nghe nhạc không quảng cáo |
| 🎵 **Spotify** v9.0.24 | Âm nhạc | `com.spotify.music` | Kho nhạc trực tuyến |
| ⚙️ **microG (ReVanced)** v0.3.13.2 | Tiện ích | `app.revanced.android.gms` | **Cài trước** YouTube / YT Music; cần để đăng nhập Google |
| 🗣️ **Google Text‑to‑Speech** v25.2.1 | Tiện ích | `com.google.android.tts` | Để Vietmap và app khác đọc tiếng Việt |

### Thứ tự cài khuyến nghị

1. **microG** (dịch vụ Google thay thế)
2. **Google Text‑to‑Speech**
3. **YouTube Morphe** và **YT Music Morphe**
4. **Spotify**
5. **Vietmap Live**

### Lệnh cài từng app

Đặt các file đã tải vào một thư mục rồi mở terminal tại đó:

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

### Cài file `.xapk` (Vietmap Live)

`.xapk` là gói nhiều phần, `adb install` không cài trực tiếp được. Giải nén rồi cài nhiều file một lượt:

```bash
unzip Vietmap_Live_v3.4.0.xapk -d vietmap
cd vietmap
adb install-multiple -r *.apk
```


### Sau khi cài

- **YouTube / YT Music:** mở **microG** trước, đăng nhập tài khoản Google, rồi mới mở YouTube.
- **Vietmap:** vào Cài đặt xe → *Chuyển văn bản thành giọng nói* → chọn **Google** để có giọng đọc tiếng Việt.
- Có thể ghim 3 app hay dùng vào **3 ô mở app nhanh** trong EX2 VN Control (giữ ô để đổi app).

---

<div align="center">

Thực hiện bởi **Xe Chơi** · 💬 [Tham gia nhóm Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
