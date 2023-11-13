extends Control


func _on_option_button_item_selected(index):
	#var buttons=$levels.get_children()
	#buttons.theme=get_node_or_null("pantry_theme.tres")
	$Counter.text=Global.zones[index]
	Global.zone=Global.zones[index]
	var lvnodes=get_tree().get_nodes_in_group("lvsets")
	for l in lvnodes:
		l.hide()
	var lvbgs=get_tree().get_nodes_in_group("lvbgs")
	for b in lvbgs:
		b.hide()
	if index==0:
		$Counterbg.show()
		$counterlevels.show()
		
	elif index==1:
		$Ovenbg.show()
		$ovenlevels.show()
	#elif index==2:
		#$Fridgebg.show()
		#$fridgelevels.show()
	else:
		$Sinkbg.show()
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
	
	

# for the oven levels


func _on_oven_level_1_pressed():
	Global.set_level(3)

func _on_oven_level_2_pressed():
	Global.set_level(4)

func _on_oven_level_3_pressed():
	Global.set_level(5)
# for the fridge levels




'''func _on_fridge_level_1_pressed():
	Global.set_level(6)

func _on_fridge_level_2_pressed():
	Global.set_level(7)

func _on_fridge_level_3_pressed():
	Global.set_level(8)'''
	
	
# sink levels

func _on_sink_level_1_pressed():
	Global.set_level(6)
func _on_sink_level_2_pressed():
	Global.set_level(7)
func _on_sink_level_3_pressed():
	Global.set_level(8)
