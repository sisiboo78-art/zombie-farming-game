extends Node2D

func _ready() -> void:
	visible = false
	get_tree().paused = false

func _input(event: InputEvent) -> void:
	# Use event.is_action_pressed for cleaner input handling in _input()
	if event.is_action_pressed("pause"):
		if get_tree().paused:
			visible = false
			get_tree().paused = false
		else:
			visible = true
			get_tree().paused = true

func _on_button_pressed() -> void:
	visible = false
	get_tree().paused = false


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
