class_name Rock
extends Area2D

signal rock_entered
@export var config: GameConfig

func _physics_process(delta: float) -> void:
	position.x -= config.rock_speed * delta
	if position.x <= config.despawn_x:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	if body is TappyPlane:
		rock_entered.emit()
