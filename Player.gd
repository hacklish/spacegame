extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	var mouse_position = get_global_mouse_position()

	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var direction = (mouse_position - position).normalized()
		velocity = direction * SPEED

	move_and_slide()
