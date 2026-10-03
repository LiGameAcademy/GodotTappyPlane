<!-- Language switch -->
<p align="right">
  🌐 <strong>Language:</strong>
  <b>English</b>
  ·
  <a href="./README.zh-CN.md">中文</a>
</p>

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
[![Chinese docs](https://img.shields.io/badge/docs-Chinese-red.svg)](./README.zh-CN.md)

> 🎓 **Project status:** currently in the **Debug** stage. Bug reports and PRs are very welcome.

</div>

## About

**TappyPlane** is the first demo project of the Li Game Academy Godot tutorial series.
It demonstrates the core gameplay loop of a small arcade game. The upgraded
release and its Windows/Web builds are still planned; export presets alone do
not confirm a tested release build.

- 🎮 Existing web demo: [TappyPlane on itch.io](https://godot-li.itch.io/tappyplane) (the published demo is not yet verified against this source revision)
- 📺 Video walkthrough: [Bilibili (Chinese)](https://space.bilibili.com/8618918)
- 📚 Full tutorial (English): parent `tutorial/` (`01-create-project-and-import-assets.md`, `02-make-the-plane-fly.md`, `03-finish-the-game.md`)
- 📄 Chinese README: [README.zh-CN.md](./README.zh-CN.md)

## What you'll build

A side-scrolling "tap-to-flap" game featuring:

- 🎯 One-button input (mouse click or `Space`)
- 🌄 Parallax-scrolling rocks with random placement
- 💥 Real physics-based collision
- 🏆 Score, game-over and restart loop
- 🌐 UI language: English by default, switch to 中文 on the title screen
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

The title screen defaults to **English**. Use **EN / 中文** to switch; the choice is stored in `user://locale.cfg`.

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
├── docs/            # Author / Patreon reference images
├── src/             # Player, rocks, UI, i18n
│   └── i18n/        # LocaleService: English default, Chinese optional
├── game.tscn        # Main scene
├── game.gd          # Main scene script
├── project.godot    # Project configuration
├── export_presets.cfg
├── README.md        # English (this file)
├── README.zh-CN.md  # Chinese
└── LICENSE          # MIT
```

## Tutorials

Three English written lessons walk you from zero to a complete, exportable game.
They live in the parent project (`projects/godot-tappy-plane/tutorial/`):

1. 📘 **[Part 1 — Project setup & asset import](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/blob/main/projects/godot-tappy-plane/tutorial/01-create-project-and-import-assets.md)**
2. 📗 **[Part 2 — Making the plane fly](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/blob/main/projects/godot-tappy-plane/tutorial/02-make-the-plane-fly.md)**
3. 📕 **[Part 3 — Finishing the game](https://github.com/LiGameAcademy/laoli_gamedev_godot4_course/blob/main/projects/godot-tappy-plane/tutorial/03-finish-the-game.md)**

> Older Chinese filenames in that folder are stubs that point at these English files.

## Export notes

On Windows the editor filesystem is case-insensitive, but exported `.pck` paths are
**case-sensitive**. Keep `preload()` / `res://` paths identical to on-disk names
(e.g. `res://src/entities/rock.tscn`). A mismatch can make the main script fail
to load in the EXE while the editor still runs fine.

After export, prefer running `tappy_plane.console.exe` once to catch script errors.

## Roadmap

- [x] Three-article tutorial (English)
- [x] Windows export preset
- [x] Case-safe resource filenames (`rock.tscn` / `rock.gd`)
- [x] English tutorial files in `projects/godot-tappy-plane/tutorial/`
- [ ] Web build preset
- [ ] Mobile (touch) input polish

## Contributing

Issues and pull requests are welcome! This is a teaching project, so:

- 🐛 **Bug reports** — please include Godot version, OS and repro steps.
- 💡 **Feature requests** — keep them tutorial-friendly; small, clear, well-scoped.
- 🌍 **Translations** — any language is welcome; start by opening an issue so we can avoid duplicated work.

## Community & support

- 📺 **Bilibili** — [Li Game Academy](https://space.bilibili.com/8618918)
- 💬 **English Discord** — [Join the English-speaking community](https://discord.gg/M7ZfMPBbH)
- 🎮 **Games & demos** — [Li Game Academy on itch.io](https://godot-li.itch.io/)
- 💻 **Open-source projects** — [Li Game Academy on GitHub](https://github.com/LiGameAcademy)
- 💬 **QQ Channel** — [Li Game Academy](https://pd.qq.com/s/n93zqynt)
- 💖 **English learning community** — [Li Game Academy on Patreon](https://www.patreon.com/cw/LiGameAcademy)

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
