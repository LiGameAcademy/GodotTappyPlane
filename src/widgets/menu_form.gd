extends Control
class_name MenuForm

signal btn_new_game_pressed
signal btn_settings_pressed
signal btn_rank_pressed
signal btn_quit_pressed

func _on_btn_new_game_pressed() -> void:
	btn_new_game_pressed.emit()

func _on_btn_settings_pressed() -> void:
	btn_settings_pressed.emit()

func _on_btn_rank_pressed() -> void:
	btn_rank_pressed.emit()

func _on_btn_quit_pressed() -> void:
	btn_quit_pressed.emit()
