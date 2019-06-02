extends Node

func _ready():
	if name == "1":
		if global.character == "Jesse":
			$background.color = global.red
		elif global.character == "James":
			$background.color = global.green
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
