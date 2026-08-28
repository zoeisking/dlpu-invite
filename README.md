# 大连工业大学艺术与信息学院 · H5 新生报到邀请函

> 「校园一日游」式 H5 邀请函 —— 以滑动漫游为线索，带你走遍校门、图书馆、艺术展厅与四季校园，感受「艺术 × 信息 × 未来」的校园文化，最终以邀请弹窗与报名彩蛋收尾。

## ✨ 功能

- 移动端竖向滚动沉浸式 H5，微信内可直接打开
- 四站校园漫游（校园印象 → 图书馆 → 艺术展厅 → 四季校园）
- 滚动入场动画 + 侧边进度点
- 彩蛋：进入/点击按钮触发花瓣星光粒子特效
- 邀请函信息 + 报名二维码占位
- 单人署名：策划 王晨天 · 设计 赵浩轩 · 讲解 方禹桥

## 📁 文件结构

```
dlpu-art-info-invite/
├── index.html      # 邀请函（单页）
├── images/         # 校园场景图片（Pexels 免署名素材）
│   ├── campus.jpg   # 校园建筑 / 校门
│   ├── library.jpg  # 图书馆
│   ├── gallery.jpg  # 艺术展厅
│   └── path.jpg     # 秋日林荫道
└── README.md
```

## 🚀 本地预览

直接双击 `index.html` 用浏览器打开即可，或：

```bash
cd dlpu-art-info-invite
python -m http.server 8000
# 浏览器打开 http://127.0.0.1:8000
```

## 🌐 部署到 GitHub Pages（随处可打开）

1. 在 GitHub 新建仓库（如 `dlpu-invite`）
2. 将本目录文件推送上去：

```bash
cd dlpu-art-info-invite
git init
git add .
git commit -m "feat: H5 新生报到邀请函"
git branch -M main
git remote add origin https://github.com/<你的用户名>/<仓库名>.git
git push -u origin main
```

3. 打开仓库 **Settings → Pages**，Source 选择 `main` 分支的 `/ (root)`，保存。
4. 片刻后访问：`https://<你的用户名>.github.io/<仓库名>/` 即分享给任何人。

> 提示：如直接推送 github.com 受限，可使用 gh 命令行（`gh repo create <仓库名> --public --source . --push`）或代理节点后推送。

## 图片来源

Pexels（Pexels License，可免费商用，无需署名）：
- campus.jpg · library.jpg · gallery.jpg · path.jpg

## 团队

| 角色 | 成员 | 分工 |
| ---- | ---- | ---- |
| 策划 | 王晨天 | 专业统筹、方向把控、文案撰写 |
| 设计 | 赵浩轩 | 视觉素材、配色排版 |
| 讲解 | 方禹桥 | 展示汇报、答辩准备 |

大连工业大学艺术与信息学院 · 新媒体小组
