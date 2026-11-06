extends CharacterBody2D

var speed = 80

func _physics_process(delta):
	var motion = Vector2.ZERO
	
	 Input.get_vector ("move_left","move_right","move_up","move_down")
	. normalized
	Velocity = direction * speed
	
