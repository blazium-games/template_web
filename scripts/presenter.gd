extends Node2D

const Rules = preload("res://scripts/rules.gd")
var rules = Rules.new()

func _ready() -> void:
	var lens: Camera2D = get_node("SheetLens")
	lens.make_current()

func _unhandled_input(event: InputEvent) -> void:
	if not event.is_action_pressed("primary"):
		return
	if not rules.page_ready(rules.focused):
		rules.take_focus()
		return
	if rules.may_page():
		_go("res://scenes/page.tscn")

func _go(next_path: String) -> void:
	get_tree().change_scene_to_file(next_path)
