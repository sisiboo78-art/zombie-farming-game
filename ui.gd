extends CanvasLayer

@onready var canvas_layer = $CanvasLayer
var is_paused = false

func _ready():
	canvas_layer.visible = false
	
func _input(event):
	if event.is_action_pressed("pause"):
		toggle_pause()
		
func toggle_pause():
	is_paused = not is_paused
	canvas_layer.visible = is_paused
	get_tree().paused = is_paused
	

func _on_play_pressed() -> void:
	is_paused = false
	canvas_layer.visible = false
	get_tree().paused = false
	

func _on_QUIT_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.gd")
