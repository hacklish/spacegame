extends CharacterBody2D

var SPEED : float = 750.0
var start_position : Vector2
var start_rotation : float

func _ready():
	global_position = start_position
	global_rotation = start_rotation

func _physics_process(delta):
	velocity = Vector2(0, -SPEED).rotated(start_rotation)
	move_and_slide()

func _on_life_time_timeout():
	queue_free()

func _on_area_2d_body_entered(body):
	if body.is_in_group("Enemy"):
		body.queue_free()
		queue_free()
