extends Node

@onready var SM = get_parent()
@onready var player = get_node("../..")

func _ready():
	await player.ready

func start():
	player.velocity = Vector2.ZERO
	player.set_animation("Idle")

func physics_process(_delta):
	if not player.is_on_floor():
		SM.set_state("Falling")
	if Input.is_action_pressed("Left") or Input.is_action_pressed("Right"):
		SM.set_state("Moving")
	if Input.is_action_pressed("Jump"):
		SM.set_state("Jumping")
