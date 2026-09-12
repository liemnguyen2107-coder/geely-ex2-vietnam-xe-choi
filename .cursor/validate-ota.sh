#!/usr/bin/env bash
# Validates the OTA manifests that cars fetch from this repo.
# Idempotent and read-only: safe to run repeatedly during environment setup.
set -euo pipefail

cd "$(dirname "$0")/.."

manifests=(apk/version.json apps/apps.json ota/version.json ota/apps.json)

for f in "${manifests[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "MISSING: $f" >&2
    exit 1
  fi
  python3 -m json.tool "$f" > /dev/null
  echo "OK  valid JSON: $f"
done

python3 - <<'PY'
import json, sys

with open("apk/version.json", encoding="utf-8") as fh:
    v = json.load(fh)
for key in ("versionCode", "versionName", "downloadUrl"):
    if key not in v:
        sys.exit(f"apk/version.json missing required key: {key}")
if not isinstance(v["versionCode"], int):
    sys.exit("apk/version.json versionCode must be an integer")

with open("apps/apps.json", encoding="utf-8") as fh:
    a = json.load(fh)
if not isinstance(a.get("apps"), list) or not a["apps"]:
    sys.exit("apps/apps.json must contain a non-empty 'apps' list")
for app in a["apps"]:
    for key in ("id", "name", "packageName", "downloadUrl"):
        if key not in app:
            sys.exit(f"apps.json entry {app.get('id', '?')} missing key: {key}")

print(f"OK  apk manifest: {v['versionName']} (versionCode {v['versionCode']})")
print(f"OK  apps manifest: {len(a['apps'])} apps")
PY

echo "OTA manifests valid."
