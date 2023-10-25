extends Control



func _on_quit_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://levels/Level1.tscn")


func _on_level_select_pressed():
	get_tree().change_scene_to_file("res://UI/level_select.tscn")
