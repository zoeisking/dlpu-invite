#!/usr/bin/env bash
# =========================================================
#  GitHub Pages 一键推送脚本
#  用法： ./deploy.sh <你的GitHub用户名> <仓库名>
#  示例： ./deploy.sh wangchentian dlpu-invite
#  说明： 先在 GitHub 网页新建同名仓库（可为空），再运行本脚本
# =========================================================
set -e
cd "$(dirname "$0")"

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "用法: ./deploy.sh <GitHub用户名> <仓库名>"
  echo "示例: ./deploy.sh wangchentian dlpu-invite"
  exit 1
fi

USERNAME="$1"
REPO="$2"
REMOTE_URL="https://github.com/${USERNAME}/${REPO}.git"

# 提交最新改动
git add .
git commit -m "chore: 更新 H5 邀请函" || true

# 配置远程仓库（覆盖旧的）
git remote remove origin 2>/dev/null || true
git remote add origin "$REMOTE_URL"
git branch -M main

echo ">>> 开始推送 ${REMOTE_URL} ..."
git push -u origin main

echo ""
echo "======================================================"
echo "  推送完成！"
echo "  下一步：打开 GitHub 仓库  ${USERNAME}/${REPO}"
echo "  依次点击：Settings → Pages → Source 选 main / (root) → Save"
echo "  部署成功后访问："
echo "  https://${USERNAME}.github.io/${REPO}/"
echo "======================================================"
