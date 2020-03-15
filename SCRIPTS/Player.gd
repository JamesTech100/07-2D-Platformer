extends KinematicBody2D
# Movement script

const UP = Vector2(0, -1)

var motion = Vector2()
var walkSpeed = 200
var jumpForce = -400

func _physics_process(delta):
	motion.y += 10
	
	if Input.is_action_pressed("right"):
		motion.x = walkSpeed
	elif Input.is_action_pressed("left"):
		motion.x = -walkSpeed
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("up"):
			motion.y = jumpForce
	
	motion = move_and_slide(motion, UP)
