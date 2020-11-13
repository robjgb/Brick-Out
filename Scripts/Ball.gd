extends RigidBody2D

export var SPEEDUP = 5
const MAXSPEED = 400

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	var bodies = get_colliding_bodies()
	
	for body in bodies:
		if body.is_in_group("Bricks"):
			get_node("/root/World").score += 5
			body.hit()
			
		if body.get_name() == "Paddle":
			var speed = get_linear_velocity().length()
			var direction = get_position() - body.get_node("Anchor").get_global_position()
			var velocity = direction.normalized()*min(speed+SPEEDUP, MAXSPEED)
			set_linear_velocity(velocity)
	
	if get_position().y > get_viewport_rect().end.y:
		print("Ball died")
		queue_free() 
		get_node("/root/World").lives -= 1
		get_node("/root/World/Paddle").living = true
		if get_node("/root/World").lives == 0:
			assert(get_tree().change_scene("res://Scenes/TitleScreen.tscn") == OK)
	
