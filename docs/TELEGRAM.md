# 📲 Điều khiển xe qua Telegram

**EX2 VN Control** · Thực hiện bởi **Xe Chơi** · 💬 [Tham gia nhóm Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x)

[← Về trang chính](../README.md)

---

## ✨ Tính năng này làm được gì?

Bạn nhắn tin cho **bot Telegram** như nhắn với một người bạn. Xe sẽ trả lời hoặc làm theo, dù bạn đang ở xa.

| Bạn muốn | Nhắn gì | Xe làm gì |
|---|---|---|
| Biết xe sao rồi | `Xe sao rồi` | Báo pin, tầm đi, cửa, nhiệt độ... |
| Bật điều hòa trước khi ra xe | `Bật điều hòa` hoặc `Điều hòa 22 độ` | Bật điều hòa đúng nhiệt độ |
| Khóa xe | `Khóa cửa` | Khóa cửa và báo lại cho bạn |
| Tìm xe | `Xe ở đâu` | Gửi ghim bản đồ, địa chỉ và link Google Maps |
| Gửi điểm đến | Dán **link Google Maps** | Xe tự dẫn đường tới đó |

Ngoài ra xe **tự nhắn cho bạn** khi:

- 🔌 **Bắt đầu sạc**, kèm % pin và giới hạn sạc
- ✅ **Sạc xong** mà súng sạc vẫn còn cắm
- ⏰ **Quên tắt máy:** nhắc lần đầu sau 10 phút, sau đó cứ 10 phút nhắc một lần cho đến khi bạn tắt máy

---

## 🧰 Chuẩn bị

- Đã cài **EX2 VN Control** và kích hoạt key (xem [hướng dẫn cài đặt](../README.md))
- Điện thoại có **Telegram**
- Màn hình xe **có Wi‑Fi ra internet** (xe cần mạng mới gửi và nhận được tin)

---

## 🔗 Ghép điện thoại với xe (chỉ làm 1 lần)

1. Trên màn hình xe, mở app **EX2 VN Control** → **Công cụ**.
2. Tìm thẻ **Thông báo điện thoại** và **bật công tắc**.
3. Bấm vào thẻ để mở màn hình có **mã QR**.
4. Trên điện thoại, mở **Telegram** (hoặc camera) và **quét mã QR**.
5. Bot **@ex2vncontrolbot** mở ra. Bấm **Bắt đầu (Start)**.
6. Màn hình xe hiện **"Đã ghép"** và Telegram nhận tin *"Đã kết nối thông báo EX2"*. Xong! 🎉

> 💡 Muốn kiểm tra, bấm **Gửi tin thử** trên màn hình xe, điện thoại sẽ nhận một tin nhắn.

**Đổi điện thoại?** Trên màn hình xe bấm nút ghép lại để **xóa điện thoại cũ**, rồi quét mã mới.

---

## 💬 Cách ra lệnh

Có **3 cách**, chọn cách nào cũng được:

### Cách 1 — Bấm nút nhanh (dễ nhất)

Gõ `/menu` trong bot, bảng nút hiện dưới ô chat. Chỉ cần bấm:

| | |
|---|---|
| Xe sao rồi | Pin bao nhiêu phần trăm |
| Bật điều hòa | Tắt điều hòa |
| Làm mát nhanh | Làm ấm nhanh |
| Khóa cửa | Mở khóa |
| Hạ kính | Đóng kính |
| Mở cốp | Đóng cốp |
| Áp suất lốp bao nhiêu | Sạc còn bao lâu |
| Xe ở đâu | Dẫn đường đến nhà · Trợ giúp |

### Cách 2 — Nhắn bằng tiếng Việt như nói chuyện

Cùng bộ hiểu với giọng nói trên xe, ví dụ: `Bật điều hòa`, `Quạt số 3`, `Hạ kính sau trái`, `Giới hạn sạc 80`.

### Cách 3 — Lệnh ngắn bắt đầu bằng `/`

Gõ `/` trong bot sẽ hiện danh sách lệnh để chọn. Lệnh có kèm số:

| Lệnh | Ý nghĩa |
|---|---|
| `/dieu_hoa 22` | Điều hòa 22 độ |
| `/quat 4` | Quạt số 4 |
| `/sac 80` | Giới hạn sạc 80% |
| `/kinh 30` | Hạ kính 30% |
| `/vi_tri` | Gửi vị trí xe |
| `/help` | Xem hướng dẫn các lệnh |

---

## 📋 Danh sách lệnh đầy đủ

### ❓ Hỏi xe

Xe sao rồi · Pin bao nhiêu phần trăm · Còn đi được bao nhiêu km · Sạc còn bao lâu · Công suất sạc · Đã sạc được bao nhiêu · Giới hạn sạc · Xe sạc chưa · Nhiệt độ trong xe · Nhiệt độ ngoài trời · Điều hòa bật chưa · Quạt đang số mấy · Các cửa đóng chưa · Cửa khóa chưa · Cốp đóng chưa · Kính đóng chưa · Áp suất lốp · Xe đã đi bao nhiêu km · Tốc độ · Xe đang ở số nào · Chế độ lái · Mức tái tạo · Hành trình hiện tại

### 🎛️ Điều khiển

| Nhóm | Ví dụ lệnh |
|---|---|
| ❄️ Điều hòa | Bật / tắt điều hòa · Điều hòa 23 độ · Nóng hơn / Mát hơn · Làm mát nhanh / Làm ấm nhanh |
| 🌀 Quạt và gió | Bật / tắt quạt · Quạt số 3 · Tăng / giảm gió · Gió thổi mặt / chân · Gió trong / ngoài |
| 🪟 Sấy kính | Bật / tắt sấy kính · Sấy kính sau |
| 🪟 Kính | Hạ / Lên / Đóng / Hé kính · Hạ tất cả kính · Hạ kính 30 · Hạ / Lên kính lái, kính phụ, kính sau trái, kính sau phải |
| 🔒 Khóa và cốp | Khóa cửa · Mở khóa · Mở / Đóng cốp · Mở / Đóng cốp trước |
| 🚗 Chế độ lái | Thể thao · Tiết kiệm · Thoải mái |
| ♻️ Phanh tái tạo | Tái tạo cao / vừa / thấp · Tăng / giảm tái tạo |
| 🔥 Sưởi ghế | Bật / tắt sưởi · Sưởi mạnh / nhẹ · Sưởi ghế phụ |
| 🔋 Sạc | Sạc 90 · Giới hạn sạc 70 · Sạc đầy · Tắt sạc |
| 🔊 Âm thanh | Bật / tắt âm thanh người đi bộ (AVAS) · Bật / tắt nhạc · To / nhỏ tiếng · Bài tiếp / trước |
| 🖥️ Màn hình | Tắt màn hình · Chia màn / tắt chia màn · Mở video |

### 📍 Vị trí và dẫn đường

- **Xe ở đâu** hoặc `/vi_tri`: xe gửi ghim bản đồ, địa chỉ và link Google Maps. Nếu xe đang tắt, xe gửi **chỗ đỗ gần nhất** đã lưu.
- **Gửi link Google Maps**: dán link vào bot, xe tự dẫn đường.
- **Dẫn đường đến nhà**, **Đã tới nơi**: lệnh nhanh cho điểm đến quen thuộc.

---

## 🛡️ Bảo mật và lưu ý

- Xe **chỉ nhận lệnh từ điện thoại đã ghép**. Tin nhắn từ người khác bị bỏ qua.
- Vì điện thoại có thể **khóa / mở khóa cửa, mở cốp, hạ kính**, hãy **đặt mật khẩu hoặc khóa vân tay cho điện thoại và Telegram**. Mất điện thoại thì ghép lại xe với máy mới để xóa máy cũ.
- Khi **xe đang tắt**, bot sẽ trả lời *"Xe đang tắt nên mình chưa điều khiển được"* và **không thực hiện lệnh**. Lệnh gửi lúc xe tắt bị hủy, khi xe bật bạn cần nhắn lại.
- Nếu lệnh **đã đúng sẵn** (ví dụ điều hòa đang bật), bot báo "đang bật sẵn rồi" thay vì làm lại.
- Xe cần Wi‑Fi có internet. Nếu mất mạng, bot sẽ báo xe vừa mất kết nối.
- Chỉ điều khiển từ xa khi **an toàn**: xung quanh xe không có người hoặc vật cản (nhất là khi hạ kính, mở cốp).

---

## 🛠️ Xử lý lỗi thường gặp

| Hiện tượng | Cách xử lý |
|---|---|
| Màn hình xe báo **"Chưa gắn bot"** | Bản app này chưa được cấu hình bot Telegram. Cài bản mới nhất ở [Releases](../../../releases) |
| Quét mã nhưng không ghép được | Kiểm tra xe có Wi‑Fi ra internet, công tắc **Thông báo điện thoại** đã bật, rồi quét lại |
| Bot không trả lời | Xe đang tắt, xe mất Wi‑Fi hoặc công tắc đang tắt. Thử **Gửi tin thử** trên màn xe |
| Bot nói "chưa hiểu lệnh" | Nói rõ hơn hoặc gõ `/help`, hoặc bấm nút trong `/menu` |
| Muốn đổi điện thoại | Bấm nút ghép lại trên màn xe để xóa máy cũ, quét mã mới |
| Không nhận thông báo sạc / quên tắt máy | Kiểm tra công tắc **Thông báo điện thoại** có đang bật không |

---

<div align="center">

Thực hiện bởi **Xe Chơi** · 💬 [Tham gia nhóm Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
