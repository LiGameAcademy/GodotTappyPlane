extends MarginContainer
class_name PopupGameOver

@onready var btn_quit: TextureButton = %btn_quit
@onready var btn_retry: TextureButton = %btn_retry

signal quit_pressed
signal retry_pressed

func _ready() -> void:
	btn_quit.pressed.connect(_on_btn_quit_pressed)
	btn_retry.pressed.connect(_on_btn_retry_pressed)

func _on_btn_quit_pressed() -> void:
	quit_pressed.emit()

func _on_btn_retry_pressed() -> void:
	retry_pressed.emit()
