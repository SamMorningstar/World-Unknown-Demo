extends Node2D

onready var s = get_node("/root/States")

func _ready():
	s.currentLevel=2;
