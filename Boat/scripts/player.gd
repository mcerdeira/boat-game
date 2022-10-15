extends KinematicBody2D
var vspeed = Vector2.ZERO
var player_speed = 200
var player_jump_speed = 300
var jumping = false

func _physics_process(delta):	
	vspeed.y += Global.GRAVITY
	vspeed.x = 0
	if is_on_floor() and jumping:
		jumping = false
	
	if is_on_floor() and Input.is_action_pressed("jump"):
		jumping = true
		vspeed.y = -player_jump_speed
		
	if Input.is_action_pressed("left"):
		vspeed.x = -player_speed
	elif Input.is_action_pressed("right"):
		vspeed.x = player_speed

	vspeed = move_and_slide(vspeed, Vector2.UP)
