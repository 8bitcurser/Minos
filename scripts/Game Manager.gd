extends Node

var score = 0

@onready var score_manager = $ScoreManager

func add_point():
	score += 1
	score_manager.text = "You collected: " + str(score) + " coins!"
