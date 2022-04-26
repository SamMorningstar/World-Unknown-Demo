extends Control

onready var s = get_node("/root/States")

func _on_Next_Level_pressed():
	var nextlevel = s.levelList[s.currentLevel+1]
	print(nextlevel)
	get_tree().change_scene(nextlevel)


func _on_Main_Menu_pressed():
	get_tree().change_scene("res://Scenes/Main Menu.tscn")
