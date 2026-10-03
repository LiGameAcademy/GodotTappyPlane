<!-- 语言切换 / Language switch -->
<p align="right">
  🌐 <strong>语言：</strong>
  <a href="./README.md">English</a>
  ·
  <b>中文</b>
</p>

# TappyPlane

> 🛩️ **老李游戏学院** Godot 系列教程的第 1 个 demo —— 用三篇文章从零做一个完整的、可发布的小游戏。

<div align="center">

[![Godot](https://img.shields.io/badge/Godot-4.7-478CBF?logo=godotengine&logoColor=white)](https://godotengine.org)
[![许可证: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/LiGameAcademy/GodotTappyPlane?style=social)](https://github.com/LiGameAcademy/GodotTappyPlane/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/LiGameAcademy/GodotTappyPlane?style=social)](https://github.com/LiGameAcademy/GodotTappyPlane/network/members)
[![GitHub issues](https://img.shields.io/github/issues/LiGameAcademy/GodotTappyPlane)](https://github.com/LiGameAcademy/GodotTappyPlane/issues)
[![GitHub last commit](https://img.shields.io/github/last-commit/LiGameAcademy/GodotTappyPlane)](https://github.com/LiGameAcademy/GodotTappyPlane/commits/main)
[![欢迎 PR](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/LiGameAcademy/GodotTappyPlane/pulls)
[![English](https://img.shields.io/badge/docs-English-blue.svg)](./README.md)

> 🎓 **当前项目已经进入 Debug 阶段**，欢迎发现问题，欢迎贡献 PR。

</div>

## 项目简介

这是 **老李游戏学院** Godot 系列教程 demo 的第 1 个，适合第一次接触 Godot 或游戏开发的同学。

- 🎮 在线试玩：[itch.io](https://liweimin0512.itch.io/tappyplane)
- 📺 视频教程：[哔哩哔哩](https://space.bilibili.com/8618918)
- 📚 图文教程：课程总库 [`projects/godot-tappy-plane/tutorial/`](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/tree/main/projects/godot-tappy-plane/tutorial)
- 📄 English README：[README.md](./README.md)

## 你将学到

一个完整的「点击起飞」类小游戏：

- 🎯 一键输入（鼠标点击或 `Space`）
- 🌄 视差滚动背景 + 随机上下岩石
- 💥 真实物理碰撞与上下越界判定
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

## 项目结构

```
GodotTappyPlane/
├── assets/          # 贴图、字体、音效、音频总线
├── docs/            # 作者 / Patreon 相关参考图（中文）
├── src/             # 飞机、岩石、界面脚本
├── game.tscn        # 主场景
├── game.gd          # 主场景脚本
├── project.godot    # 工程配置
├── export_presets.cfg
├── README.md        # 英文自述
├── README.zh-CN.md  # 中文自述（本文件）
└── LICENSE          # MIT
```

## 教程目录

| 顺序 | 内容 | 链接 |
| --- | --- | --- |
| 上篇 | 新建项目并导入素材 | [01-新建项目并导入素材.md](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/blob/main/projects/godot-tappy-plane/tutorial/01-%E6%96%B0%E5%BB%BA%E9%A1%B9%E7%9B%AE%E5%B9%B6%E5%AF%BC%E5%85%A5%E7%B4%A0%E6%9D%90.md) |
| 中篇 | 让飞机飞起来 | [02-让飞机飞起来.md](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/blob/main/projects/godot-tappy-plane/tutorial/02-%E8%AE%A9%E9%A3%9E%E6%9C%BA%E9%A3%9E%E8%B5%B7%E6%9D%A5.md) |
| 下篇 | 完成一款小游戏 | [03-完成一款小游戏.md](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/blob/main/projects/godot-tappy-plane/tutorial/03-%E5%AE%8C%E6%88%90%E4%B8%80%E6%AC%BE%E5%B0%8F%E6%B8%B8%E6%88%8F.md) |

本地跟做时，教程在课程总库同级目录：`projects/godot-tappy-plane/tutorial/`。

## 导出注意（常见坑）

Windows 编辑器的文件系统**不区分**路径大小写，但导出进 `.pck` 后会**严格区分**。  
`preload()` / `res://` 必须与磁盘文件名完全一致（例如 `res://src/entities/rock.tscn`）。写错时会出现：

- 编辑器里一切正常  
- EXE 里主脚本加载失败 → 所有面板叠在一起、按钮点不动  

导出后建议先运行一次 `tappy_plane.console.exe`，用控制台确认没有 `Preload file does not exist` 之类报错。

另外：`game_over` 时若使用 `get_tree().paused = true`，请把承载结算 UI 的 `CanvasLayer` 设为 `process_mode = ALWAYS`（值为 `3`），否则暂停后「重试」按钮收不到点击。

## 路线图

- [x] 三篇中文图文教程  
- [x] Windows 导出预设  
- [x] 资源文件名小写统一（`rock.tscn` / `rock.gd`）  
- [ ] 英文教程翻译  
- [ ] Web 导出预设完善  
- [ ] 移动端触控优化  

## 参与贡献

欢迎 Issue 与 Pull Request。本仓库是教学项目，建议：

- 🐛 **报 Bug**：附上 Godot 版本、系统，以及复现步骤  
- 💡 **提需求**：尽量小而清晰，方便写进教程  
- 🌍 **翻译**：先开 Issue 认领，避免重复劳动  

## 社区

- 📺 **哔哩哔哩**：[老李游戏学院](https://space.bilibili.com/8618918)
- 💬 **QQ 频道**：[【老李游戏学院】QQ 频道](https://pd.qq.com/s/n93zqynt)
- 🌐 **知识星球**：[老李游戏学院](https://t.zsxq.com/12B5zOA6n)
- 🌍 **Patreon（英文）**：[patreon.com/cw/LiGameAcademy](https://www.patreon.com/cw/LiGameAcademy)

## 支持本项目

如果 TappyPlane 对你有帮助，欢迎：

- ⭐ 给 [GitHub 仓库](https://github.com/LiGameAcademy/GodotTappyPlane) 点 Star  
- 💖 加入 Patreon，获取英文教程与开发笔记：  
  👉 [**patreon.com/cw/LiGameAcademy**](https://www.patreon.com/cw/LiGameAcademy)  
- 🐦 分享给正在学 Godot 的朋友  

## 许可证

本工程代码采用 **MIT 许可证**，全文见 [`LICENSE`](LICENSE)。

> 📝 **协议变更说明**：本项目原先采用 **GNU GPL-3.0**，自 2026 年起经作者决定改为 **MIT 协议**，以便该教程代码可被更自由地复用到开源项目与商业项目中。历史已分发版本按其当时协议继续有效；新分发版本与之后的改动一律遵循 MIT。

### 资产与教程的例外

| 项目                                                         | 协议              | 说明 |
|--------------------------------------------------------------|-------------------|------|
| 项目代码（`.gd`、`.tscn`、场景、`project.godot` 等）         | MIT               | © 2026 老李游戏学院（Li Game Academy） |
| `assets/`（贴图、字体、音效）                                | CC0               | 来自 [Kenney](https://www.kenney.nl/assets/tappy-plane) — 复用时记得保留 Kenney 的署名。 |
| 教程正文（课程总库 `tutorial/` 目录）                        | 保留所有权利      | © 老李游戏学院。如需转载请联系作者。 |
