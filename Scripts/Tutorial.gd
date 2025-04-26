extends MarginContainer

func _process(delta):
	if Input.is_action_just_pressed("ui_select"):
		get_tree().change_scene_to_file("res://Scenes/Level 1.tscn")
