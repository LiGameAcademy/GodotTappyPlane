extends Area2D

## 岩石障碍物的实现，从右向左移动，与飞机碰撞时发出信号

# 移动速度
@export var speed = 200.0

# 碰撞信号
signal rock_entered

func _ready() -> void:
	# 将岩石添加到"rock"组，便于统一管理
	add_to_group("rock")

func _process(delta: float) -> void:
	# 向左移动
	position.x -= speed * delta
	
	# 当岩石移出屏幕时销毁
	if position.x <= -56:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	# 检查碰撞的是否为飞机
	if body is CharacterBody2D:
		# 发出碰撞信号
		rock_entered.emit()
