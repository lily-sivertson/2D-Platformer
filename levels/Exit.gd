extends Area2D

var tween

func _on_body_entered(body):
	tween=create_tween()
	tween.tween_property($CanvasLayer/ColorRect,"modulate:a",1,1)
	$warp.play()
	await(tween.finished)
	
	if body.name == "Player":
		if name == "Exc1":
			Global.set_level(1)
		elif name == "Exc2":
			Global.set_level(3)
		elif name == "Exc3":
			Global.set_level(3)
		elif name == "Exo1":
			Global.set_level(4)
		elif name == "Exo2":
			Global.set_level(5)
		elif name == "Exo3":
			Global.set_level(6)
		elif name == "Exs1":
			Global.set_level(7)
		elif name == "Exs2":
			Global.set_level(8)
		
		else:
			Global.gamefile="res://Levels/end_game.tscn"
			
			
	get_tree().change_scene_to_file(Global.gamefile)
