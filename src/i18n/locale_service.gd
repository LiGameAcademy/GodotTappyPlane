extends Node

## Registers English / Chinese UI strings and applies the locale.
## Default is English. Choice is saved under user://locale.cfg.

const LOCALE_EN: String = "en"
const LOCALE_ZH: String = "zh_CN"
const DEFAULT_LOCALE: String = LOCALE_EN
const SAVE_PATH: String = "user://locale.cfg"

signal locale_changed(locale: String)

var current_locale: String = DEFAULT_LOCALE


func _ready() -> void:
	_register_translations()
	set_locale(_load_saved_locale(), false)


func set_locale(locale: String, persist: bool = true) -> void:
	var next_locale: String = locale
	if next_locale != LOCALE_EN and next_locale != LOCALE_ZH:
		next_locale = DEFAULT_LOCALE
	current_locale = next_locale
	TranslationServer.set_locale(next_locale)
	if persist:
		_save_locale(next_locale)
	locale_changed.emit(next_locale)


func is_english() -> bool:
	return current_locale == LOCALE_EN


func _register_translations() -> void:
	var english: Translation = _make_translation(LOCALE_EN, {
		"UI_NEW_GAME": "New Game",
		"UI_QUIT": "Quit",
		"UI_RETRY": "Retry",
		"UI_SCORE": "Score: %d",
		"UI_LANG_EN": "EN",
		"UI_LANG_ZH": "中文",
	})
	var chinese: Translation = _make_translation(LOCALE_ZH, {
		"UI_NEW_GAME": "新游戏",
		"UI_QUIT": "退出",
		"UI_RETRY": "重试",
		"UI_SCORE": "本次分数：%d",
		"UI_LANG_EN": "EN",
		"UI_LANG_ZH": "中文",
	})
	TranslationServer.add_translation(english)
	TranslationServer.add_translation(chinese)


func _make_translation(locale: String, messages: Dictionary) -> Translation:
	var translation: Translation = Translation.new()
	translation.locale = locale
	for key: String in messages.keys():
		translation.add_message(key, str(messages[key]))
	return translation


func _load_saved_locale() -> String:
	var config: ConfigFile = ConfigFile.new()
	if config.load(SAVE_PATH) != OK:
		return DEFAULT_LOCALE
	return str(config.get_value("i18n", "locale", DEFAULT_LOCALE))


func _save_locale(locale: String) -> void:
	var config: ConfigFile = ConfigFile.new()
	config.set_value("i18n", "locale", locale)
	config.save(SAVE_PATH)
