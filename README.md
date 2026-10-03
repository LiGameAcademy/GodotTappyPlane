<!-- Language switch / 语言切换 -->
<p align="right">
  🌐 <strong>Language:</strong>
  <a href="#english">English</a>
  ·
  <a href="#中文">中文</a>
</p>

<a name="english"></a>

# TappyPlane

> 🛩️ The first project in the **Li Game Academy** Godot tutorial series — a tiny Flappy-Bird-style game built from scratch, in three lessons.

<div align="center">

[![Made with Godot](https://img.shields.io/badge/Godot-4.7-478CBF?logo=godotengine&logoColor=white)](https://godotengine.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/LiGameAcademy/GodotTappyPlane?style=social)](https://github.com/LiGameAcademy/GodotTappyPlane/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/LiGameAcademy/GodotTappyPlane?style=social)](https://github.com/LiGameAcademy/GodotTappyPlane/network/members)
[![GitHub issues](https://img.shields.io/github/issues/LiGameAcademy/GodotTappyPlane)](https://github.com/LiGameAcademy/GodotTappyPlane/issues)
[![GitHub last commit](https://img.shields.io/github/last-commit/LiGameAcademy/GodotTappyPlane)](https://github.com/LiGameAcademy/GodotTappyPlane/commits/main)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/LiGameAcademy/GodotTappyPlane/pulls)
[![code style: build](https://img.shields.io/badge/code%20style-tutorial--friendly-orange.svg)](#)

> 🎓 **Project status:** currently in the **Debug** stage. Bug reports and PRs are very welcome.

</div>

## About

**TappyPlane** is the first demo project of the Li Game Academy Godot tutorial series.
It's a tiny, complete, shippable game — perfect if you're new to Godot or to game
development in general.

- 🎮 Play it on the web: [itch.io](https://liweimin0512.itch.io/tappyplane)
- 📺 Video walkthrough: [Bilibili (Chinese)](https://space.bilibili.com/8618918)
- 📚 Full tutorial (Chinese): in the parent `tutorial/` directory of this repo

## What you'll build

A side-scrolling "tap-to-flap" game featuring:

- 🎯 One-button input (mouse click or `Space`)
- 🌄 Parallax-scrolling pipes with random gaps
- 💥 Real physics-based collision
- 🏆 Score, game-over and restart loop
- 📦 Export-ready Windows build

## Getting started

### Prerequisites

- [Godot 4.7](https://godotengine.org/download) (Standard or Mono build — both work; this project uses GDScript, no C# required)
- Git

### Run it

```bash
# Clone the repository
git clone https://github.com/LiGameAcademy/GodotTappyPlane.git
cd GodotTappyPlane

# Open project.godot in Godot, then press F5
```

> The first open will take a moment while assets are processed.

## Tech stack

| Layer        | Choice                     |
|--------------|----------------------------|
| Engine       | Godot 4.7 (Forward Plus)   |
| Language     | GDScript (typed)           |
| Asset origin | [Kenney — Tappy Plane](https://www.kenney.nl/assets/tappy-plane) |
| License      | MIT                        |

> 🎨 The art in this project is by **Kenney** — please consider supporting the original artist if you enjoy the assets.

## Project structure

```
GodotTappyPlane/
├── assets/          # Sprites, fonts, sounds, bus layout
├── docs/            # Author / Patreon reference images (zh-CN)
├── src/             # Player, pipes, parallax, UI scripts
├── game.tscn         # Main scene
├── game.gd          # Main scene script
├── project.godot    # Project configuration
├── export_presets.cfg
└── LICENSE          # MIT
```

## Tutorials

This project ships with three Chinese-language tutorials that walk you from zero
to a complete, exportable game. They live in the parent project
(`projects/godot-tappy-plane/tutorial/`):

1. 📘 **[Part 1 — Project setup & asset import](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/tree/main/projects/godot-tappy-plane/tutorial/01-%E6%96%B0%E5%BB%BA%E9%A1%B9%E7%9B%AE%E5%B9%B6%E5%AF%BC%E5%85%A5%E7%B4%A0%E6%9D%90.md)**
2. 📗 **[Part 2 — Making the plane fly](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/tree/main/projects/godot-tappy-plane/tutorial/02-%E8%AE%A9%E9%A3%9E%E6%9C%BA%E9%A3%9E%E8%B5%B7%E6%9D%A5.md)**
3. 📕 **[Part 3 — Finishing the game](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/tree/main/projects/godot-tappy-plane/tutorial/03-%E5%AE%8C%E6%88%90%E4%B8%80%E6%AC%BE%E5%B0%8F%E6%B8%B8%E6%88%8F.md)**

> English translations of the tutorials are on the way. PRs welcome!

## Roadmap

- [x] Three-article tutorial (Chinese)
- [x] Windows export preset
- [ ] English tutorial translation
- [ ] Web build preset
- [ ] Mobile (touch) input polish

## Contributing

Issues and pull requests are welcome! This is a teaching project, so:

- 🐛 **Bug reports** — please include Godot version, OS and repro steps.
- 💡 **Feature requests** — keep them tutorial-friendly; small, clear, well-scoped.
- 🌍 **Translations** — any language is welcome; start by opening an issue so we can avoid duplicated work.

## Community & support

- 📺 **YouTube / Bilibili** — [老李游戏学院](https://space.bilibili.com/8618918)
- 💬 **QQ Channel** — [【老李游戏学院】QQ频道](https://pd.qq.com/s/n93zqynt)
- 🌐 **Knowledge community (Chinese)** — [知识星球 · 老李游戏学院](https://t.zsxq.com/12B5zOA6n)

## Support the project

If TappyPlane helped you, the best ways to support the work are:

- ⭐ **Star** the [GitHub repo](https://github.com/LiGameAcademy/GodotTappyPlane)
- 💖 **Become a Patron** — exclusive English tutorials, dev notes and library access:
  👉 [**patreon.com/cw/LiGameAcademy**](https://www.patreon.com/cw/LiGameAcademy)
- 🐦 **Share** it with someone learning Godot

## License

This project is licensed under the **MIT License** — see the [`LICENSE`](LICENSE)
file for the full text.

> 📝 **License change notice:** the project was previously distributed under
> the **GNU GPL-3.0**. As of 2026 it has been relicensed to **MIT**, at the
> request of the maintainer, to make it easier to reuse the code in both open
> and commercial projects. Existing copies remain under the terms they were
> received under; new copies and any future changes are under MIT.

### Asset & tutorial exceptions

| Item                                                   | License   | Notes |
|-------------------------------------------------------|-----------|-------|
| Project code (`.gd`, `.tscn`, scenes, project files) | MIT       | © 2026 Li Game Academy |
| `assets/` (sprites, fonts, sounds)                    | CC0       | By [Kenney](https://www.kenney.nl/assets/tappy-plane) — please credit Kenney when reusing the assets. |
| Tutorial text under `projects/godot-tappy-plane/tutorial/` | All rights reserved | © Li Game Academy. Please contact before redistributing. |

---

<a name="中文"></a>

# TappyPlane（中文）

> 🛩️ **老李游戏学院** Godot 系列教程的第 1 个 demo —— 用三篇文章从零做一个完整的、可发布的小游戏。

<div align="center">

[![Godot](https://img.shields.io/badge/Godot-4.7-478CBF?logo=godotengine&logoColor=white)](https://godotengine.org)
[![许可证: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/LiGameAcademy/GodotTappyPlane?style=social)](https://github.com/LiGameAcademy/GodotTappyPlane/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/LiGameAcademy/GodotTappyPlane?style=social)](https://github.com/LiGameAcademy/GodotTappyPlane/network/members)
[![GitHub issues](https://img.shields.io/github/issues/LiGameAcademy/GodotTappyPlane)](https://github.com/LiGameAcademy/GodotTappyPlane/issues)
[![GitHub last commit](https://img.shields.io/github/last-commit/LiGameAcademy/GodotTappyPlane)](https://github.com/LiGameAcademy/GodotTappyPlane/commits/main)
[![欢迎 PR](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/LiGameAcademy/GodotTappyPlane/pulls)

> 🎓 **当前项目已经进入 Debug 阶段**，欢迎发现问题，欢迎贡献 PR。

</div>

## 项目简介

这是 **老李游戏学院** Godot 系列教程 demo 的第 1 个，适合第一次接触 Godot 或游戏开发的同学。

- 🎮 在线试玩：[itch.io](https://liweimin0512.itch.io/tappyplane)
- 📺 视频教程：[哔哩哔哩](https://space.bilibili.com/8618918)
- 📚 图文教程：仓库同级目录的 [`projects/godot-tappy-plane/tutorial/`](../../tutorial/)

## 你将学到

一个完整的「点击起飞」类小游戏：

- 🎯 一键输入（鼠标点击或 `Space`）
- 🌄 视差滚动的管道 + 随机缺口
- 💥 真实物理碰撞
- 🏆 计分、结算、重开循环
- 📦 可导出的 Windows 版本

## 快速开始

### 环境

- [Godot 4.7](https://godotengine.org/download)（Standard 或 Mono 均可；本工程使用 GDScript，不需要 C#）
- Git

### 运行

```bash
git clone https://github.com/LiGameAcademy/GodotTappyPlane.git
cd GodotTappyPlane
# 在 Godot 中打开 project.godot，按 F5 运行
```

> 首次打开需要等待素材导入。

## 技术栈

| 项目     | 选型                       |
|----------|----------------------------|
| 引擎     | Godot 4.7（Forward Plus）  |
| 语言     | GDScript（强类型）         |
| 美术来源 | [Kenney — Tappy Plane](https://www.kenney.nl/assets/tappy-plane) |
| 许可证   | MIT                        |

> 🎨 素材来自 **Kenney**，有条件的同学可以考虑捐赠素材原作者。

## 教程目录

| 顺序 | 内容 | 链接 |
| --- | --- | --- |
| 上篇 | 新建项目并导入素材 | [01-新建项目并导入素材.md](../../tutorial/01-%E6%96%B0%E5%BB%BA%E9%A1%B9%E7%9B%AE%E5%B9%B6%E5%AF%BC%E5%85%A5%E7%B4%A0%E6%9D%90.md) |
| 中篇 | 让飞机飞起来 | [02-让飞机飞起来.md](../../tutorial/02-%E8%AE%A9%E9%A3%9E%E6%9C%BA%E9%A3%9E%E8%B5%B7%E6%9D%A5.md) |
| 下篇 | 完成一款小游戏 | [03-完成一款小游戏.md](../../tutorial/03-%E5%AE%8C%E6%88%90%E4%B8%80%E6%AC%BE%E5%B0%8F%E6%B8%B8%E6%88%8F.md) |

## 社区

- 📺 **哔哩哔哩**：[老李游戏学院](https://space.bilibili.com/8618918)
- 💬 **QQ 频道**：[【老李游戏学院】QQ 频道](https://pd.qq.com/s/n93zqynt)
- 🌐 **知识星球**：[老李游戏学院](https://t.zsxq.com/12B5zOA6n)
- 🌍 **Patreon（英文）**：[patreon.com/cw/LiGameAcademy](https://www.patreon.com/cw/LiGameAcademy)

## 许可证

本工程代码采用 **MIT 许可证**，全文见 [`LICENSE`](LICENSE)。

> 📝 **协议变更说明**：本项目原先采用 **GNU GPL-3.0**，自 2026 年起经作者决定改为 **MIT 协议**，以便该教程代码可被更自由地复用到开源项目与商业项目中。历史已分发版本按其当时协议继续有效；新分发版本与之后的改动一律遵循 MIT。

### 资产与教程的例外

| 项目                                                         | 协议              | 说明 |
|--------------------------------------------------------------|-------------------|------|
| 项目代码（`.gd`、`.tscn`、场景、`project.godot` 等）         | MIT               | © 2026 老李游戏学院（Li Game Academy） |
| `assets/`（贴图、字体、音效）                                | CC0               | 来自 [Kenney](https://www.kenney.nl/assets/tappy-plane) — 复用时记得保留 Kenney 的署名。 |
| 教程正文（同上级 `tutorial/` 目录）                          | 保留所有权利      | © 老李游戏学院。如需转载请联系作者。 |