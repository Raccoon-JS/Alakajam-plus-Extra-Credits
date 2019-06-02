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
			$left_side/materials/keys.modulate = global.deep_red
		elif global.character == "James":
			$background.color = global.green
			$story.texture = load("res://images/James_eye_green.jpg")
			$left_side/materials/time_and_points/time.modulate = global.deep_green
			$left_side/materials/time_and_points/points.modulate = global.deep_green
			$left_side/materials/key_labels/A.modulate = global.deep_green
			$left_side/materials/key_labels/S.modulate = global.deep_green
			$left_side/materials/key_labels/D.modulate = global.deep_green
			$left_side/materials/keys.modulate = global.deep_green
		else:
			$background.color = global.blue # To avoid error
	elif name == "2":
		$times_and_points/left/left_time.modulate = global.deep_red
		$times_and_points/left/left_points.modulate = global.deep_red
		$times_and_points/right/right_time.modulate = global.deep_green
		$times_and_points/right/right_points.modulate = global.deep_green
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
