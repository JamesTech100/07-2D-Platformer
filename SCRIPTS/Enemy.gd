extends KinematicBody2D

const GRAV = 10
const SPEED = 100
const FLOOR = Vector2(0, -1)

var motion = Vector2()

var direction = 1

func _physics_process(delta):	
	motion.x = -SPEED * direction
	
	motion.y += GRAV
	
	motion = move_and_slide(motion, FLOOR)
	
	if is_on_wall():
		direction = direction *-1
	
	
