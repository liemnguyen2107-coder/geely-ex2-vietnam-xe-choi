# 🛠️ Xử lý lỗi thường gặp

[🏠 Trang chính](../README.md) · [📲 Mở ADB](ADB.md) · [⬇️ Cài app](CAI-APP.md) · [🎬 App giải trí](APP-GIAI-TRI.md) · [✨ Tính năng](TINH-NANG.md) · [🤖 Telegram](TELEGRAM.md) · [🛠️ Lỗi thường gặp](LOI-THUONG-GAP.md) · 🌐 [English](en/TROUBLESHOOTING.md)

---

## 🛠️ Xử lý lỗi thường gặp

| Lỗi | Cách xử lý |
|---|---|
| Nhập mã menu ẩn không vào | Kiểm tra lại công thức và dùng đúng giờ đang hiện trên xe. Thử thêm/bỏ số 0 ở ngày, giờ. Đã tắt Bluetooth chưa? |
| Màn hình báo lỗi cuối lúc cài bản vá | **Bình thường**. Nhấn giữ nút Back cho tới khi xe khởi động lại |
| Không thấy IP / không kết nối được Wi‑Fi | Vào lại menu ẩn → cấu hình Wi‑Fi, thử mạng khác (phát Wi‑Fi từ điện thoại) |
| `adb: command not found` | Chưa cài ADB hoặc chưa thêm vào PATH. Cài lại theo [mục Chuẩn bị](ADB.md#-chuẩn-bị) |
| `failed to connect to 192.168.x.x:5555` | Kiểm tra xe và máy tính cùng Wi‑Fi, IP đúng, và đã cài bản vá ADB (xem [Mở ADB](ADB.md)). Khởi động lại xe rồi thử lại |
| `device unauthorized` | Nhìn màn xe, bấm **Cho phép**. Nếu không hiện: `adb kill-server` rồi `adb connect …` lại |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | Gỡ bản cũ: `adb uninstall <package>` rồi cài lại |
| `INSTALL_FAILED_NO_MATCHING_ABIS` | File APK sai kiến trúc CPU. Tải bản `arm64` |
| `INSTALL_FAILED_INSUFFICIENT_STORAGE` | Hết bộ nhớ. Gỡ bớt app hoặc dọn app trong EX2 VN Control |
| YouTube báo lỗi đăng nhập | Cài và đăng nhập **microG** trước |
| Vietmap không đọc tiếng Việt | Cài **Google Text‑to‑Speech** và chọn làm trình đọc mặc định |

---

## ⚠️ Lưu ý

- Dự án **không chính thức**, không liên kết với Geely. Bạn tự chịu trách nhiệm khi cài app ngoài lên xe.
- Không thao tác điều khiển xe (kính, cốp, chế độ lái…) khi đang chạy nếu chưa chắc chắn về an toàn.
- Các app YouTube / YT Music dạng Morphe, Spotify là bản của bên thứ ba: hãy chỉ dùng cho mục đích cá nhân và tôn trọng bản quyền, điều khoản của nhà cung cấp.
- Chỉ tải APK từ mục [Releases](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases) của repo này để tránh file giả mạo.

---

<div align="center">

Thực hiện bởi **Xe Chơi** · 💬 [Tham gia nhóm Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
