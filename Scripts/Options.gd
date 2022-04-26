extends MarginContainer

onready var s = get_node("/root/States")

func _ready():
	if(s.CB==false):
		$CenterContainer/VBoxContainer/CenterContainer2/HBoxContainer/CheckBox.set_pressed(false)
	else:
		$CenterContainer/VBoxContainer/CenterContainer2/HBoxContainer/CheckBox.set_pressed(true)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://Scenes/Main Menu.tscn")


func _on_CheckBox_pressed():
	OS.set_window_fullscreen(!OS.window_fullscreen)
	if($CenterContainer/VBoxContainer/CenterContainer2/HBoxContainer/CheckBox.is_pressed()):
		s.CB=true
	else:
		s.CB=false
