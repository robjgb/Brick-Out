extends Node2D

var score = 0 setget set_score
var lives = 3 setget set_lives

func _ready():
	pass

func set_score(value):
	score = value
	get_node("Score").set_text("SCORE: "+ str(score))

func set_lives(value):
	lives = value
	get_node("Lives").set_text("LIVES: "+ str(lives))
