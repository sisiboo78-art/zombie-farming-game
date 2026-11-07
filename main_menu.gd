extends Node2D

var button_type = null

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://world.tscn")


#func _on_options_pressed() -> void:
	#	button_type = "option"
#options not yet made

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_fade_timer_timeout() -> void:
	if button_type == "Start" : 
		get_tree().change_scene_to_file("res://main.tscn")
		
		
	#elif button_type == "options" :
	#get_tree().change_scene_to_file(options)
