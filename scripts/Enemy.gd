extends CharacterBody2D

const SPEED : float = 100.0
var start_position : Vector2
@onready var player := get_tree().get_root().get_node("GameWorld").get_node("CanvasLayer/Player")

func _ready():
	global_position = start_position

func _process(delta):
	look_at(player.position)

func _physics_process(delta):
	velocity = position.direction_to(player.position) * SPEED
	move_and_slide()
