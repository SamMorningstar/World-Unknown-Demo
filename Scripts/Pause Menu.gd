extends Control

var is_paused = false: set = set_is_paused

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_Resume_pressed():
	self.set_is_paused(false)

func _on_MM_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main Menu.tscn")
	self.set_is_paused(false)
