# 我的个人笔记

这个仓库公开了我的通用领域笔记，主题相对比较宽泛，比如 AI 使用、时间管理、抽认卡设计，等等。
网页浏览请看 [GitHub Pages](https://functoreality.github.io/personal-notes/)。

license: [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0)

## 仓库结构

网页阅读器使用
[我的科研笔记](https://github.com/functoreality/research-notes)
里的共享代码构建。这个仓库只保存笔记内容、主页、站点配置和部署入口。

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

## AI 查阅

笔记 Markdown 文件使用 tab 缩进表示层级，多层嵌套以后，已不适合使用普通 read 工具阅读。
可以考虑安装 outline-read skill 作为辅助，使得 AI 查看时可以按层级折叠展开，更高效地浏览笔记内容。
如果采用自动安装模式，可以使用如下的命令：

```bash
npx skills add functoreality/research-notes --skill outline-read
```

自己手动下载安装相应的 skill 文件目录当然也是可以的。
