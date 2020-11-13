extends Button

func _on_Button_pressed():
	assert(get_tree().change_scene("res://Scenes/TitleScreen.tscn") == OK)
