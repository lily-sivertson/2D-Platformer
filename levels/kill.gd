extends Area2D


func _on_body_entered(body):
	print(body.name)
	if body.name=="Coin_Collector":
		body.get_parent().queue_free()
