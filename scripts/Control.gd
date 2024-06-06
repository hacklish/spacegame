extends Node2D

@onready var enemy = load("res://scene/enemy.tscn")

func _on_enemy_spawner_timeout():
	var rnd_position = randomize_spawn_point()
	var baddie = enemy.instantiate()
	baddie.start_position = rnd_position
	add_child(baddie)

func randomize_spawn_point():
	var spawn_point = Vector2()
	randomize()
	
	var area = get_window().get_visible_rect()
	var s = randi_range(1, 4)
	
	var x = get_viewport_rect().size.x
	var y = get_viewport_rect().size.y

	if s == 1: # top edge
		spawn_point.x = randi_range(0, x)
	if s == 3: # bottom edge
		spawn_point.x = randi_range(0, x)
		spawn_point.y = y
	if s == 2: # right edge
		spawn_point.x = x
		spawn_point.y = randi_range(0, y)
	if s == 4: # left edge
		spawn_point.y = randi_range(0, y)

	return spawn_point
