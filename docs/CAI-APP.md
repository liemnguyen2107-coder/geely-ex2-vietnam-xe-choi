# ⬇️ Cài app EX2 VN Control và cập nhật

[🏠 Trang chính](../README.md) · [📲 Mở ADB](ADB.md) · [⬇️ Cài app](CAI-APP.md) · [🎬 App giải trí](APP-GIAI-TRI.md) · [✨ Tính năng](TINH-NANG.md) · [🤖 Telegram](TELEGRAM.md) · [🛠️ Lỗi thường gặp](LOI-THUONG-GAP.md)

---

## 📲 Cài app điều khiển EX2 VN Control

1. Vào [**Releases**](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases) và tải file APK mới nhất của EX2 VN Control (`EX2VNControl_v1.3.1.apk`).
2. Cài lên xe:

```bash
adb install -r -g EX2VNControl_v1.3.1.apk
```

> `-r` cài đè bản cũ, `-g` cấp sẵn các quyền cần thiết.

3. Mở app **EX2 VN Control** trên màn xe, làm theo màn hướng dẫn ban đầu (cấp quyền, kích hoạt key nếu có).
4. Muốn dùng giọng nói tiếng Việt: xem mục [Ra lệnh giọng nói](TINH-NANG.md#️-ra-lệnh-giọng-nói).

---

## 🔄 Cập nhật bản mới (OTA)

- Trong app: mở **Cài đặt EX2 VN Control → Kiểm tra cập nhật**. App đọc `version.json` trên GitHub và mời cập nhật khi có bản mới hoặc bản vá.
- Thủ công: tải APK mới ở [Releases](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases) rồi chạy lại `adb install -r -g <file>.apk`.

---

<div align="center">

Thực hiện bởi **Xe Chơi** · 💬 [Tham gia nhóm Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
