class_name GameRules
extends RefCounted

## Pure rules: no nodes, no waiting on audio or animation.
enum State { MENU, PLAYING, GAME_OVER }
var state: State = State.MENU
var score: int = 0

func start() -> void:
	state = State.PLAYING
	score = 0

func tick() -> void:
	if state == State.PLAYING:
		score += 1

func finish() -> bool:
	if state != State.PLAYING:
		return false
	state = State.GAME_OVER
	return true
