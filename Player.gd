extends CharacterBody2D

const SPEED = 300.0

func _process(delta):
	var mouse_position = get_global_mouse_position()
	look_at(mouse_position)

func _physics_process(delta):
	var direction = Vector2()

	if Input.is_action_pressed("MOVE_UP"):
		direction += Vector2(0, -1)
	if Input.is_action_pressed("MOVE_DOWN"):
		direction += Vector2(0, 1)
	if Input.is_action_pressed("MOVE_LEFT"):
		direction += Vector2(-1, 0)
	if Input.is_action_pressed("MOVE_RIGHT"):
		direction += Vector2(1, 0)

	velocity = direction * SPEED

	move_and_slide()
