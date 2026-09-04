#!/bin/bash
set -e
cd "$(dirname "$0")"
export PATH="$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"

TAG="apps"
REPO="liemnguyen2107-coder/geely-ex2-vietnam-xe-choi"
cp -f apps/apps.json ota/apps.json

shopt -s nullglob
APKS=(apps/*.apk apps/*.xapk)
if [ ${#APKS[@]} -eq 0 ]; then
  echo "Không thấy file .apk trong apps/ — vẫn đẩy apps.json."
else
  if gh release view "$TAG" --repo "$REPO" >/dev/null 2>&1; then
    gh release upload "$TAG" "${APKS[@]}" --clobber --repo "$REPO"
  else
    gh release create "$TAG" "${APKS[@]}" --title "Apps tiện ích EX2 VN Control" --notes "Kho ứng dụng tiện ích cho xe." --repo "$REPO"
  fi
fi

git add apps/apps.json ota/apps.json
git commit -m "OTA apps: cập nhật kho tiện ích" || true
git push origin HEAD
echo "Xong. JSON: https://raw.githubusercontent.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/main/apps/apps.json"
