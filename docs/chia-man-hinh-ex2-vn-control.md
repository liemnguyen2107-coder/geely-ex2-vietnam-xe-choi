# Chia đôi màn hình trực tiếp trên head unit Geely EX2 (VN) — chạy song song Vietmap / Google Maps / YouTube / YT Music

> **Cập nhật:** 16/09/2026 · **Phạm vi:** Chia đôi màn hình **ngay trên màn hình xe (head unit) 14.6" chạy Flyme Auto** của Geely EX2 (Pro/Max) bản Việt Nam. Mục tiêu: chạy song song bản đồ + giải trí (Vietmap, Google Maps, Waze, YouTube Morphe, YT Music, Spotify). App tham chiếu: **EX2 VN Control** v1.2.7.

---

## 0. Tóm tắt nhanh (TL;DR)

- **EX2 bản Việt Nam (ra mắt 27/03/2026, Pro & Max) dùng Flyme Auto, nhưng nguồn chính hãng/báo chí VN KHÔNG ghi rõ số phiên bản.** Bản **Flyme Auto 2.0** chỉ được xác nhận trên **bản facelift 2026 tại Trung Quốc** (chip Longying No.1 7nm, RAM 16GB) và **bản 2026 tại Thái Lan** — không phải lô xe VN đầu tiên. ⇒ **Nhiều khả năng lô EX2 VN đang bán chạy Flyme Auto 1.x**, trừ khi đã được cập nhật OTA. **Hãy kiểm tra trên xe** (mục [1.2](#12-cách-kiểm-tra-xe-của-bạn-đang-flyme-mấy)).
- **Flyme Auto là nền Android** ⇒ cách chia đôi thực dụng nhất là **Android split‑screen qua nút đa nhiệm (Recents)**: chạy được **1 app bản đồ + 1 app giải trí** cạnh nhau. Nếu xe đã lên **Flyme Auto 2.0** thì có thêm **"one‑screen dual‑application"** làm sẵn việc này mượt hơn.
- **Cặp app chạy tốt cạnh nhau:** Vietmap / Google Maps / Waze **(bên trái)** + YouTube Morphe / YT Music / Spotify **(bên phải)**. Các app bản đồ và media này đều **cho phép resize** nên hỗ trợ split‑screen tốt.
- **Giới hạn cốt lõi — âm thanh:** Android chỉ có **một "audio focus"**. Chạy **2 app cùng phát tiếng** (ví dụ YouTube + Spotify) thì **app mở sau sẽ chiếm tiếng, app kia bị tạm dừng/nhỏ tiếng**. Cặp hợp lý là **bản đồ (chỉ đọc dẫn đường, tự né nhạc) + 1 app nhạc/video**, **không phải 2 app nhạc/video cùng lúc**.
- ⚠️ Nhiều tính năng video bị chặn khi xe đang chạy; chỉ dùng khi dừng/đỗ.

---

## 1. Geely EX2 (VN) dùng Flyme Auto mấy?

### 1.1. Kết luận theo nguồn
- **Lô EX2 Việt Nam** (Tasco Auto phân phối, ra mắt **27/03/2026**, hai bản **Pro/Max**, pin 39.4 kWh) được mô tả là dùng **"hệ điều hành Flyme Auto"** — **không kèm số phiên bản** trong mọi thông cáo/hồ sơ báo chí VN mà mình tra được (Geely VN, VnExpress, Dân trí, đánh giá độc lập).
- **Flyme Auto 2.0** chỉ xuất hiện trên **bản nâng cấp/facelift 2026 ở Trung Quốc** (Geome Xingyuan) với **chip Longying No.1 7nm, CPU 8 nhân, RAM 16GB, ROM 128GB, tương tác giọng nói 2 vùng** — và được **Thái Lan** công bố cho bản 2026. Đây là cấu hình **khác** với lô EX2 VN đầu tiên.
- Do đó, **nhận định hợp lý:** EX2 VN lô đầu **nhiều khả năng chạy Flyme Auto 1.x** (nền Android), còn Flyme Auto 2.0 là hướng nâng cấp có thể tới VN qua **OTA** về sau (Geely VN xác nhận xe có cập nhật phần mềm OTA). **Đây chưa phải khẳng định từ hãng cho thị trường VN — cần kiểm tra thực tế trên xe.**

### 1.2. Cách kiểm tra xe của bạn đang Flyme mấy
Trên head unit: **Cài đặt (Settings) → Giới thiệu/Thông tin hệ thống (About / System)** → xem tên **"Flyme Auto"** kèm số phiên bản, hoặc số bản dựng (build). Có thể đối chiếu thêm: bản 2.0 thường có **"live desktop"**, **dẫn đường 3D**, và mục **chia đôi màn 2 app** ngay trong giao diện Flyme; RAM 16GB là dấu hiệu của cấu hình 2.0 (TQ/Thái).

> Nếu không chắc, cứ thử **cách Android split‑screen ở mục 2** — cách này áp dụng cho cả Flyme 1.x lẫn 2.0 vì đều nền Android.

---

## 2. Trường hợp Flyme Auto 1.x — Android multi‑window (split‑screen)

Đây là cách phổ biến nhất và áp dụng được cho cả 2.0. Yêu cầu nền **Android 10+** và ROM không khoá đa cửa sổ.

### 2.1. Các bước bật chia đôi màn hình
1. **Mở app bản đồ trước** (ví dụ **Vietmap Live** hoặc **Google Maps**).
2. Bấm **Home** để về màn hình chính, rồi **mở app thứ hai** (ví dụ **YouTube Morphe** hoặc **YT Music**).
3. Mở **trình đa nhiệm (Recents)** — biểu tượng **hai hình chữ nhật xếp chồng** hoặc **ba vạch dọc** trên thanh điều hướng. Nếu head unit ẩn thanh này, **vuốt từ cạnh dưới lên và giữ**.
4. Trong Recents, **nhấn giữ icon app** ở đầu thẻ của app muốn ghim → chọn **"Chia đôi màn hình" / "Split screen" / 分屏**.
5. App đó dạt về **một nửa màn hình**; **chạm app thứ hai** trong danh sách còn lại để lấp nửa kia.
6. Kéo **thanh phân cách ở giữa** để chỉnh tỉ lệ (nếu ROM cho phép). Trên màn 14.6" ngang, thường chia **trái–phải**: bản đồ bên trái, giải trí bên phải.

### 2.2. Nếu không thấy nút "Chia đôi màn hình"
- Một số ROM head unit **ẩn/khoá** mục này. Thử bật **Tùy chọn nhà phát triển (Developer options)** → **"Ép các hoạt động có thể đổi kích thước" / "Force activities to be resizable"**, khởi động lại, rồi thử lại bước 3–5.
- Nếu vẫn không có, khả năng nhà sản xuất đã tắt đa cửa sổ ở bản firmware này → cân nhắc chờ **OTA** hoặc dùng cửa sổ theo ngữ cảnh của EX2 VN Control (mục [4](#4-cửa-sổ-theo-ngữ-cảnh-của-ex2-vn-control)).

### 2.3. Cặp app nào chạy cạnh nhau được (danh sách của bạn)

| App | Hỗ trợ split‑screen | Ghi chú |
|---|---|---|
| **Vietmap Live** | ✅ Có | App bản đồ, resize tốt. Bản kho là **XAPK "đủ split"** (đây là *split APK* — gói cài, **không** liên quan chia màn). Là app dẫn đường → nên đặt bên **trái**, để nó chỉ đọc TTS (không chiếm nhạc). |
| **Google Maps** | ✅ Có | Hỗ trợ đa cửa sổ tốt; đọc dẫn đường sẽ **né/nhỏ nhạc** của app kia thay vì tắt hẳn. Nên cài kèm microG để đăng nhập/tìm kiếm đủ. |
| **Waze** | ✅ Có (thường) | App bản đồ, chạy tốt trên màn xe; hành vi âm thanh giống Google Maps. |
| **YouTube Morphe** | ✅ Có (thường) | Bản mod cho màn xe; video chạy ở nửa còn lại. **Là nguồn phát tiếng chính** → ghép với 1 app bản đồ, đừng ghép thêm app nhạc. |
| **YT Music Morphe** | ✅ Có | App nhạc; đặt bên **phải**, bản đồ bên trái là cặp lý tưởng. |
| **Spotify** | ✅ Có | Tương tự YT Music. **Không** chạy đồng thời với YouTube/YT Music (tranh audio focus). |

**Cặp khuyến nghị (chạy ổn):**
- **Vietmap/Google Maps/Waze (trái) + YT Music/Spotify (phải)** → vừa dẫn đường vừa nghe nhạc; giọng dẫn đường tự "ducking" (nhỏ nhạc tạm thời) rồi trả lại.
- **Vietmap/Google Maps (trái) + YouTube Morphe (phải)** → dùng khi **đỗ xe**; tiếng ưu tiên YouTube.

**Cặp KHÔNG nên (tranh nhau):**
- **YouTube + Spotify**, hay **YT Music + Spotify**: hai nguồn media cùng đòi audio focus → app mở sau **tạm dừng** app trước. Chỉ một app phát tiếng tại một thời điểm.

### 2.4. Giới hạn cần biết (Flyme 1.x / Android)
- **Âm thanh:** chỉ một audio focus (đã nêu). Cặp "bản đồ + 1 media" là tối ưu.
- **App khoá đa cửa sổ:** app khai báo `resizeableActivity=false` sẽ báo *"không hỗ trợ chia đôi màn hình"* → phải dùng mẹo "Force resizable" ở [2.2](#22-nếu-không-thấy-nút-chia-đôi-màn-hình), và ngay cả vậy có thể lỗi hiển thị.
- **Hiệu năng:** chip/RAM lô VN thấp hơn cấu hình 2.0 (16GB) → chia đôi + video có thể giật; ưu tiên nhạc thay vì video khi chạy.
- **An toàn:** video (YouTube) thường bị chặn khi xe đang lăn bánh; bản đồ + nhạc thì bình thường.

---

## 3. Trường hợp Flyme Auto 2.0 — "one‑screen dual‑application"

Nếu xe (hoặc sau OTA) chạy **Flyme Auto 2.0**, hệ điều hành có sẵn tính năng **hai ứng dụng trên một màn hình (one‑screen dual‑application)** — làm đúng nhu cầu chạy song song mà không cần mẹo Android.

**Cách bật (theo giao diện Flyme 2.0):**
1. Mở app thứ nhất (ví dụ Google Maps).
2. Vào **màn hình đa nhiệm** của Flyme (hoặc vuốt theo chỉ dẫn trên xe), tìm biểu tượng **"分屏 / Split / Dual app"**.
3. Kéo/chọn app thứ hai (YT Music/YouTube) vào **nửa còn lại**.

**Layout & hỗ trợ app:**
- Bố cục **hai cột trái–phải** trên màn 14.6"; một số bản cho **chỉnh tỉ lệ** hoặc **đổi vị trí** hai app.
- App bản đồ + app nhạc/video trong danh sách của bạn đều là app Android tiêu chuẩn nên **tương thích**; quy tắc **audio focus vẫn áp dụng** (một nguồn tiếng tại một thời điểm).
- Flyme 2.0 còn có **live desktop** và **dẫn đường 3D** — không liên quan chia màn nhưng là dấu hiệu nhận biết bản 2.0.

> Thao tác cụ thể có thể khác theo bản dựng/khu vực; chưa có tài liệu chính hãng tiếng Việt mô tả từng bước cho EX2 VN. Nếu thấy mục chia đôi trong giao diện Flyme, ưu tiên dùng nó; nếu không, quay lại cách Android ở [mục 2](#2-trường-hợp-flyme-auto-1x--android-multi-window-split-screen).

---

## 4. Cửa sổ theo ngữ cảnh của EX2 VN Control

Ngoài split‑screen của hệ điều hành, chính **EX2 VN Control** có một cơ chế **cửa sổ nửa màn theo ngữ cảnh** (không phải split‑screen tổng quát):
- **Bật xi‑nhan** → app **mở cửa sổ DualDashcam ở nửa màn bên phải** (đang thử nghiệm, v1.2.7). **Chạm cửa sổ** để đổi cam sau / trái / phải. Không lấy luồng 360 gốc của xe.
- Cần cài **DualDashcam** từ kho app (mục *Tiện Ích*) trong EX2 VN Control.

Đây là bổ trợ tiện lợi khi chuyển làn/lùi, dùng song song với việc mở bản đồ toàn màn.

---

## 5. Những điều nên xác nhận trên xe

1. **Flyme Auto 1.x hay 2.0** (Cài đặt → Giới thiệu). Quyết định dùng cách [2] hay [3].
2. **Recents có mục "Chia đôi màn hình" không**; nếu không, thử "Force resizable".
3. **Kiểm tra cặp app thực tế**: mở bản đồ + nhạc, xác nhận nhạc không bị tắt khi có dẫn đường.

---

## 6. Nguồn tham khảo

**Phiên bản Flyme Auto:**
- Wikipedia — Geely EX2 (ra mắt VN 27/03/2026, Pro/Max, 39.4 kWh; head unit 14.6" Flyme Auto): https://en.wikipedia.org/wiki/Geely_EX2
- Geely Việt Nam — thông cáo ra mắt EX2 (dùng "hệ điều hành Flyme Auto", không nêu phiên bản): https://geely.vn/tin-tuc/geely-viet-nam-ra-mat-bo-doi-xe-nang-luong-moi-geely-ex5-em-i-va-geely-ex2-mo-rong-lua-chon-di-chuyen-xanh/
- Geely Việt Nam — trang sản phẩm EX2: https://geely.vn/san-pham/geely-ex2/
- VnExpress — EX2 VN (Pro/Max, màn 14.6"): https://vnexpress.net/oto-xe-may/v-car/dong-xe/geely-ex2-324
- Dân trí — EX2 dùng Flyme Auto (không nêu phiên bản): https://dantri.com.vn/o-to-xe-may/suv-dien-do-thi-geely-ex2-khong-gian-va-trang-bi-vuot-troi-trong-phan-khuc-hang-a-20260310103442707.htm
- Motorist Thailand — EX2 2026 dùng **Flyme Auto 2.0**, chip Longying No.1 7nm, RAM 16GB: https://www.motorist.co.th/en/article/5942/the-2026-geely-ex2-releases-its-latest-spec-upgrade-fully-loaded-with-high-speed-1-66c-charging-and-the-flyme-auto-2-0-operating-system-at-an-introductory-price-under-300-000-baht
- Xehay — EX2 2026 (TQ) nâng cấp **Galaxy Flyme Auto 2.0**, RAM 16GB/128GB: https://www.xehay.vn/geely-ex2-co-ban-nang-cap-moi-tang-tam-hoat-dong-len-480-km-them-ho-tro-lai-thong-minh.html

**Tính năng chia màn & Flyme Auto 2:**
- ChinaEVHome — Flyme Auto 2 bổ sung **"one‑screen dual‑application"**: https://chinaevhome.com/2025/08/21/geely-unveils-flyme-auto-2-unified-user-id-ai-agents-and-ai-os-architecture/
- Geely toàn cầu — EX2 tích hợp Flyme Auto, màn kép: https://www.geely.com/en/models/geely-ex2

**Chia đôi màn hình Android trên ô tô (thao tác thực tế):**
- Vincar — hướng dẫn 3 bước chia đôi màn hình Android ô tô (Android 10+): https://vincarvietnam.com/cach-chia-doi-man-hinh-android-o-to-3-buoc-dung-2-ung-dung-cung-luc/
- Android Box Geely EX2 (chia đôi vừa bản đồ vừa nhạc/video): https://thienauto.com/product/android-box-geely-ex2/ · https://thanhphatauto.net/anh-quang-lap-android-box-xe-geely-ex2-tai-quan-go-vap-de-xem-youtube-va-dan-duong/

**Dữ liệu nội bộ dự án EX2 VN Control:** `apk/version.json` (v1.2.7), `apps/apps.json` (Vietmap "XAPK đủ split", DualDashcam theo xi‑nhan), `README.md`.
