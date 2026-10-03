extends Control
class_name MenuForm

signal btn_new_game_pressed
signal btn_quit_pressed

@onready var _lbl_new_game: Label = %LblNewGame
@onready var _lbl_quit: Label = %LblQuit
@onready var _lbl_lang_en: Label = %LblLangEn
@onready var _lbl_lang_zh: Label = %LblLangZh

func _ready() -> void:
	LocaleService.locale_changed.connect(_on_locale_changed)
	_apply_texts()

func _on_btn_new_game_pressed() -> void:
	btn_new_game_pressed.emit()

func _on_btn_quit_pressed() -> void:
	btn_quit_pressed.emit()

func _on_btn_lang_en_pressed() -> void:
	LocaleService.set_locale(LocaleService.LOCALE_EN)

func _on_btn_lang_zh_pressed() -> void:
	LocaleService.set_locale(LocaleService.LOCALE_ZH)

func _on_locale_changed(_locale: String) -> void:
	_apply_texts()

func _apply_texts() -> void:
	_lbl_new_game.text = tr("UI_NEW_GAME")
	_lbl_quit.text = tr("UI_QUIT")
	_lbl_lang_en.text = tr("UI_LANG_EN")
	_lbl_lang_zh.text = tr("UI_LANG_ZH")
