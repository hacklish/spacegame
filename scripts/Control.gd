extends Node2D

@onready var enemy = load("res://scene/enemy.tscn")

func _on_enemy_spawner_timeout():
	var baddie = enemy.instantiate()
	baddie.start_position = Vector2()
	add_child(baddie)
