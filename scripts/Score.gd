extends Label

var score : int = 0

func _ready():
	text = "Score: %s" % score

func _on_enemy_kill():
	score += 1
	text = "Score: %s" % score
