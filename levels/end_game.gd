extends Control


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://UI/Main_Menu.tscn")

func _on_quit_pressed():
	get_tree().quit()