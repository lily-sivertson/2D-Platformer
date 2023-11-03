extends Area2D



func _on_body_entered(body):
	if body.name == "Player":
		if name == "Exc1":
			Global.set_level(1)
		elif name == "Exc2":
			Global.set_level(2)
		elif name == "Exc3":
			Global.set_level(3)
		elif name == "Exo1":
			Global.set_level(4)
		elif name == "Exo2":
			Global.set_level(5)
		elif name == "Ex03":
			Global.set_level(6)
		elif name == "Exf1":
			Global.set_level(7)
		elif name == "Exf2":
			Global.set_level(8)
		elif name == "Exf3":
			Global.set_level(9)
		elif name == "Exs1":
			Global.set_level(10)
		elif name == "Exs2":
			Global.set_level(11)
		else:
			Global.gamefile="res://Levels/end_game.tscn"
			
			
	get_tree().change_scene_to_file(Global.gamefile)
