# 📲 Hướng dẫn mở ADB trên Geely EX2

[🏠 Trang chính](../README.md) · [📲 Mở ADB](ADB.md) · [⬇️ Cài app](CAI-APP.md) · [🎬 App giải trí](APP-GIAI-TRI.md) · [✨ Tính năng](TINH-NANG.md) · [🤖 Telegram](TELEGRAM.md) · [🛠️ Lỗi thường gặp](LOI-THUONG-GAP.md) · 🌐 [English](en/ADB.md)

---

## 🗺️ Tổng quan: chỉ cần 5 bước

| Bước | Việc cần làm | Thời gian |
|:-:|---|:-:|
| 1️⃣ | Chuẩn bị USB và file bản vá | 5 phút |
| 2️⃣ | Vào **menu ẩn** của màn hình xe bằng mã | 1 phút |
| 3️⃣ | Cài **bản vá mở ADB** từ USB | 5–10 phút |
| 4️⃣ | Bật Wi‑Fi, ghi lại **địa chỉ IP** của xe | 2 phút |
| 5️⃣ | Từ máy tính, kết nối ADB và **cài APK** | 5 phút |

> 💡 **ADB là gì?** Là cổng cho phép máy tính cài app lên màn hình xe. Mặc định xe **khóa cổng này**, nên bước 2–4 là để mở khóa. Chỉ cần làm **một lần**.

> ⚠️ **Đọc trước khi làm:** Cài sai có thể khiến màn hình xe **bị treo logo (bootloop) hoặc hỏng hẳn**. Hãy làm đúng từng bước, **không tắt máy, không rút USB giữa chừng**, và tự chịu trách nhiệm với xe của mình.

---

## 🧰 Chuẩn bị

Bạn cần có đủ 4 thứ sau:

| # | Cần có | Ghi chú |
|:-:|---|---|
| 1 | 🔌 **USB (pendrive)** | Định dạng **FAT32** (xóa hết dữ liệu cũ trong USB) |
| 2 | 📦 **File bản vá ADB** (`update.zip`) | Chọn đúng bản theo xe: **1111** hoặc **1114**. Tải và xem cách chọn bản tại [bài hướng dẫn gốc của blog Geely EX2](https://geelyex2.blogspot.com/2026/07/desbloqueando-central-do-geely-ex2-com.html) |
| 3 | 💻 **Máy tính** cùng Wi‑Fi với xe | Windows, macOS hoặc Linux |
| 4 | 🛠️ **Công cụ ADB** | Chọn **một** trong hai cách bên dưới |

> 📌 Repo này **không đăng file bản vá**. Bạn lấy file ở nguồn trên rồi làm theo hướng dẫn dưới đây.

**Công cụ ADB — chọn một:**

- 🖱️ **Dễ nhất (Windows):** tải **ADB AppControl**, có giao diện bấm chuột, không cần gõ lệnh.
- ⌨️ **Dùng dòng lệnh (Windows / macOS / Linux):**

```bash
# macOS (Homebrew)
brew install android-platform-tools
```

```bash
# Windows (PowerShell / winget)
winget install Google.PlatformTools
```

Kiểm tra cài xong chưa:

```bash
adb version
```

---

## 🔓 Bật ADB trên xe

> 🚗 Bật máy xe và **giữ xe ở trạng thái bật** trong suốt quá trình này.

### Bước 2.1 — Xếp file vào USB

Trong USB (FAT32) tạo đúng cấu trúc thư mục sau, rồi đặt file `update.zip` vào trong cùng:

```text
3C6025_SW0E22H0128H111100000_user_995/
└── OS/
    └── update.zip
```

> ✍️ Tên thư mục phải **đúng từng ký tự**. Nếu bạn dùng bản **1114** thì làm theo tên thư mục ghi trong bài gốc cho bản đó.

### Bước 2.2 — Vào menu ẩn của xe

1. Trên màn hình xe, **tắt Bluetooth** (để ngắt kết nối điện thoại).
2. Mở ứng dụng **Điện thoại** (Phone) trên màn hình xe.
3. Trên bàn phím số, nhập **mã menu ẩn** theo công thức dưới đây rồi bấm gọi.

**Công thức mã:**

```text
#*  (tháng + 10)  (ngày)  (giờ theo 12h)
```

**Ví dụ từng bước:** ngày **30/12/2025**, lúc **19h25**

| Thành phần | Cách tính | Kết quả |
|---|---|:-:|
| Tháng | 12 + 10 | **22** |
| Ngày | 30 | **30** |
| Giờ (12h) | 19h → 7h tối | **07** |

➡️ Nhập: **`#*223007`**

**Thêm một ví dụ:** ngày **29/09/2026**, lúc **17h40** → tháng 9 + 10 = **19**, ngày **29**, giờ 17h = **05** → nhập **`#*192905`**.

> 💡 Dùng **ngày giờ đang hiển thị trên màn hình xe**. Nếu vừa sang giờ mới mà mã báo sai, hãy tính lại với giờ mới.
> ⚠️ Ví dụ gốc chỉ có số 2 chữ số. Với số 1 chữ số (ví dụ ngày 5, giờ 3), mình **suy ra** là thêm số 0 phía trước (`05`, `03`). Nếu mã không vào được, hãy thử thêm hoặc bỏ số 0.

Nhập đúng, **menu ẩn** sẽ hiện ra.

### Bước 2.3 — Cài bản vá

1. **Cắm USB** vào cổng USB của xe.
2. Trong menu ẩn, bấm vào **biểu tượng cài đặt / cập nhật**.
3. Xác nhận khi màn hình hỏi kiểm tra bản cập nhật.
4. Màn hình xe **tự khởi động lại** vào chế độ **recovery** và bắt đầu cài.
5. Chờ cho đến cuối. Cuối quá trình sẽ hiện **thông báo lỗi**.

> ✅ **Đừng lo!** Lỗi này là **cố ý** theo bài hướng dẫn gốc, không phải hỏng.

6. **Nhấn giữ nút Back (Quay lại)** cho đến khi màn hình xe khởi động lại.

### Bước 2.4 — Bật Wi‑Fi và ghi lại IP

1. Xe khởi động xong, **vào lại menu ẩn** (nhập lại mã ở bước 2.2, nhớ tính theo giờ hiện tại).
2. Chọn mục **cấu hình Wi‑Fi**.
3. **Kết nối** vào Wi‑Fi nhà bạn (hoặc Wi‑Fi phát từ điện thoại).
4. Màn hình sẽ hiện **địa chỉ IP** của xe, ví dụ `192.168.0.130`. 📝 **Hãy ghi lại số này.**

🎉 Xong phần khó nhất. Từ đây xe đã **mở cổng ADB**.

---

## 🔌 Kết nối ADB từ máy tính

Máy tính và xe phải **dùng chung một Wi‑Fi**.

### Cách A — Dùng ADB AppControl (dễ nhất, Windows)

1. Mở **ADB AppControl**.
2. Ô địa chỉ, nhập **IP của xe** (ví dụ `192.168.0.130`), cổng `5555`.
3. Bấm **Kết nối (Connect)**.
4. Nếu màn hình xe hiện hộp thoại hỏi cho phép gỡ lỗi → chọn **Luôn cho phép** → **OK**.
5. Khi thấy tên thiết bị hiện lên là đã kết nối xong.

### Cách B — Dùng dòng lệnh

```bash
adb connect 192.168.0.130:5555
```

Thay `192.168.0.130` bằng IP xe của bạn. Kiểm tra:

```bash
adb devices
```

Thấy dòng `192.168.0.130:5555   device` là **thành công** ✅.

Nếu báo `unauthorized` hay không kết nối được, xem [Xử lý lỗi](LOI-THUONG-GAP.md).

---

<div align="center">

Thực hiện bởi **Xe Chơi** · 💬 [Tham gia nhóm Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
