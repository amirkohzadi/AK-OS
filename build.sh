#!/usr/bin/env bash
set -e

# پاک‌سازی خروجی‌های قبلی
lb clean --all

# پیکربندی live-build برای Ubuntu 24.04 (Noble)
lb config \
  --debian-installer live \
  --distribution noble \
  --architectures amd64 \
  --binary-images iso-hybrid

# ساخت ISO
sudo lb build
