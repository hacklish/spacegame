extends CharacterBody2D

const SPEED : float = 400.0
@onready var projectile = load("res://projectile.tscn")

func _ready():
	global_position = get_viewport_rect().end / 2

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

	if Input.is_action_just_pressed("SHOOT"):
		shoot()

	velocity = direction * SPEED
	move_and_slide()

func shoot():
	var poof = projectile.instantiate()
	poof.start_rotation = %Barrel.global_rotation
	poof.start_position = %Barrel.global_position
	get_parent().add_child(poof)
