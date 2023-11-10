extends CharacterBody2D

func ready():
	show()
	$CollisionShape2D.set_deferred("disabled",false)

func _on_body_entered(body):
	'''print("hello")
	if body.name== "Coin_Collector":
		if visible:
			hide()
			$CollisionShape2D.disabled=true
		Global.update_score()'''

func c_reset():
	show()
	$CollisionShape2D.set_deferred("disabled",false)
