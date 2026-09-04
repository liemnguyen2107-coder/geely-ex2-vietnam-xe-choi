# EX2 VN Control — OTA GitHub

Folder này **đã gắn với GitHub**. Hai thư mục làm việc:

| Folder | Dùng cho |
|--------|----------|
| `apk/` | App chính **EX2 VN Control** (`version.json` + file `.apk`) |
| `apps/` | **Apps tiện ích** cho kho ứng dụng trên xe (`apps.json` + file `.apk`) |

Repo: https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi

## Cập nhật app chính cho người dùng

1. Copy APK mới vào `apk/` (ví dụ `EX2VNControl_v1.0.1.apk`).
2. Sửa `apk/version.json`:
   - Tăng `versionCode` (phải **lớn hơn** bản đang chạy trên xe).
   - Đổi `versionName`, `changelog`, `sizeMb`, `downloadUrl`.
3. Chạy: `./publish-apk.sh`

Xe sẽ tự kiểm tra `apk/version.json` và tải APK từ GitHub Release.

## Cập nhật apps tiện ích

1. Copy APK vào `apps/` (ví dụ `vietmap_live.apk`).
2. Sửa `apps/apps.json` (`downloadUrl` trỏ tới GitHub Release).
3. Chạy: `./publish-apps.sh`

## Lưu ý

- File `.apk` **không** đẩy vào git (chỉ nằm trên máy bạn + GitHub Releases).
- `ota/` giữ bản JSON cũ để xe đang dùng URL cũ vẫn cập nhật được.
