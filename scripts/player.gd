extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta):
	# Add the gravity
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Handle player interaction
	if Input.is_action_just_pressed("interact") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	velocity.x = SPEED
	velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
