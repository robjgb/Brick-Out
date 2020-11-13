extends StaticBody2D

func _ready():
	$Timer.connect("timeout", self, "on_end")

func hit():
	$Sprite.visible = false
	$Particles2D.emitting = true
	$Timer.start()

func on_end():
	queue_free()
