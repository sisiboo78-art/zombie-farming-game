class_name Player extends CharacterBody2D

#var cardinal_direction : Vector2 = Vector.DOWN 
var direction : Vector2 = Vector2.ZERO
const max_speed = 100 #speed you go
const accel = 1500 #speed you stop at
var state : String = "idle"

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D


func _physics_process(delta):
	# Update velocity towards the desired direction based on input
	velocity = velocity.move_toward(Input.get_vector("move_left", "move_right", "move_up", "move_down") * max_speed, accel * delta)
	
	# Move the character
	move_and_slide()
	
	UpdateAnimation()
	
	pass




func SetDirection() -> bool:
	
	return true



func SetState() -> bool: 
	
	return true


func UpdateAnimation() -> void: 
	animation_player.play("idle_down")
	pass
