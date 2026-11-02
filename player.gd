extends CharacterBody2D

var speed = 80

func _physics_process(delta):
	var motion = Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		motion.x = speed
	elif Input.is_action_pressed("move_left"):
		motion.x = -speed
	elif Input.is_action_pressed("move_down"):
		motion.y = speed
	elif Input.is_action_pressed("move_up"):
		motion.y = -speed
	
	velocity = motion
	move_and_slide()
