#!/bin/bash
# 家庭存钱计划 · 一键部署（免输账号密码）
# 用法：bash deploy_auto.sh "提交说明"
set -e
cd /Users/zhangxiaoli/WorkBuddy/2026-08-28-14-01-41/家庭存钱计划

# 读取本地 token（已 gitignore，不进仓库）
TOKEN=$(cat .github_token)

# 配置带 token 的远程地址（免交互）
git remote set-url origin "https://zhangxiaoli1759-tech:${TOKEN}@github.com/zhangxiaoli1759-tech/family-savings.git"

MSG="${1:-更新家庭存钱计划}"
git add .
git commit -m "$MSG"
git push -u origin main

echo "✅ 已部署：https://zhangxiaoli1759-tech.github.io/family-savings/"
