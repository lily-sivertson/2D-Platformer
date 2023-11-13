extends CharacterBody2D


var player = null



var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var jump_velocity=-500
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("Jumping")
	
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	player=get_node_or_null("/root/Game/Player_Container/Player")
	if is_on_floor():
		$splat.play
		$Timer.start
		$AnimatedSprite2D.play("Jumping")
		velocity.y=jump_velocity
	if not is_on_floor() :
		velocity.y+=gravity*delta
		move_and_slide()
		
	if player!= null:
		$See.target_position=player.global_position
		if $See.target_position.x>global_position.x:
			velocity.x=100
		else:
			velocity.x=-100
		
		
		
		
		
	


func _on_animated_sprite_2d_animation_finished():
	$AnimatedSprite2D.play("Falling")
	move_and_slide()

func _on_timer_timeout():
	move_and_slide()
	



func _on_area_2d_body_entered(body):
	if body.get_parent().name=="Player":
		jump_velocity=-400


func _on_attack_body_entered(body):
	if body.name=="Player":
		Global.update_health(34)
		
