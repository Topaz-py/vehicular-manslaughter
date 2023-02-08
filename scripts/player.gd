extends KinematicBody

export var speed = 14
export var fall_acceleration = 75
var velocity = Vector3.ZERO

func _physics_process(delta):
	var direction = Vector3.ZERO
	
	direction.z -= 1
	if Input.is_action_pressed('right'):
		direction.x += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	#if Input.is_action_pressed("foward"):
	#	direction.z -= 1
	#if Input.is_action_pressed("down"):
	#	direction.z += 1
	if direction != Vector3.ZERO:
		direction = direction.normalized()
		$pivot.look_at(translation + direction, Vector3.UP)
	
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed
	velocity.y -= fall_acceleration * delta
	velocity = move_and_slide(velocity, Vector3.UP)
