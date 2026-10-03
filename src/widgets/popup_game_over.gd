extends MarginContainer
class_name PopupGameOver

@onready var score_label: Label = %ScoreLabel
@onready var _lbl_quit: Label = %LblQuit
@onready var _lbl_retry: Label = %LblRetry

signal quit_pressed
signal retry_pressed

var _last_score: int = 0


func _ready() -> void:
	LocaleService.locale_changed.connect(_on_locale_changed)
	_apply_static_texts()


func update_score(score: int) -> void:
	_last_score = score
	score_label.text = tr("UI_SCORE") % score


func _on_btn_quit_pressed() -> void:
	quit_pressed.emit()


func _on_btn_retry_pressed() -> void:
	retry_pressed.emit()


func _on_locale_changed(_locale: String) -> void:
	_apply_static_texts()
	score_label.text = tr("UI_SCORE") % _last_score


func _apply_static_texts() -> void:
	_lbl_quit.text = tr("UI_QUIT")
	_lbl_retry.text = tr("UI_RETRY")
