extends CharacterBody2D
var initial_position=Vector2(1353,-93)

func _physics_process(delta):
	if position.y>=-593:
		position.y-=5
	elif position.y<=-93:
		position.y+=5
	move_and_slide()
