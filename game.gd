extends Node2D

const PLANE_SCENE: PackedScene = preload("res://src/entities/plane.tscn")
const ROCK_SCENE: PackedScene = preload("res://src/entities/rock.tscn")
@export var config: GameConfig
@onready var world: Node2D = $World
@onready var actors: Node2D = $World/Actors
@onready var spawn_timer: Timer = $SpawnTimer
var plane: TappyPlane


@onready var score_timer: Timer = $ScoreTimer
@onready var menu_form: MenuForm = $UICanvasLayer/MenuForm
@onready var game_form: GameForm = $UICanvasLayer/GameForm
@onready var popup_game_over: PopupGameOver = $UICanvasLayer/PopupGameOver
@onready var audio_game_over: AudioStreamPlayer = $AudioGameOver
var rules: GameRules = GameRules.new()

#region Lifecycle
func _ready() -> void:
	spawn_timer.timeout.connect(_on_spawn_timeout)
	score_timer.timeout.connect(_on_score_timeout)
	menu_form.btn_new_game_pressed.connect(new_game)
	menu_form.btn_quit_pressed.connect(quit_game)
	popup_game_over.retry_pressed.connect(new_game)
	popup_game_over.quit_pressed.connect(quit_game)
	menu_form.show()
	game_form.hide()
	popup_game_over.hide()

func _process(_delta: float) -> void:
	if rules.state == GameRules.State.PLAYING and is_instance_valid(plane):
		if plane.position.y <= 0.0 or plane.position.y >= get_viewport_rect().size.y:
			_on_hit()
#endregion

#region Public
func new_game() -> void:
	_clear_actors()
	rules.start()
	world.process_mode = Node.PROCESS_MODE_INHERIT
	menu_form.hide()
	popup_game_over.hide()
	game_form.show()
	game_form.update_score_display(rules.score)
	_spawn_plane()
	_schedule_rock()
	score_timer.start()

func quit_game() -> void:
	get_tree().quit()
#endregion

#region Signals and spawn
func _on_hit() -> void:
	if not rules.finish():
		return
	spawn_timer.stop()
	score_timer.stop()
	world.set_deferred("process_mode", Node.PROCESS_MODE_DISABLED)
	audio_game_over.play()
	game_form.hide()
	popup_game_over.update_score(rules.score)
	popup_game_over.show()
	_clear_actors.call_deferred()

func _on_spawn_timeout() -> void:
	if rules.state == GameRules.State.PLAYING:
		_spawn_rock()
		_schedule_rock()

func _on_score_timeout() -> void:
	rules.tick()
	game_form.update_score_display(rules.score)

func _spawn_plane() -> void:
	plane = PLANE_SCENE.instantiate() as TappyPlane
	plane.config = config
	plane.position = config.plane_start
	actors.add_child(plane)

func _spawn_rock() -> void:
	var rock: Rock = ROCK_SCENE.instantiate() as Rock
	rock.config = config
	rock.rock_entered.connect(_on_hit)
	if randi_range(0, 1) == 0:
		rock.position = Vector2(config.spawn_x,
			randf_range(config.bottom_y.x, config.bottom_y.y))
	else:
		rock.rotation_degrees = 180.0
		rock.position = Vector2(config.spawn_x,
			randf_range(config.top_y.x, config.top_y.y))
	actors.add_child(rock)

func _schedule_rock() -> void:
	spawn_timer.start(randf_range(config.spawn_interval.x, config.spawn_interval.y))

func _clear_actors() -> void:
	for actor: Node in actors.get_children():
		actors.remove_child(actor)
		actor.queue_free()
	plane = null

#endregion
