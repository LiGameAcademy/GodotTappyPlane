extends Node2D

# 游戏状态枚举
enum GameState {
	MENU,    # 菜单状态
	PLAYING, # 游戏中状态
	GAME_OVER # 游戏结束状态
}

# 当前游戏状态
var current_state = GameState.MENU

# 游戏相关变量
@onready var plane: CharacterBody2D = null
@onready var audio_game_over: AudioStreamPlayer = $AudioGameOver
@onready var menu_form : MenuForm = %MenuForm
@onready var game_form : GameForm = %GameForm
@onready var popup_game_over : PopupGameOver = %PopupGameOver

var s_plane : PackedScene = preload("res://src/entities/plane.tscn")
var timer : Timer = Timer.new()
@export var min_spawn_rock_time : float = 1.0
@export var max_spawn_rock_time : float = 3.0

var s_rock : PackedScene = preload("res://src/entities/rock.tscn")
var current_score : int = 0
var score_timer : Timer = Timer.new()

func _ready() -> void:
	# 初始化游戏
	init_game()

func _process(delta: float) -> void:
	match current_state:
		GameState.MENU:
			# 菜单状态不需要特殊处理
			pass
			
		GameState.PLAYING:
			# 检查飞机是否超出屏幕边界
			if plane and (plane.position.y <= 0 or plane.position.y >= get_viewport_rect().size.y):
				game_over()
				return
			
			# 岩石生成计时器
			if timer.time_left <= 0 and timer.is_stopped():
				spawn_rock()
				timer.wait_time = randf_range(min_spawn_rock_time, max_spawn_rock_time)
				timer.start()
			
		GameState.GAME_OVER:
			# 游戏结束状态不需要特殊处理
			pass

## 初始化游戏
func init_game() -> void:
	# 显示菜单界面
	menu_form.visible = true
	game_form.visible = false
	popup_game_over.visible = false
	current_state = GameState.MENU

## 开始新游戏
func new_game() -> void:
	# 切换到游戏状态
	current_state = GameState.PLAYING
	
	# 显示游戏界面
	menu_form.visible = false
	game_form.visible = true
	popup_game_over.visible = false
	
	# 创建飞机
	if not plane:
		plane = s_plane.instantiate()
		plane.position = Vector2(72, 152)
		self.add_child(plane)
	
	# 初始化计时器
	if not timer.is_connected("timeout", _on_timer_timeout):
		timer.timeout.connect(_on_timer_timeout)
	timer.wait_time = randf_range(min_spawn_rock_time, max_spawn_rock_time)
	if not timer.is_inside_tree():
		self.add_child(timer)
	timer.one_shot = true
	timer.start()
	
	# 初始化分数
	current_score = 0
	game_form.update_score_display(current_score)
	
	# 初始化分数计时器
	if not score_timer.is_connected("timeout", _on_score_timer_timeout):
		score_timer.timeout.connect(_on_score_timer_timeout)
	score_timer.wait_time = 1
	if not score_timer.is_inside_tree():
		self.add_child(score_timer)
	score_timer.start()
	
	get_tree().paused = false

## 退出游戏
func quit_game() -> void:
	get_tree().quit()

## 生成岩石障碍物
func spawn_rock() -> void:
	var random_choice = randi_range(0, 1)
	var rock: Node2D = s_rock.instantiate()
	
	# 将rock和plane的撞击信号，绑定在对应的方法上
	rock.rock_entered.connect(_on_rock_entered)
	
	# 随机决定岩石的位置（上方或下方）
	if random_choice == 0:
		# 下方岩石
		rock.position = Vector2(632, randf_range(216, 336))
	else:
		# 上方岩石（翻转）
		rock.rotation_degrees = 180
		rock.position = Vector2(632, randf_range(-24, 112))
	
	# 添加到场景
	self.add_child(rock)

## 游戏结束
func game_over() -> void:
	# 切换到游戏结束状态
	current_state = GameState.GAME_OVER
	
	# 暂停游戏
	get_tree().paused = true
	
	# 播放游戏结束音效
	audio_game_over.play()
	
	# 销毁小飞机
	if plane:
		plane.queue_free()
		plane = null
	
	# 销毁所有的障碍物
	for rock in get_tree().get_nodes_in_group("rock"):
		rock.queue_free()
	
	# 显示游戏结束界面
	game_form.visible = false
	popup_game_over.visible = true
	popup_game_over.update_score(current_score)

## 计时器回调函数
func _on_timer_timeout() -> void:
	# 生成岩石并重置计时器
	spawn_rock()
	timer.wait_time = randf_range(min_spawn_rock_time, max_spawn_rock_time)
	timer.start()

func _on_score_timer_timeout() -> void:
	# 更新分数
	current_score += 1
	game_form.update_score_display(current_score)

## 信号回调函数
func _on_rock_entered() -> void:
	# 岩石撞击信号
	game_over()

## 按钮事件处理
func _on_menu_form_btn_new_game_pressed() -> void:
	# 开始游戏按钮
	new_game()

func _on_menu_form_btn_quit_pressed() -> void:
	# 退出游戏按钮
	quit_game()

func _on_popup_game_over_quit_pressed() -> void:
	# 游戏结束界面的重试按钮
	new_game()

func _on_popup_game_over_retry_pressed() -> void:
	# 游戏结束界面的退出按钮
	quit_game()
