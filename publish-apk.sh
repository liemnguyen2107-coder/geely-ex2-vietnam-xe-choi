#!/bin/bash
set -e
cd "$(dirname "$0")"
export PATH="$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"

JSON="apk/version.json"
TAG=$(python3 -c "import json; print(json.load(open('$JSON'))['versionName'])")
APK=$(ls -t apk/*.apk 2>/dev/null | head -1)
if [ -z "$APK" ]; then
  echo "Không thấy file .apk trong apk/"
  exit 1
fi
cp -f "$JSON" ota/version.json

NAME=$(basename "$APK")
NOTES=$(python3 -c "import json; print(json.load(open('$JSON'))['changelog'])")

if gh release view "$TAG" --repo liemnguyen2107-coder/geely-ex2-vietnam-xe-choi >/dev/null 2>&1; then
  gh release upload "$TAG" "$APK" --clobber --repo liemnguyen2107-coder/geely-ex2-vietnam-xe-choi
else
  gh release create "$TAG" "$APK" --title "EX2 VN Control $TAG" --notes "$NOTES" --repo liemnguyen2107-coder/geely-ex2-vietnam-xe-choi
fi

git add apk/version.json ota/version.json README.md .gitignore publish-apk.sh publish-apps.sh apps/apps.json ota/apps.json
git add -u
git status
git commit -m "OTA $TAG: cập nhật EX2 VN Control" || true
git push origin HEAD
echo "Xong. JSON: https://raw.githubusercontent.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/main/apk/version.json"
echo "APK: https://github.com/liemnguyen2107-coder/geely-ex2-vietnam-xe-choi/releases/tag/$TAG"
