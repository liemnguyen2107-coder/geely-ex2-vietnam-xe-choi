# Nghiên cứu: Các cách chia màn hình (split screen) với "EX2 VN Control" trên Geely EX2 tại Việt Nam

> **Cập nhật:** 16/09/2026 · **Phạm vi:** Xe điện Geely EX2 (Pro/Max) tại Việt Nam, app **EX2 VN Control** phiên bản v1.2.7 (versionCode 19).

---

## 0. Tóm tắt nhanh (TL;DR)

- **EX2 VN Control chạy trên MÀN HÌNH XE (head unit), không phải trên điện thoại.** Đây là app Android bên thứ ba (không phải app "Geely" chính hãng), cài lên màn hình 14.6" chạy **Flyme Auto** (nền tảng Android) của Geely EX2, và cập nhật OTA qua GitHub. Vì head unit là Android nên **các cách chia màn hình của Android đều áp dụng được cho màn hình xe.**
- **App có sẵn một cơ chế "cửa sổ" riêng:** khi bật xi‑nhan, EX2 VN Control tự **mở cửa sổ DualDashcam ở nửa màn hình bên phải** (tính năng đang thử nghiệm, v1.2.7). Đây là dạng "chia màn" theo ngữ cảnh do chính app điều khiển, không phải split‑screen đa nhiệm chung.
- **3 cách chia đôi màn hình thực dụng nhất trên xe:**
  1. **Cửa sổ DualDashcam của EX2 VN Control** (tự bật theo xi‑nhan).
  2. **Android multi‑window / split‑screen** qua nút Recents (đa nhiệm) — chạy 2 app song song (ví dụ Vietmap + YouTube).
  3. **"One‑screen dual‑application"** của **Flyme Auto 2** (nếu bản Flyme trên xe đã được cập nhật).
- **Trên điện thoại:** app điều khiển xe chính hãng là **"Geely" (Geely Overseas App)**; nó không có split‑screen riêng, nhưng bạn có thể dùng **split‑screen của Android/iOS** để chạy nó cạnh app khác.
- ⚠️ Cần người dùng xác nhận: (a) bản Flyme Auto trên xe là Flyme Auto 1 hay 2; (b) phiên bản Android nền của head unit; (c) đang hỏi về màn hình xe hay điện thoại. Xem [mục 7](#7-những-điều-cần-người-dùng-xác-nhận).

---

## 1. Làm rõ "EX2 VN Control" là gì

Qua nội dung dự án (`README.md`, `apk/version.json`, `apps/apps.json`) và tìm kiếm web:

- **EX2 VN Control** là app Android **cộng đồng/bên thứ ba** dành cho **màn hình giải trí (head unit) của Geely EX2**, phân phối và cập nhật **OTA qua GitHub Release** (repo `liemnguyen2107-coder/geely-ex2-vietnam-xe-choi`). Nó đi kèm một "kho app" để cài thêm tiện ích lên xe (Vietmap, Google Maps, Waze, YouTube/YT Music Morphe, Spotify, DualDashcam, microG, Google TTS…).
- Đây **không phải** app "Geely" chính hãng. App chính hãng để điều khiển xe từ điện thoại tên là **"Geely" / Geely Overseas App** (`com.geely.android.intl` trên Android; ID `6670387299` trên App Store), yêu cầu iOS 13+ và chỉ hoạt động đầy đủ trên bản có kết nối 4G (ở nhiều thị trường là bản **Max**).
- **Head unit của EX2 dùng Flyme Auto**, màn hình cảm ứng 14.6" + đồng hồ 8.8". Flyme Auto là hệ điều hành nền Android do Meizu/Geely phát triển ⇒ cài được APK và dùng được các cơ chế đa cửa sổ của Android.

**Kết luận về "app chạy ở đâu":** EX2 VN Control là app **trên xe**. Do đó, phần lớn tài liệu này tập trung vào chia màn hình **trên head unit**; phần điện thoại nói về app "Geely" chính hãng.

---

## 2. Cách 1 — Tính năng "cửa sổ" sẵn có trong chính EX2 VN Control

EX2 VN Control **không có menu "chia đôi màn hình" tổng quát**, nhưng có một cơ chế **cửa sổ nổi/nửa màn theo ngữ cảnh**:

### 2.1. Cửa sổ DualDashcam khi bật xi‑nhan (v1.2.7)
Theo changelog v1.2.7 và mô tả app DualDashcam trong kho app:

> "Bật xi nhan thì EX2 VN Control mở cửa sổ DualDashcam (thử nửa màn phải). Chạm cửa sổ để đổi cam sau / trái / phải. Không lấy luồng 360 của xe."

**Cách dùng:**
1. Cài **DualDashcam** từ kho app trong EX2 VN Control (mục *Tiện Ích*).
2. Bật EX2 VN Control ở chế độ nền/hoạt động.
3. **Bật xi‑nhan** (trái hoặc phải) → app tự mở **cửa sổ camera ở nửa màn hình bên phải**.
4. **Chạm vào cửa sổ** để lần lượt đổi giữa cam sau / cam trái / cam phải.

**Giới hạn đã biết:**
- Đang ở trạng thái **thử nghiệm** ("thử nửa màn phải") — vị trí/kích thước có thể đổi ở bản sau.
- **Không** truy cập được luồng camera 360° gốc của xe; DualDashcam dùng camera riêng của app.
- Chỉ kích hoạt theo **sự kiện xi‑nhan**, không phải bật thủ công như split‑screen thông thường.

### 2.2. Thanh/cửa sổ ra lệnh giọng nói
App có thanh ra lệnh giọng nói (v1.2.7 làm to hơn) hiển thị dạng overlay; đây là cửa sổ phụ chứ không phải chia đôi màn.

> **Ghi chú thuật ngữ:** Trong `apps.json`, Vietmap Live ghi "bản XAPK **đủ split**". "Split" ở đây là **split APK** (gói cài đặt XAPK gồm nhiều APK), **không phải** chia đôi màn hình. Đừng nhầm.

---

## 3. Cách 2 — Android split‑screen / multi‑window trên head unit của xe

Vì head unit chạy nền Android (Flyme Auto), bạn có thể dùng đa nhiệm chia đôi màn hình của Android để chạy **EX2 VN Control (hoặc Vietmap/Google Maps) cùng lúc với một app khác** (ví dụ YouTube, Spotify).

**Các bước chung (Android 10 trở lên):**
1. **Mở app thứ nhất** (ví dụ Vietmap Live), rồi bấm **Home** để về màn hình chính.
2. **Mở app thứ hai** (ví dụ YouTube Morphe).
3. Mở **trình đa nhiệm (Recents)** — thường là **biểu tượng hai hình chữ nhật xếp chồng** hoặc **ba vạch dọc** trên thanh điều hướng. Nếu head unit ẩn thanh điều hướng, vuốt từ cạnh dưới lên và giữ.
4. **Nhấn giữ biểu tượng app** (ở đầu thẻ app trong Recents) → chọn **"Chia đôi màn hình" / "Split screen" / 分屏**.
5. App đó dạt về một nửa; **chạm app thứ hai** ở danh sách còn lại để lấp nửa kia.
6. Kéo **thanh phân cách** ở giữa để chỉnh tỉ lệ (nếu ROM cho phép).

**Yêu cầu & lưu ý:**
- Cần **Android 10+** và app **hỗ trợ resizable** thì mới chia được; một số app khoá chế độ này.
- Một số ROM head unit **ẩn hoặc khoá** mục "Split screen" trong Recents; nếu không thấy, tính năng có thể bị nhà sản xuất tắt hoặc phụ thuộc bản firmware/khu vực.
- Chip yếu/RAM thấp dễ giật; các bản Android Box đời mới (chip 8 nhân, RAM 4/6/8GB) chạy chia đôi mượt hơn.
- **An toàn:** nhiều tính năng video (YouTube) bị chặn khi xe đang chạy; hãy tuân thủ ràng buộc an toàn của xe.

---

## 4. Cách 3 — "One‑screen dual‑application" của Flyme Auto 2

- **Flyme Auto 2** (Geely công bố 08/2025) bổ sung các tính năng gồm **"one‑screen dual‑application" (hai ứng dụng trên một màn hình)**, live desktop, dẫn đường 3D. Đây là cơ chế chia đôi màn hình **cấp hệ điều hành** của chính Flyme.
- Nếu head unit EX2 của bạn **đã được cập nhật lên Flyme Auto 2**, hãy tìm thao tác chia đôi ngay trong giao diện Flyme:
  1. Mở app thứ nhất.
  2. Vào **màn hình đa nhiệm** của Flyme (hoặc vuốt theo hướng dẫn của Flyme), tìm biểu tượng **"分屏 / Split / Dual app"**.
  3. Kéo app thứ hai vào nửa còn lại, hoặc chọn từ danh sách.
- **Lưu ý:** Chưa có tài liệu chính hãng tiếng Việt xác nhận thao tác cụ thể trên EX2; khả dụng phụ thuộc **phiên bản Flyme** cài trên xe (Flyme Auto 1 có thể chưa có). Cần kiểm tra thực tế trên xe.

---

## 5. Cách 4 — Chia đôi màn hình khi dùng app điều khiển xe trên ĐIỆN THOẠI

Nếu ý bạn là app điều khiển xe chính hãng chạy trên điện thoại (**"Geely" / Geely Overseas App**):

- App này **không có tính năng split‑screen riêng**. Nhưng bạn có thể dùng **split‑screen của hệ điều hành điện thoại** để đặt nó cạnh app khác (ví dụ mở app Geely cạnh Google Maps).

**Android (điện thoại):**
1. Mở app **Geely**, bấm **Recents** (đa nhiệm).
2. Nhấn giữ **icon app Geely** ở đầu thẻ → chọn **"Chia đôi màn hình"**.
3. Chọn app thứ hai cho nửa còn lại.

**iPhone/iPad (iOS/iPadOS):**
- iPhone **không có** split‑screen kiểu Android. Chỉ có **Picture‑in‑Picture** cho video và **chuyển app nhanh**.
- Trên **iPad** thì có **Split View / Slide Over / Stage Manager** — nhưng app Geely là app iPhone, trải nghiệm iPad có thể hạn chế.

**Yêu cầu:** App "Geely" cần iOS 13+; điều khiển từ xa chỉ hoạt động trên bản xe **có 4G/Connected Services** và tài khoản dùng đúng email đã đăng ký với đại lý. Trước khi điều khiển từ xa, phải vào màn hình xe bật **Connected Services** và **chia sẻ vị trí xe**.

---

## 6. Yêu cầu, thiết lập & hạn chế đã biết (tổng hợp)

| Cách chia màn | Chạy ở đâu | Yêu cầu | Hạn chế chính |
|---|---|---|---|
| Cửa sổ DualDashcam (EX2 VN Control) | Head unit | EX2 VN Control v1.2.7+, cài DualDashcam | Đang thử nghiệm; chỉ bật theo xi‑nhan; không có luồng 360 |
| Android split‑screen | Head unit | Android 10+, app resizable, ROM không khoá | Một số ROM ẩn/khoá; phụ thuộc chip/RAM; ràng buộc an toàn khi lái |
| Flyme Auto 2 dual‑app | Head unit | Đã cập nhật **Flyme Auto 2** | Chưa rõ có trên mọi xe EX2; phụ thuộc phiên bản/khu vực |
| Split‑screen điện thoại (app Geely) | Điện thoại | Android 7+; app Geely; (iOS: hạn chế) | iPhone không có split‑screen thật; cần 4G/Connected Services |

**Lưu ý an toàn & pháp lý:** Thao tác chia màn/xem video trên màn hình xe khi đang lái tiềm ẩn mất tập trung và có thể bị hệ thống của xe chặn; chỉ dùng khi dừng/đỗ.

**Lưu ý về nguồn app:** EX2 VN Control và các APK trong kho app là **bên thứ ba**. Cài từ nguồn không rõ ràng có rủi ro bảo mật và có thể ảnh hưởng bảo hành/hệ thống xe. Cân nhắc kỹ.

---

## 7. Những điều cần người dùng xác nhận

1. **Bối cảnh:** Bạn muốn chia màn hình **trên màn hình xe (head unit)** hay **trên điện thoại**? (Tài liệu này giả định head unit vì EX2 VN Control chạy trên xe.)
2. **Phiên bản Flyme Auto** trên xe: **Flyme Auto 1** hay **Flyme Auto 2**? (Quyết định có dùng được "one‑screen dual‑application" hay không.)
3. **Phiên bản Android nền** của head unit (để biết Android split‑screen có sẵn không).
4. **Bản xe:** Pro hay Max (bản có 4G để điều khiển từ xa qua app Geely).
5. Bạn muốn **layout nào**: DualDashcam nửa phải theo xi‑nhan, hay chạy 2 app tự chọn song song?

---

## 8. Nguồn tham khảo

- App "Geely" (Geely Overseas App) — App Store: https://apps.apple.com/id/app/geely/id6670387299
- App "Geely" — Google Play (`com.geely.android.intl`): https://play.google.com/store/apps/details?hl=en_US&id=com.geely.android.intl
- Video hướng dẫn app Geely (bật Connected Services / chia sẻ vị trí): https://www.youtube.com/watch?v=H4MINasyhvg
- Geely EX2 (trang chính hãng VN) — màn hình 14.6", CarPlay/Android Auto: https://geely.vn/san-pham/geely-ex2/
- Geely EX2 (trang toàn cầu) — tích hợp Flyme Auto, cụm màn hình kép: https://www.geely.com/en/models/geely-ex2
- Geely Auto Indonesia — bảng trang bị (Remote APP Vehicle Control chỉ bản Max/4G): https://stage.geelyauto.id/ex2
- Flyme Auto 2 — "one‑screen dual‑application" (ChinaEVHome, 08/2025): https://chinaevhome.com/2025/08/21/geely-unveils-flyme-auto-2-unified-user-id-ai-agents-and-ai-os-architecture/
- Hướng dẫn chia đôi màn hình Android trên ô tô (Vincar): https://vincarvietnam.com/cach-chia-doi-man-hinh-android-o-to-3-buoc-dung-2-ung-dung-cung-luc/
- Android Box Geely EX2 (chia đôi màn hình vừa bản đồ vừa nhạc): https://thienauto.com/product/android-box-geely-ex2/ · https://zestech.com.vn/chi-mai-gan-android-box-xe-geely-ex2-quan-7-xem-youtube-tien-loi/
- Kho hướng dẫn cộng đồng Geely EX2 VN (mở khoá màn hình, cài APK/IPA): https://github.com/algodaohub/geely-ex2-hub
- VnExpress — thông số EX2 (màn 14.6", CarPlay/Android Auto): https://vnexpress.net/oto-xe-may/v-car/dong-xe/geely-ex2-324
- Dữ liệu nội bộ dự án EX2 VN Control: `apk/version.json` (v1.2.7), `apps/apps.json` (mục DualDashcam), `README.md`.
