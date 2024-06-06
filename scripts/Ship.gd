extends Node2D

var center : Vector2 = Vector2(0, 0)
var color : Color = Color.WHITE
var antialiasing : bool = true
var width : int = 3

var polygon = [
				Vector2(30, 0),
				Vector2(5, 15),
				Vector2(-20, 20),
				Vector2(0, 0),
				Vector2(-20, -20),
				Vector2(5, -15),
				Vector2(30, 0),
			]

func _draw():
	if not is_in_group("Player"):
		color = Color.BLACK

	draw_polyline(polygon, color, width, antialiasing)
