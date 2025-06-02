extends Control
class_name MenuForm

## 主菜单界面的实现，包含开始游戏和退出游戏按钮

# 按钮信号
signal btn_new_game_pressed
signal btn_quit_pressed

## 开始游戏按钮点击事件
func _on_btn_new_game_pressed() -> void:
	# 发出开始游戏信号
	btn_new_game_pressed.emit()

## 退出游戏按钮点击事件
func _on_btn_quit_pressed() -> void:
	# 发出退出游戏信号
	btn_quit_pressed.emit()
