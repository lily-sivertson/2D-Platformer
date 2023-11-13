extends Control
func _ready():
	process_mode=Node.PROCESS_MODE_ALWAYS

func _on_quit_pressed():
	get_tree().quit()


func _on_main_menu_pressed():
	print("hi")
	get_tree().paused=false
	get_tree().change_scene_to_file("res://UI/Main_Menu.tscn")


func _on_restart_pressed():
	get_tree().paused=false
	Global.reset()
	var Player= get_node_or_null("/root/Game/Player_Container/Player")
	get_tree().reload_current_scene()
	if Player!=null:
		Player.queue_free()
