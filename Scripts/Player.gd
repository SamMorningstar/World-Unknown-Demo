extends CharacterBody2D

const MAX = 100
var vel = Vector2.ZERO
var screensize
@onready var s = get_node("/root/States")
@onready var animationPlayer = $AnimationPlayer
@onready var animationTree = $AnimationTree
@onready var animationState = animationTree.get("parameters/playback")

func _ready():
	screensize = get_viewport_rect().size

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x =Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	input_vector.y =Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if(input_vector != Vector2.ZERO):
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationTree.set("parameters/Run/blend_position", input_vector)
		animationState.travel("Run")
		vel=input_vector
	else:
		animationState.travel("Idle")
		vel=Vector2.ZERO
	
	position += input_vector * delta
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	
	var collide = move_and_collide(vel*delta*MAX)
	if (collide):
		$Label.set_visible(true)
		vel=0
	else:
		$Label.set_visible(false)

func _on_Area2D_body_entered(body):
	get_tree().change_scene_to_file("res://Scenes/Next Level.tscn")
