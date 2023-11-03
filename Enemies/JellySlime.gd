extends CharacterBody2D


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var jump_velocity=-500
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("Jumping")
	
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_on_floor():
		$Timer.start
		$AnimatedSprite2D.play("Jumping")
		velocity.y=jump_velocity
	if not is_on_floor() :
		velocity.y+=gravity*delta
		move_and_slide()


func _on_animated_sprite_2d_animation_finished():
	$AnimatedSprite2D.play("Falling")
	move_and_slide()

func _on_timer_timeout():
	move_and_slide()
	

