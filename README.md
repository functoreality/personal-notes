# Personal Notes

这里将公开我关于 AI 使用、时间管理及相关主题的笔记。

网页阅读器由
[`functoreality/research-notes`](https://github.com/functoreality/research-notes)
中的共享代码构建。本仓库只保存笔记内容、主页、站点配置和部署入口。

## 内容结构

```text
personal-notes/
├── raw/                         # 原始 Markdown 笔记
├── public/data/homepage.md      # 网页主页
├── public/favicon.svg           # 站点图标
├── site.config.json             # 标题、网址和显示配置
└── .github/workflows/deploy.yml # GitHub Pages 部署入口
```

`public/data/notes.json` 是构建时生成的数据，不提交到 Git。

## 本地预览

将本仓库放在 `research-notes` 的同级目录，然后运行：

```bash
cd ../research-notes
npm install
npm run site -- dev ../personal-notes
```

如果本目录暂时还在 `research-notes` 内部，则使用：

```bash
npm run site -- dev personal-notes
```

## 发布前设置

1. 在 `raw/` 中放入准备公开的 Markdown 文件。
2. 编辑 `public/data/homepage.md`。
3. 检查 `site.config.json` 中的仓库名和网页标题。
4. 在 GitHub 创建同名仓库并推送本目录内容。
5. 在仓库 Settings → Pages 中将 Source 设为 GitHub Actions。
6. 根据笔记的公开方式补充合适的许可证。

推送到 `main` 后会自动构建和部署。也可以在 Actions 页面手动运行部署。

共享阅读器使用 `research-notes` 的 `main` 分支。阅读器更新不会自动触发
本仓库重新部署。更新阅读器后，可以在本仓库 Actions 页面手动运行一次
“Deploy to GitHub Pages”，或者随下一次笔记提交一起部署。
