<div align="center">

# 🚗 VietControl — Geely EX2 Việt Nam

**Ứng dụng điều khiển xe, kho app giải trí và tiện ích dành riêng cho Geely EX2 (bản Việt Nam).**

Thực hiện bởi **Xe Chơi** · 💬 [Tham gia nhóm Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x)

![Android 9](https://img.shields.io/badge/Android-9%20(IHU)-3DDC84?logo=android&logoColor=white)
![Version](https://img.shields.io/badge/version-1.3.0-blue)
![Language](https://img.shields.io/badge/ng%C3%B4n%20ng%E1%BB%AF-Ti%E1%BA%BFng%20Vi%E1%BB%87t-red)

<img src="docs/images/main-light.png" width="720" alt="Màn hình chính VietControl trên Geely EX2">

</div>

---

## 📑 Mục lục

1. [Chuẩn bị](#-1-chuẩn-bị)
2. [Bật ADB trên xe](#-2-bật-adb-trên-xe)
3. [Kết nối ADB từ máy tính](#-3-kết-nối-adb-từ-máy-tính)
4. [Cài app điều khiển VietControl](#-4-cài-app-điều-khiển-vietcontrol)
5. [Cài app giải trí và tiện ích](#-5-cài-app-giải-trí-và-tiện-ích)
6. [Tính năng đang chạy](#-6-tính-năng-đang-chạy)
7. [Cập nhật bản mới (OTA)](#-7-cập-nhật-bản-mới-ota)
8. [Xử lý lỗi thường gặp](#-8-xử-lý-lỗi-thường-gặp)
9. [Lưu ý](#-9-lưu-ý)

> Dành cho người phát hành bản mới: xem [docs/OTA-DEV.md](docs/OTA-DEV.md).

---

## 🧰 1. Chuẩn bị

| Cần có | Ghi chú |
|---|---|
| Xe Geely EX2 (màn IHU Android 9) | Xe và máy tính **cùng một mạng Wi‑Fi** nếu dùng ADB không dây |
| Máy tính Windows / macOS / Linux | Để chạy lệnh `adb` |
| **ADB (Android Platform Tools)** | Tải chính thức: <https://developer.android.com/tools/releases/platform-tools> |
| File APK | Tải ở mục [Releases](../../releases) của repo này |

**Cài ADB nhanh:**

```bash
# macOS (Homebrew)
brew install android-platform-tools
```

```bash
# Windows (PowerShell / winget)
winget install Google.PlatformTools
```

Kiểm tra đã cài xong:

```bash
adb version
```

---

## 🔓 2. Bật ADB trên xe

> ⚠️ Tên menu có thể khác nhau chút tùy phiên bản phần mềm xe. Nếu không thấy mục nào bên dưới, hãy tìm trong **Cài đặt → Hệ thống / Giới thiệu**.

1. Trên màn xe mở **Cài đặt → Giới thiệu (About)**.
2. Chạm liên tục **7 lần** vào **Số bản dựng (Build number)** cho tới khi hiện thông báo *"Bạn đã là nhà phát triển"*.
3. Quay lại **Cài đặt → Tùy chọn nhà phát triển (Developer options)**.
4. Bật **Gỡ lỗi USB (USB debugging)**.
5. Nếu có mục **Gỡ lỗi ADB qua mạng / Wireless debugging**, hãy bật luôn.
6. Vào **Cài đặt → Wi‑Fi**, kết nối xe vào mạng Wi‑Fi (hoặc phát Wi‑Fi từ điện thoại). Ghi lại **địa chỉ IP** của xe (ví dụ `192.168.0.130`).

---

## 🔌 3. Kết nối ADB từ máy tính

**Cách A — ADB không dây (khuyên dùng, không cần cáp):**

```bash
adb connect 192.168.0.130:5555
```

Thay `192.168.0.130` bằng IP xe của bạn. Kiểm tra:

```bash
adb devices
```

Kết quả có dòng `192.168.0.130:5555   device` là thành công. Lần đầu xe có thể hiện hộp thoại **"Cho phép gỡ lỗi USB?"** → chọn **Luôn cho phép** → **OK**.

**Cách B — Qua cáp USB:** cắm cáp vào cổng USB dữ liệu của xe, chạy `adb devices` và cho phép trên màn xe.

Nếu máy hiện `unauthorized`, xem [Xử lý lỗi](#-8-xử-lý-lỗi-thường-gặp).

---

## 📲 4. Cài app điều khiển VietControl

1. Vào [**Releases**](../../releases) và tải file APK mới nhất của VietControl (`EX2VNControl_v1.3.0.apk`).
2. Cài lên xe:

```bash
adb install -r -g EX2VNControl_v1.3.0.apk
```

> `-r` cài đè bản cũ, `-g` cấp sẵn các quyền cần thiết.

3. Mở app **VietControl** trên màn xe, làm theo màn hướng dẫn ban đầu (cấp quyền, kích hoạt key nếu có).
4. Muốn dùng giọng nói tiếng Việt: xem mục [Ra lệnh giọng nói](#-ra-lệnh-giọng-nói).

---

## 🎬 5. Cài app giải trí và tiện ích

Tất cả app nằm ở release [`v1.0.0-apps`](https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases/tag/v1.0.0-apps). Bạn có thể cài **thủ công bằng ADB** như dưới đây, hoặc mở **Kho app** ngay trong VietControl để cài bằng vài chạm.

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
- Có thể ghim 3 app hay dùng vào **3 ô mở app nhanh** trong VietControl (giữ ô để đổi app).

---

## ✨ 6. Tính năng đang chạy

Danh sách dưới đây lấy trực tiếp từ danh mục tính năng trong app (`PaidFeatureCatalog`), phiên bản **1.3.0**.

### 🚘 Điều khiển xe

- Khóa cửa, xem cửa đang mở hay đóng
- Mở / đóng cốp trước, cốp sau
- Hạ, lên, hé kính từng cửa hoặc cả bốn cửa
- Chế độ lái **Êm / Thoải mái / Sport**, nhớ khi tắt máy
- Phanh tái tạo **nhẹ / vừa / mạnh**, nhớ khi tắt máy
- Điều hòa: nhiệt độ, quạt, hướng gió, sấy kính
- Nhiệt độ số hiển thị trên thanh điều hòa của xe
- Hiển thị áp suất lốp (TPMS)
- Tắt tiếng và đổi tiếng cảnh báo người đi bộ (AVAS)
- Rửa xe, dọn app, mở app tự động lúc nổ máy

### 🔋 Năng lượng và hành trình

- Pin, số km, tầm đi, trạng thái sạc và giới hạn sạc
- **Hành trình:** km, kWh, lộ trình GPS bám đường bản đồ
- **Sổ sạc:** ghi kWh, AC/DC và tiền điện mỗi lần cắm sạc
- **Trụ sạc gần bạn:** tìm trụ trong 20 km (EV HUB), lọc theo hãng đã nạp tiền
- Hiện **% pin** trên thanh trạng thái cạnh biểu tượng Wi‑Fi

### 🎙️ Ra lệnh giọng nói

- Ra lệnh **tiếng Việt và tiếng Anh** qua Google (cần Wi‑Fi và dịch vụ Google)
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
- Báo qua **Telegram** khi bắt đầu / kết thúc sạc và khi quên tắt máy

### 🧩 Kho app và hệ thống

- **Kho app** cài thẳng lên xe, có giọng đọc tiếng Việt
- Ẩn các app hỗ trợ khỏi ngăn app của xe; giữ lại VietControl, Hành trình, microG, giải trí và chỉ đường
- Tự bắt Wi‑Fi
- Tắt app khi khóa màn để tiết kiệm tài nguyên
- Giữ app không bị xe tự tắt khi thu xuống nền
- **Chế độ bảo dưỡng:** giấu tính năng khi đưa xe vào xưởng
- **OTA:** nhận bản mới trực tiếp trên xe

---

## 🔄 7. Cập nhật bản mới (OTA)

- Trong app: mở **Cài đặt VietControl → Kiểm tra cập nhật**. App đọc `version.json` trên GitHub và mời cập nhật khi có bản mới hoặc bản vá.
- Thủ công: tải APK mới ở [Releases](../../releases) rồi chạy lại `adb install -r -g <file>.apk`.

---

## 🛠️ 8. Xử lý lỗi thường gặp

| Lỗi | Cách xử lý |
|---|---|
| `adb: command not found` | Chưa cài ADB hoặc chưa thêm vào PATH. Cài lại theo [mục 1](#-1-chuẩn-bị) |
| `failed to connect to 192.168.x.x:5555` | Kiểm tra xe và máy tính cùng Wi‑Fi, IP đúng, đã bật Gỡ lỗi USB. Thử tắt/bật lại tùy chọn đó |
| `device unauthorized` | Nhìn màn xe, bấm **Cho phép**. Nếu không hiện: `adb kill-server` rồi `adb connect …` lại |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | Gỡ bản cũ: `adb uninstall <package>` rồi cài lại |
| `INSTALL_FAILED_NO_MATCHING_ABIS` | File APK sai kiến trúc CPU. Tải bản `arm64` |
| `INSTALL_FAILED_INSUFFICIENT_STORAGE` | Hết bộ nhớ. Gỡ bớt app hoặc dọn app trong VietControl |
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

Made with ❤️ cho cộng đồng Geely EX2 Việt Nam

</div>
