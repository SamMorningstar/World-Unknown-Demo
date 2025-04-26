extends Node2D

@onready var s = get_node("/root/States")

func _ready():
	s.currentLevel=4;


func _on_Area2D_body_entered(body):
	get_tree().change_scene_to_file("res://Scenes/End Screen.tscn")
