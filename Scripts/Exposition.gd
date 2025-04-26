extends MarginContainer

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/Main Menu.tscn")
	elif Input.is_action_just_pressed("ui_select"):
		get_tree().change_scene_to_file("res://Scenes/Tutorial.tscn")
