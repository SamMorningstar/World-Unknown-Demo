extends Control

const GAME_STATES=["res://Scenes/Level 1.tscn","res://Scenes/Level 2.tscn","res://Scenes/Level 3.tscn","res://Scenes/Level 4.tscn","res://Scenes/Level 5.tscn"]

@onready var selector_a = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Selector
@onready var selector_b = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer4/HBoxContainer/Selector
@onready var selector_c = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/Selector
@onready var selector_d = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/Selector
@onready var selector_e = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer5/HBoxContainer/Selector

var current_selection = 0

func _ready():
	set_Current_Selection(0)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/Main Menu.tscn")
	elif Input.is_action_just_pressed("ui_down") and current_selection < 4:
		current_selection += 1
		set_Current_Selection(current_selection)
	elif Input.is_action_just_pressed("ui_up") and current_selection > 0:
		current_selection -= 1
		set_Current_Selection(current_selection)
	elif Input.is_action_just_pressed("ui_accept"):
		handle_selection(current_selection)
	
func handle_selection(_current_selection):
	if _current_selection == 0:
		get_tree().change_scene_to_file(GAME_STATES[0])
	elif _current_selection == 1:
		get_tree().change_scene_to_file(GAME_STATES[1])
	elif _current_selection == 2:
		get_tree().change_scene_to_file(GAME_STATES[2])
	elif _current_selection == 3:
		get_tree().change_scene_to_file(GAME_STATES[3])
	elif _current_selection == 4:
		get_tree().change_scene_to_file(GAME_STATES[4])
	
func set_Current_Selection(_current_selection):
	selector_a.text = ""
	selector_b.text = ""
	selector_c.text = ""
	selector_d.text = ""
	selector_e.text = ""
	
	if _current_selection == 0:
		selector_a.text = ">"
	elif _current_selection == 1:
		selector_b.text = ">"
	elif _current_selection == 2:
		selector_c.text = ">"
	elif _current_selection == 3:
		selector_d.text = ">"
	elif _current_selection == 4:
		selector_e.text = ">"
	

