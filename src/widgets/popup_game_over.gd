extends MarginContainer
class_name PopupGameOver

## 游戏结束界面的实现，显示最终分数并提供重试和退出选项

# UI元素
@onready var score_label: Label = %ScoreLabel

# 按钮信号
signal quit_pressed
signal retry_pressed

## 更新分数显示
## @param score 最终分数
func update_score(score: int) -> void:
	# 更新分数标签文本
	score_label.text = "本次分数：" + str(score)

## 退出游戏按钮点击事件
func _on_btn_quit_pressed() -> void:
	print("点击了退出按钮")
	# 发出退出信号
	quit_pressed.emit()

## 重试游戏按钮点击事件
func _on_btn_retry_pressed() -> void:
	print("点击了重试按钮")
	# 发出重试信号
	retry_pressed.emit()
