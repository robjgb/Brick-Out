extends Button

export(String) var scene_to_load


func _on_RulesButton_pressed():
	assert(get_tree().change_scene("res://Scenes/Rules.tscn") == OK)


func _on_NewGame_pressed():
	assert(get_tree().change_scene("res://Scenes/Level1.tscn") == OK)
