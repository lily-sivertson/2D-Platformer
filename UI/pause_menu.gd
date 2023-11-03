extends Control


func _on_quit_pressed():
	get_tree().quit()


func _on_main_menu_pressed():
	get_tree().paused=false
	get_tree().change_scene_to_file("res://UI/Main_Menu.tscn")


func _on_restart_pressed():
	get_tree().paused=false
	Global.reset()
	var Player= get_node_or_null("/root/Game/Player_Container/Player")
	if Player!=null:
		Player.queue_free()
