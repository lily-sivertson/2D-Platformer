extends CharacterBody2D
var text=get_node_or_null("/root/Game/UI/HUD/text")
var overlay=get_node_or_null("/root/Game/UI/HUD/overlay")


func _ready():
	show()
	get_child(1).disabled=false



func _on_timer_timeout():
	Global.clrs()
	



