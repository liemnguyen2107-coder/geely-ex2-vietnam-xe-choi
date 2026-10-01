<div align="center">

# 🚗 EX2 VN Control

**Ứng dụng điều khiển xe, kho app giải trí và tiện ích dành riêng cho Geely EX2 (bản Việt Nam).**

Thực hiện bởi **Xe Chơi** · 💬 [Tham gia nhóm Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x)

![Android 9](https://img.shields.io/badge/Android-9%20(IHU)-3DDC84?logo=android&logoColor=white)
![Version](https://img.shields.io/badge/version-1.3.1-blue)
![Language](https://img.shields.io/badge/ng%C3%B4n%20ng%E1%BB%AF-Ti%E1%BA%BFng%20Vi%E1%BB%87t-red)

<img src="docs/images/main-light.png" width="720" alt="Màn hình chính EX2 VN Control trên Geely EX2">

</div>

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

## 📑 Mục lục

1. [Chuẩn bị](#-1-chuẩn-bị)
2. [Bật ADB trên xe](#-2-bật-adb-trên-xe)
3. [Kết nối ADB từ máy tính](#-3-kết-nối-adb-từ-máy-tính)
4. [Cài app điều khiển EX2 VN Control](#-4-cài-app-ex2-vn-control)
5. [Cài app giải trí và tiện ích](#-5-cài-app-giải-trí-và-tiện-ích)
6. [Tính năng đang chạy](#-6-tính-năng-đang-chạy)
7. [Cập nhật bản mới (OTA)](#-7-cập-nhật-bản-mới-ota)
8. [Xử lý lỗi thường gặp](#-8-xử-lý-lỗi-thường-gặp)
9. [Lưu ý](#-9-lưu-ý)

> Dành cho người phát hành bản mới: xem [docs/OTA-DEV.md](docs/OTA-DEV.md).

---

## 🧰 1. Chuẩn bị

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

## 🔓 2. Bật ADB trên xe

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

## 🔌 3. Kết nối ADB từ máy tính

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

Nếu báo `unauthorized` hay không kết nối được, xem [Xử lý lỗi](#-8-xử-lý-lỗi-thường-gặp).

---

## 📲 4. Cài app điều khiển EX2 VN Control

1. Vào [**Releases**](../../releases) và tải file APK mới nhất của EX2 VN Control (`EX2VNControl_v1.3.1.apk`).
2. Cài lên xe:

```bash
adb install -r -g EX2VNControl_v1.3.1.apk
```

> `-r` cài đè bản cũ, `-g` cấp sẵn các quyền cần thiết.

3. Mở app **EX2 VN Control** trên màn xe, làm theo màn hướng dẫn ban đầu (cấp quyền, kích hoạt key nếu có).
4. Muốn dùng giọng nói tiếng Việt: xem mục [Ra lệnh giọng nói](#-ra-lệnh-giọng-nói).

---

## 🎬 5. Cài app giải trí và tiện ích

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

Repo có sẵn script hỗ trợ: [`tools/xapk_to_apk.py`](tools/xapk_to_apk.py).

### Sau khi cài

- **YouTube / YT Music:** mở **microG** trước, đăng nhập tài khoản Google, rồi mới mở YouTube.
- **Vietmap:** vào Cài đặt xe → *Chuyển văn bản thành giọng nói* → chọn **Google** để có giọng đọc tiếng Việt.
- Có thể ghim 3 app hay dùng vào **3 ô mở app nhanh** trong EX2 VN Control (giữ ô để đổi app).

---

## ✨ 6. Tính năng đang chạy

Danh sách dưới đây lấy trực tiếp từ danh mục tính năng trong app (`PaidFeatureCatalog`), phiên bản **1.3.1**.

### 🚘 Điều khiển xe

- Khóa cửa, xem cửa đang mở hay đóng
- Mở / đóng cốp trước, cốp sau
- Hạ, lên, hé kính từng cửa hoặc cả bốn cửa
- Chế độ lái **Êm / Thoải mái / Sport**, nhớ khi tắt máy
- Phanh tái tạo **nhẹ / vừa / mạnh**, nhớ khi tắt máy
- Điều hòa: nhiệt độ, quạt, hướng gió, gió trong / gió ngoài, sấy kính
- Nhiệt độ số hiển thị trên thanh điều hòa của xe
- Hiển thị áp suất lốp (TPMS)
- Tắt tiếng và đổi tiếng cảnh báo người đi bộ (AVAS)
- Rửa xe, dọn app, mở app tự động lúc nổ máy

### 🔋 Năng lượng và hành trình

- Pin, số km, tầm đi, trạng thái sạc và giới hạn sạc
- **Hành trình:** km, kWh, lộ trình GPS bám đường bản đồ, xem theo 7 ngày / 30 ngày / 3 tháng
- **Sổ sạc:** ghi kWh, AC/DC và tiền điện mỗi lần cắm sạc
- **Trụ sạc gần bạn:** tìm trụ trong 20 km (EV HUB), lọc theo hãng đã nạp tiền
- Hiện **% pin** trên thanh trạng thái cạnh biểu tượng Wi‑Fi

### 🎙️ Ra lệnh giọng nói

- Ra lệnh **tiếng Việt và tiếng Anh** qua Google (cần Wi‑Fi và dịch vụ Google), hiểu câu nói tự nhiên, phản hồi nhanh
- Mở bằng **phím thoại trên vô lăng**, có sóng âm trên thanh bar và tiếng "ting" khi sẵn sàng nghe
- **Gán phím mũi tên vô lăng:** chuyển bài, chế độ lái, phanh tái sinh, quạt (chuyển bài cả trên YouTube / YT Music)

### 🖥️ Giao diện và màn hình

- **Chia hai màn** nhưng vẫn giữ thanh bar của xe
- **Nút nổi (widget):** chọn hiện trên màn Home hoặc trên mọi app
- **3 ô mở app nhanh**, giữ để đổi app khác
- Biểu tượng Wi‑Fi và chia màn trên thanh bar
- Chỉnh độ sáng màn ban ngày / ban đêm
- Tự tối màn khi nghỉ, nhạc vẫn chạy
- Giao diện **sáng / tối** theo chế độ ngày đêm của xe
- **Camera góc khi rẽ:** hiện bên trái / phải theo xi nhan
- Camera lùi nền tối, đỡ chói ban đêm *(bản Pro)*

### 📱 Kết nối điện thoại

- Gửi **ảnh** từ điện thoại sang kho hình của xe (JPG, PNG, HEIF) qua mã QR
- Gửi **link Google Maps** từ điện thoại, xe tự dẫn đường tới địa điểm
- 📲 **Điều khiển xe qua Telegram:** hỏi pin, bật điều hòa, khóa cửa, tìm xe, gửi điểm đến, nhận báo sạc và nhắc quên tắt máy. [Xem hướng dẫn chi tiết →](docs/TELEGRAM.md)

### 🧩 Kho app và hệ thống

- **Kho app** cài thẳng lên xe, có giọng đọc tiếng Việt
- Ẩn các app hỗ trợ khỏi ngăn app của xe; giữ lại EX2 VN Control, Hành trình, microG, giải trí và chỉ đường
- Tự bắt Wi‑Fi
- Tắt app khi khóa màn để tiết kiệm tài nguyên
- Giữ app không bị xe tự tắt khi thu xuống nền
- **OTA:** nhận bản mới trực tiếp trên xe

---

## 🔄 7. Cập nhật bản mới (OTA)

- Trong app: mở **Cài đặt EX2 VN Control → Kiểm tra cập nhật**. App đọc `version.json` trên GitHub và mời cập nhật khi có bản mới hoặc bản vá.
- Thủ công: tải APK mới ở [Releases](../../releases) rồi chạy lại `adb install -r -g <file>.apk`.

---

## 🛠️ 8. Xử lý lỗi thường gặp

| Lỗi | Cách xử lý |
|---|---|
| Nhập mã menu ẩn không vào | Kiểm tra lại công thức và dùng đúng giờ đang hiện trên xe. Thử thêm/bỏ số 0 ở ngày, giờ. Đã tắt Bluetooth chưa? |
| Màn hình báo lỗi cuối lúc cài bản vá | **Bình thường**. Nhấn giữ nút Back cho tới khi xe khởi động lại |
| Không thấy IP / không kết nối được Wi‑Fi | Vào lại menu ẩn → cấu hình Wi‑Fi, thử mạng khác (phát Wi‑Fi từ điện thoại) |
| `adb: command not found` | Chưa cài ADB hoặc chưa thêm vào PATH. Cài lại theo [mục 1](#-1-chuẩn-bị) |
| `failed to connect to 192.168.x.x:5555` | Kiểm tra xe và máy tính cùng Wi‑Fi, IP đúng, và đã cài bản vá ADB (mục 2). Khởi động lại xe rồi thử lại |
| `device unauthorized` | Nhìn màn xe, bấm **Cho phép**. Nếu không hiện: `adb kill-server` rồi `adb connect …` lại |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | Gỡ bản cũ: `adb uninstall <package>` rồi cài lại |
| `INSTALL_FAILED_NO_MATCHING_ABIS` | File APK sai kiến trúc CPU. Tải bản `arm64` |
| `INSTALL_FAILED_INSUFFICIENT_STORAGE` | Hết bộ nhớ. Gỡ bớt app hoặc dọn app trong EX2 VN Control |
| YouTube báo lỗi đăng nhập | Cài và đăng nhập **microG** trước |
| Vietmap không đọc tiếng Việt | Cài **Google Text‑to‑Speech** và chọn làm trình đọc mặc định |

---

## ⚠️ 9. Lưu ý

- Dự án **không chính thức**, không liên kết với Geely. Bạn tự chịu trách nhiệm khi cài app ngoài lên xe.
- Không thao tác điều khiển xe (kính, cốp, chế độ lái…) khi đang chạy nếu chưa chắc chắn về an toàn.
- Các app YouTube / YT Music dạng Morphe, Spotify là bản của bên thứ ba: hãy chỉ dùng cho mục đích cá nhân và tôn trọng bản quyền, điều khoản của nhà cung cấp.
- Chỉ tải APK từ mục [Releases](../../releases) của repo này để tránh file giả mạo.

---

<div align="center">

Thực hiện bởi **Xe Chơi**

💬 [Tham gia nhóm Zalo Xe Chơi](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
