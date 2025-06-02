# TappyPlane MVP 重构指南

本文档提供了如何将原始的 GodotTappyPlane 项目重构为简化版 MVP 的步骤指南。这个简化版本保留了核心游戏功能，同时移除了复杂的状态机、排行榜和多余的UI组件，使其更适合作为"第一部分：godot引擎基础与GDScript"的结课项目。

## 已完成的代码重构

以下脚本文件已经被重构：

1. `main.gd` - 简化了游戏状态管理，使用简单的枚举代替复杂的状态机
2. `src/entities/rock.gd` - 将岩石从 CharacterBody2D 改为 Area2D，简化了碰撞检测

## 场景更新指南

由于场景文件(.tscn)需要在Godot编辑器中修改，请按照以下步骤更新场景：

### 1. 主场景 (main.tscn)

1. 打开 Godot 编辑器，加载 GodotTappyPlane 项目
2. 打开 main.tscn 场景
3. 删除 GameStateMachine 节点和 UIManager 节点
4. 确保场景中有以下节点结构：
   - Main (Node2D)
     - CanvasLayer
       - MenuForm (Control) - 主菜单界面
       - GameForm (Control) - 游戏中界面
       - PopupGameOver (Control) - 游戏结束界面
     - ParallaxBackground - 背景
     - audio_game_over (AudioStreamPlayer) - 游戏结束音效
5. 确保 MenuForm 有以下信号连接：
   - btn_new_game_pressed -> _on_menu_form_btn_new_game_pressed
   - btn_quit_pressed -> _on_menu_form_btn_quit_game_pressed
6. 确保 PopupGameOver 有以下信号连接：
   - retry_pressed -> _on_popup_game_over_retry_game_pressed
   - quit_pressed -> _on_popup_game_over_quit_game_pressed

### 2. 岩石场景 (src/entities/rock.tscn)

1. 创建一个新的场景，将根节点设置为 Area2D (而不是 CharacterBody2D)
2. 添加以下节点：
   - Sprite2D - 岩石精灵
   - CollisionShape2D - 碰撞形状
3. 将 rock.gd 脚本附加到根节点
4. 连接 body_entered 信号到 _on_body_entered 函数

### 3. 飞机场景 (src/entities/plane.tscn)

飞机场景不需要大的修改，但请确保：
1. 根节点是 CharacterBody2D
2. 有一个名为 audio_flap 的 AudioStreamPlayer 节点用于播放拍打翅膀的音效
3. 有适当的碰撞形状

## 移除的功能

为了简化项目，以下功能已被移除：

1. 复杂的状态机系统
2. 排行榜功能
3. 玩家名称输入弹窗
4. 设置菜单
5. UI管理器系统

## 简化后的游戏流程

1. 游戏启动时显示主菜单
2. 点击"开始游戏"按钮进入游戏
3. 使用空格键、鼠标点击或上箭头键控制飞机
4. 避开岩石障碍物，游戏时间越长得分越高
5. 碰到岩石或飞出屏幕边界时游戏结束
6. 游戏结束时显示得分和重试选项

## 学习要点

这个简化版的TappyPlane游戏涵盖了以下Godot基础知识：

1. 基本的GDScript语法和编程概念
2. 节点和场景系统
3. 2D物理和碰撞检测
4. 输入处理
5. 信号系统
6. 简单的UI创建
7. 游戏状态管理
8. 音频播放

这个项目是学习Godot游戏开发的理想起点，专注于核心概念而不引入过多复杂性。
