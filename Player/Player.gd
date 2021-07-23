extends KinematicBody2D

#
# MOVEMENT
#
var movement
var hspeed = 20
var velocity = Vector2.ZERO

func _physics_process(delta):
	
	if position.y < 0:
		position.y = 180
	elif position.y > 180:
		position.y = 0
	
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
		
	if input_vector != Vector2.ZERO:
		movement = Vector2(input_vector.x/5,input_vector.y)
	else:
			movement = Vector2.ZERO
		
	velocity = move_and_collide(Vector2(hspeed * movement.x+1,movement.y))
	
	#
	# COLLISION
	#
	
	
	



