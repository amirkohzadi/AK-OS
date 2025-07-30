#!/usr/bin/env bash
set -e

# ۱) پاک کردن همه فایل‌های قبلی + حذف پوشه config
sudo lb clean --purge
rm -rf config

# ۲) پیکربندی تازه بدون نصب‌کننده (d-i)
lb config \
  --debian-installer none \
  --distribution noble \
  --architectures amd64 \
  --binary-images iso-hybrid

# ۳) ساخت ISO
sudo lb build

