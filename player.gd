extends CharacterBody2D

const max_speed = 100 #speed you go
const accel = 1500 #speed you stop at

func _physics_process(delta):
	# Update velocity towards the desired direction based on input
	velocity = velocity.move_toward(Input.get_vector("move_left", "move_right", "move_up", "move_down") * max_speed, accel * delta)
	
	# Move the character
	move_and_slide()
