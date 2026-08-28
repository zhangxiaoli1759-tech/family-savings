#!/bin/bash
set -e
cd /Users/zhangxiaoli/WorkBuddy/2026-08-28-14-01-41/家庭存钱计划
git init
git checkout -b main
git add .
git commit -m "家庭存钱计划 H5 初版"
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/zhangxiaoli1759-tech/family-savings.git
git push -u origin main
echo "✅ 推送完成"
