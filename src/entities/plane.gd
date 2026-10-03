class_name TappyPlane
extends CharacterBody2D

@export var config: GameConfig
@onready var audio_flap: AudioStreamPlayer = $AudioFlap

#region Lifecycle
func _physics_process(delta: float) -> void:
	velocity.y += config.gravity * delta
	rotation_degrees = clampf(velocity.y / config.gravity * config.max_tilt,
		config.min_tilt, config.max_tilt)
	move_and_slide()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("flap") and not event.is_echo():
		flap()
#endregion

#region Public
func flap() -> void:
	velocity.y = clampf(velocity.y - config.flap_power,
		-config.flap_velocity_limit, config.flap_velocity_limit)
	audio_flap.play()
#endregion
