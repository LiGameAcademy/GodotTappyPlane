class_name GameForm
extends Control

@onready var score_container: HBoxContainer = %ScoreContainer
const NUMBER_TEXTURES: Array[Texture2D] = [
	preload("res://assets/textures/widgets/numbers/number0.png"),
	preload("res://assets/textures/widgets/numbers/number1.png"),
	preload("res://assets/textures/widgets/numbers/number2.png"),
	preload("res://assets/textures/widgets/numbers/number3.png"),
	preload("res://assets/textures/widgets/numbers/number4.png"),
	preload("res://assets/textures/widgets/numbers/number5.png"),
	preload("res://assets/textures/widgets/numbers/number6.png"),
	preload("res://assets/textures/widgets/numbers/number7.png"),
	preload("res://assets/textures/widgets/numbers/number8.png"),
	preload("res://assets/textures/widgets/numbers/number9.png")
]

func update_score_display(score: int) -> void:
	var digits: String = str(maxi(score, 0))
	# Remove extras first so this loop sees the correct child count immediately.
	while score_container.get_child_count() > digits.length():
		var extra: Node = score_container.get_child(-1)
		score_container.remove_child(extra)
		extra.queue_free()
	while score_container.get_child_count() < digits.length():
		var picture: TextureRect = TextureRect.new()
		picture.mouse_filter = Control.MOUSE_FILTER_IGNORE
		score_container.add_child(picture)
	for index: int in range(digits.length()):
		var picture: TextureRect = score_container.get_child(index) as TextureRect
		picture.texture = NUMBER_TEXTURES[int(digits[index])]
