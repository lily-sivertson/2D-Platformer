extends Node

#list of dictionaries with info for each level
var levels=[
	{	
		"name"="",
		"inst"="",
		"gamefile"="res://levels/Level1.tscn",
		"highscore"=0
	},{ 	
		"name"="",
		"inst"="",
		"gamefile"="res://levels/Levelc2.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/Level3.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/oven_level1.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/oven_level2.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/oven_level3.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/sink_level1.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/sink_level2.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/sink_level3.tscn",
		"highscore"=0
	}	
]

var zones=["Counter","Oven", "Sink"]
var score=0
var death_zone = 1000
var zone="Counter"
var gamefile="res://level1.tscn"
var hkey=false
var health=100


# Called when the node enters the scene tree for the first time.


func _input(event):
	if event.is_action_pressed("Menu"):
		var Pause_Menu = get_node_or_null("/root/Game/UI/Pause_menu")
		if Pause_Menu == null:
			get_tree().quit()
		else:
			if Pause_Menu.visible:
				Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
				get_tree().paused = false
				Pause_Menu.hide()
			else:
				Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
				get_tree().paused = true
				Pause_Menu.show()
				

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		
func set_level(dex):
	
	
	
	var temp={}
	temp=levels[dex]
	gamefile=temp.get("gamefile")
	var lvhs=get_node_or_null("/root/Game/UI/level_select/Highscore")
	if lvhs!=null:
		lvhs="Highscore:\n"+ temp.get("highscore")
	
func reset():
	score=0
	health=100
	var Score= get_node_or_null("/root/Game/UI/HUD/Score")
	if Score!= null:
		Score.text="Score: "+ str(score)
	
	
func update_score():
	score+=100
	var Score= get_node_or_null("/root/Game/UI/HUD/Score")
	if Score!= null:
		Score.text="Score: "+ str(score)
		
		
func update_hkey():
	hkey=true
func update_health(l):
	health-=l
	var Health=get_node_or_null("/root/Game/UI/HUD/Health")
	if Health!=null:
		Health.text="Health: "+ str(health)

func upd_gate(p):
	var gate=get_node_or_null("/root/Game/gate")
	var text= get_node_or_null("/root/Game/UI/HUD/text")
	var overlay= get_node_or_null("/root/Game/UI/HUD/overlay")
	var wall= get_node_or_null("/root/Game/wall")
	if p=="not":
		if text!=null:
			print("hihih")
			text.text="You do not have the key to unlock this gate yet"
			text.show()
			overlay.show()
			gate.get_child(2).start()
		else:
			print("the node is null")
	else: 
		gate.hide()
		gate.get_child(1).set_deferred("disabled", true)
		wall.queue_free()
func clrs():
	var text= get_node_or_null("/root/Game/UI/HUD/text")
	var overlay= get_node_or_null("/root/Game/UI/HUD/overlay")
	text.hide()
	overlay.hide()
	
func set_h_over():
	health=100
	var Health=get_node_or_null("/root/Game/UI/HUD/Health")
	if Health!=null:
		Health.text="Health: "+ str(health)
	
