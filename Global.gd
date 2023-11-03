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
		"gamefile"="res://levels/fridge_level1.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/fridge_level2.tscn",
		"highscore"=0
	},{ 
		"name"="",
		"inst"="",
		"gamefile"="res://levels/fridge_level3.tscn",
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


var zones=["Counter","Oven","Fridge", "Sink"]
var score=0

var death_zone = 1000
var zone="Counter"
var gamefile="res://level1.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

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
	#if Input.is_action_pressed("Menu"):
		#get_tree().quit()
		
func set_level(dex):
	
	
	
	var temp={}
	temp=levels[dex]
	gamefile=temp.get("gamefile")
	var lvhs=get_node_or_null("/root/Game/UI/level_select/Highscore")
	if lvhs!=null:
		lvhs="Highscore:\n"+ temp.get("highscore")
	
func reset():
	score=0
	var Score= get_node_or_null("/root/Game/UI/HUD/Score")
	if Score!= null:
		Score.text="Score: "+ str(score)
	
	
func update_score():
	score+=100
	var Score= get_node_or_null("/root/Game/UI/HUD/Score")
	if Score!= null:
		Score.text="Score: "+ str(score)
