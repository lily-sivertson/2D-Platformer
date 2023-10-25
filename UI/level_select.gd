extends Control


func _on_option_button_item_selected(index):
	#var buttons=$levels.get_children()
	#buttons.theme=get_node_or_null("pantry_theme.tres")
	$Counter.text=Global.zones[index]
	Global.zone=Global.zones[index]
	var lvnodes=get_tree().get_nodes_in_group("lvsets")
	for l in lvnodes:
		l.hide()
	if index==0:
		$counterlevels.show()
	elif index==1:
		$pantrylevels.show()
	elif index==2:
		$ovenlevels.show()
	elif index==3:
		$fridgelevels.show()
	else:
		$sinklevels.show()
		
		
func _on_play_pressed():
	get_tree().change_scene_to_file(Global.gamefile)


#for the counter levels


func _on_counter_level_1_pressed():
	Global.set_level(0)

func _on_counter_level_2_pressed():
	Global.set_level(1)

func _on_counter_level_3_pressed():
	Global.set_level(2)

# for the pantry levels
