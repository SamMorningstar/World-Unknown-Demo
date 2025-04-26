extends MarginContainer

@onready var s = get_node("/root/States")

func _ready():
	if(s.CB==false):
		$CenterContainer/VBoxContainer/CenterContainer2/HBoxContainer/CheckBox.set_pressed(false)
	else:
		$CenterContainer/VBoxContainer/CenterContainer2/HBoxContainer/CheckBox.set_pressed(true)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/Main Menu.tscn")


func _on_CheckBox_pressed():
	get_window().mode = Window.MODE_EXCLUSIVE_FULLSCREEN if (!((get_window().mode == Window.MODE_EXCLUSIVE_FULLSCREEN) or (get_window().mode == Window.MODE_FULLSCREEN))) else Window.MODE_WINDOWED
	if($CenterContainer/VBoxContainer/CenterContainer2/HBoxContainer/CheckBox.is_pressed()):
		s.CB=true
	else:
		s.CB=false
