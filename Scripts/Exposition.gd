extends MarginContainer

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://Scenes/Main Menu.tscn")
	elif Input.is_action_just_pressed("ui_select"):
		get_tree().change_scene("res://Scenes/Tutorial.tscn")
