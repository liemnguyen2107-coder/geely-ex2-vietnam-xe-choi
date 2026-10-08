# 📲 Control your car via Telegram

[🏠 Home](../../README.en.md) · [✨ Features](FEATURES.md) · [🤖 Telegram](TELEGRAM.md) · 🌐 [Tiếng Việt](../TELEGRAM.md)

---

## ✨ What can it do?

You message a **Telegram bot** like you would a friend. The car answers or does what you ask, even when you are far away.

| You want to | Send | What the car does |
|---|---|---|
| Check on the car | `Xe sao rồi` | Reports battery, range, doors, temperature… |
| Cool the car before you get in | `Bật điều hòa` or `Điều hòa 22 độ` | Turns on the A/C at the right temperature |
| Lock the car | `Khóa cửa` | Locks the doors and confirms |
| Find the car | `Xe ở đâu` | Sends a map pin, address and Google Maps link |
| Send a destination | Paste a **Google Maps link** | The car starts navigating there |

> 🇻🇳 **Note:** the bot understands **Vietnamese** commands (they use the same engine as the car's voice control). This page shows each command with its English meaning. The car's replies are in Vietnamese.

The car also **messages you by itself** when:

- 🔌 **Charging starts**, with battery % and charge limit
- ✅ **Charging is finished** but the plug is still connected
- ⏰ **You left the car on:** first reminder after 10 minutes, then every 10 minutes until you turn it off

---

## 🧰 Requirements

- EX2 VN Control installed and your key activated
- Telegram on your phone
- The car screen has **Wi‑Fi with internet** (the car needs internet to send and receive messages)

---

## 🔗 Pair your phone with the car (one time only)

1. On the car screen, open **EX2 VN Control** → **Tools**.
2. Find the **Phone notifications** (*Thông báo điện thoại*) card and **turn the switch on**.
3. Tap the card to open the screen with the **QR code**.
4. On your phone, open **Telegram** (or the camera) and **scan the QR code**.
5. The bot **@ex2vncontrolbot** opens. Tap **Start**.
6. The car screen shows **"Đã ghép"** (paired) and Telegram receives *"Đã kết nối thông báo EX2"*. Done! 🎉

> 💡 To check it works, tap **Send test message** on the car screen and your phone will receive a message.

**New phone?** On the car screen tap the re-pair button to **remove the old phone**, then scan the new code.

---

## 💬 How to give commands

There are **3 ways**, use whichever you like:

### Way 1 — Quick buttons (easiest)

Type `/menu` in the bot and a button panel appears under the chat box. Just tap:

| | |
|---|---|
| `Xe sao rồi` — How's the car | `Pin bao nhiêu phần trăm` — Battery % |
| `Bật điều hòa` — A/C on | `Tắt điều hòa` — A/C off |
| `Làm mát nhanh` — Quick cool | `Làm ấm nhanh` — Quick warm |
| `Khóa cửa` — Lock | `Mở khóa` — Unlock |
| `Hạ kính` — Windows down | `Đóng kính` — Windows up |
| `Mở cốp` — Open trunk | `Đóng cốp` — Close trunk |
| `Áp suất lốp bao nhiêu` — Tyre pressure | `Sạc còn bao lâu` — Time left to charge |
| `Xe ở đâu` — Where is the car | `Dẫn đường đến nhà` — Navigate home · `Trợ giúp` — Help |

### Way 2 — Type naturally in Vietnamese

Same understanding as the car's voice control, e.g. `Bật điều hòa`, `Quạt số 3` (fan level 3), `Hạ kính sau trái` (rear-left window down), `Giới hạn sạc 80` (charge limit 80).

### Way 3 — Short `/` commands

Type `/` in the bot to see the command list. Commands that take a number:

| Command | Meaning |
|---|---|
| `/dieu_hoa 22` | A/C 22 degrees |
| `/quat 4` | Fan level 4 |
| `/sac 80` | Charge limit 80% |
| `/kinh 30` | Window down 30% |
| `/vi_tri` | Send the car's location |
| `/help` | Show the command guide |

---

## 📋 Full command list

### ❓ Ask the car

| Vietnamese | English |
|---|---|
| Xe sao rồi | How's the car (overview) |
| Pin bao nhiêu phần trăm | Battery % |
| Còn đi được bao nhiêu km | Remaining range |
| Sạc còn bao lâu | Charging time left |
| Công suất sạc / Đã sạc được bao nhiêu / Giới hạn sạc | Charging power / Energy charged / Charge limit |
| Xe sạc chưa | Is it charging? |
| Nhiệt độ trong xe / Nhiệt độ ngoài trời | Cabin / outside temperature |
| Điều hòa bật chưa / Quạt đang số mấy | Is the A/C on? / Fan level |
| Các cửa đóng chưa / Cửa khóa chưa | Doors closed? / Doors locked? |
| Cốp đóng chưa / Kính đóng chưa | Trunk closed? / Windows closed? |
| Áp suất lốp bao nhiêu | Tyre pressure |
| Xe đã đi bao nhiêu km | Odometer |
| Tốc độ / Xe đang ở số nào | Speed / Current gear |
| Chế độ lái là gì / Tái tạo mức mấy | Drive mode / Regen level |
| Hành trình hiện tại | Current trip |

### 🎛️ Control

| Group | Example commands (Vietnamese → English) |
|---|---|
| ❄️ A/C | Bật / Tắt điều hòa (on / off) · Điều hòa 23 độ (23°) · Nóng hơn / Mát hơn (warmer / cooler) · Làm mát nhanh / Làm ấm nhanh (quick cool / warm) |
| 🌀 Fan and airflow | Bật / Tắt quạt (fan on / off) · Quạt số 3 (level 3) · Tăng / Giảm gió (more / less) · Gió thổi mặt / chân (face / feet) · Gió trong / ngoài (recirculate / fresh air) |
| 🪟 Defrost | Bật / Tắt sấy kính (defrost on / off) · Sấy kính sau (rear defrost) |
| 🪟 Windows | Hạ / Lên / Đóng / Hé kính (down / up / close / crack) · Hạ tất cả kính (all down) · Hạ kính 30 (30%) · Hạ / Lên kính lái, kính phụ, kính sau trái, kính sau phải (driver, passenger, rear-left, rear-right) |
| 🔒 Lock and trunk | Khóa cửa (lock) · Mở khóa (unlock) · Mở / Đóng cốp (trunk) · Mở / Đóng cốp trước (frunk) |
| 🚗 Drive mode | Thể thao (Sport) · Tiết kiệm (Eco) · Thoải mái (Comfort) |
| ♻️ Regen braking | Tái tạo cao / vừa / thấp (high / medium / low) · Tăng / Giảm tái tạo (up / down) |
| 🔥 Seat heating | Bật / Tắt sưởi (on / off) · Sưởi mạnh / nhẹ (strong / light) · Sưởi ghế phụ (passenger seat) |
| 🔋 Charging | Sạc 90 / Giới hạn sạc 70 (charge limit) · Sạc đầy (full) · Tắt sạc (stop) |
| 🔊 Sound | Bật / Tắt âm thanh người đi bộ (AVAS on / off) · Bật / Tắt nhạc (music) · To / Nhỏ tiếng (volume) · Bài tiếp / trước (next / previous track) |
| 🖥️ Screen | Tắt màn hình (screen off) · Chia màn / tắt chia màn (split screen on / off) · Mở video (open video) |

### 📍 Location and navigation

- **Xe ở đâu** ("Where's the car") or `/vi_tri`: the car sends a map pin, address and Google Maps link. If the car is off, it sends the **last saved parking spot**.
- **Send a Google Maps link**: paste it into the bot and the car starts navigating.
- **Dẫn đường đến nhà** ("Navigate home"), **Đã tới nơi** ("Arrived"): quick commands for familiar destinations.

---

## 🛡️ Security and notes

- The car **only accepts commands from the paired phone**. Messages from anyone else are ignored.
- Because the phone can **lock / unlock the doors, open the trunk and lower windows**, **protect your phone and Telegram with a passcode or fingerprint**. If you lose your phone, pair the car with a new one to remove the old one.
- When the **car is off**, the bot replies *"Xe đang tắt nên mình chưa điều khiển được"* (the car is off, I can't control it yet) and **does not run the command**. Commands sent while the car is off are cancelled; send them again once the car is on.
- If the state is **already correct** (e.g. the A/C is already on), the bot says so instead of repeating the action.
- The car needs Wi‑Fi with internet. If it loses the connection, the bot tells you.
- Only control the car remotely when it is **safe**: no people or obstacles around (especially when lowering windows or opening the trunk).

---

## 🛠️ Troubleshooting

| Symptom | Fix |
|---|---|
| Car screen says **"Chưa gắn bot"** (bot not set up) | This build has no Telegram bot configured. Contact us on [Zalo](https://zalo.me/g/duikjiadpf81hpdi1r5x) to get the latest version |
| Scanned the code but pairing fails | Check that the car has internet Wi‑Fi and the **Phone notifications** switch is on, then scan again |
| Bot does not reply | The car is off, has lost Wi‑Fi, or the switch is off. Try **Send test message** on the car screen |
| Bot says it did not understand | Be more specific, type `/help`, or tap a button from `/menu` |
| Want to change phone | Tap the re-pair button on the car screen to remove the old phone, then scan the new code |
| No charging / left-on notifications | Check that the **Phone notifications** switch is on |


---

<div align="center">

Made by **Xe Chơi** · 💬 [Join our Zalo group](https://zalo.me/g/duikjiadpf81hpdi1r5x)

</div>
