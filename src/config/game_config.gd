class_name GameConfig
extends Resource

## Shared read-only config. Live data such as speed and score lives elsewhere.
@export var gravity: float = 400.0
@export var flap_power: float = 300.0
@export var flap_velocity_limit: float = 200.0
@export var min_tilt: float = -45.0
@export var max_tilt: float = 90.0
@export var rock_speed: float = 200.0
@export var spawn_interval: Vector2 = Vector2(1.0, 2.0)
@export var spawn_x: float = 632.0
@export var bottom_y: Vector2 = Vector2(216.0, 336.0)
@export var top_y: Vector2 = Vector2(-24.0, 112.0)
@export var despawn_x: float = -56.0
@export var plane_start: Vector2 = Vector2(72.0, 152.0)
