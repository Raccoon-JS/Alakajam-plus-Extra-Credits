extends Node

var james_panel
var jesse_panel

var eyes = ["res://images/Jesse_eye_red.jpg", "res://images/James_eye_green.jpg"]

var james_stories = ["res://images/photos/James/WANTED_green.png", #0
				"res://images/photos/James/shooting_murder_green.png", #1
				"res://images/photos/James/cash_money_green.png", #2
				"res://images/photos/James/clinic_lobby_green.png", #3
				"res://images/photos/James/face_down_green_4.png", #4
				"res://images/photos/James/abandoned_building_exterior_green.png", #5
				"res://images/photos/James/abandoned_building_interior_green.png", #6
				"res://images/photos/James/face_down_green_2.png", #7
				"res://images/photos/James/playground_green.png", #8
				"res://images/photos/James/the-woods_green.png", #9
				"res://images/photos/James/shirt_green_2.png", #10
				"res://images/photos/James/pointing_gun_green.png", #11
				"res://images/photos/James/shirt_green_shot.png", #12
				"res://images/photos/James/face_down_green_3.png"] #13

var jesse_stories = ["res://images/photos/Jesse/shirt_red_1.png",
					"res://images/photos/Jesse/pointing_gun_red.png",
					"res://images/photos/Jesse/shirt_red_2.png",
					"res://images/photos/Jesse/the-woods_red.png",
					"res://images/photos/Jesse/playground_red.png",
					"res://images/photos/Jesse/pointing_gun_red.png",
					"res://images/photos/Jesse/shirt_red_3.png",
					"res://images/photos/Jesse/clinic_lobby_red.png",
					"res://images/photos/Jesse/child_girl_eye_red.png",
					"res://images/photos/Jesse/child_pointing_gun_red.png",
					"res://images/photos/Jesse/pointing_gun_red.png",
					"res://images/photos/Jesse/shirt_red_4.png"]

func _ready():
	james_panel = 0
	jesse_panel = 0
	
	if name == "1" or "@1@2":
		if global.character == "Jesse":
			$background.color = global.red
			$story.texture = load(eyes[0])
			$game_over.modulate = global.deep_red
			$left_side/materials/time_and_points/time.modulate = global.deep_red
			$left_side/materials/time_and_points/points.modulate = global.deep_red
			$left_side/materials/key_labels/A.modulate = global.deep_red
			$left_side/materials/key_labels/S.modulate = global.deep_red
			$left_side/materials/key_labels/D.modulate = global.deep_red
			#$left_side/materials/keys/left.modulate = global.deep_red
			$left_side/materials/keys/center.modulate = global.deep_red
			#$left_side/materials/keys/right.modulate = global.deep_red
		elif global.character == "James":
			$background.color = global.green
			$story.texture = load(eyes[1])
			$game_over.modulate = global.deep_green
			$left_side/materials/time_and_points/time.modulate = global.deep_green
			$left_side/materials/time_and_points/points.modulate = global.deep_green
			#$left_side/materials/key_labels/A.modulate = global.deep_green
			$left_side/materials/key_labels/S.modulate = global.deep_green
			#$left_side/materials/key_labels/D.modulate = global.deep_green
			#$left_side/materials/keys/left.modulate = global.deep_green
			$left_side/materials/keys/center.modulate = global.deep_green
			#$left_side/materials/keys/right.modulate = global.deep_green
		#else:
		#	if name == "1" or "@1@2":
		#		$background.color = global.blue # To avoid error
		#	else:
		#		
	if name == "2":
		$times_and_points/left/left_time.modulate = global.deep_red
		$times_and_points/left/left_points.modulate = global.deep_red
		$times_and_points/right/right_time.modulate = global.deep_green
		$times_and_points/right/right_points.modulate = global.deep_green
		$left_keys/keys/labels.modulate = global.deep_red
		#$left_keys/keys/key_images/left.modulate = global.deep_red
		$left_keys/keys/key_images/center.modulate = global.deep_red
		#$left_keys/keys/key_images/right.modulate = global.deep_red
		$right_keys/keys/labels.modulate = global.deep_green
		#$right_keys/keys/key_images/left.modulate = global.deep_green
		$right_keys/keys/key_images/center.modulate = global.deep_green
		#$right_keys/keys/key_images/right.modulate = global.deep_green
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if name == "2":
		_another_left_side(event)
		_right_side(event)
		if event.is_action_pressed("S_key") and event.is_action_pressed("K_key") and $right_screen.visible == false and $left_screen.visible == false:
			global.goto_scene("res://scenes/the_end.tscn")
	if name == "1" or "@1@2":
		print(name)
		_left_side(event)
	
	pass

func _left_side(event):
	#if event.is_action_pressed("A_key"):
	#	$left_side/materials/keys/left.modulate = character_color(global.character, "on")
	#if event.is_action_released("A_key"):
	#	$left_side/materials/keys/left.modulate = character_color(global.character, "off")
		
	if event.is_action_pressed("S_key"):
		$left_side/materials/keys/center.modulate = character_color(global.character, "on")
		if global.character == "James":
			james_panel += 1
		elif global.character == "Jesse":
			jesse_panel += 1
	if event.is_action_released("S_key"):
		$left_side/materials/keys/center.modulate = character_color(global.character, "off")
		#if event.is_action_pressed("D_key"):
		#	$left_side/materials/keys/right.modulate = character_color(global.character, "on")
		#if event.is_action_released("D_key"):
		#	$left_side/materials/keys/right.modulate = character_color(global.character, "off")
	story(global.character)
		
	pass
	
func _another_left_side(event):
	if event.is_action_pressed("S_key"):
		$left_keys/keys/key_images/center.modulate = character_color("Jesse", "on")
		jesse_panel += 1
	if event.is_action_released("S_key"):
		$left_keys/keys/key_images/center.modulate = character_color("Jesse", "off")
	pass

func _right_side(event):
	#if event.is_action_pressed("J_key"):
	#	$right_keys/keys/key_images/left.modulate = character_color("James", "on")
	#if event.is_action_released("J_key"):
	#	$right_keys/keys/key_images/left.modulate = character_color("James", "off")

	if event.is_action_pressed("K_key"):
		$right_keys/keys/key_images/center.modulate = character_color("James", "on")
		james_panel += 1
	if event.is_action_released("K_key"):
		$right_keys/keys/key_images/center.modulate = character_color("James", "off")
		
	#if event.is_action_pressed("L_key"):
	#	$right_keys/keys/key_images/right.modulate = character_color("James", "on")
	#if event.is_action_released("L_key"):
	#	$right_keys/keys/key_images/right.modulate = character_color("James", "off")
	pass

func character_color(chr, mode):
	if chr == "Jesse":
		if mode == "on":
			return global.red
		elif mode == "off":
			return global.deep_red
	elif chr == "James":
		if mode == "on":
			return global.green
		elif mode == "off":
			return global.deep_green
	pass

func story(chara):
	if chara == "James":
		james_outline(james_panel)
	elif chara == "Jesse":
		jesse_outline(jesse_panel)
	pass

func james_outline(panel):
	if name == "2":
		match(panel):
			1:
				$right_screen.texture= load(james_stories[0])
			2:
				$right_screen.texture = load(james_stories[1])
			3:
				$right_screen.texture = load(eyes[1])
			4:
				$right_screen.texture = load(james_stories[2])
			5:
				$right_screen.texture = load(eyes[1])
			6:
				$right_screen.texture = load(james_stories[3])
			7:
				$right_screen.texture = load(james_stories[4])
			8:
				$right_screen.texture = load(eyes[1])
			9:
				$right_screen.texture = load(james_stories[5])
			10:
				$right_screen.texture = load(james_stories[6])
			11:
				$right_screen.texture = load(eyes[1])
			12:
				$right_screen.texture = load(james_stories[7])
			13:
				$right_screen.texture = load(james_stories[8])
			14:
				$right_screen.texture = load(james_stories[9])
			15:
				$right_screen.texture = load(eyes[1])
			16:
				$right_screen.texture = load(jesse_stories[0])
			17:
				$right_screen.texture = load(james_stories[10])
			18:
				$right_screen.texture = load(jesse_stories[1])
			19:
				$right_screen.texture = load(james_stories[11])
			20:
				$right_screen.texture = load(james_stories[12])
			21:
				$right_screen.texture = load(james_stories[13])
			22:
				single_player_move()
		#$right_screen.texture
	else:
		match(panel):
			1:
				$story.texture = load(james_stories[0])
			2:
				$story.texture = load(james_stories[1])
			3:
				$story.texture = load(eyes[1])
			4:
				$story.texture = load(james_stories[2])
			5:
				$story.texture = load(eyes[1])
			6:
				$story.texture = load(james_stories[3])
			7:
				$story.texture = load(james_stories[4])
			8:
				$story.texture = load(eyes[1])
			9:
				$story.texture = load(james_stories[5])
			10:
				$story.texture = load(james_stories[6])
			11:
				$story.texture = load(eyes[1])
			12:
				$story.texture = load(james_stories[7])
			13:
				$story.texture = load(james_stories[8])
			14:
				$story.texture = load(james_stories[9])
			15:
				$story.texture = load(eyes[1])
			16:
				$story.texture = load(jesse_stories[0])
			17:
				$story.texture = load(james_stories[10])
			18:
				$story.texture = load(jesse_stories[1])
			19:
				$story.texture = load(james_stories[11])
			20:
				$story.texture = load(james_stories[12])
			21:
				$story.texture = load(james_stories[13])
			22:
				single_player_move()
	pass

func jesse_outline(panel):
	if name == "2":
		match(panel):
				1:
					$left_screen.texture = load(jesse_stories[0])
				2:
					$left_screen.texture = load(jesse_stories[1])
				3:
					$left_screen.texture = load(jesse_stories[2])
				4:
					$left_screen.texture = load(jesse_stories[3])
				5:
					$left_screen.texture = load(jesse_stories[4])
				6:
					$left_screen.texture = load(jesse_stories[5])
				7:
					$left_screen.texture = load(jesse_stories[6])
				8:
					$left_screen.texture = load(jesse_stories[7])
				9:
					$left_screen.texture = load(jesse_stories[8])
				10:
					$left_screen.texture = load(jesse_stories[9])
				11:
					$left_screen.texture = load(jesse_stories[10])
				12:
					$left_screen.texture = load(jesse_stories[11])
				13:
					$left_screen.visible = false
	else:
		match(panel):
				1:
					$story.texture = load(jesse_stories[0])
				2:
					$story.texture = load(jesse_stories[1])
				3:
					$story.texture = load(jesse_stories[2])
				4:
					$story.texture = load(jesse_stories[3])
				5:
					$story.texture = load(jesse_stories[4])
				6:
					$story.texture = load(jesse_stories[5])
				7:
					$story.texture = load(jesse_stories[6])
				8:
					$story.texture = load(jesse_stories[7])
				9:
					$story.texture = load(jesse_stories[8])
				10:
					$story.texture = load(jesse_stories[9])
				11:
					$story.texture = load(jesse_stories[10])
				12:
					$story.texture = load(jesse_stories[11])
				13:
					single_player_move()
	pass

func single_player_move():
	global.single_playthrough += 1
	if global.single_playthrough < 2:
		if global.character == "James":
			global.character = "Jesse"
		elif global.character == "Jesse":
			global.character = "James"
		global.goto_scene("res://scenes/1_player_game.tscn")
	else:
		global.goto_scene("res://scenes/the_end.tscn")
	pass

# (character name, array of key images - 3, array of image paths - 3, array of small image paths - 3)
#func write_direction(char_name, key, pic_paths, small_pics):
	"""""
	0 ---> left
	1 ---> center
	2 ---> right
	"""
#	pass
