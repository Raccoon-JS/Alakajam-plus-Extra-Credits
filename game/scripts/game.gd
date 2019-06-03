extends Node

func _ready():
	if name == "1":
		if global.character == "Jesse":
			$background.color = global.red
			$story.texture = load("res://images/Jesse_eye_red.jpg")
			$left_side/materials/time_and_points/time.modulate = global.deep_red
			$left_side/materials/time_and_points/points.modulate = global.deep_red
			$left_side/materials/key_labels/A.modulate = global.deep_red
			$left_side/materials/key_labels/S.modulate = global.deep_red
			$left_side/materials/key_labels/D.modulate = global.deep_red
			$left_side/materials/keys/left.modulate = global.deep_red
			$left_side/materials/keys/center.modulate = global.deep_red
			$left_side/materials/keys/right.modulate = global.deep_red
		elif global.character == "James":
			$background.color = global.green
			$story.texture = load("res://images/James_eye_green.jpg")
			$left_side/materials/time_and_points/time.modulate = global.deep_green
			$left_side/materials/time_and_points/points.modulate = global.deep_green
			$left_side/materials/key_labels/A.modulate = global.deep_green
			$left_side/materials/key_labels/S.modulate = global.deep_green
			$left_side/materials/key_labels/D.modulate = global.deep_green
			$left_side/materials/keys/left.modulate = global.deep_green
			$left_side/materials/keys/center.modulate = global.deep_green
			$left_side/materials/keys/right.modulate = global.deep_green
		else:
			$background.color = global.blue # To avoid error
	elif name == "2":
		$times_and_points/left/left_time.modulate = global.deep_red
		$times_and_points/left/left_points.modulate = global.deep_red
		$times_and_points/right/right_time.modulate = global.deep_green
		$times_and_points/right/right_points.modulate = global.deep_green
		$left_keys/keys/labels.modulate = global.deep_red
		$left_keys/keys/key_images/left.modulate = global.deep_red
		$left_keys/keys/key_images/center.modulate = global.deep_red
		$left_keys/keys/key_images/right.modulate = global.deep_red
		$right_keys/keys/labels.modulate = global.deep_green
		$right_keys/keys/key_images/left.modulate = global.deep_green
		$right_keys/keys/key_images/center.modulate = global.deep_green
		$right_keys/keys/key_images/right.modulate = global.deep_green
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if name == "1":
		_left_side(event)
	elif name == "2":
		_left_side(event)
		_right_side(event)
	pass

func _left_side(event):
	if name == "1":
		if event.is_action_pressed("A_key"):
			$left_side/materials/keys/left.modulate = character_color(global.character, "on")
		if event.is_action_released("A_key"):
			$left_side/materials/keys/left.modulate = character_color(global.character, "off")
		
		if event.is_action_pressed("S_key"):
			$left_side/materials/keys/center.modulate = character_color(global.character, "on")
		if event.is_action_released("S_key"):
			$left_side/materials/keys/center.modulate = character_color(global.character, "off")
		
		if event.is_action_pressed("D_key"):
			$left_side/materials/keys/right.modulate = character_color(global.character, "on")
		if event.is_action_released("D_key"):
			$left_side/materials/keys/right.modulate = character_color(global.character, "off")
	elif name == "2":
		if event.is_action_pressed("A_key"):
			$left_keys/keys/key_images/left.modulate = character_color("Jesse", "on")
		if event.is_action_released("A_key"):
			$left_keys/keys/key_images/left.modulate = character_color("Jesse", "off")
		
		if event.is_action_pressed("S_key"):
			$left_keys/keys/key_images/center.modulate = character_color("Jesse", "on")
		if event.is_action_released("S_key"):
			$left_keys/keys/key_images/center.modulate = character_color("Jesse", "off")
		
		if event.is_action_pressed("D_key"):
			$left_keys/keys/key_images/right.modulate = character_color("Jesse", "on")
		if event.is_action_released("D_key"):
			$left_keys/keys/key_images/right.modulate = character_color("Jesse", "off")
	pass

func _right_side(event):
	if event.is_action_pressed("J_key"):
		$right_keys/keys/key_images/left.modulate = character_color("James", "on")
	if event.is_action_released("J_key"):
		$right_keys/keys/key_images/left.modulate = character_color("James", "off")

	if event.is_action_pressed("K_key"):
		$right_keys/keys/key_images/center.modulate = character_color("James", "on")
	if event.is_action_released("K_key"):
		$right_keys/keys/key_images/center.modulate = character_color("James", "off")
		
	if event.is_action_pressed("L_key"):
		$right_keys/keys/key_images/right.modulate = character_color("James", "on")
	if event.is_action_released("L_key"):
		$right_keys/keys/key_images/right.modulate = character_color("James", "off")
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