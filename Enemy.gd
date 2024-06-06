extends CharacterBody2D

const SPEED : float = 100.0

func _process(delta):
	look_at(%Player.position)

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity = position.direction_to(%Player.position) * SPEED

	move_and_slide()
